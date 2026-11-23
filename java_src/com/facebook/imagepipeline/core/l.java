package com.facebook.imagepipeline.core;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f27930a = true;

    private l() {
    }

    public static boolean a() {
        return f27930a;
    }

    public static void b(boolean useNativeCode) {
        f27930a = useNativeCode;
    }
}
