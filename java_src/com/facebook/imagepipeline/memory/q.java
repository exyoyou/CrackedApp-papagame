package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f28185a = 16384;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f28186b = 5;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f28187c = 81920;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f28188d = 1048576;

    public static j0 a() {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(16384, 5);
        return new j0(f28187c, 1048576, sparseIntArray);
    }
}
