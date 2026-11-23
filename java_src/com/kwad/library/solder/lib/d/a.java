package com.kwad.library.solder.lib.d;

import android.os.Build;
import android.os.Process;
import com.join.mgps.mod.utils.d;
import com.kwad.sdk.utils.ab;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private static String aFB;
    private static String aFC;
    private static final Map<String, String> aFD;

    static {
        HashMap map = new HashMap();
        aFD = map;
        map.put(d.f71905g, d.f71905g);
        map.put("mips64", "mips64");
        map.put(d.f71904f, d.f71904f);
        map.put("x86_64", "x86_64");
        map.put(d.f71902d, "arm64-v8a");
    }

    public static String Ex() {
        return is64Bit() ? "arm64-v8a" : "armeabi-v7a";
    }

    private static boolean is64Bit() {
        Boolean bool;
        if (Build.VERSION.SDK_INT >= 23) {
            return Process.is64Bit();
        }
        try {
            bool = (Boolean) ab.callMethod(ab.a("dalvik.system.VMRuntime", "getRuntime", new Object[0]), "is64Bit", new Object[0]);
        } catch (Exception e10) {
            e10.printStackTrace();
            bool = null;
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }
}
