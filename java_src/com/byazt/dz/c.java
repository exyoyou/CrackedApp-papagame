package com.byazt.dz;

import android.content.Context;
import com.byazt.bwm.sp;
import com.byazt.nr.da;
import com.byazt.nr.gt;
import com.byazt.nr.m;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 106, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f13238c;

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt() {
        com.byazt.bwm.n.tt(new sp("fetch_lg_command") { // from class: com.byazt.dz.c.2
            @Override // java.lang.Runnable
            public void run() {
                ve.tt();
            }
        });
    }

    public static void uj(String str, String str2) {
        if (f13238c) {
            ve.uj(str, str2);
        }
    }

    public static void ve(String str, String str2) {
        if (f13238c) {
            ve.ve(str, str2);
        }
    }

    private static void c(Context context, tt ttVar) {
        if (ttVar != null && com.byazt.zlb.tt.f22918c == null && gt.c(com.byazt.omf.gt.getContext()) && ttVar.uj()) {
            String path = com.byazt.nr.sp.tt(context, false, null).getPath();
            String string = com.byazt.nys.tt.c(context).toString();
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("buffer_dir_path", path + "/aa");
                jSONObject.putOpt("log_dir_path", string + "/aa");
                Boolean bool = Boolean.TRUE;
                jSONObject.putOpt("compress", bool);
                jSONObject.putOpt("encrypt", bool);
                jSONObject.putOpt("level", Integer.valueOf(ttVar.c()));
                jSONObject.putOpt("log_file_exp_days", Integer.valueOf(ttVar.tt()));
                jSONObject.putOpt("max_dir_size", Integer.valueOf(ttVar.ve() * 1024 * 1024));
                jSONObject.putOpt("per_size", 2097152);
                jSONObject.putOpt("offload_main_write", bool);
                if (!ve.c(context, jSONObject)) {
                    m.uj("ACL", "init failed");
                    return;
                }
                m.c(new n());
                ve.c(context, "3892", ((com.byazt.dna.ve) com.byazt.ut.uj.getService("embed_applog")).getDid());
                ve.c("mon.zijieapi.com");
                f13238c = true;
                ve.ve();
            } catch (JSONException e10) {
                m.uj("ACL", "init failed:" + e10.getMessage());
            }
        }
    }

    public static void tt(String str, String str2) {
        if (f13238c) {
            ve.tt(str, str2);
        }
    }

    public static void tt(String str, String str2, Throwable th) {
        if (f13238c) {
            ve.tt(str, str2, th);
        }
    }

    public static void c(tt ttVar) {
        if (!f13238c) {
            c(com.byazt.omf.gt.getContext(), ttVar);
        } else if (ttVar != null && ttVar.uj()) {
            ve.c(ttVar.c());
            da.c().postDelayed(new Runnable() { // from class: com.byazt.dz.c.1
                @Override // java.lang.Runnable
                public void run() {
                    c.tt();
                }
            }, 5000L);
        } else {
            ve.c();
        }
    }

    public static void c(String str, String str2) {
        if (f13238c) {
            ve.c(str, str2);
        }
    }

    public static void c(String str, String str2, Throwable th) {
        if (f13238c) {
            ve.c(str, str2, th);
        }
    }

    public static void c(String str, Throwable th) {
        if (f13238c) {
            ve.c(str, th);
        }
    }
}
