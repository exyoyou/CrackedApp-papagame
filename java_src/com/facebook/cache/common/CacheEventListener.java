package com.facebook.cache.common;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public interface CacheEventListener {

    public enum EvictionReason {
        CACHE_FULL,
        CONTENT_STALE,
        USER_FORCED,
        CACHE_MANAGER_TRIMMED
    }

    void a();

    void b(b cacheEvent);

    void c(b cacheEvent);

    void d(b cacheEvent);

    void e(b cacheEvent);

    void f(b cacheEvent);

    void g(b cacheEvent);

    void h(b cacheEvent);
}
