package dagger.hilt.android.internal.managers;

/* JADX INFO: loaded from: classes8.dex */
public final class f implements jb.b<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Object f90799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f90800c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final h f90801d;

    public f(h componentCreator) {
        this.f90801d = componentCreator;
    }

    @Override // jb.b
    public Object generatedComponent() {
        if (this.f90799b == null) {
            synchronized (this.f90800c) {
                if (this.f90799b == null) {
                    this.f90799b = this.f90801d.get();
                }
            }
        }
        return this.f90799b;
    }
}
