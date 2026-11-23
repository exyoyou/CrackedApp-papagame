package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public interface k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f28153a = "buckets_used_";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f28154b = "used_count";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f28155c = "used_bytes";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f28156d = "free_count";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f28157e = "free_bytes";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f28158f = "soft_cap";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f28159g = "hard_cap";

    void a(int size);

    void b(int bucketedSize);

    void c();

    void d();

    void e(int sizeInBytes);

    void f(int sizeInBytes);

    void g(BasePool basePool);
}
