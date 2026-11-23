package com.beizi.fusion.tool;

import android.os.Build;
import android.text.TextUtils;
import com.join.mgps.Util.o0;

/* JADX INFO: loaded from: classes6.dex */
public class af {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f10389a;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static af f10390a = new af();
    }

    private enum b {
        REALME("ColorOS", "ro.build.version.oplusrom"),
        OPPO("ColorOS", "ro.build.version.oplusrom"),
        MIUI("MIUI", "ro.miui.ui.version.name"),
        HYPER("HyperOS", "ro.mi.os.version.incremental"),
        REDMI("MIUI", "ro.miui.ui.version.name"),
        HARMONY("HarmonyOS", "hw_sc.build.platform.version"),
        MAGICUI("MagicUI", "ro.build.version.magic"),
        EMUI("EMUI", "ro.build.version.emui"),
        MEIZU("Flyme", "ro.build.display.id"),
        ONEPLUS("HydrogenOS", "ro.rom.version"),
        VIVO("Funtouch", "ro.vivo.os.version"),
        NUBIA("ro.build.nubia.rom.name", "ro.build.nubia.rom.code");


        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final String f10404m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final String f10405n;

        b(String str, String str2) {
            this.f10404m = str;
            this.f10405n = str2;
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f10406a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f10407b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f10408c;

        private c(String str, String str2, String str3) {
            this.f10406a = str;
            this.f10407b = str2;
            this.f10408c = str3;
        }
    }

    public static af a() {
        return a.f10390a;
    }

    private void c(String str) {
        try {
            if (Integer.valueOf(com.beizi.ad.internal.e.o.a("ro.miui.ui.version.code", "0")).intValue() >= 816) {
                a(str, b.HYPER);
                return;
            }
        } catch (NumberFormatException unused) {
        }
        a(str, b.MIUI);
    }

    private String d(String str) {
        return !TextUtils.isEmpty(str) ? str.replaceAll(" ", "").toUpperCase() : "";
    }

    private String e(String str) {
        return com.beizi.ad.internal.e.o.a(str, "");
    }

    public void b() {
        b bVarValueOf;
        if (this.f10389a != null) {
        }
        String strD = d(Build.BRAND);
        if (TextUtils.isEmpty(strD)) {
            return;
        }
        try {
            bVarValueOf = b.valueOf(strD);
        } catch (Throwable unused) {
            bVarValueOf = null;
        }
        if (bVarValueOf != null) {
            a(strD, bVarValueOf);
            return;
        }
        strD.hashCode();
        switch (strD) {
            case "XIAOMI":
                c(strD);
                break;
            case "HONOR":
                b(strD);
                break;
            case "HUAWEI":
                a(strD);
                break;
        }
    }

    private af() {
        if (a.f10390a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    private void a(String str, b bVar) {
        if (TextUtils.isEmpty(bVar.f10404m)) {
            return;
        }
        this.f10389a = new c(str, bVar.f10404m.contains(o0.f49827a) ? e(bVar.f10404m) : bVar.f10404m, e(bVar.f10405n));
    }

    private boolean d() {
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            return !TextUtils.isEmpty((String) cls.getMethod("getOsBrand", new Class[0]).invoke(cls, new Object[0]));
        } catch (Exception unused) {
            return false;
        }
    }

    public String c() {
        c cVar = this.f10389a;
        return cVar != null ? cVar.f10408c : "";
    }

    private void a(String str) {
        if (d()) {
            a(str, b.HARMONY);
        } else {
            a(str, b.EMUI);
        }
    }

    private void b(String str) {
        if (d()) {
            a(str, b.HARMONY);
            return;
        }
        b bVar = b.MAGICUI;
        if (!TextUtils.isEmpty(e(bVar.f10405n))) {
            a(str, bVar);
        } else {
            a(str, b.EMUI);
        }
    }
}
