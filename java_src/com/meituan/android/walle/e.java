package com.meituan.android.walle;

/* JADX INFO: loaded from: classes2.dex */
final class e<A, B> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final A f75361a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final B f75362b;

    private e(A a10, B b10) {
        this.f75361a = a10;
        this.f75362b = b10;
    }

    public static <A, B> e<A, B> c(A a10, B b10) {
        return new e<>(a10, b10);
    }

    public A a() {
        return this.f75361a;
    }

    public B b() {
        return this.f75362b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        A a10 = this.f75361a;
        if (a10 == null) {
            if (eVar.f75361a != null) {
                return false;
            }
        } else if (!a10.equals(eVar.f75361a)) {
            return false;
        }
        B b10 = this.f75362b;
        if (b10 == null) {
            if (eVar.f75362b != null) {
                return false;
            }
        } else if (!b10.equals(eVar.f75362b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        A a10 = this.f75361a;
        int iHashCode = ((a10 == null ? 0 : a10.hashCode()) + 31) * 31;
        B b10 = this.f75362b;
        return iHashCode + (b10 != null ? b10.hashCode() : 0);
    }
}
