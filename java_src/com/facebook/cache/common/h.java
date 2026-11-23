package com.facebook.cache.common;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class h implements CacheErrorLogger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private static h f26723a;

    private h() {
    }

    public static synchronized h b() {
        if (f26723a == null) {
            f26723a = new h();
        }
        return f26723a;
    }

    @Override // com.facebook.cache.common.CacheErrorLogger
    public void a(CacheErrorLogger.CacheErrorCategory category, Class<?> clazz, String message, @Nullable Throwable throwable) {
    }
}
