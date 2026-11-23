package com.byazt.ue;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1265, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f20549c;
    public static boolean tt;

    public static void c(String str) {
        if (!tt) {
            com.byazt.vif.uj.c(str, "sp_multi_info").put("is_support_multi_process", true);
        }
        f20549c = true;
        tt = true;
    }

    public static void tt(String str) {
        if (tt) {
            com.byazt.vif.uj.c(str, "sp_multi_info").put("is_support_multi_process", false);
        }
        f20549c = false;
    }

    public static boolean c() {
        if (!tt) {
            f20549c = com.byazt.vif.uj.c(com.byazt.vxy.c.uj(), "sp_multi_info").get("is_support_multi_process", false);
            tt = true;
        }
        return f20549c;
    }
}
