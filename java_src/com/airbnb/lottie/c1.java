package com.airbnb.lottie;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
public final class c1<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final V f5605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final Throwable f5606b;

    public c1(V v10) {
        this.f5605a = v10;
        this.f5606b = null;
    }

    @Nullable
    public Throwable a() {
        return this.f5606b;
    }

    @Nullable
    public V b() {
        return this.f5605a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c1)) {
            return false;
        }
        c1 c1Var = (c1) obj;
        if (b() != null && b().equals(c1Var.b())) {
            return true;
        }
        if (a() == null || c1Var.a() == null) {
            return false;
        }
        return a().toString().equals(a().toString());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{b(), a()});
    }

    public c1(Throwable th) {
        this.f5606b = th;
        this.f5605a = null;
    }
}
