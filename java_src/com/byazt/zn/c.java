package com.byazt.zn;

import android.os.Build;
import androidx.annotation.NonNull;
import com.byazt.ar.AdDownloadModel;
import com.byazt.gq.t;
import com.byazt.hu.u;
import com.byazt.m.BaseException;
import com.byazt.nn.a;
import com.byazt.nn.i;
import com.byazt.nn.n;
import com.byazt.nr.m;
import com.byazt.p.uj;
import com.byazt.su.DownloadController;
import com.byazt.su.DownloadEventConfig;
import com.byazt.su.DownloadModel;
import com.byazt.t.DownloadInfo;
import com.sigmob.sdk.base.mta.PointCategory;
import com.tencent.cos.common.COSHttpResponseKey;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 501, 20})
public class c {

    /* JADX INFO: renamed from: com.byazt.zn.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 501, 44})
    private static class C0507c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static c f22929c = new c();
    }

    public static c c() {
        return C0507c.f22929c;
    }

    public void tt(long j10, int i10) {
        c(j10, i10, (DownloadInfo) null);
    }

    private c() {
    }

    public void c(long j10, int i10) {
        n nVarN = a.c().n(j10);
        if (nVarN.gr()) {
            com.byazt.dm.ve.c().c("sendClickEvent ModelBox notValid");
            return;
        }
        if (nVarN.ve.isEnableClickEvent()) {
            int i11 = 1;
            DownloadEventConfig downloadEventConfig = nVarN.ve;
            String clickItemTag = i10 == 1 ? downloadEventConfig.getClickItemTag() : downloadEventConfig.getClickButtonTag();
            String strC = u.c(nVarN.ve.getClickLabel(), "click");
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("download_click_type", Integer.valueOf(i10));
                jSONObject.putOpt("permission_notification", Integer.valueOf(uj.c() ? 1 : 2));
                if (!com.byazt.w.a.ve(t.getContext())) {
                    i11 = 2;
                }
                jSONObject.putOpt("network_available", Integer.valueOf(i11));
            } catch (JSONException e10) {
                m.c(e10);
            }
            c(clickItemTag, strC, jSONObject, nVarN);
            if (!"click".equals(strC) || nVarN.tt == null) {
                return;
            }
            ve.c().c(j10, nVarN.tt.getLogExtra());
        }
    }

    public void tt(DownloadInfo downloadInfo, BaseException baseException) {
        if (downloadInfo == null) {
            return;
        }
        com.byazt.dd.tt ttVarC = a.c().c(downloadInfo);
        if (ttVarC == null) {
            com.byazt.dm.ve.c().c("sendDownloadFailedEvent nativeModel null");
            return;
        }
        if (ttVarC.ve.get()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            com.byazt.hu.a.ve(downloadInfo, jSONObject);
            com.byazt.di.c.c(jSONObject, downloadInfo);
            if (baseException != null) {
                jSONObject.putOpt("fail_status", Integer.valueOf(baseException.getErrorCode()));
                jSONObject.putOpt("fail_msg", baseException.getErrorMessage());
                ttVarC.uj(baseException.getErrorCode());
                ttVarC.c(baseException.getErrorMessage());
            }
            ttVarC.zm();
            jSONObject.put("download_failed_times", ttVarC.gr());
            if (downloadInfo.getTotalBytes() > 0) {
                jSONObject.put("download_percent", downloadInfo.getCurBytes() / downloadInfo.getTotalBytes());
            }
            int i10 = 1;
            jSONObject.put("has_send_download_failed_finally", ttVarC.uj.get() ? 1 : 2);
            com.byazt.hu.a.c(ttVarC, jSONObject);
            if (!ttVarC.lt()) {
                i10 = 2;
            }
            jSONObject.put("is_update_download", i10);
        } catch (JSONException e10) {
            m.c(e10);
        }
        c(ttVarC.da(), PointCategory.DOWNLOAD_FAILED, jSONObject, ttVarC);
        i.c().c(ttVarC);
    }

    public void c(long j10, int i10, DownloadInfo downloadInfo) {
        String strC;
        n nVarN = a.c().n(j10);
        if (nVarN.gr()) {
            com.byazt.dm.ve.c().c("sendEvent ModelBox notValid");
            return;
        }
        JSONObject jSONObject = new JSONObject();
        u.c(jSONObject, "download_scene", Integer.valueOf(nVarN.gt()));
        if (i10 == 1) {
            strC = u.c(nVarN.ve.getStorageDenyLabel(), "storage_deny");
        } else if (i10 == 2) {
            strC = u.c(nVarN.ve.getClickStartLabel(), "click_start");
            com.byazt.hu.a.c(downloadInfo, jSONObject);
        } else if (i10 == 3) {
            strC = u.c(nVarN.ve.getClickPauseLabel(), "click_pause");
            com.byazt.hu.a.tt(downloadInfo, jSONObject);
        } else if (i10 == 4) {
            strC = u.c(nVarN.ve.getClickContinueLabel(), "click_continue");
            com.byazt.hu.a.ve(downloadInfo, jSONObject);
        } else if (i10 != 5) {
            strC = null;
        } else {
            if (downloadInfo != null) {
                try {
                    com.byazt.hu.a.c(jSONObject, downloadInfo.getId());
                    com.byazt.di.c.tt(jSONObject, downloadInfo);
                } catch (Throwable unused) {
                }
            }
            strC = u.c(nVarN.ve.getClickInstallLabel(), "click_install");
        }
        c(null, strC, jSONObject, 0L, 1, nVarN);
    }

    public void tt(String str, long j10) {
        com.byazt.dd.tt ttVarUj = a.c().uj(j10);
        if (ttVarUj != null) {
            tt(str, ttVarUj);
        } else {
            tt(str, a.c().n(j10));
        }
    }

    public void tt(String str, com.byazt.dd.c cVar) {
        c((String) null, str, cVar);
    }

    public void tt(String str, JSONObject jSONObject, com.byazt.dd.c cVar) {
        c((String) null, str, jSONObject, cVar);
    }

    public void c(String str, int i10, n nVar) {
        c(null, str, null, i10, 0, nVar);
    }

    public void c(long j10, boolean z10, int i10) {
        n nVarN = a.c().n(j10);
        if (nVarN.gr()) {
            com.byazt.dm.ve.c().c("sendQuickAppEvent ModelBox notValid");
            return;
        }
        if (nVarN.tt.getQuickAppModel() == null) {
            return;
        }
        DownloadModel downloadModel = nVarN.tt;
        if (downloadModel instanceof AdDownloadModel) {
            ((AdDownloadModel) downloadModel).setFunnelType(3);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("download_click_type", Integer.valueOf(i10));
        } catch (JSONException e10) {
            m.c(e10);
        }
        tt(z10 ? "deeplink_quickapp_success" : "deeplink_quickapp_failed", jSONObject, nVarN);
    }

    public void c(long j10, BaseException baseException) {
        n nVarN = a.c().n(j10);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("download_time", 0);
            if (baseException != null) {
                jSONObject.putOpt("fail_status", Integer.valueOf(baseException.getErrorCode()));
                jSONObject.putOpt("fail_msg", baseException.getErrorMessage());
            }
        } catch (JSONException e10) {
            m.c(e10);
        }
        tt(PointCategory.DOWNLOAD_FAILED, jSONObject, nVarN);
    }

    public void c(DownloadInfo downloadInfo) {
        com.byazt.dd.tt ttVarC = a.c().c(downloadInfo);
        if (ttVarC == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            com.byazt.hu.a.ve(downloadInfo, jSONObject);
            ttVarC.c(System.currentTimeMillis());
            c(ttVarC.da(), "download_resume", jSONObject, ttVarC);
            i.c().c(ttVarC);
        } catch (Throwable th) {
            m.c(th);
        }
    }

    public void c(JSONObject jSONObject, @NonNull com.byazt.dd.tt ttVar) {
        c(ttVar.da(), com.sigmob.sdk.base.common.a.F, jSONObject, ttVar);
    }

    public void c(DownloadInfo downloadInfo, BaseException baseException) {
        com.byazt.dd.tt ttVarC;
        if (downloadInfo == null || (ttVarC = a.c().c(downloadInfo)) == null || ttVarC.ve.get()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            com.byazt.di.c.c(jSONObject, downloadInfo);
            jSONObject.putOpt("fail_status", Integer.valueOf(ttVarC.eo()));
            jSONObject.putOpt("fail_msg", ttVarC.zb());
            jSONObject.put("download_failed_times", ttVarC.gr());
            if (downloadInfo.getTotalBytes() > 0) {
                jSONObject.put("download_percent", downloadInfo.getCurBytes() / downloadInfo.getTotalBytes());
            }
            jSONObject.put("download_status", downloadInfo.getRealStatus());
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (ttVarC.cu() > 0) {
                jSONObject.put("time_from_start_download", jCurrentTimeMillis - ttVarC.cu());
            }
            if (ttVarC.md() > 0) {
                jSONObject.put("time_from_download_resume", jCurrentTimeMillis - ttVarC.md());
            }
            int i10 = 1;
            jSONObject.put("is_update_download", ttVarC.lt() ? 1 : 2);
            jSONObject.put("can_show_notification", uj.c() ? 1 : 2);
            if (!ttVarC.uj.get()) {
                i10 = 2;
            }
            jSONObject.put("has_send_download_failed_finally", i10);
        } catch (JSONException e10) {
            m.c(e10);
        }
        c(ttVarC.da(), "download_cancel", jSONObject, ttVarC);
    }

    public void c(String str, long j10) {
        c(str, (JSONObject) null, j10);
    }

    public void c(String str, com.byazt.dd.c cVar) {
        c(str, (JSONObject) null, cVar);
    }

    public void c(String str, JSONObject jSONObject, long j10) {
        com.byazt.dd.c cVarUj = a.c().uj(j10);
        if (cVarUj != null) {
            c(str, jSONObject, cVarUj);
            return;
        }
        n nVarN = a.c().n(j10);
        if (nVarN.gr()) {
            com.byazt.dm.ve.c().c("sendUnityEvent ModelBox notValid");
        } else {
            c(str, jSONObject, nVarN);
        }
    }

    public void c(String str, JSONObject jSONObject, com.byazt.dd.c cVar) {
        JSONObject jSONObject2 = new JSONObject();
        u.c(jSONObject2, "unity_label", str);
        c(com.byazt.dyf.tt.AD_TAG_FEED, "ttdownloader_unity", u.c(jSONObject, jSONObject2), cVar);
    }

    public void c(String str, @NonNull DownloadModel downloadModel, @NonNull DownloadEventConfig downloadEventConfig, @NonNull DownloadController downloadController) {
        tt(str, new n(downloadModel.getId(), downloadModel, downloadEventConfig, downloadController));
    }

    public void c(String str, String str2, com.byazt.dd.c cVar) {
        c(str, str2, (JSONObject) null, cVar);
    }

    public void c(String str, String str2, JSONObject jSONObject, com.byazt.dd.c cVar) {
        c(str, str2, jSONObject, 0L, 0, cVar);
    }

    private void c(String str, String str2, JSONObject jSONObject, long j10, int i10, com.byazt.dd.c cVar) {
        if (cVar == null) {
            com.byazt.dm.ve.c().c("onEvent data null");
            return;
        }
        if ((cVar instanceof n) && ((n) cVar).gr()) {
            com.byazt.dm.ve.c().c("onEvent ModelBox notValid");
            return;
        }
        try {
            com.byazt.e.ve.c cVarVe = new com.byazt.e.ve.c().c(u.c(str, cVar.da(), com.byazt.dyf.tt.AD_TAG_FEED)).tt(str2).tt(cVar.ve()).c(cVar.tt()).ve(cVar.uj());
            if (j10 <= 0) {
                j10 = cVar.t();
            }
            com.byazt.e.ve.c cVarC = cVarVe.tt(j10).uj(cVar.i()).c(cVar.yp()).c(u.c(c(cVar), jSONObject)).tt(cVar.sl()).c(cVar.z());
            if (i10 <= 0) {
                i10 = 2;
            }
            c(cVarC.c(i10).c(cVar.u()).c());
        } catch (Exception e10) {
            com.byazt.dm.ve.c().c(e10, "onEvent");
        }
    }

    private JSONObject c(com.byazt.dd.c cVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            u.c(cVar.sp(), jSONObject);
            u.c(cVar.m(), jSONObject);
            jSONObject.putOpt(COSHttpResponseKey.DOWNLOAD_URL, cVar.c());
            jSONObject.putOpt("package_name", cVar.n());
            jSONObject.putOpt("android_int", Integer.valueOf(Build.VERSION.SDK_INT));
            jSONObject.putOpt("rom_name", com.byazt.i.n.x());
            jSONObject.putOpt("rom_version", com.byazt.i.n.i());
            jSONObject.putOpt("ttdownloader", 1);
            jSONObject.putOpt("funnel_type", Integer.valueOf(cVar.x()));
            if (cVar.x() == 2) {
                com.byazt.hu.a.tt(jSONObject, cVar);
            }
            if (com.byazt.i.n.m()) {
                com.byazt.hu.a.c(jSONObject);
            }
        } catch (Exception e10) {
            t.gt().c(e10, "getBaseJson");
        }
        return jSONObject;
    }

    private void c(com.byazt.e.ve veVar) {
        if (t.c() == null) {
            return;
        }
        if (veVar.u()) {
            t.c().c(veVar);
        } else {
            t.c().tt(veVar);
        }
    }
}
