package com.facebook.cache.disk;

import com.facebook.cache.common.k;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public interface h extends f3.a {
    c.a a() throws IOException;

    boolean b(com.facebook.cache.common.c key);

    @Nullable
    d3.a c(com.facebook.cache.common.c key);

    void clearAll();

    boolean e(com.facebook.cache.common.c key);

    boolean g(com.facebook.cache.common.c key);

    long getCount();

    long getSize();

    long h(long cacheExpirationMs);

    void i(com.facebook.cache.common.c key);

    @Nullable
    d3.a insert(com.facebook.cache.common.c key, k writer) throws IOException;

    boolean isEnabled();
}
