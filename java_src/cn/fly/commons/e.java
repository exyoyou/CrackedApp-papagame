package cn.fly.commons;

import android.os.SystemClock;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class e {
    public static boolean a() {
        return a(x.b("003.cjchCc")) && CSCenter.getInstance().isOaidEnable();
    }

    public static boolean b() {
        return a(x.b("003cfc"));
    }

    public static boolean c() {
        return a(x.b("003,efch4c"));
    }

    public static boolean d() {
        return a(x.b("0036ef8fc"));
    }

    public static boolean e() {
        return a(x.b("002fc")) && CSCenter.getInstance().isLocationDataEnable();
    }

    public static boolean f() {
        return a(x.b("003+cj:fc")) && CSCenter.getInstance().isLocationDataEnable();
    }

    public static boolean g() {
        return a(x.b("003Odecj:c")) && CSCenter.getInstance().isLocationDataEnable();
    }

    public static boolean h() {
        return a(x.b("003$eeeh>c"));
    }

    public static boolean i() {
        return a("na");
    }

    public static boolean j() {
        return SystemClock.elapsedRealtime() - m.a().c() <= ((long) ((Integer) c.a(x.b("0031ehchKh"), 600)).intValue()) * 1000;
    }

    private static boolean a(String str) {
        List list = (List) c.a(x.b("003>ehcj]b"), (Object) null);
        if (x.b("003McjchHc").equals(str)) {
            if (list != null && list.contains(x.b("003Scjch@c"))) {
                return true;
            }
        } else if ("na".equals(str)) {
            if (list != null && list.contains("na")) {
                return true;
            }
        } else if (list == null || list.contains(str)) {
            return true;
        }
        return false;
    }
}
