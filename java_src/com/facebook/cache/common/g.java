package com.facebook.cache.common;

import android.net.Uri;
import com.facebook.infer.annotation.Nullsafe;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class g implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final List<c> f26722a;

    public g(List<c> cacheKeys) {
        this.f26722a = (List) com.facebook.common.internal.i.i(cacheKeys);
    }

    @Override // com.facebook.cache.common.c
    public String a() {
        return this.f26722a.get(0).a();
    }

    @Override // com.facebook.cache.common.c
    public boolean b() {
        return false;
    }

    @Override // com.facebook.cache.common.c
    public boolean c(Uri uri) {
        for (int i10 = 0; i10 < this.f26722a.size(); i10++) {
            if (this.f26722a.get(i10).c(uri)) {
                return true;
            }
        }
        return false;
    }

    public List<c> d() {
        return this.f26722a;
    }

    @Override // com.facebook.cache.common.c
    public boolean equals(@Nullable Object o10) {
        if (o10 == this) {
            return true;
        }
        if (o10 instanceof g) {
            return this.f26722a.equals(((g) o10).f26722a);
        }
        return false;
    }

    @Override // com.facebook.cache.common.c
    public int hashCode() {
        return this.f26722a.hashCode();
    }

    @Override // com.facebook.cache.common.c
    public String toString() {
        return "MultiCacheKey:" + this.f26722a.toString();
    }
}
