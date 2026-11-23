package com.aggmoread.sdk.z.c.a.a.e;

import android.os.Build;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

/* JADX INFO: loaded from: classes7.dex */
public class m {
    private static String a() {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, c());
        } catch (Exception unused) {
            return null;
        }
    }

    public static String b() {
        String strA = a();
        return (strA == null || strA.isEmpty()) ? Build.DISPLAY : strA;
    }

    private static String c() {
        String lowerCase = Build.BRAND.toLowerCase();
        String lowerCase2 = Build.MANUFACTURER.toLowerCase();
        if (lowerCase.contains("huawei") || lowerCase.contains("honor") || lowerCase2.contains("huawei")) {
            return "ro.build.version.emui";
        }
        if (lowerCase.contains(MediationConstant.ADN_XIAOMI) || lowerCase.contains("redmi")) {
            return "ro.miui.ui.version.name";
        }
        if (lowerCase.contains("oppo") || lowerCase.contains("oneplus")) {
            return "ro.build.version.opporom";
        }
        if (lowerCase.contains("vivo") || lowerCase.contains("iqoo")) {
            return "ro.vivo.os.version";
        }
        return lowerCase.contains("samsung") ? "ro.build.PDA" : "ro.build.display.id";
    }
}
