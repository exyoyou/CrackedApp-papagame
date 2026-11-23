package com.haima.hmcp.business.display;

import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.business.IWebSocket;
import com.haima.hmcp.business.WebSocketManager;
import com.haima.hmcp.business.display.ws.HmScreenOrientation;
import com.haima.hmcp.business.display.ws.HmScreenOrientationBaseMsg;
import com.haima.hmcp.business.display.ws.HmScreenOrientationResult;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.utils.LogUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class DataProcessor implements TimeoutListener<String> {
    private static final String KEY_CODE = "code";
    private static final String KEY_MESSAGE = "message";
    private static final String KEY_TYPE = "type";
    private static final int ROM_SIDE_LANDSCAPE = 0;
    private static final int ROM_SIDE_PORTRAIT = 3;
    private static final String TAG = HmScreenMonitor.TAG;
    private static final int TIME_OUT_COUNTS_LIMIT = -1;
    private static final String TYPE_SCREEN_ORIENTATION = "type_screen_orientation";
    private HmScreenMonitorConfig config;
    private Handler handler;
    private HandlerThread handlerThread;
    private TimeoutTrigger<String> timeoutTrigger;
    private IWebSocket webSocket;

    public DataProcessor(IWebSocket iWebSocket) {
        HandlerThread handlerThread = new HandlerThread("ScreenMonitorHandler");
        this.handlerThread = handlerThread;
        handlerThread.start();
        this.handler = new Handler(this.handlerThread.getLooper());
        this.webSocket = iWebSocket;
        TimeoutTrigger<String> timeoutTrigger = new TimeoutTrigger<>();
        this.timeoutTrigger = timeoutTrigger;
        timeoutTrigger.setTimeoutListener(this);
    }

    private void cancelTimeout() {
        if (this.timeoutTrigger == null) {
            LogUtils.d(TAG, "can`t cancel timeout, cause trigger is null");
        } else if (this.handler == null) {
            LogUtils.d(TAG, "can`t cancel timeout, cause handler is null");
        } else {
            LogUtils.d(TAG, "cancel timeout");
            this.handler.removeCallbacks(this.timeoutTrigger);
        }
    }

    private HmScreenOrientationResult convertToBean(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        HmScreenOrientationResult hmScreenOrientationResult = new HmScreenOrientationResult();
        try {
            JSONObject jSONObject = new JSONObject(str);
            hmScreenOrientationResult.type = jSONObject.optString("type", null);
            hmScreenOrientationResult.code = jSONObject.optInt("code", -999);
            hmScreenOrientationResult.message = jSONObject.optString("message", null);
            return hmScreenOrientationResult;
        } catch (JSONException unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private String convertToJsonData(HmScreenOrientationBaseMsg<HmScreenOrientation> hmScreenOrientationBaseMsg) {
        if (hmScreenOrientationBaseMsg == null || hmScreenOrientationBaseMsg.data == 0) {
            LogUtils.e(TAG, "can`t convert order data, cause data is null");
            return null;
        }
        if (TextUtils.isEmpty(hmScreenOrientationBaseMsg.bid)) {
            LogUtils.e(TAG, "can`t convert order data, cause bid is empty");
            return null;
        }
        if (TextUtils.isEmpty(hmScreenOrientationBaseMsg.cid)) {
            LogUtils.e(TAG, "can`t convert order data, cause cid is empty");
            return null;
        }
        if (TextUtils.isEmpty(hmScreenOrientationBaseMsg.mid)) {
            LogUtils.e(TAG, "can`t convert order data, cause mid is empty");
            return null;
        }
        if (TextUtils.isEmpty(hmScreenOrientationBaseMsg.type)) {
            LogUtils.e(TAG, "can`t convert order data, cause type is empty");
            return null;
        }
        T t10 = hmScreenOrientationBaseMsg.data;
        if (((HmScreenOrientation) t10).orientation != 0 && ((HmScreenOrientation) t10).orientation != 3) {
            LogUtils.e(TAG, "can`t convert order data, cause orientation is validate");
            return null;
        }
        if (((HmScreenOrientation) t10).rotation < 0 || ((HmScreenOrientation) t10).rotation > 3) {
            LogUtils.e(TAG, "can`t convert order data, cause rotation is out of range");
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(Constants.WS_MSG_KEY_BID, hmScreenOrientationBaseMsg.bid);
            jSONObject.put("cid", hmScreenOrientationBaseMsg.cid);
            jSONObject.put("mid", hmScreenOrientationBaseMsg.mid);
            jSONObject.put("type", hmScreenOrientationBaseMsg.type);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("orientation", ((HmScreenOrientation) hmScreenOrientationBaseMsg.data).orientation);
            jSONObject2.put("rotation", ((HmScreenOrientation) hmScreenOrientationBaseMsg.data).rotation);
            jSONObject.put("data", jSONObject2);
        } catch (JSONException unused) {
            LogUtils.e(TAG, "convert to json data error");
        }
        return jSONObject.toString();
    }

    private int convertToRomOrientation(int i10) {
        if (i10 == 0) {
            return 3;
        }
        if (i10 != 1) {
            if (i10 == 2) {
                return 3;
            }
            if (i10 != 3) {
                return -1;
            }
        }
        return 0;
    }

    private HmScreenOrientationBaseMsg<HmScreenOrientation> getBaseMsg() {
        return new HmScreenOrientationBaseMsg<>("type_screen_orientation", CountlyUtil.mCloudID, CountlyUtil.mAccessKey);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [T, com.haima.hmcp.business.display.ws.HmScreenOrientation] */
    private String getSendScreenOrientationData(int i10) {
        int iConvertToRomOrientation = convertToRomOrientation(i10);
        if (iConvertToRomOrientation == -1) {
            String str = "get screen orientation data, unknown orientation = " + iConvertToRomOrientation;
            CountlyUtil.recordErrorEvent(str);
            LogUtils.e(TAG, str);
            return null;
        }
        LogUtils.d(TAG, "get screen orientation data, orientation = " + iConvertToRomOrientation);
        ?? hmScreenOrientation = new HmScreenOrientation(iConvertToRomOrientation, i10);
        HmScreenOrientationBaseMsg<HmScreenOrientation> baseMsg = getBaseMsg();
        baseMsg.data = hmScreenOrientation;
        baseMsg.mid = "A" + getSystemTimeMs();
        return convertToJsonData(baseMsg);
    }

    private long getSystemTimeMs() {
        return System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: internalParsePayload, reason: merged with bridge method [inline-methods] */
    public void lambda$receivePayload$1(String str) {
        HmScreenOrientationResult hmScreenOrientationResultConvertToBean = convertToBean(str);
        if (hmScreenOrientationResultConvertToBean == null) {
            LogUtils.e(TAG, "parse payload is error");
            return;
        }
        if (!TextUtils.equals(hmScreenOrientationResultConvertToBean.type, "type_screen_orientation")) {
            LogUtils.e(TAG, "payload type is not match: " + hmScreenOrientationResultConvertToBean.type);
            return;
        }
        cancelTimeout();
        String str2 = TAG;
        LogUtils.d(str2, "payload code: " + hmScreenOrientationResultConvertToBean.code);
        int i10 = hmScreenOrientationResultConvertToBean.code;
        if (i10 == -999) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("code:");
            stringBuffer.append(hmScreenOrientationResultConvertToBean.code);
            stringBuffer.append("; ");
            stringBuffer.append("message:");
            stringBuffer.append(hmScreenOrientationResultConvertToBean.message);
            CountlyUtil.recordEvent(Constants.COUNTLY_SCREEN_ORDER_FAIL, stringBuffer.toString());
            LogUtils.e(str2, "payload code is not validate");
            return;
        }
        if (i10 == 0 || i10 == 3) {
            LogUtils.d(str2, "screen orientation change success");
            CountlyUtil.recordEvent(Constants.COUNTLY_SCREEN_ORDER_SUCCESS);
            return;
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("code:");
        stringBuffer2.append(hmScreenOrientationResultConvertToBean.code);
        stringBuffer2.append("; ");
        stringBuffer2.append("message:");
        stringBuffer2.append(hmScreenOrientationResultConvertToBean.message);
        LogUtils.d(str2, "screen orientation change fail: " + ((Object) stringBuffer2));
        CountlyUtil.recordEvent(Constants.COUNTLY_SCREEN_ORDER_FAIL, stringBuffer2.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: internalProcessData, reason: merged with bridge method [inline-methods] */
    public void lambda$sendData$0(int i10) {
        String sendScreenOrientationData = getSendScreenOrientationData(i10);
        if (sendScreenOrientationData == null) {
            LogUtils.e(TAG, "not send screen orientation, cause sendMsg is null");
            return;
        }
        internalSendMessage(this.webSocket, sendScreenOrientationData);
        HmScreenMonitorConfig hmScreenMonitorConfig = this.config;
        if (hmScreenMonitorConfig == null) {
            LogUtils.d(TAG, "config is null, do not start timeout");
            return;
        }
        hmScreenMonitorConfig.reset();
        int timeout = this.config.getTimeout();
        if (timeout == -1) {
            LogUtils.d(TAG, "timeout counts is out of limit");
        } else {
            startTimeout(timeout, sendScreenOrientationData);
        }
    }

    private boolean internalSendMessage(IWebSocket iWebSocket, String str) {
        String str2 = TAG;
        LogUtils.d(str2, "ready to send data");
        if (str == null) {
            LogUtils.e(str2, "not send screen orientation data to ws, cause msg is null");
            return false;
        }
        if (iWebSocket == null) {
            LogUtils.e(str2, "not send screen orientation data to ws, cause IWebSocket is null");
            return false;
        }
        WebSocketManager.WebSocketType webSocketType = WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER;
        if (iWebSocket.isConnect(webSocketType)) {
            iWebSocket.sendTextMessage(webSocketType, str);
            return true;
        }
        LogUtils.e(str2, "not send screen orientation data to ws, cause ws server is not connect");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTimeout$2(String str) {
        internalSendMessage(this.webSocket, str);
    }

    private void startTimeout(long j10, String str) {
        if (this.timeoutTrigger == null) {
            LogUtils.d(TAG, "can`t start timeout, cause trigger is null");
        } else {
            if (this.handler == null) {
                LogUtils.d(TAG, "can`t start timeout, cause handler is null");
                return;
            }
            cancelTimeout();
            this.timeoutTrigger.setData(str);
            this.handler.postDelayed(this.timeoutTrigger, j10);
        }
    }

    public void receivePayload(final String str) {
        Handler handler = this.handler;
        if (handler == null) {
            LogUtils.d(TAG, "can`t parse payload, cause handler is null");
        } else {
            handler.post(new Runnable() { // from class: com.haima.hmcp.business.display.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33836b.lambda$receivePayload$1(str);
                }
            });
        }
    }

    public void release() {
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.handler = null;
        }
        HandlerThread handlerThread = this.handlerThread;
        if (handlerThread != null) {
            handlerThread.getLooper().quit();
            this.handlerThread = null;
        }
        TimeoutTrigger<String> timeoutTrigger = this.timeoutTrigger;
        if (timeoutTrigger != null) {
            timeoutTrigger.setData(null);
            this.timeoutTrigger.setTimeoutListener(null);
            this.timeoutTrigger = null;
        }
        this.webSocket = null;
    }

    public void sendData(final int i10) {
        Handler handler = this.handler;
        if (handler == null) {
            LogUtils.e(TAG, "is already release, need to new class");
        } else {
            handler.post(new Runnable() { // from class: com.haima.hmcp.business.display.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33834b.lambda$sendData$0(i10);
                }
            });
        }
    }

    public void setConfig(HmScreenMonitorConfig hmScreenMonitorConfig) {
        this.config = hmScreenMonitorConfig;
    }

    public void stop() {
        LogUtils.d(TAG, "data processor is stop");
        cancelTimeout();
    }

    @Override // com.haima.hmcp.business.display.TimeoutListener
    public void onTimeout(final String str) {
        int timeout = this.config.getTimeout();
        if (timeout == -1) {
            LogUtils.d(TAG, "timeout counts is out of limit");
            CountlyUtil.recordEvent(Constants.COUNTLY_SCREEN_ORDER_RESEND_OUT_OF_LIMIT);
        } else {
            if (this.handler == null) {
                LogUtils.d(TAG, "handler is null and can`t retry when timeout");
                return;
            }
            LogUtils.d(TAG, "send data timeout and retry");
            CountlyUtil.recordEvent(Constants.COUNTLY_SCREEN_ORDER_TIME_OUT);
            this.handler.post(new Runnable() { // from class: com.haima.hmcp.business.display.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33832b.lambda$onTimeout$2(str);
                }
            });
            this.timeoutTrigger.setData(str);
            this.handler.postDelayed(this.timeoutTrigger, timeout);
        }
    }
}
