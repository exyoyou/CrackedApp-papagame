package com.huaksj.vasdolly.common;

/* JADX INFO: loaded from: classes5.dex */
public final class c<A, B> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final A f34401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final B f34402b;

    private c(A a10, B b10) {
        this.f34401a = a10;
        this.f34402b = b10;
    }

    public static <A, B> c<A, B> a(A a10, B b10) {
        return new c<>(a10, b10);
    }

    public A b() {
        return this.f34401a;
    }

    public B c() {
        return this.f34402b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        A a10 = this.f34401a;
        if (a10 == null) {
            if (cVar.f34401a != null) {
                return false;
            }
        } else if (!a10.equals(cVar.f34401a)) {
            return false;
        }
        B b10 = this.f34402b;
        if (b10 == null) {
            if (cVar.f34402b != null) {
                return false;
            }
        } else if (!b10.equals(cVar.f34402b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        A a10 = this.f34401a;
        int iHashCode = ((a10 == null ? 0 : a10.hashCode()) + 31) * 31;
        B b10 = this.f34402b;
        return iHashCode + (b10 != null ? b10.hashCode() : 0);
    }

    public String toString() {
        return "first = " + this.f34401a + " , second = " + this.f34402b;
    }
}
