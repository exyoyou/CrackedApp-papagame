package com.haima.hmcp.cloud.video.observer;

import android.text.TextUtils;
import android.util.Log;
import com.alibaba.fastjson.a;
import com.haima.hmcp.beans.Message;
import com.haima.hmcp.business.WebSocketManager;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.listeners.InnerDownloadCallback;
import com.haima.hmcp.listeners.WebSocketObserver;
import com.haima.hmcp.widgets.AbsIjkVideoView;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class KeepAliveObserver implements WebSocketObserver {
    private static final String TAG = "KeepAliveObserver";
    private InnerDownloadCallback mCallback;

    public KeepAliveObserver(InnerDownloadCallback innerDownloadCallback) {
        this.mCallback = innerDownloadCallback;
    }

    @Override // com.haima.hmcp.listeners.WebSocketObserver
    public void onMessage(WebSocketManager.WebSocketType webSocketType, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            Message message = (Message) a.parseObject(str, Message.class);
            if (message.type == 2) {
                JSONObject jSONObject = new JSONObject(message.payload);
                if (jSONObject.has(AbsIjkVideoView.JSON_TAG_OPERATION)) {
                    Integer numValueOf = Integer.valueOf(jSONObject.getInt(AbsIjkVideoView.JSON_TAG_OPERATION));
                    String strOptString = jSONObject.optString("data");
                    if (numValueOf.intValue() != 41) {
                        return;
                    }
                    boolean z10 = new JSONObject(strOptString).getBoolean("flag");
                    InnerDownloadCallback innerDownloadCallback = this.mCallback;
                    if (innerDownloadCallback != null) {
                        innerDownloadCallback.onStartKeepAlive(z10);
                    }
                    CountlyUtil.recordErrorEvent("keep alive unknow result");
                }
            }
        } catch (JSONException e10) {
            CountlyUtil.recordErrorEvent("keep alive exception: " + Log.getStackTraceString(e10));
            InnerDownloadCallback innerDownloadCallback2 = this.mCallback;
            if (innerDownloadCallback2 != null) {
                innerDownloadCallback2.onStartKeepAlive(false);
            }
        }
    }

    @Override // com.haima.hmcp.listeners.WebSocketObserver
    public void onObserver(WebSocketManager.WebSocketType webSocketType, int i10) {
    }

    public void release() {
        this.mCallback = null;
    }
}
