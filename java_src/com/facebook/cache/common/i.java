package com.facebook.cache.common;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class i implements CacheEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private static i f26724a;

    private i() {
    }

    public static synchronized i i() {
        if (f26724a == null) {
            f26724a = new i();
        }
        return f26724a;
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void a() {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void b(b cacheEvent) {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void c(b cacheEvent) {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void d(b cacheEvent) {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void e(b cacheEvent) {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void f(b cacheEvent) {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void g(b cacheEvent) {
    }

    @Override // com.facebook.cache.common.CacheEventListener
    public void h(b cacheEvent) {
    }
}
