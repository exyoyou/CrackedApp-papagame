package com.haima.hmcp.cloud.video.observer;

import android.text.TextUtils;
import android.util.Log;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.business.WebSocketManager;
import com.haima.hmcp.listeners.InnerDownloadCallback;
import com.haima.hmcp.listeners.WebSocketObserver;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class QueryObserver implements WebSocketObserver {
    private static final String TAG = "QueryObserver";
    private InnerDownloadCallback mCallback;

    public QueryObserver(InnerDownloadCallback innerDownloadCallback) {
        this.mCallback = innerDownloadCallback;
    }

    @Override // com.haima.hmcp.listeners.WebSocketObserver
    public void onMessage(WebSocketManager.WebSocketType webSocketType, String str) {
        if (str.contains(Constants.WS_MESSAGE_TYPE_DOWNLOAD_FILE) && str.contains("download_file_list")) {
            LogUtils.e(TAG, "download-file: receive download_file message: " + str);
            ArrayList arrayList = new ArrayList();
            try {
                String strOptString = new JSONObject(str).optString("data", "");
                if (!TextUtils.isEmpty(strOptString) && !strOptString.toLowerCase().contains("null")) {
                    JSONArray jSONArray = new JSONArray(strOptString);
                    for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                        JSONObject jSONObject = new JSONObject(jSONArray.get(i10).toString());
                        CloudFile cloudFile = new CloudFile();
                        cloudFile.setName(jSONObject.optString("name", ""));
                        cloudFile.setVideoDuration(jSONObject.optDouble("duration", 0.0d));
                        cloudFile.setSize(jSONObject.optLong("size", 0L));
                        cloudFile.setCloudPath(jSONObject.optString("path", ""));
                        cloudFile.setFileType(jSONObject.optString("type", ""));
                        arrayList.add(cloudFile);
                    }
                }
            } catch (JSONException e10) {
                LogUtils.e(TAG, Log.getStackTraceString(e10));
            }
            InnerDownloadCallback innerDownloadCallback = this.mCallback;
            if (innerDownloadCallback != null) {
                innerDownloadCallback.onQuerySuccess(arrayList);
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
