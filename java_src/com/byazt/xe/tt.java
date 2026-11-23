package com.byazt.xe;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.byazt.uq.i;
import com.bytedance.pangle.util.MethodUtils;
import com.join.mgps.Util.o0;
import dalvik.system.VMRuntime;
import java.io.File;
import java.util.ArrayList;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1093, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f21828c = 1;
    public static int tt = 2;

    public static SharedPreferences c(Context context) {
        return com.byazt.ut.a.getKVStore(context.getApplicationContext(), "plugin_oat_info", 0);
    }

    public static String tt(String str) {
        String strSubstring = str.substring(str.lastIndexOf(o0.f49827a));
        String str2 = Build.VERSION.SDK_INT >= 26 ? ".odex" : ".dex";
        if (".dex".equals(strSubstring)) {
            return strSubstring;
        }
        if (".zip".equals(strSubstring) || ".apk".equals(strSubstring)) {
            return str2;
        }
        return str + str2;
    }

    public static String[] c(String str, String str2, int i10) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("dex2oat");
        if (Build.VERSION.SDK_INT >= 24) {
            arrayList.add("--runtime-arg");
            arrayList.add("-classpath");
            arrayList.add("--runtime-arg");
            arrayList.add(x.a.f97576d);
        }
        arrayList.add("--instruction-set=" + c());
        if (i10 == f21828c) {
            if (i.u()) {
                arrayList.add("--compiler-filter=quicken");
            } else {
                arrayList.add("--compiler-filter=interpret-only");
            }
        } else if (i10 == tt) {
            arrayList.add("--compiler-filter=speed");
        }
        arrayList.add("--dex-file=".concat(String.valueOf(str)));
        arrayList.add("--oat-file=".concat(String.valueOf(str2)));
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String c() {
        try {
            return (String) MethodUtils.invokeStaticMethod(VMRuntime.class, "getCurrentInstructionSet", new Object[0]);
        } catch (Exception e10) {
            com.byazt.bog.a.c(e10);
            return null;
        }
    }

    public static String c(String str) {
        String strSubstring = str.substring(str.lastIndexOf(e.F0) + 1);
        String strSubstring2 = strSubstring.substring(strSubstring.lastIndexOf(o0.f49827a));
        String str2 = Build.VERSION.SDK_INT >= 26 ? ".odex" : ".dex";
        if (".dex".equals(strSubstring2)) {
            return strSubstring;
        }
        if (!".zip".equals(strSubstring2) && !".apk".equals(strSubstring2)) {
            return strSubstring + str2;
        }
        return strSubstring.replace(strSubstring2, str2);
    }

    public static boolean c(String str, String str2) {
        return c.c(c(str, str2, f21828c));
    }

    public static boolean c(String... strArr) {
        for (String str : strArr) {
            File file = new File(str);
            if (!file.exists() || !a.c(file)) {
                return false;
            }
        }
        return true;
    }
}
