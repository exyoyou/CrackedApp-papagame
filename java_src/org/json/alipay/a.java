package org.json.alipay;

/* JADX INFO: loaded from: classes10.dex */
public final class a extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Throwable f95830a;

    public a(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f95830a;
    }

    public a(Throwable th) {
        super(th.getMessage());
        this.f95830a = th;
    }
}
