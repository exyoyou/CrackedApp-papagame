package com.tencent.stat;

/* JADX INFO: loaded from: classes2.dex */
class v implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f83971a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ n f83972b;

    v(n nVar, int i10) {
        this.f83972b = nVar;
        this.f83971a = i10;
    }

    @Override // java.lang.Runnable
    public void run() {
        int iA = StatConfig.a();
        int i10 = this.f83971a;
        if (i10 == -1) {
            i10 = this.f83972b.f83952b;
        }
        int i11 = i10 / iA;
        int i12 = i10 % iA;
        for (int i13 = 0; i13 < i11 + 1; i13++) {
            this.f83972b.b(iA);
        }
        if (i12 > 0) {
            this.f83972b.b(i12);
        }
    }
}
