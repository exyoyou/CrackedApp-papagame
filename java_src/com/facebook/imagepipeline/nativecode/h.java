package com.facebook.imagepipeline.nativecode;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static g f28227a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f28228b;

    static {
        try {
            f28227a = (g) Class.forName("com.facebook.imagepipeline.nativecode.WebpTranscoderImpl").newInstance();
            f28228b = true;
        } catch (Throwable unused) {
            f28228b = false;
        }
    }

    public static g a() {
        return f28227a;
    }
}
