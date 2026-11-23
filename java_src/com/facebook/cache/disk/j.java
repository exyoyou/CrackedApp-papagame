package com.facebook.cache.disk;

import com.facebook.cache.common.CacheEventListener;
import com.facebook.infer.annotation.Nullsafe;
import com.facebook.infer.annotation.ReturnsOwnership;
import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class j implements com.facebook.cache.common.b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Object f26828i = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f26829j = 5;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private static j f26830k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static int f26831l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private com.facebook.cache.common.c f26832a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private String f26833b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f26834c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f26835d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f26836e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private IOException f26837f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private CacheEventListener.EvictionReason f26838g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private j f26839h;

    private j() {
    }

    @ReturnsOwnership
    public static j f() {
        synchronized (f26828i) {
            j jVar = f26830k;
            if (jVar == null) {
                return new j();
            }
            f26830k = jVar.f26839h;
            jVar.f26839h = null;
            f26831l--;
            return jVar;
        }
    }

    private void h() {
        this.f26832a = null;
        this.f26833b = null;
        this.f26834c = 0L;
        this.f26835d = 0L;
        this.f26836e = 0L;
        this.f26837f = null;
        this.f26838g = null;
    }

    @Override // com.facebook.cache.common.b
    @Nullable
    public IOException a() {
        return this.f26837f;
    }

    @Override // com.facebook.cache.common.b
    @Nullable
    public CacheEventListener.EvictionReason b() {
        return this.f26838g;
    }

    @Override // com.facebook.cache.common.b
    public long c() {
        return this.f26834c;
    }

    @Override // com.facebook.cache.common.b
    public long d() {
        return this.f26836e;
    }

    @Override // com.facebook.cache.common.b
    public long e() {
        return this.f26835d;
    }

    public void g() {
        synchronized (f26828i) {
            if (f26831l < 5) {
                h();
                f26831l++;
                j jVar = f26830k;
                if (jVar != null) {
                    this.f26839h = jVar;
                }
                f26830k = this;
            }
        }
    }

    @Override // com.facebook.cache.common.b
    @Nullable
    public com.facebook.cache.common.c getCacheKey() {
        return this.f26832a;
    }

    @Override // com.facebook.cache.common.b
    @Nullable
    public String getResourceId() {
        return this.f26833b;
    }

    public j i(com.facebook.cache.common.c cacheKey) {
        this.f26832a = cacheKey;
        return this;
    }

    public j j(long cacheLimit) {
        this.f26835d = cacheLimit;
        return this;
    }

    public j k(long cacheSize) {
        this.f26836e = cacheSize;
        return this;
    }

    public j l(CacheEventListener.EvictionReason evictionReason) {
        this.f26838g = evictionReason;
        return this;
    }

    public j m(IOException exception) {
        this.f26837f = exception;
        return this;
    }

    public j n(long itemSize) {
        this.f26834c = itemSize;
        return this;
    }

    public j o(String resourceId) {
        this.f26833b = resourceId;
        return this;
    }
}
