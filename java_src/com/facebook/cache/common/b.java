package com.facebook.cache.common;

import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public interface b {
    @Nullable
    IOException a();

    @Nullable
    CacheEventListener.EvictionReason b();

    long c();

    long d();

    long e();

    @Nullable
    c getCacheKey();

    @Nullable
    String getResourceId();
}
