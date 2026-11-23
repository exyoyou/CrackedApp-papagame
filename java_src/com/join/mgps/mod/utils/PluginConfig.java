package com.join.mgps.mod.utils;

import android.annotation.TargetApi;
import android.content.Context;
import android.text.TextUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.y;
import com.join.mgps.activity.HMCloudMainActivity_;

/* JADX INFO: loaded from: classes3.dex */
public class PluginConfig {
    public static final boolean LOG = true;
    public static ClassLoader sPluginClassloader = PluginConfig.class.getClassLoader();

    public static String get(Context ctx, String key, String def) {
        return ctx.getSharedPreferences(d.f71906h, 4).getString(key, def);
    }

    public static y.c getArchiveSection(String cfgPath) {
        return new y(cfgPath).b("archiveInfo");
    }

    public static String getLastLaunchPkg(Context ctx) {
        return get(ctx, d.f71913o, "");
    }

    public static y.c getModConfig(String cfgPath) {
        return new y(cfgPath).b("config");
    }

    public static String getModGameId(String cfgPath) {
        y.c cVarB = new y(cfgPath).b("gameInfo");
        return cVarB == null ? "" : cVarB.c("gameId");
    }

    public static y.c getModMenuSwitch(String cfgPath) {
        return new y(cfgPath).b("switch");
    }

    public static <T> T getModMetaObj(String str, Class<T> cls) {
        y.c cVarB = new y(str).b("modMeta");
        if (cVarB == null) {
            return null;
        }
        String strC = cVarB.c("modMetaStr");
        if (t2.h(strC)) {
            return null;
        }
        return (T) JsonMapper.getInstance().fromJson(strC, cls);
    }

    public static String getModPath(String cfgPath) {
        y.c cVarB = new y(cfgPath).b("soInfo");
        return cVarB == null ? "" : cVarB.c("modPath");
    }

    public static int getSoCode(String cfgPath) {
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

    @TargetApi(11)
    public static long getSoLastModifiedTime(Context cxt, String soName) {
        return cxt.getSharedPreferences(d.f71906h, 4).getLong(soName, 0L);
    }

    public static String getSoVersion(String cfgPath) {
        y.c cVarB = new y(cfgPath).b("soInfo");
        return cVarB == null ? "0" : cVarB.c("version");
    }

    public static boolean getUtilsConfigState(String cfgPath) {
        y.c cVarB = new y(cfgPath).b("config");
        if (cVarB == null) {
            return false;
        }
        return "1".equals(cVarB.c("utilsConfigState"));
    }

    public static void put(Context ctx, String key, String value) {
        ctx.getSharedPreferences(d.f71906h, 4).edit().putString(key, value).apply();
    }

    public static void savaModMetaStr(String cfgPath, String modMetaStr) {
        y yVar = new y(cfgPath);
        y.c cVarB = yVar.b("modMeta");
        if (cVarB == null) {
            cVarB = new y.c("modMetaStr");
            yVar.f(cVarB);
        }
        cVarB.e("modMetaStr", modMetaStr);
        yVar.j();
    }

    public static void setArchivePath(String cfgPath, String archivePath, String archivePath2, String archiveId) {
        y yVar = new y(cfgPath);
        y.c cVarB = yVar.b("archiveInfo");
        if (cVarB == null) {
            cVarB = new y.c("archiveInfo");
            yVar.f(cVarB);
        }
        cVarB.e("archivePath", archivePath);
        if (t2.i(archivePath2)) {
            cVarB.e("archivePath2", archivePath2);
        }
        if (t2.i(archiveId)) {
            cVarB.e("archiveId", archiveId);
        }
        yVar.j();
    }

    public static void setLastLaunchPkg(Context ctx, String pkg) {
        put(ctx, d.f71913o, pkg);
    }

    public static void setModConfig(String cfgPath, String modPath, String version, int code, long lastModifyTime) {
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

    public static void setModGameId(String cfgPath, String gameId) {
        y yVar = new y(cfgPath);
        y.c cVarB = yVar.b("gameInfo");
        if (cVarB == null) {
            cVarB = new y.c("gameInfo");
            yVar.f(cVarB);
        }
        cVarB.e("gameId", gameId);
        yVar.j();
    }

    public static void setModPath(String cfgPath, String modPath) {
        y yVar = new y(cfgPath);
        y.c cVarB = yVar.b("gameInfo");
        if (cVarB == null) {
            cVarB = new y.c("gameInfo");
            yVar.f(cVarB);
        }
        cVarB.e("modPath", modPath);
        yVar.j();
    }

    public static void setSoCode(Context ctx, int code) {
        ctx.getSharedPreferences(d.f71906h, 4).edit().putInt(d.f71911m, code).apply();
    }

    @TargetApi(11)
    public static void setSoLastModifiedTime(Context cxt, String soName, long time) {
        cxt.getSharedPreferences(d.f71906h, 4).edit().putLong(soName, time).apply();
    }

    public static void setSoVersion(Context ctx, String ver) {
        put(ctx, d.f71912n, ver);
    }

    public static void setUtilsConfigState(String cfgPath, boolean enabled) {
        y yVar = new y(cfgPath);
        y.c cVarB = yVar.b("config");
        if (cVarB == null) {
            cVarB = new y.c("config");
            yVar.f(cVarB);
        }
        cVarB.e("utilsConfigState", enabled ? "1" : "0");
        yVar.j();
    }

    public static String getSoVersion(Context ctx) {
        return get(ctx, d.f71912n, "");
    }

    public static int getSoCode(Context ctx) {
        return ctx.getSharedPreferences(d.f71906h, 4).getInt(d.f71911m, 0);
    }

    public static void setModConfig(String cfgPath, String goldSwitch, String archiveSwitch, String introductionSwitch, String channelNum, String targetVersion, String androidId, String platform, String package_type, String typeId) {
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
}
