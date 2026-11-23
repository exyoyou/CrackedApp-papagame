package com.byazt.zj;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.c.IDownloadListener;
import com.byazt.ev.EnqueueType;
import com.byazt.m.BaseException;
import com.byazt.omf.gt;
import com.byazt.t.DownloadInfo;
import com.byazt.t.DownloadTask;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.join.mgps.Util.v0;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_NULL_TAG, 20})
public class c implements IDownloadListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f22767a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f22768c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f22769n;
    public String tt;
    public InterfaceC0502c uj;
    public String ve;
    public int sp = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f22770x = true;

    /* JADX INFO: renamed from: com.byazt.zj.c$c, reason: collision with other inner class name */
    public interface InterfaceC0502c {
        void c(DownloadInfo downloadInfo);

        void c(DownloadInfo downloadInfo, int i10);

        void c(DownloadInfo downloadInfo, BaseException baseException);

        void c(DownloadInfo downloadInfo, BaseException baseException, int i10);

        void tt(DownloadInfo downloadInfo);

        void tt(DownloadInfo downloadInfo, int i10);
    }

    public c(String str, String str2, String str3, String str4, boolean z10, InterfaceC0502c interfaceC0502c) {
        this.f22768c = str2;
        this.tt = str3;
        this.ve = str4;
        this.uj = interfaceC0502c;
        this.f22769n = str;
        this.f22767a = z10;
    }

    public void c(Context context) {
        DownloadTask downloadTaskMonitorScene = com.byazt.zz.tt.with(context).url(this.f22768c).name(this.ve).onlyWifi(this.f22767a).savePath(new File(this.tt).getAbsolutePath()).downloadSetting(c()).enqueueType(EnqueueType.ENQUEUE_TAIL).needIndependentProcess(false).subThreadListener(this).monitorScene("plugin_downloader");
        com.byazt.k.c.c(com.byazt.zz.ve.c(this.f22768c, new File(this.tt).getAbsolutePath()), c());
        downloadTaskMonitorScene.asyncDownload(null);
    }

    @Override // com.byazt.c.IDownloadListener
    public void onCanceled(DownloadInfo downloadInfo) {
    }

    @Override // com.byazt.c.IDownloadListener
    public void onFailed(DownloadInfo downloadInfo, BaseException baseException) {
        if (!this.f22770x) {
            InterfaceC0502c interfaceC0502c = this.uj;
            if (interfaceC0502c != null) {
                interfaceC0502c.c(downloadInfo, baseException, this.sp);
                return;
            }
            return;
        }
        this.f22770x = false;
        InterfaceC0502c interfaceC0502c2 = this.uj;
        if (interfaceC0502c2 != null) {
            interfaceC0502c2.c(downloadInfo, baseException);
        }
    }

    @Override // com.byazt.c.IDownloadListener
    public void onFirstStart(DownloadInfo downloadInfo) {
    }

    @Override // com.byazt.c.IDownloadListener
    public void onFirstSuccess(DownloadInfo downloadInfo) {
    }

    @Override // com.byazt.c.IDownloadListener
    public void onPause(DownloadInfo downloadInfo) {
    }

    @Override // com.byazt.c.IDownloadListener
    public void onPrepare(DownloadInfo downloadInfo) {
    }

    @Override // com.byazt.c.IDownloadListener
    public void onProgress(DownloadInfo downloadInfo) {
    }

    @Override // com.byazt.c.IDownloadListener
    public void onRetry(DownloadInfo downloadInfo, BaseException baseException) {
    }

    @Override // com.byazt.c.IDownloadListener
    public void onRetryDelay(DownloadInfo downloadInfo, BaseException baseException) {
    }

    @Override // com.byazt.c.IDownloadListener
    public void onStart(DownloadInfo downloadInfo) {
        int i10 = this.sp + 1;
        this.sp = i10;
        InterfaceC0502c interfaceC0502c = this.uj;
        if (interfaceC0502c != null) {
            if (this.f22770x) {
                interfaceC0502c.c(downloadInfo);
            } else {
                interfaceC0502c.tt(downloadInfo, i10);
            }
        }
    }

    @Override // com.byazt.c.IDownloadListener
    public void onSuccessed(DownloadInfo downloadInfo) {
        if (!this.f22770x) {
            InterfaceC0502c interfaceC0502c = this.uj;
            if (interfaceC0502c != null) {
                interfaceC0502c.c(downloadInfo, this.sp);
                return;
            }
            return;
        }
        this.f22770x = false;
        InterfaceC0502c interfaceC0502c2 = this.uj;
        if (interfaceC0502c2 != null) {
            interfaceC0502c2.tt(downloadInfo);
        }
    }

    private JSONObject c() {
        JSONObject jSONObjectPo = gt.tt().po();
        if (jSONObjectPo == null) {
            return null;
        }
        String strOptString = jSONObjectPo.optString("config");
        if (TextUtils.isEmpty(strOptString)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(strOptString);
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(this.f22769n);
            if (jSONObjectOptJSONObject != null) {
                return jSONObjectOptJSONObject;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(v0.f50057a);
            if (jSONObjectOptJSONObject2 != null) {
                return jSONObjectOptJSONObject2;
            }
        } catch (JSONException unused) {
        }
        return null;
    }
}
