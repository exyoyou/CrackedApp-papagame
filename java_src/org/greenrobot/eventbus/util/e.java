package org.greenrobot.eventbus.util;

/* JADX INFO: loaded from: classes10.dex */
public class e implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Throwable f95350a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final boolean f95351b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f95352c;

    public e(Throwable th) {
        this.f95350a = th;
        this.f95351b = false;
    }

    @Override // org.greenrobot.eventbus.util.d
    public void a(Object obj) {
        this.f95352c = obj;
    }

    @Override // org.greenrobot.eventbus.util.d
    public Object b() {
        return this.f95352c;
    }

    public Throwable c() {
        return this.f95350a;
    }

    public boolean d() {
        return this.f95351b;
    }

    public e(Throwable th, boolean z10) {
        this.f95350a = th;
        this.f95351b = z10;
    }
}
