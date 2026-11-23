package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f28183a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final SparseIntArray f28184b = new SparseIntArray(0);

    private p() {
    }

    public static j0 a() {
        return new j0(0, b(), f28184b);
    }

    private static int b() {
        int iMin = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        return iMin > 16777216 ? (iMin / 4) * 3 : iMin / 2;
    }
}
