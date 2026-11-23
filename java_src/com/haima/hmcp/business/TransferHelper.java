package com.haima.hmcp.business;

import android.content.Context;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.ConstantsInternal;
import com.haima.hmcp.beans.HmSysNotify;
import com.haima.hmcp.beans.Message;
import com.haima.hmcp.beans.MsgChannelType;
import com.haima.hmcp.beans.MsgSdkAbility;
import com.haima.hmcp.beans.ReportBaseError;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.MessageType;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.websocket.WebSocketConnection;
import com.haima.hmcp.websocket.WebSocketConnectionHandler;
import com.haima.hmcp.websocket.exceptions.WebSocketException;
import com.haima.hmcp.websocket.types.WebSocketOptions;
import com.haima.hmcp.widgets.AbsIjkVideoView;
import io.socket.client.Socket;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class TransferHelper {
    public static final String KEY_CLI = "cli";
    public static final int PING_INTERVAL = 10;
    public static final int PING_TIME_OUT_COUNT_MAX = 3;
    private static final String TAG = "TransferHelper";
    public static int mSocketLinkTimeOut = 6000;
    private Callback callback;
    private long mConnectStartTime;
    private String mConnectionTag;
    private Context mContext;
    private boolean mHasRemoteDisconnected;
    private AbsIjkVideoView mHmcpVideoView;
    private boolean mIsTransferStopByUser;
    private long mLastSentResetInputTimerCMDTimestamp;
    private IWebSocket mWebSocketManager;
    private WebSocketConnection webSocketConnection;
    private String wsUri;
    private boolean isReconnect = false;
    private boolean isBackground = false;
    private WebSocketConnectionHandler webSocketHandler = new WebSocketConnectionHandler() { // from class: com.haima.hmcp.business.TransferHelper.1
        @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
        public void onClose(int i10, String str) {
            LogUtils.d(TransferHelper.TAG, " transfer onClose ! reason = " + str + " code = " + i10);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("");
            sb2.append(i10);
            CountlyUtil.recordEvent(Constants.COUNTLY_TRANSFER_CLOSE, JsonUtil.toJsonString(new ReportBaseError(sb2.toString(), str)));
            TransferHelper.this.isReconnect = true;
            LogUtils.i(TransferHelper.TAG, " == onClose current thread==" + Thread.currentThread().getName());
            if (i10 == 3) {
                LogUtils.d(TransferHelper.TAG, "Ping-Debug transfer reconnecting !");
                if (TransferHelper.this.webSocketConnection != null) {
                    TransferHelper.this.webSocketConnection.reconnect();
                    return;
                }
                return;
            }
            if (TransferHelper.this.callback != null && !TransferHelper.this.mIsTransferStopByUser) {
                TransferHelper.this.callback.onClose();
            }
            if (i10 != 1 && TransferHelper.this.mHmcpVideoView != null) {
                TransferHelper.this.setReconnect(i10, str);
                return;
            }
            String str2 = TransferHelper.TAG;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("");
            sb3.append(i10 == 1 ? "code=WebSocketConnectionHandler.CLOSE_NORMAL" : "absIjkVideoView is null");
            LogUtils.d(str2, sb3.toString());
            StringBuilder sb4 = new StringBuilder();
            sb4.append(" TransferHelper onClose() ");
            sb4.append(i10 != 1 ? " absIjkVideoView is null" : "code=WebSocketConnectionHandler.CLOSE_NORMAL");
            CountlyUtil.recordErrorEvent(sb4.toString());
        }

        @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
        public void onMessage(String str) {
            LogUtils.d(TransferHelper.TAG, " transfer onMessage payload = " + str);
            if (TransferHelper.this.countlyMessage(WebSocketInstanceType.TRANSFER, str) || TransferHelper.this.handleMsg(str)) {
                return;
            }
            if (TransferHelper.this.mHmcpVideoView == null) {
                LogUtils.e(TransferHelper.TAG, "absIjkVideoView is null");
                CountlyUtil.recordErrorEvent(" TransferHelper onMessage(String) absIjkVideoView is null");
            } else {
                Message message = new Message();
                message.ack = 0;
                message.payload = str;
                TransferHelper.this.mHmcpVideoView.forwardMessageToApplication(message);
            }
        }

        @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
        public void onOpen() {
            LogUtils.d(TransferHelper.TAG, " transfer onOpen ! ");
            CountlyUtil.recordEvent(Constants.COUNTLY_TRANSFER_SUC, TransferHelper.this.mConnectionTag + ",timeCost:" + (System.currentTimeMillis() - TransferHelper.this.mConnectStartTime));
            MsgSdkAbility msgSdkAbility = new MsgSdkAbility();
            msgSdkAbility.setHm_sys_config_channelType_ability(1L);
            LogUtils.d(TransferHelper.TAG, "msgSdkAbility:" + msgSdkAbility);
            TransferHelper.this.enviarMessage(JsonUtil.toJsonString(msgSdkAbility));
            if (TransferHelper.this.callback != null) {
                TransferHelper.this.callback.onConnect(TransferHelper.this.isReconnect);
            }
            TransferHelper.this.mIsTransferStopByUser = false;
        }

        @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
        public void onMessage(byte[] bArr, boolean z10) {
            LogUtils.d(TransferHelper.TAG, " transfer onMessage byte payload = " + new String(bArr));
            if (TransferHelper.this.callback != null) {
                TransferHelper.this.callback.onBinaryMessage(bArr);
            }
        }
    };

    public interface Callback {
        void onBinaryMessage(byte[] bArr);

        void onClose();

        void onConnect(boolean z10);

        void onTextMessage(String str);
    }

    public TransferHelper(Context context) {
        this.mContext = context;
    }

    private void changeMessageType2Transfer(String str) {
        String str2 = TAG;
        LogUtils.d(str2, "status:" + str);
        if (this.mHmcpVideoView == null) {
            LogUtils.d(str2, "absIjkVideoView is null");
            CountlyUtil.recordErrorEvent(" TransferHelper changeMessageType2Transfer() absIjkVideoView is null");
            return;
        }
        try {
            if (!ConstantsInternal.HM_SYS_CONFIG_NOTIFY_CONNECTED.equals(str)) {
                if ("disconnected".equals(str)) {
                    this.mHmcpVideoView.sendSysNotify(str);
                }
            } else {
                MessageType messageType = this.mHmcpVideoView.getMessageType();
                MessageType messageType2 = MessageType.TRANSFER;
                if (messageType2 != messageType) {
                    this.mHmcpVideoView.setMessageType(messageType2);
                }
                this.mHmcpVideoView.sendSysNotify(str);
            }
        } catch (Exception e10) {
            LogUtils.e(TAG, "changeMessageType2Transfer exception:" + e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean countlyMessage(WebSocketInstanceType webSocketInstanceType, String str) {
        boolean z10 = false;
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            try {
                if (!JsonUtil.isJsonObject(str)) {
                    return false;
                }
                JSONObject jSONObject = new JSONObject(str);
                if ("ignore".equals(jSONObject.optString("type"))) {
                    return true;
                }
                if (!jSONObject.has("countly")) {
                    return false;
                }
                try {
                    String string = jSONObject.getString("countly");
                    if (TextUtils.isEmpty(string) || !JsonUtil.isJsonObject(str)) {
                        return true;
                    }
                    JSONObject jSONObject2 = new JSONObject(string);
                    String strOptString = jSONObject2.optString("event_id", "");
                    String strOptString2 = jSONObject2.optString("data", "");
                    if (!TextUtils.isEmpty(strOptString)) {
                        CountlyUtil.recordEvent(strOptString, webSocketInstanceType.getType() + ";" + strOptString2);
                    }
                    return true;
                } catch (JSONException e10) {
                    e = e10;
                    z10 = true;
                } catch (Throwable unused) {
                    z10 = true;
                }
            } catch (JSONException e11) {
                e = e11;
            }
            LogUtils.e(TAG, "error:" + e.getMessage());
        } catch (Throwable unused2) {
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMsg(String str) {
        boolean z10 = str != null && str.contains(ConstantsInternal.ACK) && str.contains("type") && str.contains("mid");
        if (isCLIConfigured(str)) {
            changeMessageType2Transfer(ConstantsInternal.HM_SYS_CONFIG_NOTIFY_CONNECTED);
        }
        if (str == null || !(z10 || str.contains(ConstantsInternal.MSG_TYPE_SYS))) {
            return false;
        }
        if (str.contains(ConstantsInternal.HM_SYS_CONFIG_NOTIFY)) {
            HmSysNotify hmSysNotify = (HmSysNotify) JsonUtil.parseObject(str, HmSysNotify.class);
            if (hmSysNotify != null) {
                String hm_sys_config_notify = hmSysNotify.getHm_sys_config_notify();
                if (ConstantsInternal.HM_SYS_CONFIG_NOTIFY_CONNECTED.equals(hm_sys_config_notify)) {
                    this.mHasRemoteDisconnected = false;
                } else if ("disconnected".equals(hm_sys_config_notify)) {
                    this.mHasRemoteDisconnected = true;
                }
            }
            AbsIjkVideoView absIjkVideoView = this.mHmcpVideoView;
            if (absIjkVideoView != null) {
                absIjkVideoView.doCli(WebSocketManager.WebSocketType.TYPE_TRANSFER.name(), str);
            } else {
                LogUtils.d(TAG, "absIjkVideoView is null");
                CountlyUtil.recordErrorEvent(" TransferHelper handleMsg() absIjkVideoView is null");
            }
        } else if (str.contains(ConstantsInternal.MGS_SDK_ABILITY)) {
            MsgSdkAbility msgSdkAbility = (MsgSdkAbility) JsonUtil.parseObject(str, MsgSdkAbility.class);
            String str2 = TAG;
            LogUtils.d(str2, "messageAbility:" + msgSdkAbility);
            long hm_sys_config_channelType_ability = msgSdkAbility.getHm_sys_config_channelType_ability() & 1;
            MsgChannelType msgChannelType = new MsgChannelType();
            msgChannelType.setHm_sys_config_channelType(2);
            String jsonString = JsonUtil.toJsonString(msgChannelType);
            LogUtils.d(str2, "configChannelType:" + jsonString);
            enviarMessage(jsonString);
            if (1 == hm_sys_config_channelType_ability) {
                changeMessageType2Transfer(ConstantsInternal.HM_SYS_CONFIG_NOTIFY_CONNECTED);
            }
        } else if (z10) {
            if (this.mHmcpVideoView != null) {
                this.mHmcpVideoView.forwardMessageToApplication((Message) JsonUtil.parseObject(str, Message.class));
            } else {
                LogUtils.d(TAG, "absIjkVideoView is null");
                CountlyUtil.recordErrorEvent(" TransferHelper handleMsg() absIjkVideoView is null");
            }
        }
        return true;
    }

    private boolean isCLIConfigured(String str) {
        if (!TextUtils.isEmpty(str) && JsonUtil.isJsonObject(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (!jSONObject.has(KEY_CLI) || TextUtils.isEmpty(jSONObject.optString(KEY_CLI))) {
                    return false;
                }
                LogUtils.d(TAG, "cliConfigured is true cli:" + jSONObject.optString(KEY_CLI));
                return true;
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    private void sendResetInputTimerCMD() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.mLastSentResetInputTimerCMDTimestamp;
        LogUtils.d(TAG, "timeDiff:" + jCurrentTimeMillis);
        if (jCurrentTimeMillis <= 5000 || this.mHmcpVideoView == null) {
            return;
        }
        this.mLastSentResetInputTimerCMDTimestamp = System.currentTimeMillis();
        this.mHmcpVideoView.resetInputTimer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setReconnect(int i10, String str) {
        AbsIjkVideoView absIjkVideoView = this.mHmcpVideoView;
        if (absIjkVideoView != null) {
            absIjkVideoView.refreshTransferToken(i10, str);
        } else {
            LogUtils.e(TAG, " absIjkVideoView is null");
            CountlyUtil.recordErrorEvent(" TransferHelper setReconnect() absIjkVideoView is null");
        }
    }

    public void connect() {
        String str = TAG;
        LogUtils.d(str, "connect");
        this.mIsTransferStopByUser = false;
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket != null) {
            iWebSocket.connect2Transfer(this.wsUri, this);
        } else {
            LogUtils.d(str, "mWebSocketManager is null");
            CountlyUtil.recordErrorEvent("mWebSocketManager is null");
        }
    }

    void connectInternal() {
        if (this.webSocketConnection == null) {
            this.webSocketConnection = new WebSocketConnection("transfer", this.mContext);
            this.mConnectionTag = "" + this.webSocketConnection.hashCode();
            this.webSocketConnection.setTag(Long.toString(System.currentTimeMillis()));
            this.webSocketConnection.setReconnected(true);
        }
        if (this.webSocketConnection.isConnected() || TextUtils.isEmpty(this.wsUri)) {
            return;
        }
        LogUtils.d(TAG, " transfer Helper connect uri = " + this.wsUri);
        try {
            WebSocketOptions webSocketOptions = new WebSocketOptions();
            webSocketOptions.setAutoPingInterval(10);
            webSocketOptions.setAutoPingTimeout(10);
            webSocketOptions.setAutoPingTimeoutCountMax(3);
            webSocketOptions.setSocketConnectTimeout(mSocketLinkTimeOut);
            this.mConnectStartTime = System.currentTimeMillis();
            CountlyUtil.recordEvent(Constants.COUNTLY_TRANSFER_START);
            this.webSocketConnection.connect(this.wsUri, this.webSocketHandler, webSocketOptions);
        } catch (WebSocketException e10) {
            LogUtils.d(TAG, " transfer connect error = " + e10.getMessage());
        }
    }

    public void disconnect() {
        LogUtils.d(TAG, Socket.EVENT_DISCONNECT);
    }

    public void disconnectInternal() {
        String str = TAG;
        LogUtils.d(str, Socket.EVENT_DISCONNECT);
        this.mIsTransferStopByUser = true;
        IWebSocket iWebSocket = this.mWebSocketManager;
        if (iWebSocket != null) {
            iWebSocket.disconnect2Transfer();
        } else {
            LogUtils.d(str, "mWebSocketManager is null");
            CountlyUtil.recordErrorEvent("mWebSocketManager is null");
        }
    }

    public int enviarMessage(String str) {
        String str2 = TAG;
        LogUtils.d(str2, "mHasRemoteDisconnected:" + this.mHasRemoteDisconnected);
        if (TextUtils.isEmpty(str)) {
            LogUtils.d(str2, "send textMessage is null");
            return -1;
        }
        WebSocketConnection webSocketConnection = this.webSocketConnection;
        if (webSocketConnection == null || !webSocketConnection.isConnected()) {
            LogUtils.d(str2, "send textMessage failed by disconnected");
            return -1;
        }
        if (this.isBackground || this.mHasRemoteDisconnected) {
            LogUtils.d(str2, "send textMessage isBackground");
            return -1;
        }
        LogUtils.d(str2, "send textMessage:" + str);
        this.webSocketConnection.sendMessage(str);
        return str.length();
    }

    void innerDisconnect() {
        LogUtils.d(TAG, " transfer Helper inner Disconnect isReconnect = " + this.isReconnect);
        changeMessageType2Transfer("disconnected");
        WebSocketConnection webSocketConnection = this.webSocketConnection;
        if (webSocketConnection != null) {
            webSocketConnection.cutOff();
        }
    }

    public boolean isConnected() {
        WebSocketConnection webSocketConnection = this.webSocketConnection;
        if (webSocketConnection == null) {
            return false;
        }
        return webSocketConnection.isConnected();
    }

    public int send(byte[] bArr) {
        int length;
        LogUtils.d(TAG, "mHasRemoteDisconnected:" + this.mHasRemoteDisconnected);
        WebSocketConnection webSocketConnection = this.webSocketConnection;
        if (webSocketConnection == null || !webSocketConnection.isConnected() || this.isBackground || this.mHasRemoteDisconnected) {
            length = -1;
        } else {
            this.webSocketConnection.sendMessage(bArr, true);
            length = bArr.length;
        }
        sendResetInputTimerCMD();
        return length;
    }

    public int sendMessage(String str) {
        int iEnviarMessage = enviarMessage(str);
        sendResetInputTimerCMD();
        return iEnviarMessage;
    }

    public void setBackground(boolean z10) {
        LogUtils.d(TAG, " transfer Helper  setBackground  = " + z10);
        this.isBackground = z10;
    }

    public void setCallback(Callback callback) {
        this.callback = callback;
    }

    public void setConnectTimeOut(int i10) {
        mSocketLinkTimeOut = i10;
    }

    public void setVideoView(AbsIjkVideoView absIjkVideoView) {
        if (absIjkVideoView != null) {
            this.mHmcpVideoView = absIjkVideoView;
        }
    }

    public void setWebSocketManager(IWebSocket iWebSocket) {
        this.mWebSocketManager = iWebSocket;
    }

    void setWsUri(String str) {
        this.wsUri = str + "&proto=1&act=1" + ConstantsInternal.KEY_CLI_PARAM;
        LogUtils.d(TAG, " transfer Helper setWsUri " + this.wsUri);
    }

    void innerDisconnect(boolean z10) {
        LogUtils.d(TAG, " transfer Helper inner Disconnect isReconnect = " + z10);
        if (this.isReconnect) {
            this.isReconnect = z10;
        }
        WebSocketConnection webSocketConnection = this.webSocketConnection;
        if (webSocketConnection == null || !webSocketConnection.isConnected()) {
            return;
        }
        this.isReconnect = z10;
        this.webSocketConnection.sendClose();
    }
}
