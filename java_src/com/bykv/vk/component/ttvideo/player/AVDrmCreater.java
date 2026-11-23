package com.bykv.vk.component.ttvideo.player;

import com.byazt.nr.m;

/* JADX INFO: loaded from: classes9.dex */
@Keep
public class AVDrmCreater {
    public static final int DrmTypeIntertrust = 1;
    public static final int DrmTypeNone = 0;

    @CalledByNative
    public static synchronized long createDrm(int i10) {
        if (i10 != 1) {
            return 0L;
        }
        return createDrm(100, "com.bykv.vk.component.ttvideo.drm.intertrust.IntertrustDrm");
    }

    private static long createDrm(int i10, String str) {
        try {
            ClassLoader classLoaderLoadPlugin = TTPlayerPluginLoader.loadPlugin(i10);
            return Long.parseLong(String.valueOf((classLoaderLoadPlugin != null ? Class.forName(str, true, classLoaderLoadPlugin) : Class.forName(str)).getMethod("createDrm", new Class[0]).invoke(null, new Object[0])));
        } catch (Exception e10) {
            m.c(e10);
            return 0L;
        }
    }
}
