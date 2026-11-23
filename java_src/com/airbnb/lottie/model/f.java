package com.airbnb.lottie.model;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LruCache;
import com.airbnb.lottie.j;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY})
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final f f5853b = new f();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LruCache<String, j> f5854a = new LruCache<>(20);

    @VisibleForTesting
    f() {
    }

    public static f c() {
        return f5853b;
    }

    public void a() {
        this.f5854a.evictAll();
    }

    @Nullable
    public j b(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return this.f5854a.get(str);
    }

    public void d(@Nullable String str, j jVar) {
        if (str == null) {
            return;
        }
        this.f5854a.put(str, jVar);
    }

    public void e(int i10) {
        this.f5854a.resize(i10);
    }
}
