package com.sigmob.sdk.downloader.core.breakpoint;

/* JADX INFO: loaded from: classes3.dex */
class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f80435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m f80436b;

    n(final m.a agent) {
        this(new m(agent));
    }

    void a() {
        this.f80436b.a();
    }

    void b(int id2) {
        this.f80436b.e(id2);
        this.f80436b.a(id2, this.f80435a);
    }

    void c(int id2) {
        this.f80436b.e(id2);
        try {
            if (this.f80436b.a(id2)) {
                return;
            }
            this.f80436b.b(id2);
        } finally {
            this.f80436b.d(id2);
        }
    }

    void d(int id2) {
        this.f80436b.e(id2);
        this.f80436b.c(id2);
    }

    n(final m executor) {
        this.f80436b = executor;
        this.f80435a = 1500L;
    }

    boolean a(int id2) {
        return !this.f80436b.a(id2);
    }
}
