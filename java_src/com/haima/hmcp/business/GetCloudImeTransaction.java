package com.haima.hmcp.business;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.GetCloudIMEMessage;
import com.haima.hmcp.beans.GetCloudImeCallbackResult;
import com.haima.hmcp.beans.IMEConfig;
import com.haima.hmcp.beans.ReportTimer;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.listeners.GetCloudIMECallback;
import com.haima.hmcp.utils.JsonUtil;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.widgets.BaseVideoView;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class GetCloudImeTransaction extends BaseTransaction {
    private final String TAG;
    private final CopyOnWriteArrayList<GetCloudIMECallback> callbackList;

    public class GetCloudImeTimerTask extends BaseTransaction.BaseTimerTask {
        public GetCloudImeTimerTask() {
            super();
        }

        @Override // com.haima.hmcp.business.BaseTransaction.BaseTimerTask, java.lang.Runnable
        public void run() {
            if (this.cancel) {
                return;
            }
            CountlyUtil.recordErrorEventRaw(JsonUtil.toJsonString(new ReportTimer("GetCloudImeTransaction", "" + hashCode(), ((long) GetCloudImeTransaction.this.mTimeOutSeconds) * 1000, false, ReportTimer.Action.EXECUTE)));
            GetCloudImeTransaction.this.getCloudIMETypeTimeout();
        }
    }

    public GetCloudImeTransaction(@NonNull Context context) {
        super(context, "GetCloudImeTransaction");
        this.TAG = "GetCloudImeTransaction";
        this.callbackList = new CopyOnWriteArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getCloudIMETypeTimeout() {
        LogUtils.d("GetCloudImeTransaction", "getCloudImeType timeout");
        GetCloudImeCallbackResult getCloudImeCallbackResult = new GetCloudImeCallbackResult();
        getCloudImeCallbackResult.result = 0;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("getCloudImeType TimeOut: ");
        stringBuffer.append(this.mTimeOutSeconds);
        getCloudImeCallbackResult.setMessage(stringBuffer.toString());
        getCloudImeTypeCallback(getCloudImeCallbackResult);
        this.mTask = null;
    }

    public void cancelGetCloudImeTypeTask(String str) {
        if (isTaskOpen()) {
            cancelTimerTask();
            GetCloudImeCallbackResult getCloudImeCallbackResult = new GetCloudImeCallbackResult();
            getCloudImeCallbackResult.result = 0;
            getCloudImeCallbackResult.setMessage(str);
            getCloudImeTypeCallback(getCloudImeCallbackResult);
        }
    }

    @Override // com.haima.hmcp.business.BaseTransaction
    public BaseTransaction.BaseTimerTask createTask() {
        return new GetCloudImeTimerTask();
    }

    public void getCloudImeType(GetCloudIMECallback getCloudIMECallback, IMEConfig iMEConfig, IWebSocket iWebSocket) {
        LogUtils.d("GetCloudImeTransaction", "start getCloudImeType");
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_IME);
        if (getCloudIMECallback == null) {
            CountlyUtil.recordErrorEvent("getCloudImeType Parameter not valid");
            return;
        }
        LogUtils.d("GetCloudImeTransaction", "add " + getCloudIMECallback);
        this.callbackList.add(getCloudIMECallback);
        if (isTaskOpen()) {
            LogUtils.d("GetCloudImeTransaction", "getCloudImeType is running");
            GetCloudImeCallbackResult getCloudImeCallbackResult = new GetCloudImeCallbackResult();
            getCloudImeCallbackResult.result = 0;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("getCloudImeType is running");
            getCloudImeCallbackResult.setMessage(stringBuffer.toString());
            getCloudImeTypeCallback(getCloudImeCallbackResult);
            return;
        }
        if (iMEConfig == null || iWebSocket == null) {
            GetCloudImeCallbackResult getCloudImeCallbackResult2 = new GetCloudImeCallbackResult();
            getCloudImeCallbackResult2.result = 0;
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("webSocketManager is null: ");
            stringBuffer2.append(iWebSocket == null);
            stringBuffer2.append("; ");
            stringBuffer2.append("imeConfig is null: ");
            stringBuffer2.append(iMEConfig == null);
            getCloudImeCallbackResult2.setMessage(stringBuffer2.toString());
            getCloudImeTypeCallback(getCloudImeCallbackResult2);
            return;
        }
        this.mTimeOutSeconds = iMEConfig.getSwitchIMEAckTimeout();
        WebSocketManager.WebSocketType webSocketType = WebSocketManager.WebSocketType.TYPE_INSTANCE_WS_SERVER;
        boolean zIsConnect = iWebSocket.isConnect(webSocketType);
        if (zIsConnect) {
            iWebSocket.sendTextMessage(webSocketType, new GetCloudIMEMessage().toString());
            startTimerTask();
            return;
        }
        GetCloudImeCallbackResult getCloudImeCallbackResult3 = new GetCloudImeCallbackResult();
        getCloudImeCallbackResult3.result = 0;
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append("ws server is not active");
        stringBuffer3.append("ws server connected: ");
        stringBuffer3.append(zIsConnect);
        getCloudImeCallbackResult3.setMessage(stringBuffer3.toString());
        getCloudImeTypeCallback(getCloudImeCallbackResult3);
    }

    protected void getCloudImeTypeCallback(GetCloudImeCallbackResult getCloudImeCallbackResult) {
        LogUtils.d("GetCloudImeTransaction", "end getCloudImeType result: " + getCloudImeCallbackResult.getMessage());
        CountlyUtil.recordEvent(Constants.COUNTLY_GET_CLOUD_IME_RESULT, getCloudImeCallbackResult.getMessage());
        Iterator<GetCloudIMECallback> it2 = this.callbackList.iterator();
        while (it2.hasNext()) {
            it2.next().getCloudImeResult(getCloudImeCallbackResult.result, getCloudImeCallbackResult.imeType);
        }
        this.callbackList.clear();
    }

    public void parseGetCloudImeTypeMessage(String str) {
        LogUtils.d("GetCloudImeTransaction", "parse getCloudImeType message: " + str);
        cancelTimerTask();
        if (TextUtils.isEmpty(str)) {
            GetCloudImeCallbackResult getCloudImeCallbackResult = new GetCloudImeCallbackResult();
            getCloudImeCallbackResult.result = 0;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("payload null cannot parse");
            getCloudImeCallbackResult.setMessage(stringBuffer.toString());
            getCloudImeTypeCallback(getCloudImeCallbackResult);
            return;
        }
        try {
            String strOptString = new JSONObject(str).optString(BaseVideoView.IME_TYPE, null);
            if (TextUtils.equals(strOptString, "error")) {
                GetCloudImeCallbackResult getCloudImeCallbackResult2 = new GetCloudImeCallbackResult();
                getCloudImeCallbackResult2.result = 0;
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("rom getCloudImeType error");
                getCloudImeCallbackResult2.setMessage(stringBuffer2.toString());
                getCloudImeTypeCallback(getCloudImeCallbackResult2);
                return;
            }
            if (!TextUtils.equals(strOptString, Constants.WS_MESSAGE_TYPE_GET_CLOUD_IME_TYPE) && !TextUtils.equals(strOptString, "local_ime")) {
                GetCloudImeCallbackResult getCloudImeCallbackResult3 = new GetCloudImeCallbackResult();
                getCloudImeCallbackResult3.result = 0;
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("rom getCloudImeType unknown result");
                getCloudImeCallbackResult3.setMessage(stringBuffer3.toString());
                getCloudImeTypeCallback(getCloudImeCallbackResult3);
                return;
            }
            GetCloudImeCallbackResult getCloudImeCallbackResult4 = new GetCloudImeCallbackResult();
            getCloudImeCallbackResult4.result = 1;
            getCloudImeCallbackResult4.imeType = !TextUtils.equals(strOptString, Constants.WS_MESSAGE_TYPE_GET_CLOUD_IME_TYPE) ? 1 : 0;
            StringBuffer stringBuffer4 = new StringBuffer();
            stringBuffer4.append("rom getCloudImeType success,");
            stringBuffer4.append("type:");
            stringBuffer4.append(strOptString);
            getCloudImeCallbackResult4.setMessage(stringBuffer4.toString());
            getCloudImeTypeCallback(getCloudImeCallbackResult4);
        } catch (JSONException unused) {
            GetCloudImeCallbackResult getCloudImeCallbackResult5 = new GetCloudImeCallbackResult();
            getCloudImeCallbackResult5.result = 0;
            StringBuffer stringBuffer5 = new StringBuffer();
            stringBuffer5.append("ack parse error; ");
            stringBuffer5.append("payload: ");
            stringBuffer5.append(str);
            getCloudImeCallbackResult5.setMessage(stringBuffer5.toString());
            getCloudImeTypeCallback(getCloudImeCallbackResult5);
        }
    }

    public void removeCallback(GetCloudIMECallback getCloudIMECallback) {
        if (this.callbackList.isEmpty()) {
            return;
        }
        LogUtils.d("GetCloudImeTransaction", getCloudIMECallback + " remove " + this.callbackList.remove(getCloudIMECallback));
    }
}
