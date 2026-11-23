package com.haima.hmcp.business;

import android.content.Context;
import android.util.Log;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.CloudPlayInfo;
import com.haima.hmcp.beans.WebSocketConfig;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.ErrorType;
import com.haima.hmcp.listeners.HmcpPlayerListener;
import com.haima.hmcp.listeners.WebSocketObserver;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.Utils;
import com.haima.hmcp.websocket.WebSocketConnection;
import com.haima.hmcp.websocket.WebSocketConnectionHandler;
import com.haima.hmcp.websocket.exceptions.WebSocketException;
import com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler;
import com.haima.hmcp.websocket.types.WebSocketOptions;
import com.join.mgps.activity.UploadActivity;
import com.umeng.analytics.pro.bm;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class WebSocketManager extends BaseManager implements IWebSocket {
    public static final int DEFAULT_WS_CONNECT_TIME_OUT = 6000;
    public static final int MAX_FRAME_PAYLOAD_SIZE = 131072;
    public static final int MAX_MESSAGE_PAYLOAD_SIZE = 131072;
    public static final int PING_INTERVAL = 10;
    public static final int PING_TIME_OUT_COUNT_MAX = 3;
    private static final String TAG = "WebSocketManager";
    private WebSocketHeartBeatRecorder accessHeartBeat;
    private boolean isAccessStopByUser;
    private boolean isDownloadStopByUser;
    private boolean isInputStopByUserWsServer;
    private boolean isReconnect;
    private boolean isUploadStopByUser;
    private Map<String, WebSocketObserver> mAccessObservers;
    private int mAccessReconnectCount;
    private WebSocketConnection mAccessSocket;
    private CloudPlayInfo mCloudPlayInfo;
    private WebSocketConnection mDownloadSocket;
    private int mFramePayloadMaxSize;
    private WebSocketConnection mInstanceSocketWsServer;
    private int mMessagePayloadMaxSize;
    private Map<WebSocketType, List<WebSocketObserver>> mObservers;
    private int mSaasLinkTimeOut;
    private TransferHelper mTransferHelper;
    private WebSocketConnection mUploadSocket;
    private WebSocketConfig mWebSocketConfig;
    private int mWebSocketHeartBeatInterval;
    private int mWebSocketHeartBeatTimeOutCountMax;
    private int mWsLinkTimeOut;
    private Map<String, WebSocketObserver> mWsServerObservers;
    private WebSocketHeartBeatRecorder wsServerHeartBeat;

    public interface SimpleAccessConnectionHandler extends SimpleConnectionHandler {
        void onTextMessage(String str);
    }

    public interface SimpleConnectionHandler {
        void onConnect(boolean z10);

        void onDisconnect(int i10, String str, boolean z10);

        void onHeartBeatSuccess();
    }

    public interface SimpleInstanceConnectionHandler extends SimpleConnectionHandler {
        void onClockDiffChange(long j10, int i10);

        void onFirstDiffClockSuccess(long j10);

        void onMessage(byte[] bArr, boolean z10);

        void onTextMessage(String str);
    }

    public interface SimpleTransmissionConnectionHandler extends SimpleConnectionHandler {
        void onMessage(String str);

        void onMessage(byte[] bArr, boolean z10);
    }

    public enum WebSocketType {
        TYPE_INSTANCE,
        TYPE_ACCESS,
        TYPE_INSTANCE_WS_SERVER,
        TYPE_UPLOAD,
        TYPE_DOWNLOAD,
        TYPE_TRANSFER
    }

    public WebSocketManager(Context context) {
        super(context);
        this.mAccessObservers = new ConcurrentHashMap();
        this.mWsServerObservers = new ConcurrentHashMap();
        this.mWebSocketHeartBeatInterval = 10;
        this.mWebSocketHeartBeatTimeOutCountMax = 3;
        this.mFramePayloadMaxSize = 131072;
        this.mMessagePayloadMaxSize = 131072;
        this.mSaasLinkTimeOut = 6000;
        this.mWsLinkTimeOut = 6000;
        this.mAccessReconnectCount = 0;
    }

    private void setTLSEnabledProtocols(WebSocketOptions webSocketOptions) {
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public void addObserver(WebSocketType webSocketType, WebSocketObserver webSocketObserver) {
        if (webSocketType == WebSocketType.TYPE_ACCESS && !this.mAccessObservers.containsKey(webSocketObserver.toString())) {
            this.mAccessObservers.put(webSocketObserver.toString(), webSocketObserver);
        }
        if (webSocketType != WebSocketType.TYPE_INSTANCE_WS_SERVER || this.mWsServerObservers.containsKey(webSocketObserver.toString())) {
            return;
        }
        this.mWsServerObservers.put(webSocketObserver.toString(), webSocketObserver);
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public void cleanObserver() {
        if (!this.mAccessObservers.isEmpty()) {
            this.mAccessObservers.clear();
        }
        if (this.mWsServerObservers.isEmpty()) {
            return;
        }
        this.mWsServerObservers.clear();
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public void connect2Access(String str, final SimpleAccessConnectionHandler simpleAccessConnectionHandler) {
        LogUtils.i(TAG, "========connect2Access========" + str);
        WebSocketOptions webSocketOptions = new WebSocketOptions();
        webSocketOptions.setAutoPingInterval(this.mWebSocketHeartBeatInterval);
        webSocketOptions.setAutoPingTimeout(this.mWebSocketHeartBeatInterval);
        webSocketOptions.setAutoPingTimeoutCountMax(this.mWebSocketHeartBeatTimeOutCountMax);
        webSocketOptions.setSocketConnectTimeout(this.mSaasLinkTimeOut);
        setTLSEnabledProtocols(webSocketOptions);
        if (this.mAccessSocket == null) {
            this.mAccessSocket = new WebSocketConnection(bm.Q, this.mContext);
        }
        this.mAccessSocket.setTag(Long.toString(System.currentTimeMillis()));
        this.mAccessSocket.setReconnected(true);
        this.accessHeartBeat = new WebSocketHeartBeatRecorder();
        CloudPlayInfo cloudPlayInfo = this.mCloudPlayInfo;
        if (cloudPlayInfo != null) {
            cloudPlayInfo.setPingPong(0, 0);
        }
        this.isAccessStopByUser = false;
        try {
            this.mAccessSocket.connect(str, new WebSocketConnectionHandler() { // from class: com.haima.hmcp.business.WebSocketManager.1
                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onClose(int i10, String str2) {
                    LogUtils.i(WebSocketManager.TAG, "connectToAccessService=>onClose=code=>" + i10 + "=reason=>" + str2);
                    WebSocketManager.this.isReconnect = true;
                    LogUtils.i(WebSocketManager.TAG, " == onClose current thread==" + Thread.currentThread().getName());
                    if (i10 == 3) {
                        CountlyUtil.recordEvent(Constants.COUNTLY_CONNECT_SAAS_WS_RECONNECT, "false " + str2);
                    }
                    SimpleAccessConnectionHandler simpleAccessConnectionHandler2 = simpleAccessConnectionHandler;
                    if (simpleAccessConnectionHandler2 != null) {
                        simpleAccessConnectionHandler2.onDisconnect(i10, str2, true ^ WebSocketManager.this.isAccessStopByUser);
                        WebSocketManager.this.isReconnect = false;
                    }
                    if (WebSocketManager.this.mAccessObservers.isEmpty()) {
                        return;
                    }
                    Iterator it2 = WebSocketManager.this.mAccessObservers.entrySet().iterator();
                    while (it2.hasNext()) {
                        WebSocketObserver webSocketObserver = (WebSocketObserver) ((Map.Entry) it2.next()).getValue();
                        if (webSocketObserver != null) {
                            webSocketObserver.onObserver(WebSocketType.TYPE_ACCESS, 2);
                        }
                    }
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onHeartBeat(IWebSocketConnectionHandler.HeartBeatState heartBeatState, String str2) {
                    long pingPongCostTime;
                    if (heartBeatState.equals(IWebSocketConnectionHandler.HeartBeatState.SEND_PING_FAIL)) {
                        LogUtils.d(WebSocketManager.TAG, "Ping-Debug mAccessSocket onHeartBeat SEND_PING_FAIL !");
                        if (WebSocketManager.this.mAccessSocket == null) {
                            CountlyUtil.recordEvent(Constants.COUNTYLY_WEBSOCKET_HEART_BEAT_FAIL, "mAccessSocket is null");
                            return;
                        }
                        boolean zIsConnected = WebSocketManager.this.mAccessSocket.isConnected();
                        CountlyUtil.recordEvent(Constants.COUNTYLY_WEBSOCKET_HEART_BEAT_FAIL, "tag:" + WebSocketManager.this.mAccessSocket.getTag() + ";mAccessSocket connected:" + zIsConnected);
                        WebSocketManager.this.isReconnect = true;
                        return;
                    }
                    String tag = "null";
                    if (heartBeatState.equals(IWebSocketConnectionHandler.HeartBeatState.SEND_PING_SUCCESS)) {
                        CountlyUtil.recordEvent(Constants.COUNTLY_CONNECT_SAAS_WS_HEART_BEAT, "tag:" + (WebSocketManager.this.mAccessSocket != null ? WebSocketManager.this.mAccessSocket.getTag() : "null") + ";SEND_PING_SUCCESS");
                        if (WebSocketManager.this.mCloudPlayInfo != null) {
                            WebSocketManager.this.mCloudPlayInfo.pingCountPlus1();
                        }
                        WebSocketManager.this.accessHeartBeat.ping();
                        return;
                    }
                    if (heartBeatState.equals(IWebSocketConnectionHandler.HeartBeatState.RECEIVE_PANG_SUCCESS)) {
                        if (WebSocketManager.this.mAccessSocket != null) {
                            pingPongCostTime = WebSocketManager.this.mAccessSocket.getPingPongCostTime();
                            tag = WebSocketManager.this.mAccessSocket.getTag();
                        } else {
                            pingPongCostTime = -1;
                        }
                        CountlyUtil.recordEvent(Constants.COUNTLY_CONNECT_SAAS_WS_HEART_BEAT, "tag:" + tag + ";RECEIVE_PANG_SUCCESS " + ("use time : " + pingPongCostTime));
                        if (WebSocketManager.this.mCloudPlayInfo != null) {
                            WebSocketManager.this.mCloudPlayInfo.pongCountPlus1();
                        }
                        WebSocketManager.this.accessHeartBeat.pong();
                        SimpleAccessConnectionHandler simpleAccessConnectionHandler2 = simpleAccessConnectionHandler;
                        if (simpleAccessConnectionHandler2 != null) {
                            simpleAccessConnectionHandler2.onHeartBeatSuccess();
                        }
                    }
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onMessage(String str2) {
                    LogUtils.i(WebSocketManager.TAG, "==onTextMessage  current thread==" + Thread.currentThread().getName());
                    if (Utils.countlyMessage(WebSocketInstanceType.ACCESS, str2)) {
                        return;
                    }
                    SimpleAccessConnectionHandler simpleAccessConnectionHandler2 = simpleAccessConnectionHandler;
                    if (simpleAccessConnectionHandler2 != null) {
                        simpleAccessConnectionHandler2.onTextMessage(str2);
                    }
                    if (WebSocketManager.this.mAccessObservers.isEmpty()) {
                        return;
                    }
                    Iterator it2 = WebSocketManager.this.mAccessObservers.entrySet().iterator();
                    while (it2.hasNext()) {
                        WebSocketObserver webSocketObserver = (WebSocketObserver) ((Map.Entry) it2.next()).getValue();
                        if (webSocketObserver != null) {
                            webSocketObserver.onMessage(WebSocketType.TYPE_ACCESS, str2);
                        }
                    }
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onOpen() {
                    LogUtils.d(WebSocketManager.TAG, "Ping-Debug mAccessSocket onOpen  current thread==" + Thread.currentThread().getName());
                    LogUtils.i(WebSocketManager.TAG, "==onOpen  current thread==" + Thread.currentThread().getName());
                    SimpleAccessConnectionHandler simpleAccessConnectionHandler2 = simpleAccessConnectionHandler;
                    if (simpleAccessConnectionHandler2 != null) {
                        simpleAccessConnectionHandler2.onConnect(WebSocketManager.this.isReconnect);
                    }
                    WebSocketManager.this.isAccessStopByUser = false;
                    if (WebSocketManager.this.mAccessObservers.isEmpty()) {
                        return;
                    }
                    Iterator it2 = WebSocketManager.this.mAccessObservers.entrySet().iterator();
                    while (it2.hasNext()) {
                        WebSocketObserver webSocketObserver = (WebSocketObserver) ((Map.Entry) it2.next()).getValue();
                        if (webSocketObserver != null) {
                            webSocketObserver.onObserver(WebSocketType.TYPE_ACCESS, 1);
                        }
                    }
                }
            }, webSocketOptions);
        } catch (Exception e10) {
            e10.printStackTrace();
            CountlyUtil.recordErrorEvent("WebSocketManager::connect2Access::" + Log.getStackTraceString(e10));
            LogUtils.e(TAG, "connect2Access Exception" + e10.getMessage() + ", accessUrl=" + str);
        }
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public void connect2Download(String str, final SimpleTransmissionConnectionHandler simpleTransmissionConnectionHandler) {
        LogUtils.i(TAG, "========connect2Download========" + str);
        this.isDownloadStopByUser = false;
        WebSocketOptions webSocketOptions = new WebSocketOptions();
        setTLSEnabledProtocols(webSocketOptions);
        if (this.mDownloadSocket == null) {
            this.mDownloadSocket = new WebSocketConnection("download", this.mContext);
        }
        this.mDownloadSocket.setTag(Long.toString(System.currentTimeMillis()));
        if (this.mDownloadSocket.isConnected()) {
            return;
        }
        try {
            this.mDownloadSocket.connect(str, new String[]{Constants.WEBSOCKET_SUB_PROTOCOL}, new WebSocketConnectionHandler() { // from class: com.haima.hmcp.business.WebSocketManager.4
                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onClose(int i10, String str2) {
                    LogUtils.i(WebSocketManager.TAG, " connect2Download onClose=code=>" + i10 + "=reason=>" + str2 + " isInputStopByUserWsServer = " + WebSocketManager.this.isInputStopByUserWsServer);
                    if (simpleTransmissionConnectionHandler == null || WebSocketManager.this.isInputStopByUserWsServer) {
                        return;
                    }
                    simpleTransmissionConnectionHandler.onDisconnect(i10, str2, false);
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onMessage(byte[] bArr, boolean z10) {
                    if (simpleTransmissionConnectionHandler == null || WebSocketManager.this.isDownloadStopByUser) {
                        return;
                    }
                    simpleTransmissionConnectionHandler.onMessage(bArr, z10);
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onOpen() {
                    LogUtils.i(WebSocketManager.TAG, "connect2Download=>onOpen");
                    SimpleTransmissionConnectionHandler simpleTransmissionConnectionHandler2 = simpleTransmissionConnectionHandler;
                    if (simpleTransmissionConnectionHandler2 != null) {
                        simpleTransmissionConnectionHandler2.onConnect(false);
                    }
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onMessage(String str2) {
                    if (simpleTransmissionConnectionHandler == null || WebSocketManager.this.isDownloadStopByUser) {
                        return;
                    }
                    simpleTransmissionConnectionHandler.onMessage(str2);
                }
            }, webSocketOptions, null);
        } catch (WebSocketException e10) {
            e10.printStackTrace();
            CountlyUtil.recordErrorEvent("WebSocketManager::connect2Download::" + Log.getStackTraceString(e10));
        }
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public void connect2InstanceWsServer(String str, final SimpleInstanceConnectionHandler simpleInstanceConnectionHandler) {
        LogUtils.i(TAG, "timeframe--========connect2InstanceWsServer========" + str);
        this.isInputStopByUserWsServer = false;
        WebSocketOptions webSocketOptions = new WebSocketOptions();
        webSocketOptions.setAutoPingInterval(10);
        webSocketOptions.setAutoPingTimeout(10);
        webSocketOptions.setAutoPingTimeoutCountMax(3);
        webSocketOptions.setMaxFramePayloadSize(this.mFramePayloadMaxSize);
        webSocketOptions.setMaxMessagePayloadSize(this.mMessagePayloadMaxSize);
        webSocketOptions.setSocketConnectTimeout(this.mWsLinkTimeOut);
        setTLSEnabledProtocols(webSocketOptions);
        if (this.mInstanceSocketWsServer == null) {
            this.mInstanceSocketWsServer = new WebSocketConnection(Constants.WS_MESSAGE_TYPE_SCREEN, this.mContext);
        }
        this.mInstanceSocketWsServer.setTag(Long.toString(System.currentTimeMillis()));
        this.mInstanceSocketWsServer.setReconnected(true);
        if (this.mInstanceSocketWsServer.isConnected()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("connect2InstanceWsServer already connect：");
            sb2.append(str);
            return;
        }
        this.wsServerHeartBeat = new WebSocketHeartBeatRecorder();
        try {
            this.mInstanceSocketWsServer.connect(str, new String[]{Constants.WEBSOCKET_SUB_PROTOCOL}, new WebSocketConnectionHandler() { // from class: com.haima.hmcp.business.WebSocketManager.2
                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onClose(int i10, String str2) {
                    LogUtils.i(WebSocketManager.TAG, " timeframe--connectWsServer connect2InstanceWsServer=>onClose=code=>" + i10 + "=reason=>" + str2 + " isInputStopByUserWsServer = " + WebSocketManager.this.isInputStopByUserWsServer);
                    if (simpleInstanceConnectionHandler != null && !WebSocketManager.this.isInputStopByUserWsServer) {
                        simpleInstanceConnectionHandler.onDisconnect(i10, str2, false);
                    }
                    if (WebSocketManager.this.mWsServerObservers.isEmpty()) {
                        return;
                    }
                    Iterator it2 = WebSocketManager.this.mWsServerObservers.entrySet().iterator();
                    while (it2.hasNext()) {
                        WebSocketObserver webSocketObserver = (WebSocketObserver) ((Map.Entry) it2.next()).getValue();
                        if (webSocketObserver != null) {
                            webSocketObserver.onObserver(WebSocketType.TYPE_INSTANCE_WS_SERVER, 2);
                        }
                    }
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onHeartBeat(IWebSocketConnectionHandler.HeartBeatState heartBeatState, String str2) {
                    if (heartBeatState == IWebSocketConnectionHandler.HeartBeatState.SEND_PING_SUCCESS) {
                        LogUtils.i(WebSocketManager.TAG, "ws-server send ping");
                        WebSocketManager.this.wsServerHeartBeat.ping();
                    }
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onMessage(byte[] bArr, boolean z10) {
                    LogUtils.i(WebSocketManager.TAG, " timeframe--connectWsServer connect2InstanceWsServer=>onBinaryMessageSize=" + bArr.length);
                    super.onMessage(bArr, z10);
                    SimpleInstanceConnectionHandler simpleInstanceConnectionHandler2 = simpleInstanceConnectionHandler;
                    if (simpleInstanceConnectionHandler2 != null) {
                        simpleInstanceConnectionHandler2.onMessage(bArr, z10);
                    }
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onOpen() {
                    LogUtils.i(WebSocketManager.TAG, "timeframe--connect2InstanceWsServer=>onOpen");
                    SimpleInstanceConnectionHandler simpleInstanceConnectionHandler2 = simpleInstanceConnectionHandler;
                    if (simpleInstanceConnectionHandler2 != null) {
                        simpleInstanceConnectionHandler2.onConnect(false);
                    }
                    if (WebSocketManager.this.mWsServerObservers.isEmpty()) {
                        return;
                    }
                    Iterator it2 = WebSocketManager.this.mWsServerObservers.entrySet().iterator();
                    while (it2.hasNext()) {
                        WebSocketObserver webSocketObserver = (WebSocketObserver) ((Map.Entry) it2.next()).getValue();
                        if (webSocketObserver != null) {
                            webSocketObserver.onObserver(WebSocketType.TYPE_INSTANCE_WS_SERVER, 1);
                        }
                    }
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onPing() {
                    LogUtils.i(WebSocketManager.TAG, "ws-server onPing");
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onPong() {
                    LogUtils.i(WebSocketManager.TAG, "ws-server onPong");
                    WebSocketManager.this.wsServerHeartBeat.pong();
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onPing(byte[] bArr) {
                    LogUtils.i(WebSocketManager.TAG, "ws-server onPing::payload");
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onPong(byte[] bArr) {
                    LogUtils.i(WebSocketManager.TAG, "ws-server onPong::payload");
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onMessage(String str2) {
                    LogUtils.i(WebSocketManager.TAG, " timeframe--connectWsServer connect2InstanceWsServer=>onMessage=" + str2);
                    if (Utils.countlyMessage(WebSocketInstanceType.SCREEN, str2)) {
                        return;
                    }
                    SimpleInstanceConnectionHandler simpleInstanceConnectionHandler2 = simpleInstanceConnectionHandler;
                    if (simpleInstanceConnectionHandler2 != null) {
                        simpleInstanceConnectionHandler2.onTextMessage(str2);
                    }
                    if (WebSocketManager.this.mWsServerObservers.isEmpty()) {
                        return;
                    }
                    Iterator it2 = WebSocketManager.this.mWsServerObservers.entrySet().iterator();
                    while (it2.hasNext()) {
                        WebSocketObserver webSocketObserver = (WebSocketObserver) ((Map.Entry) it2.next()).getValue();
                        if (webSocketObserver != null) {
                            webSocketObserver.onMessage(WebSocketType.TYPE_INSTANCE_WS_SERVER, str2);
                        }
                    }
                }
            }, webSocketOptions, null);
        } catch (WebSocketException e10) {
            e10.printStackTrace();
            CountlyUtil.recordErrorEvent("timeframe--WebSocketManager::connect2InstanceWsServer::" + Log.getStackTraceString(e10));
        }
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public void connect2Transfer(String str, TransferHelper transferHelper) {
        LogUtils.d(TAG, " Transfer connect2Transfer  url =" + str);
        this.mTransferHelper = transferHelper;
        if (transferHelper != null) {
            transferHelper.setWsUri(str);
            this.mTransferHelper.setConnectTimeOut(this.mWsLinkTimeOut);
            this.mTransferHelper.connectInternal();
        }
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public void connect2Upload(String str, final SimpleTransmissionConnectionHandler simpleTransmissionConnectionHandler) {
        LogUtils.i(TAG, "========connect2Upload========" + str);
        this.isUploadStopByUser = false;
        WebSocketOptions webSocketOptions = new WebSocketOptions();
        webSocketOptions.setMaxMessagePayloadSize(this.mMessagePayloadMaxSize);
        setTLSEnabledProtocols(webSocketOptions);
        if (this.mUploadSocket == null) {
            this.mUploadSocket = new WebSocketConnection(UploadActivity.UPLOAD_RECEIVE, this.mContext);
        }
        this.mUploadSocket.setTag(Long.toString(System.currentTimeMillis()));
        if (this.mUploadSocket.isConnected()) {
            return;
        }
        try {
            this.mUploadSocket.connect(str, new String[]{Constants.WEBSOCKET_SUB_PROTOCOL}, new WebSocketConnectionHandler() { // from class: com.haima.hmcp.business.WebSocketManager.3
                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onClose(int i10, String str2) {
                    LogUtils.i(WebSocketManager.TAG, " connect2Upload onClose=code=>" + i10 + "=reason=>" + str2 + " isInputStopByUserWsServer = " + WebSocketManager.this.isInputStopByUserWsServer);
                    if (simpleTransmissionConnectionHandler == null || WebSocketManager.this.isInputStopByUserWsServer) {
                        return;
                    }
                    simpleTransmissionConnectionHandler.onDisconnect(i10, str2, false);
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onMessage(byte[] bArr, boolean z10) {
                    if (simpleTransmissionConnectionHandler == null || WebSocketManager.this.isUploadStopByUser) {
                        return;
                    }
                    simpleTransmissionConnectionHandler.onMessage(bArr, z10);
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onOpen() {
                    LogUtils.i(WebSocketManager.TAG, "connect2Upload=>onOpen");
                    SimpleTransmissionConnectionHandler simpleTransmissionConnectionHandler2 = simpleTransmissionConnectionHandler;
                    if (simpleTransmissionConnectionHandler2 != null) {
                        simpleTransmissionConnectionHandler2.onConnect(false);
                    }
                }

                @Override // com.haima.hmcp.websocket.WebSocketConnectionHandler, com.haima.hmcp.websocket.interfaces.IWebSocketConnectionHandler
                public void onMessage(String str2) {
                    if (simpleTransmissionConnectionHandler == null || WebSocketManager.this.isUploadStopByUser) {
                        return;
                    }
                    simpleTransmissionConnectionHandler.onMessage(str2);
                }
            }, webSocketOptions, null);
        } catch (WebSocketException e10) {
            e10.printStackTrace();
            CountlyUtil.recordErrorEvent("WebSocketManager::connect2Upload::" + Log.getStackTraceString(e10));
        }
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public void disconnect() {
        LogUtils.i(TAG, "=== connectWsServer disconnect() ===");
        disconnect2Access();
        disconnect2InstanceWsServer();
        disconnect2Upload();
        disconnect2Download();
        disconnect2Transfer();
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public void disconnect2Access() {
        String str = TAG;
        LogUtils.i(str, "===disconnect2Access===");
        CloudPlayInfo cloudPlayInfo = this.mCloudPlayInfo;
        if (cloudPlayInfo != null) {
            cloudPlayInfo.setPingPong(0, 0);
        }
        this.isAccessStopByUser = true;
        WebSocketConnection webSocketConnection = this.mAccessSocket;
        if (webSocketConnection != null) {
            if (webSocketConnection.isConnected()) {
                this.mAccessSocket.cutOff();
                LogUtils.i(str, "===mAccessSocket  disconnect===");
            }
            this.mAccessSocket = null;
        }
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public void disconnect2Download() {
        String str = TAG;
        LogUtils.i(str, "===disconnect2Download===");
        this.isDownloadStopByUser = true;
        WebSocketConnection webSocketConnection = this.mDownloadSocket;
        if (webSocketConnection != null) {
            if (webSocketConnection.isConnected()) {
                this.mDownloadSocket.cutOff();
                LogUtils.i(str, "===mDownloadSocket  disconnect===");
            }
            this.mDownloadSocket = null;
        }
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public void disconnect2InstanceWsServer() {
        String str = TAG;
        LogUtils.i(str, "===disconnect2InstanceWsServer=== " + this.mInstanceSocketWsServer);
        this.isInputStopByUserWsServer = true;
        WebSocketConnection webSocketConnection = this.mInstanceSocketWsServer;
        if (webSocketConnection != null) {
            if (webSocketConnection.isConnected()) {
                this.mInstanceSocketWsServer.cutOff();
                LogUtils.i(str, "=== connectWsServer mInstanceSocket  disconnect===");
            }
            this.mInstanceSocketWsServer = null;
        }
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public void disconnect2Transfer() {
        TransferHelper transferHelper = this.mTransferHelper;
        if (transferHelper != null) {
            transferHelper.innerDisconnect();
        }
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public void disconnect2Upload() {
        String str = TAG;
        LogUtils.i(str, "===disconnect2Upload===");
        this.isUploadStopByUser = true;
        WebSocketConnection webSocketConnection = this.mUploadSocket;
        if (webSocketConnection != null) {
            if (webSocketConnection.isConnected()) {
                this.mUploadSocket.cutOff();
                LogUtils.i(str, "===mUploadSocket  disconnect===");
            }
            this.mUploadSocket = null;
        }
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public boolean isConnect(WebSocketType webSocketType) {
        TransferHelper transferHelper;
        if (webSocketType == WebSocketType.TYPE_ACCESS) {
            WebSocketConnection webSocketConnection = this.mAccessSocket;
            if (webSocketConnection != null) {
                return webSocketConnection.isConnected();
            }
            return false;
        }
        if (webSocketType == WebSocketType.TYPE_UPLOAD) {
            WebSocketConnection webSocketConnection2 = this.mUploadSocket;
            if (webSocketConnection2 != null) {
                return webSocketConnection2.isConnected();
            }
            return false;
        }
        if (webSocketType == WebSocketType.TYPE_DOWNLOAD) {
            WebSocketConnection webSocketConnection3 = this.mDownloadSocket;
            if (webSocketConnection3 != null) {
                return webSocketConnection3.isConnected();
            }
            return false;
        }
        if (webSocketType == WebSocketType.TYPE_INSTANCE_WS_SERVER) {
            WebSocketConnection webSocketConnection4 = this.mInstanceSocketWsServer;
            if (webSocketConnection4 != null) {
                return webSocketConnection4.isConnected();
            }
            return false;
        }
        if (webSocketType != WebSocketType.TYPE_TRANSFER || (transferHelper = this.mTransferHelper) == null) {
            return false;
        }
        return transferHelper.isConnected();
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public boolean isHearBeatNormal(WebSocketType webSocketType) {
        WebSocketHeartBeatRecorder webSocketHeartBeatRecorder;
        if (webSocketType != WebSocketType.TYPE_INSTANCE_WS_SERVER) {
            return webSocketType == WebSocketType.TYPE_ACCESS && (webSocketHeartBeatRecorder = this.accessHeartBeat) != null && webSocketHeartBeatRecorder.isNormal();
        }
        WebSocketHeartBeatRecorder webSocketHeartBeatRecorder2 = this.wsServerHeartBeat;
        return webSocketHeartBeatRecorder2 != null && webSocketHeartBeatRecorder2.isNormal();
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public void removeObserver(WebSocketType webSocketType, WebSocketObserver webSocketObserver) {
        if (webSocketType == WebSocketType.TYPE_ACCESS) {
            this.mAccessObservers.remove(webSocketObserver.toString());
        }
        if (webSocketType == WebSocketType.TYPE_INSTANCE_WS_SERVER) {
            this.mWsServerObservers.remove(webSocketObserver.toString());
        }
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public void sendBinaryMessage(WebSocketType webSocketType, byte[] bArr) {
        if (webSocketType == WebSocketType.TYPE_INSTANCE_WS_SERVER) {
            WebSocketConnection webSocketConnection = this.mInstanceSocketWsServer;
            if (webSocketConnection == null || !webSocketConnection.isConnected()) {
                LogUtils.i(TAG, "mInstanceSocketWsServer==send failed");
                return;
            }
            LogUtils.i(TAG, "sendBinaryMessage==send success:  " + bArr.length);
            this.mInstanceSocketWsServer.sendMessage(bArr, true);
            return;
        }
        if (webSocketType == WebSocketType.TYPE_UPLOAD) {
            WebSocketConnection webSocketConnection2 = this.mUploadSocket;
            if (webSocketConnection2 == null || !webSocketConnection2.isConnected()) {
                LogUtils.i(TAG, "mUploadSocket==send failed");
                return;
            } else {
                this.mUploadSocket.sendMessage(bArr, true);
                return;
            }
        }
        if (webSocketType == WebSocketType.TYPE_DOWNLOAD) {
            WebSocketConnection webSocketConnection3 = this.mDownloadSocket;
            if (webSocketConnection3 == null || !webSocketConnection3.isConnected()) {
                LogUtils.i(TAG, "mDownloadSocket==send failed");
            } else {
                this.mDownloadSocket.sendMessage(bArr, true);
            }
        }
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public void sendTextMessage(WebSocketType webSocketType, String str) {
        sendTextMessage(webSocketType, str, true);
    }

    public void setCloudPlayInfo(CloudPlayInfo cloudPlayInfo) {
        this.mCloudPlayInfo = cloudPlayInfo;
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public void setConfig(WebSocketConfig webSocketConfig) {
        if (webSocketConfig == null) {
            this.mWebSocketConfig = new WebSocketConfig();
            return;
        }
        this.mWebSocketConfig = new WebSocketConfig(webSocketConfig);
        int accessPingInterval = webSocketConfig.getAccessPingInterval();
        int accessPingTimeoutCountMax = webSocketConfig.getAccessPingTimeoutCountMax();
        int framePayloadMaxSize = webSocketConfig.getFramePayloadMaxSize();
        int messagePayloadMaxSize = webSocketConfig.getMessagePayloadMaxSize();
        int saasLinkTimeOutSec = webSocketConfig.getSaasLinkTimeOutSec();
        int wsLinkTimeOutSec = webSocketConfig.getWsLinkTimeOutSec();
        if (accessPingInterval <= 0) {
            accessPingInterval = 10;
        }
        this.mWebSocketHeartBeatInterval = accessPingInterval;
        if (accessPingTimeoutCountMax <= 0) {
            accessPingTimeoutCountMax = 3;
        }
        this.mWebSocketHeartBeatTimeOutCountMax = accessPingTimeoutCountMax;
        this.mFramePayloadMaxSize = framePayloadMaxSize <= 128 ? 131072 : framePayloadMaxSize * 1024;
        this.mMessagePayloadMaxSize = messagePayloadMaxSize > 128 ? messagePayloadMaxSize * 1024 : 131072;
        this.mSaasLinkTimeOut = saasLinkTimeOutSec <= 0 ? 6000 : saasLinkTimeOutSec * 1000;
        this.mWsLinkTimeOut = wsLinkTimeOutSec > 0 ? wsLinkTimeOutSec * 1000 : 6000;
    }

    @Override // com.haima.hmcp.business.IWebSocket
    public void sendTextMessage(WebSocketType webSocketType, String str, boolean z10) {
        if (webSocketType == WebSocketType.TYPE_TRANSFER) {
            TransferHelper transferHelper = this.mTransferHelper;
            if (transferHelper == null || !transferHelper.isConnected()) {
                HmcpPlayerListener hmcpPlayerListener = this.mPlayerListener;
                if (hmcpPlayerListener != null) {
                    hmcpPlayerListener.onError(ErrorType.OTHER, "mTransferHelper connection error");
                }
            } else {
                this.mTransferHelper.enviarMessage(str);
            }
        }
        if (webSocketType == WebSocketType.TYPE_ACCESS) {
            WebSocketConnection webSocketConnection = this.mAccessSocket;
            if (webSocketConnection == null || !webSocketConnection.isConnected()) {
                HmcpPlayerListener hmcpPlayerListener2 = this.mPlayerListener;
                if (hmcpPlayerListener2 != null) {
                    hmcpPlayerListener2.onError(ErrorType.OTHER, "mAccessSocket connection error");
                }
            } else {
                this.mAccessSocket.sendMessage(str);
            }
        }
        if (webSocketType == WebSocketType.TYPE_INSTANCE_WS_SERVER) {
            WebSocketConnection webSocketConnection2 = this.mInstanceSocketWsServer;
            if (webSocketConnection2 == null || !webSocketConnection2.isConnected()) {
                LogUtils.i(TAG, "mInstanceSocketWsServer==send failed");
            } else {
                LogUtils.i(TAG, "ws server sendTextMessage==send success:  " + str);
                this.mInstanceSocketWsServer.sendMessage(str);
            }
        }
        if (webSocketType == WebSocketType.TYPE_UPLOAD) {
            WebSocketConnection webSocketConnection3 = this.mUploadSocket;
            if (webSocketConnection3 == null || !webSocketConnection3.isConnected()) {
                LogUtils.i(TAG, "mUploadSocket==send failed");
            } else {
                LogUtils.i(TAG, "upload sendTextMessage==send success:  " + str);
                this.mUploadSocket.sendMessage(str);
            }
        }
        if (webSocketType == WebSocketType.TYPE_DOWNLOAD) {
            WebSocketConnection webSocketConnection4 = this.mDownloadSocket;
            if (webSocketConnection4 == null || !webSocketConnection4.isConnected()) {
                LogUtils.i(TAG, "mDownloadSocket==send failed");
                return;
            }
            LogUtils.i(TAG, "download sendTextMessage==send success:  " + str);
            this.mDownloadSocket.sendMessage(str);
        }
    }
}
