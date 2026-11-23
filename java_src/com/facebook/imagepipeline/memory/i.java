package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;
import com.facebook.infer.annotation.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final long f28129a = 1024;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f28130b = 1048576;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f28131c = b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f28132d = 384;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile g f28133e;

    @ThreadSafe
    public static g a() {
        if (f28133e == null) {
            synchronized (i.class) {
                if (f28133e == null) {
                    f28133e = new g(f28132d, f28131c);
                }
            }
        }
        return f28133e;
    }

    private static int b() {
        int iMin = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        return ((long) iMin) > 16777216 ? (iMin / 4) * 3 : iMin / 2;
    }

    public static void c(h bitmapCounterConfig) {
        if (f28133e != null) {
            throw new IllegalStateException("BitmapCounter has already been created! `BitmapCounterProvider.initialize(...)` should only be called before `BitmapCounterProvider.get()` or not at all!");
        }
        f28132d = bitmapCounterConfig.a();
    }
}
