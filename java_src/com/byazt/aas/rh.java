package com.byazt.aas;

import android.content.Context;
import android.text.TextUtils;
import com.haima.hmcp.ConstantsInternal;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 115})
public class rh {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f11471c = null;
    public static long tt = -1;

    public static JSONArray c(final Context context) {
        if (System.currentTimeMillis() - tt <= 1000) {
            return null;
        }
        tt = System.currentTimeMillis();
        if (!com.byazt.ogz.x.n() || !tt() || !com.byazt.omf.gt.tt().hc() || !com.byazt.omf.x.m().nu().alist()) {
            return null;
        }
        com.byazt.bwm.n.c(new com.byazt.bwm.sp("getIncrementalInstallApps") { // from class: com.byazt.aas.rh.1
            @Override // java.lang.Runnable
            public void run() {
                rh.ve(context);
            }
        }, 1);
        return c();
    }

    private static List<String> uj(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Arrays.asList(str.split(","));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ve(Context context) {
        try {
            List<String> listC = com.byazt.ogz.ve.tt().c(context);
            if (listC != null && !listC.isEmpty()) {
                List<String> listUj = uj(com.byazt.omf.tt.c().get("install_app_string", f11471c));
                tt(c(listC));
                if (listUj != null && !listUj.isEmpty()) {
                    listC.removeAll(listUj);
                }
                ve(c(listC));
            }
        } catch (Exception unused) {
        }
    }

    private static void tt(String str) {
        com.byazt.omf.tt.c().put("install_app_string", str);
    }

    private static boolean tt() {
        long j10 = com.byazt.omf.tt.c().get("apptime", -1L);
        return j10 == -1 || System.currentTimeMillis() - j10 > 43200000;
    }

    private static JSONArray c() {
        try {
            String str = com.byazt.omf.tt.c().get("install_app_incremental_string", f11471c);
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return new JSONArray((Collection) uj(str));
        } catch (Throwable unused) {
            return null;
        }
    }

    private static void ve(String str) {
        com.byazt.it.ve veVarC = com.byazt.omf.tt.c();
        veVarC.put("install_app_incremental_string", str);
        veVarC.put("apptime", System.currentTimeMillis());
    }

    private static String c(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < list.size(); i10++) {
            sb2.append(list.get(i10));
            if (i10 != list.size() - 1) {
                sb2.append(",");
            }
        }
        return sb2.toString().trim();
    }

    public static boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            c(0, 0, null);
            return false;
        }
        if (nb.yv() && !nb.tt(str)) {
            c(0, 0, null);
        }
        return false;
    }

    private static void c(final int i10, final int i11, final String str) {
        com.byazt.ukr.tt.ve().c(new com.byazt.ee.c() { // from class: com.byazt.aas.rh.2
            @Override // com.byazt.ee.c
            public com.byazt.qal.c c() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("call_api_status", i10);
                    jSONObject.put("has_actived", i11);
                    if (!TextUtils.isEmpty(str)) {
                        jSONObject.put(ConstantsInternal.KEY_ERROR_MSG, str);
                    }
                } catch (Throwable unused) {
                }
                return com.byazt.qal.tt.tt().c("call_active_api").tt(jSONObject.toString());
            }
        }, "call_active_api", true);
    }
}
