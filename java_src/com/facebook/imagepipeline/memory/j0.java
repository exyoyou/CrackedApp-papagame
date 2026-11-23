package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class j0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f28144h = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f28145a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28146b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    public final SparseIntArray f28147c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f28148d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f28149e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f28150f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f28151g;

    public j0(int maxSize, @Nullable SparseIntArray bucketSizes) {
        this(maxSize, maxSize, bucketSizes, 0, Integer.MAX_VALUE, -1);
    }

    public j0(int maxSizeSoftCap, int maxSizeHardCap, @Nullable SparseIntArray bucketSizes) {
        this(maxSizeSoftCap, maxSizeHardCap, bucketSizes, 0, Integer.MAX_VALUE, -1);
    }

    public j0(int maxSizeSoftCap, int maxSizeHardCap, @Nullable SparseIntArray bucketSizes, int minBucketSize, int maxBucketSize, int maxNumThreads) {
        com.facebook.common.internal.i.o(maxSizeSoftCap >= 0 && maxSizeHardCap >= maxSizeSoftCap);
        this.f28146b = maxSizeSoftCap;
        this.f28145a = maxSizeHardCap;
        this.f28147c = bucketSizes;
        this.f28148d = minBucketSize;
        this.f28149e = maxBucketSize;
        this.f28151g = maxNumThreads;
    }
}
