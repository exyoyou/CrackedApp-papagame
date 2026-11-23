package com.qq.e.ads.cfg;

import com.qq.e.comm.util.GDTLogger;

/* JADX INFO: loaded from: classes2.dex */
public class MultiProcessFlag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f78136a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f78137b;

    public static boolean isMultiProcess() {
        return f78136a;
    }

    public static void setMultiProcess(boolean z10) {
        if (f78137b) {
            GDTLogger.w("MultiProcessFlag已经设置过，再次设置无效");
        } else {
            f78137b = true;
            f78136a = z10;
        }
    }
}
