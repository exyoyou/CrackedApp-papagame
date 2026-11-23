package com.facebook.imagepipeline.nativecode;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f28226a;

    public static synchronized void a() {
        if (!f28226a) {
            r4.a.f("native-imagetranscoder");
            f28226a = true;
        }
    }
}
