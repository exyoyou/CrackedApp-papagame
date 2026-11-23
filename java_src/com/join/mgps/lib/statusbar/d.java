package com.join.mgps.lib.statusbar;

import android.os.Build;

/* JADX INFO: loaded from: classes3.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean f71839a;

    public static void a() {
        try {
            Build.class.getMethod("hasSmartBar", new Class[0]);
        } catch (NoSuchMethodException unused) {
            f71839a |= Build.BRAND.contains("Meizu");
        }
    }
}
