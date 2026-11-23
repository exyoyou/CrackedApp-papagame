package com.join.mgps.va.overmind;

import android.text.TextUtils;
import com.join.mgps.Util.y;
import com.join.mgps.activity.HMCloudMainActivity_;

/* JADX INFO: loaded from: classes3.dex */
public class l {
    public static y.c a(String cfgPath) {
        return new y(cfgPath).b("archiveInfo");
    }

    public static String b(String cfgPath) {
        y.c cVarB = new y(cfgPath).b("gameInfo");
        return cVarB == null ? "" : cVarB.c("gameId");
    }

    public static y.c c(String cfgPath) {
        return new y(cfgPath).b("switch");
    }

    public static String d(String cfgPath) {
        y.c cVarB = new y(cfgPath).b("soInfo");
        return cVarB == null ? "" : cVarB.c("modPath");
    }

    public static int e(String cfgPath) {
        y.c cVarB = new y(cfgPath).b("soInfo");
        if (cVarB == null) {
            return 0;
        }
        String strC = cVarB.c("code");
        if (TextUtils.isEmpty(strC)) {
            return 0;
        }
        return Integer.parseInt(strC);
    }

    public static String f(String cfgPath) {
        y.c cVarB = new y(cfgPath).b("soInfo");
        return cVarB == null ? "0" : cVarB.c("version");
    }

    public static boolean g(String cfgPath) {
        y.c cVarB = new y(cfgPath).b("config");
        if (cVarB == null) {
            return false;
        }
        return "1".equals(cVarB.c("utilsConfigState"));
    }

    public static void h(String cfgPath, String archivePath, String archivePath2, String archiveId) {
        y yVar = new y(cfgPath);
        y.c cVarB = yVar.b("archiveInfo");
        if (cVarB == null) {
            cVarB = new y.c("archiveInfo");
            yVar.f(cVarB);
        }
        cVarB.e("archivePath", archivePath);
        cVarB.e("archivePath2", archivePath2);
        cVarB.e("archiveId", archiveId);
        yVar.j();
    }

    public static void i(String cfgPath, String modPath, String version, int code, long lastModifyTime) {
        y yVar = new y(cfgPath);
        y.c cVarB = yVar.b("soInfo");
        if (cVarB == null) {
            cVarB = new y.c("soInfo");
            yVar.f(cVarB);
        }
        cVarB.e("modPath", modPath);
        cVarB.e("version", version);
        cVarB.e("code", code + "");
        cVarB.e("lastModifyTime", lastModifyTime + "");
        yVar.j();
    }

    public static void j(String cfgPath, String goldSwitch, String archiveSwitch, String introductionSwitch, String channelNum, String targetVersion, String androidId, String platform, String package_type, String typeId) {
        y yVar = new y(cfgPath);
        y.c cVarB = yVar.b("switch");
        if (cVarB == null) {
            cVarB = new y.c("switch");
            yVar.f(cVarB);
        }
        cVarB.e(HMCloudMainActivity_.GOLD_FINGER_SWITCH_EXTRA, goldSwitch);
        cVarB.e("archiveCloudSwitch", archiveSwitch);
        cVarB.e("introductionSwitch", introductionSwitch);
        y.c cVarB2 = yVar.b("config");
        if (cVarB2 == null) {
            cVarB2 = new y.c("config");
            yVar.f(cVarB2);
        }
        cVarB2.e("channelNum", channelNum);
        cVarB2.e("targetVersion", targetVersion);
        cVarB2.e("androidId", androidId);
        cVarB2.e("platform", platform);
        cVarB2.e("package_type", package_type);
        cVarB2.e("typeId", typeId);
        yVar.j();
    }

    public static void k(String cfgPath, String gameId) {
        y yVar = new y(cfgPath);
        y.c cVarB = yVar.b("gameInfo");
        if (cVarB == null) {
            cVarB = new y.c("gameInfo");
            yVar.f(cVarB);
        }
        cVarB.e("gameId", gameId);
        yVar.j();
    }

    public static void l(String cfgPath, String modPath) {
        y yVar = new y(cfgPath);
        y.c cVarB = yVar.b("gameInfo");
        if (cVarB == null) {
            cVarB = new y.c("gameInfo");
            yVar.f(cVarB);
        }
        cVarB.e("modPath", modPath);
        yVar.j();
    }

    public static void m(String cfgPath, boolean enabled) {
        y yVar = new y(cfgPath);
        y.c cVarB = yVar.b("config");
        if (cVarB == null) {
            cVarB = new y.c("config");
            yVar.f(cVarB);
        }
        cVarB.e("utilsConfigState", enabled ? "1" : "0");
        yVar.j();
    }
}
