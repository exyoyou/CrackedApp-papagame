package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f28189a = 4194304;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f28190b = 131072;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f28191c = Runtime.getRuntime().availableProcessors();

    private r() {
    }

    public static SparseIntArray a(int min, int max, int numThreads) {
        SparseIntArray sparseIntArray = new SparseIntArray();
        while (min <= max) {
            sparseIntArray.put(min, numThreads);
            min *= 2;
        }
        return sparseIntArray;
    }

    public static j0 b() {
        int i10 = f28191c;
        return new j0(4194304, i10 * 4194304, a(131072, 4194304, i10), 131072, 4194304, i10);
    }
}
