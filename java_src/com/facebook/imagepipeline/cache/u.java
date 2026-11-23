package com.facebook.imagepipeline.cache;

import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27746a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27747b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27748c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f27749d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f27750e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f27751f;

    public u(int maxCacheSize, int maxCacheEntries, int maxEvictionQueueSize, int maxEvictionQueueEntries, int maxCacheEntrySize) {
        this(maxCacheSize, maxCacheEntries, maxEvictionQueueSize, maxEvictionQueueEntries, maxCacheEntrySize, TimeUnit.MINUTES.toMillis(5L));
    }

    public u(int maxCacheSize, int maxCacheEntries, int maxEvictionQueueSize, int maxEvictionQueueEntries, int maxCacheEntrySize, long paramsCheckIntervalMs) {
        this.f27746a = maxCacheSize;
        this.f27747b = maxCacheEntries;
        this.f27748c = maxEvictionQueueSize;
        this.f27749d = maxEvictionQueueEntries;
        this.f27750e = maxCacheEntrySize;
        this.f27751f = paramsCheckIntervalMs;
    }
}
