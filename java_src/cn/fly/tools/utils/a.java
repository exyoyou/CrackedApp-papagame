package cn.fly.tools.utils;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: cn.fly.tools.utils.a$a, reason: collision with other inner class name */
    public static class C0046a {
        public static int A(Object obj) {
            return ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(obj, "getDbm", -1, new Object[0])).intValue();
        }

        public static boolean a(Object obj) {
            return ((Boolean) ReflectHelper.invokeInstanceMethodNoThrow(obj, "isRegistered", Boolean.FALSE, new Object[0])).booleanValue();
        }

        public static boolean b(Object obj) {
            return a.a(obj, cn.fly.commons.m.a("029fgZfeflfmfkfefnRkhihlj.fmPgZgefngf-hiiDgg;gDghfmkfhkfh"));
        }

        public static boolean c(Object obj) {
            return a.a(obj, cn.fly.commons.m.a("030fgFfeflfmfkfefn+khihljOfm7g+gefngf^hii^gg.g.ghfmgffefhRf"));
        }

        public static boolean d(Object obj) {
            return a.a(obj, cn.fly.commons.m.a("031fgZfeflfmfkfefnJkhihlj^fm3g0gefngf]hii,gg2gKghfmih3e fefh-f"));
        }

        public static boolean e(Object obj) {
            return a.a(obj, cn.fly.commons.m.a("029fgSfeflfmfkfefnJkhihljIfm*gKgefngfHhiiOgg.g(ghfmhgVkh"));
        }

        public static boolean f(Object obj) {
            return a.a(obj, cn.fly.commons.m.a("028fg)feflfmfkfefn-khihljQfm]g(gefngf+hiiGggSgLghfmgifl"));
        }

        public static Object g(Object obj) {
            return ReflectHelper.invokeInstanceMethodNoThrow(obj, cn.fly.commons.m.a("015Mgl=hk!gfPhii(ggfe%hgkQfk0kOge"), null, new Object[0]);
        }

        public static int h(Object obj) {
            return ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(obj, cn.fly.commons.m.a("006IglUhkMje;ee"), -1, new Object[0])).intValue();
        }

        public static int i(Object obj) {
            return ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(obj, cn.fly.commons.m.a("006DglVhk.jeQge"), -1, new Object[0])).intValue();
        }

        public static int j(Object obj) {
            return ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(obj, cn.fly.commons.m.a("006Cgl8hk!hg9fe"), -1, new Object[0])).intValue();
        }

        public static int k(Object obj) {
            return ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(obj, cn.fly.commons.m.a("006$glBhkJgffkfe"), -1, new Object[0])).intValue();
        }

        public static int l(Object obj) {
            return ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(obj, cn.fly.commons.m.a("006)glHhk@inhkRe"), -1, new Object[0])).intValue();
        }

        public static int m(Object obj) {
            return ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(obj, cn.fly.commons.m.a("011Agl8hkFgngehkAkh=fhggfe"), -1, new Object[0])).intValue();
        }

        public static int n(Object obj) {
            return ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(obj, cn.fly.commons.m.a("012Egl?hkWgiShkRhifmflgjggfe"), -1, new Object[0])).intValue();
        }

        public static int o(Object obj) {
            return ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(obj, cn.fly.commons.m.a("011QglVhkRhg$fkUfkAkDfifeNh"), -1, new Object[0])).intValue();
        }

        public static int p(Object obj) {
            return ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(obj, cn.fly.commons.m.a("012.glGhk5hgfmQg8glfkYkBfifeUh"), -1, new Object[0])).intValue();
        }

        public static int q(Object obj) {
            return ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(obj, "getBasestationId", -1, new Object[0])).intValue();
        }

        public static int r(Object obj) {
            return ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(obj, cn.fly.commons.m.a("006$gl^hkRhe]fe"), -1, new Object[0])).intValue();
        }

        public static int s(Object obj) {
            return ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(obj, cn.fly.commons.m.a("005Tgl>hk'gffk"), -1, new Object[0])).intValue();
        }

        public static int t(Object obj) {
            return ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(obj, cn.fly.commons.m.a("0063glLhk'in6eRfk"), -1, new Object[0])).intValue();
        }

        public static int u(Object obj) {
            return ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(obj, cn.fly.commons.m.a("009MglYhk'ik@f=flgh+eg"), -1, new Object[0])).intValue();
        }

        public static String v(Object obj) {
            return (String) ReflectHelper.invokeInstanceMethodNoThrow(obj, cn.fly.commons.m.a("012XglVhkJjeVee;gn!kIflfkLgHgl"), null, new Object[0]);
        }

        public static String w(Object obj) {
            return (String) ReflectHelper.invokeInstanceMethodNoThrow(obj, cn.fly.commons.m.a("012'gl0hk:je=ge-gnLkOflfkPg?gl"), null, new Object[0]);
        }

        public static long x(Object obj) {
            return ((Long) ReflectHelper.invokeInstanceMethodNoThrow(obj, cn.fly.commons.m.a("006Lgl6hk$giFeMfk"), -1L, new Object[0])).longValue();
        }

        public static int y(Object obj) {
            return ((Integer) ReflectHelper.invokeInstanceMethodNoThrow(obj, cn.fly.commons.m.a("0101gl<hk?gifl*f0flghZeg"), -1, new Object[0])).intValue();
        }

        public static Object z(Object obj) {
            return ReflectHelper.invokeInstanceMethodNoThrow(obj, "getCellSignalStrength", null, new Object[0]);
        }
    }

    public static boolean a(Object obj, String str) {
        if (obj == null || TextUtils.isEmpty(str)) {
            return false;
        }
        return str.equals(obj.getClass().getName());
    }
}
