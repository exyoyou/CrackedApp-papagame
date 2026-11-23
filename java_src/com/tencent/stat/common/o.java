package com.tencent.stat.common;

import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f83927a = -1;

    public static boolean a() {
        int i10 = f83927a;
        if (i10 == 1) {
            return true;
        }
        if (i10 == 0) {
            return false;
        }
        String[] strArr = {"/bin", "/system/bin/", "/system/xbin/", "/system/sbin/", "/sbin/", "/vendor/bin/"};
        for (int i11 = 0; i11 < 6; i11++) {
            try {
                if (new File(strArr[i11] + "su").exists()) {
                    f83927a = 1;
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        f83927a = 0;
        return false;
    }
}
