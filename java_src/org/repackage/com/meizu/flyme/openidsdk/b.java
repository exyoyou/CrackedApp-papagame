package org.repackage.com.meizu.flyme.openidsdk;

/* JADX INFO: loaded from: classes10.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f95963a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f95964b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f95965c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f95966d;

    b(String str) {
        this.f95965c = str;
    }

    void a(int i10) {
        this.f95966d = i10;
    }

    void b(long j10) {
        this.f95963a = j10;
    }

    void c(String str) {
        this.f95964b = str;
    }

    boolean d() {
        return this.f95963a > System.currentTimeMillis();
    }

    void e() {
        this.f95963a = 0L;
    }
}
