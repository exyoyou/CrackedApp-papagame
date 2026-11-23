package lc;

/* JADX INFO: loaded from: classes.dex */
public final class c<A, B> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final A f94144a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final B f94145b;

    public c(A a10, B b10) {
        this.f94144a = a10;
        this.f94145b = b10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        A a10 = this.f94144a;
        if (a10 == null) {
            if (cVar.f94144a != null) {
                return false;
            }
        } else if (!a10.equals(cVar.f94144a)) {
            return false;
        }
        B b10 = this.f94145b;
        if (b10 == null) {
            if (cVar.f94145b != null) {
                return false;
            }
        } else if (!b10.equals(cVar.f94145b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        A a10 = this.f94144a;
        int iHashCode = ((a10 == null ? 0 : a10.hashCode()) + 31) * 31;
        B b10 = this.f94145b;
        return iHashCode + (b10 != null ? b10.hashCode() : 0);
    }
}
