package com.facebook.imagepipeline.cache;

import android.app.ActivityManager;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class k implements com.facebook.common.internal.l<u> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f27717b = 256;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f27718c = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f27719d = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f27720e = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final long f27721f = TimeUnit.MINUTES.toMillis(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ActivityManager f27722a;

    public k(ActivityManager activityManager) {
        this.f27722a = activityManager;
    }

    private int b() {
        int iMin = Math.min(this.f27722a.getMemoryClass() * 1048576, Integer.MAX_VALUE);
        if (iMin < 33554432) {
            return 4194304;
        }
        if (iMin < 67108864) {
            return 6291456;
        }
        return iMin / 4;
    }

    @Override // com.facebook.common.internal.l
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public u get() {
        return new u(b(), 256, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, f27721f);
    }
}
