package external.org.apache.commons.lang3.builder;

/* JADX INFO: loaded from: classes8.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f90928a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f90929b;

    public e(Object obj) {
        this.f90929b = System.identityHashCode(obj);
        this.f90928a = obj;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f90929b == eVar.f90929b && this.f90928a == eVar.f90928a;
    }

    public int hashCode() {
        return this.f90929b;
    }
}
