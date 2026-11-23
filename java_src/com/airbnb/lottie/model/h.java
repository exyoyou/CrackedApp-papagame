package com.airbnb.lottie.model;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY})
public class h<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    T f5859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    T f5860b;

    private static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public void b(T t10, T t11) {
        this.f5859a = t10;
        this.f5860b = t11;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return a(pair.first, this.f5859a) && a(pair.second, this.f5860b);
    }

    public int hashCode() {
        T t10 = this.f5859a;
        int iHashCode = t10 == null ? 0 : t10.hashCode();
        T t11 = this.f5860b;
        return iHashCode ^ (t11 != null ? t11.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + this.f5859a + " " + this.f5860b + "}";
    }
}
