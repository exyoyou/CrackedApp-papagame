package com.umeng.analytics.pro;

import android.text.TextUtils;
import com.join.mgps.Util.o0;
import com.umeng.umcrash.UMCrash;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class aw {
    public static final String A = "rtd";
    public static final String B = "lepd";
    public static final String C = "ccfg";
    private static Map<String, String> D = null;
    private static String E = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f84320a = "env";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f84321b = "exp";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f84322c = "imp";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f84323d = "ua";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f84324e = "zc";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f84325f = "id";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f84326g = "zf";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f84327h = "exid";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f84328i = "ucc";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f84329j = "ugc";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f84330k = "usi";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f84331l = "uso";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f84332m = "user";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f84333n = "uspi";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f84334o = "dtfn";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f84335p = "pr";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f84336q = "upg";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f84337r = "pri";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f84338s = "probe";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f84339t = "bl";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f84340u = "wl";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f84341v = "subp";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final String f84342w = "subua";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f84343x = "sta";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final String f84344y = "emi";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final String f84345z = "sli";

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final aw f84346a = new aw();

        private a() {
        }
    }

    static {
        HashMap map = new HashMap();
        D = map;
        E = "";
        map.put(f84320a, "envelope");
        D.put(f84321b, ".umeng");
        D.put(f84322c, ".imprint");
        D.put(f84323d, "ua.db");
        D.put(f84324e, "umeng_zero_cache.db");
        D.put("id", "umeng_it.cache");
        D.put(f84326g, "umeng_zcfg_flag");
        D.put(f84327h, "exid.dat");
        D.put(f84328i, "umeng_common_config");
        D.put(f84329j, "umeng_general_config");
        D.put(f84330k, UMCrash.KEY_CALLBACK_SESSION_ID);
        D.put(f84331l, "umeng_sp_oaid");
        D.put(f84332m, "mobclick_agent_user_");
        D.put(f84333n, "umeng_subprocess_info");
        D.put(f84334o, "delayed_transmission_flag_new");
        D.put("pr", "umeng_policy_result_flag");
        D.put(f84336q, "um_policy_grant");
        D.put(f84337r, "um_pri");
        D.put(f84338s, "UM_PROBE_DATA");
        D.put(f84339t, "ekv_bl");
        D.put(f84340u, "ekv_wl");
        D.put(f84341v, g.f84676a);
        D.put(f84342w, "ua_");
        D.put(f84343x, "stateless");
        D.put(f84344y, ".emitter");
        D.put(f84345z, "um_slmode_sp");
        D.put(A, "um_rtd_conf");
        D.put(B, "");
        D.put(C, ".dmpvedpogjhejs.cfg");
    }

    public void a(String str) {
        if (!TextUtils.isEmpty(str) && TextUtils.isEmpty(E)) {
            if (str.length() > 3) {
                E = str.substring(0, 3) + "_";
                return;
            }
            E = str + "_";
        }
    }

    public String b(String str) {
        if (!D.containsKey(str)) {
            return "";
        }
        String str2 = D.get(str);
        if (!f84321b.equalsIgnoreCase(str) && !f84322c.equalsIgnoreCase(str) && !f84344y.equalsIgnoreCase(str)) {
            return E + str2;
        }
        return o0.f49827a + E + str2.substring(1);
    }

    private aw() {
    }

    public void a() {
        E = "";
    }

    public static aw b() {
        return a.f84346a;
    }
}
