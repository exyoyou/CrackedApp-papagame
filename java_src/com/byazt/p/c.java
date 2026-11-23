package com.byazt.p;

import android.app.Notification;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import com.byazt.m.BaseException;
import com.byazt.nr.m;
import com.byazt.t.DownloadInfo;
import com.byazt.tk.AdBaseConstants;
import com.byazt.w.a;
import com.byazt.zz.Downloader;
import com.haima.hmcp.device.input.manager.TcMouseManager;
import java.util.HashMap;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TcMouseManager.MOUSE_STARY, 20})
public class c extends com.byazt.n.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f18602a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f18603n;
    public final Context tt;
    public String uj;
    public final Resources ve;

    public c(Context context, int i10, String str, String str2, String str3, String str4) {
        super(i10, str);
        this.f18603n = str2;
        this.uj = str3;
        this.f18602a = str4;
        Context applicationContext = context.getApplicationContext();
        this.tt = applicationContext;
        this.ve = applicationContext.getResources();
    }

    @Override // com.byazt.n.c
    public void c(DownloadInfo downloadInfo) {
        super.c(downloadInfo);
        this.f18603n = downloadInfo.getSavePath();
        this.uj = downloadInfo.getName();
        this.f18602a = downloadInfo.getExtra();
    }

    @Override // com.byazt.n.c
    public void c(BaseException baseException, boolean z10) {
        if (this.tt == null) {
            return;
        }
        try {
            com.byazt.s.ve veVarC = com.byazt.z.uj.sl().c();
            if (veVarC != null) {
                this.f17040c = c(veVarC, baseException, z10);
            }
            c(this.f17040c);
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:111:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:68:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:69:0x0200  */
    /* JADX WARN: Code duplicated, block: B:71:0x020e A[PHI: r6 r21 r22
      0x020e: PHI (r6v14 com.byazt.m.BaseException) = 
      (r6v10 com.byazt.m.BaseException)
      (r6v10 com.byazt.m.BaseException)
      (r6v10 com.byazt.m.BaseException)
      (r6v24 com.byazt.m.BaseException)
     binds: [B:97:0x029c, B:99:0x029f, B:100:0x02a1, B:70:0x0201] A[DONT_GENERATE, DONT_INLINE]
      0x020e: PHI (r21v8 com.byazt.k.c) = (r21v6 com.byazt.k.c), (r21v6 com.byazt.k.c), (r21v6 com.byazt.k.c), (r21v12 com.byazt.k.c) binds: [B:97:0x029c, B:99:0x029f, B:100:0x02a1, B:70:0x0201] A[DONT_GENERATE, DONT_INLINE]
      0x020e: PHI (r22v5 java.lang.Object) = (r22v2 java.lang.Object), (r22v2 java.lang.Object), (r22v2 java.lang.Object), (r22v7 java.lang.Object) binds: [B:97:0x029c, B:99:0x029f, B:100:0x02a1, B:70:0x0201] A[DONT_GENERATE, DONT_INLINE]] */
    private Notification c(com.byazt.s.ve veVar, BaseException baseException, boolean z10) {
        com.byazt.k.c cVar;
        int i10;
        c cVar2;
        BaseException baseException2;
        Object obj;
        boolean z11;
        Object obj2;
        boolean z12;
        int iN = n();
        int iC = com.byazt.z.ve.c(iN);
        if (iC == 0) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("click_type", Integer.valueOf(iC));
        int iC2 = c();
        map.put("click_download_id", Integer.valueOf(iC2));
        com.byazt.k.c cVarC = com.byazt.k.c.c(iC2);
        long jTt = tt();
        long jVe = ve();
        int i11 = jVe > 0 ? (int) ((100 * jTt) / jVe) : 0;
        String strUj = uj();
        int iTt = cVarC.tt("notification_opt_2");
        map.put("notification_opt_2", Integer.valueOf(iTt));
        if (iTt != 1) {
            map.put("action_click_btn", "android.ss.intent.action.DOWNLOAD_CLICK_BTN");
        }
        int iTt2 = cVarC.tt("enable_notification_ui");
        map.put("enable_notification_ui", Integer.valueOf(iTt2));
        map.put("show_title", strUj);
        map.put("percent", Integer.valueOf(i11));
        map.put("indeterminate", Boolean.valueOf(z10));
        map.put("notification_type", Integer.valueOf(iC));
        String strDa = com.byazt.z.uj.sl().da();
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 26 && TextUtils.isEmpty(strDa)) {
            strDa = com.byazt.z.ve.c(this.tt);
        }
        map.put("channel_id", strDa);
        map.put("download_status", Integer.valueOf(iN));
        map.put("first_time", Long.valueOf(a()));
        if (i12 >= 24 && cVarC.c("set_notification_group", 0) == 1) {
            map.put("notification_group", "com.ss.android.socialbase.APP_DOWNLOADER");
        }
        map.put("csj_enable_target_34", Boolean.valueOf(i12 >= 31 && com.byazt.k.c.c(iC2).tt("enable_target_34") > 0));
        if (iTt2 > 0) {
            map.put("bitmap", ve.c().c(iC2));
        }
        if (iC == 1 || iC == 4) {
            cVar = cVarC;
            map.put("download_size", com.byazt.z.ve.c(jTt) + e.F0 + com.byazt.z.ve.c(jVe));
            i10 = iC;
            if (i10 == 1) {
                map.put("download_status", Integer.valueOf(n()));
            }
            cVar2 = this;
            map.put("is_bind_app", Boolean.valueOf(com.byazt.z.ve.c(cVar2.f18602a)));
        } else if (iC == 2) {
            map.put("download_size", com.byazt.z.ve.c(jTt) + e.F0 + com.byazt.z.ve.c(jVe));
            if (iTt == 1) {
                map.put("progress_70", Integer.valueOf(cVarC.c("noti_progress_show_th", 70)));
            }
            map.put("is_bind_app", Boolean.valueOf(com.byazt.z.ve.c(this.f18602a)));
            if (!com.byazt.z.ve.c(this.f18602a) && iTt2 >= 2) {
                map.put("download_size", com.byazt.z.ve.c(jTt, false) + e.F0 + com.byazt.z.ve.c(jVe, false));
            }
            cVar = cVarC;
            cVar2 = this;
            i10 = iC;
        } else if (iC == 3) {
            DownloadInfo downloadInfo = Downloader.getInstance(com.byazt.zz.ve.ic()).getDownloadInfo(iC2);
            int iN2 = n();
            map.put("download_status", Integer.valueOf(iN2));
            if (iN2 == -1 || iN2 == -4) {
                cVar = cVarC;
                boolean zI = a.i(baseException);
                boolean zX = a.x(baseException);
                map.put("is_network_error", Boolean.valueOf(zI));
                map.put("is_insufficient_space_error", Boolean.valueOf(zX));
                if (iTt2 >= 2 && iN2 == -1 && (zI || zX)) {
                    map.put("download_size", com.byazt.z.ve.c(jTt) + e.F0 + com.byazt.z.ve.c(jVe));
                }
                baseException2 = baseException;
                if (baseException2 != null) {
                    obj = "download_size";
                    if (baseException.getErrorCode() == 1006) {
                        map.put("is_error_code_insufficient_space_error", Boolean.TRUE);
                    }
                    if (iTt2 < 2 && iN2 == -1 && zI) {
                        obj2 = "is_wait_wifi_and_in_net";
                        map.put(obj2, Boolean.valueOf(a.tt(baseException2, downloadInfo)));
                    } else {
                        obj2 = "is_wait_wifi_and_in_net";
                    }
                } else {
                    obj = "download_size";
                }
                if (c(baseException2, cVar, downloadInfo)) {
                    map.put("is_need_show_wait_net_text", Boolean.TRUE);
                    if (downloadInfo == null || !downloadInfo.isOnlyWifi()) {
                        cVar = cVar;
                        cVar = cVar;
                        z11 = false;
                    } else {
                        cVar = cVar;
                        z11 = true;
                    }
                    map.put("is_wait_wifi", Boolean.valueOf(z11));
                } else {
                    cVar = cVar;
                }
                if (iTt2 < 2) {
                    obj2 = "is_wait_wifi_and_in_net";
                } else {
                    obj2 = "is_wait_wifi_and_in_net";
                }
            } else if (iN2 == -3) {
                map.put("download_size", com.byazt.z.ve.c(jVe));
                if (downloadInfo == null || TextUtils.isEmpty(downloadInfo.getMimeType())) {
                    cVar = cVarC;
                } else {
                    cVar = cVarC;
                    boolean z13 = downloadInfo.getMimeType().equals(AdBaseConstants.MIME_APK);
                    map.put("is_mime_apk", Boolean.valueOf(z13));
                    map.put("is_apk_installed", Boolean.valueOf(com.byazt.z.ve.c(this.tt, downloadInfo, false)));
                    if (com.byazt.zz.uj.c().u(iC2) != null) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    map.put("is_have_notification_click_callback", Boolean.valueOf(z12));
                    baseException2 = baseException;
                    obj = "download_size";
                    obj2 = "is_wait_wifi_and_in_net";
                }
                map.put("is_mime_apk", Boolean.valueOf(z13));
                map.put("is_apk_installed", Boolean.valueOf(com.byazt.z.ve.c(this.tt, downloadInfo, false)));
                if (com.byazt.zz.uj.c().u(iC2) != null) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                map.put("is_have_notification_click_callback", Boolean.valueOf(z12));
                baseException2 = baseException;
                obj = "download_size";
                obj2 = "is_wait_wifi_and_in_net";
            } else {
                cVar = cVarC;
                obj = "download_size";
                obj2 = "is_wait_wifi_and_in_net";
                baseException2 = baseException;
            }
            boolean zI2 = a.i(baseException);
            boolean zX2 = a.x(baseException);
            map.put("is_network_error", Boolean.valueOf(zI2));
            map.put("is_insufficient_space_error", Boolean.valueOf(zX2));
            if (iTt2 >= 2 && iN2 == -1 && (zI2 || zX2)) {
                boolean zTt = a.tt(baseException2, downloadInfo);
                map.put(obj2, Boolean.valueOf(zTt));
                if (zTt) {
                    map.put(obj, com.byazt.z.ve.c(jTt, false) + e.F0 + com.byazt.z.ve.c(jVe, false));
                }
            }
            cVar2 = this;
            i10 = iC;
        } else {
            cVar = cVarC;
            i10 = iC;
            cVar2 = this;
        }
        String str = "android.ss.intent.action.DOWNLOAD_CLICK_CONTENT";
        if (i10 == 1 || i10 == 4 || i10 == 2) {
            map.put("action_apa", "android.ss.intent.action.DOWNLOAD_CLICK_CONTENT");
        } else if (i10 == 3) {
            if (iN != -1 && iN != -4) {
                if (iN == -3) {
                    map.put("auto_cancel", Boolean.valueOf(cVar.c("notification_click_install_auto_cancel", 1) == 0));
                }
                str = "android.ss.intent.action.DOWNLOAD_OPEN";
            }
            map.put("action_complete", str);
            map.put("action_hide", "android.ss.intent.action.DOWNLOAD_HIDE");
        }
        Notification notification = (Notification) veVar.c(map).get("notification");
        cVar2.f17040c = notification;
        return notification;
    }

    private boolean c(BaseException baseException, com.byazt.k.c cVar, DownloadInfo downloadInfo) {
        return baseException != null && (baseException.getErrorCode() == 1013 || baseException.getErrorCode() == 1049) && downloadInfo != null && AdBaseConstants.MIME_APK.contains(downloadInfo.getMimeType()) && cVar.c("notification_text_opt", 0) == 1;
    }
}
