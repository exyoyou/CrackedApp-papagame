package com.facebook.cache.common;

import android.net.Uri;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class j implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f26725a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final boolean f26726b;

    public j(final String key) {
        this(key, false);
    }

    @Override // com.facebook.cache.common.c
    public String a() {
        return this.f26725a;
    }

    @Override // com.facebook.cache.common.c
    public boolean b() {
        return this.f26726b;
    }

    @Override // com.facebook.cache.common.c
    public boolean c(Uri uri) {
        return this.f26725a.contains(uri.toString());
    }

    @Override // com.facebook.cache.common.c
    public boolean equals(@Nullable Object o10) {
        if (o10 == this) {
            return true;
        }
        if (o10 instanceof j) {
            return this.f26725a.equals(((j) o10).f26725a);
        }
        return false;
    }

    @Override // com.facebook.cache.common.c
    public int hashCode() {
        return this.f26725a.hashCode();
    }

    @Override // com.facebook.cache.common.c
    public String toString() {
        return this.f26725a;
    }

    public j(final String key, boolean isResourceIdForDebugging) {
        this.f26725a = (String) com.facebook.common.internal.i.i(key);
        this.f26726b = isResourceIdForDebugging;
    }
}
