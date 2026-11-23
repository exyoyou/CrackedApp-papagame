package com.byazt.aas;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.haima.hmcp.beans.HmInputMappingContent;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 17})
public class gu {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile String f11425c = "";
    public static volatile String tt = "";
    public static volatile boolean uj;
    public static volatile boolean ve;

    public static void c(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            ve = true;
            f11425c = str;
            com.byazt.zlb.ve.tt(7, f11425c == null ? "" : f11425c);
            uj = false;
            update(false);
        } catch (Throwable unused) {
        }
    }

    public static String tt(com.byazt.qh.uj ujVar) {
        JSONObject jSONObjectC;
        if (ujVar != null) {
            String type = ujVar.getType();
            if (TextUtils.equals(type, "error")) {
                return "error";
            }
            if (TextUtils.equals(type, "timeout")) {
                return "timeout";
            }
            com.byazt.gj.n.c cVarC = ujVar.c();
            if (cVarC != null && !TextUtils.isEmpty(cVarC.f14549c) && (jSONObjectC = c(cVarC)) != null) {
                return jSONObjectC.toString();
            }
        }
        return "error";
    }

    private static void update(boolean z10) {
        if (TextUtils.isEmpty(f11425c)) {
            return;
        }
        String strTt = com.byazt.nr.c.tt(f11425c);
        com.byazt.by.uj.c().ve("app_log_oaid", f11425c);
        com.byazt.by.uj.c().ve("new_app_log_oaid", strTt);
        com.byazt.by.uj.c().c("is_use_dev_oaid", z10);
    }

    public static String ve(com.byazt.qh.uj ujVar) {
        if (ujVar == null) {
            return null;
        }
        String type = ujVar.getType();
        if (TextUtils.equals(type, "error")) {
            return "error";
        }
        if (TextUtils.equals(type, "timeout")) {
            return "timeout";
        }
        com.byazt.gj.n.c cVarC = ujVar.c();
        return (cVarC == null || TextUtils.isEmpty(cVarC.f14549c)) ? "error" : cVarC.f14549c;
    }

    public static void c(com.byazt.qh.uj ujVar) {
        com.byazt.lkt.c.c(ujVar);
        com.byazt.apd.tt.c().c(ujVar);
    }

    public static com.byazt.gj.n.c ve(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return new com.byazt.gj.n.c(str, false, c(com.byazt.omf.gt.getContext()));
    }

    private static JSONObject c(com.byazt.gj.n.c cVar) {
        if (cVar == null) {
            return null;
        }
        String str = cVar.f14549c;
        long j10 = cVar.ve;
        boolean z10 = cVar.tt;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("oaid", str);
            jSONObject.putOpt("isTrackLimited", Boolean.valueOf(z10));
            jSONObject.putOpt("hWIdVersionCode", Long.valueOf(j10));
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String tt(String str) {
        if (TextUtils.isEmpty(str)) {
            return "error";
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("oaid", str);
            jSONObject.putOpt("isTrackLimited", Boolean.FALSE);
            jSONObject.putOpt("hWIdVersionCode", Integer.valueOf(c(com.byazt.omf.gt.getContext())));
            return jSONObject.toString();
        } catch (Exception unused) {
            return "error";
        }
    }

    private static void tt() {
        uj = com.byazt.by.uj.c().tt("is_use_dev_oaid", false);
    }

    private static int c(Context context) {
        String str = "com.huawei.hwid.tv";
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager.getPackageInfo("com.huawei.hwid", 0) != null) {
                str = "com.huawei.hwid";
            } else if (packageManager.getPackageInfo("com.huawei.hwid.tv", 0) == null) {
                str = "com.huawei.hms";
            }
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return 0;
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
            return 0;
        }
    }

    public static String c(boolean z10) {
        long j10;
        if (!TextUtils.isEmpty(f11425c)) {
            return f11425c;
        }
        if (z10 && !TextUtils.isEmpty(tt)) {
            return tt;
        }
        try {
            String strTt = com.byazt.by.uj.c().tt("new_app_log_oaid", (String) null);
            if (TextUtils.isEmpty(strTt)) {
                j10 = 0;
            } else {
                JSONObject jSONObject = new JSONObject(strTt);
                tt = com.byazt.nr.c.ve(jSONObject.getString(HmInputMappingContent.FIELD_VALUE));
                j10 = jSONObject.getLong("time");
            }
            if (!TextUtils.isEmpty(tt) && (z10 || System.currentTimeMillis() - j10 < 86400000)) {
                tt();
                return tt;
            }
            if (!ve) {
                com.byazt.omf.a.c().tt();
                com.byazt.dj.uj ujVarMy = com.byazt.omf.x.m().my();
                if (ujVarMy != null && !TextUtils.isEmpty(ujVarMy.getDevOaid())) {
                    f11425c = ujVarMy.getDevOaid();
                    boolean z11 = !TextUtils.isEmpty(ujVarMy.getDevOaid());
                    uj = z11;
                    update(z11);
                }
                com.byazt.zlb.ve.tt(7, f11425c == null ? "" : f11425c);
            }
            return f11425c == null ? "" : f11425c;
        } catch (Exception unused) {
        }
    }

    public static int c() {
        return uj ? 1 : 0;
    }
}
