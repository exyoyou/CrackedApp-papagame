package com.bykv.vk.component.ttvideo.log;

import android.content.Context;
import android.provider.Settings;
import com.bykv.vk.component.ttvideo.utils.TTVideoEngineLog;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public enum e {
    instance;


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private VideoEventEngineUploader f23262a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f23263b;

    public void a(Context context) {
        this.f23263b = context.getApplicationContext();
    }

    public synchronized void a(VideoEventEngineUploader videoEventEngineUploader) {
        this.f23262a = videoEventEngineUploader;
    }

    private void a(JSONObject jSONObject) {
        if (((TTVideoEngineLog.LogNotifyLevel >> 2) & 1) == 1 || ((TTVideoEngineLog.LogTurnOn >> 2) & 1) == 1) {
            TTVideoEngineLog.i("VideoEventManager", jSONObject.toString());
        }
        if (((TTVideoEngineLog.LogTurnOn >> 1) & 1) == 1) {
            Context context = this.f23263b;
            String string = context != null ? Settings.Global.getString(context.getContentResolver(), "engine.debug") : "";
            if (string != null) {
                for (String str : string.split(",", -1)) {
                    if (jSONObject.opt(str) != null) {
                        TTVideoEngineLog.i("VideoEventManager", str + ":" + jSONObject.opt(str));
                    }
                }
            }
        }
    }

    protected void a(boolean z10, JSONObject jSONObject) {
        synchronized (e.class) {
            try {
                if (jSONObject == null) {
                    return;
                }
                a(jSONObject);
                VideoEventEngineUploader videoEventEngineUploader = this.f23262a;
                if (videoEventEngineUploader != null) {
                    videoEventEngineUploader.onEvent("video_playq", jSONObject);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
