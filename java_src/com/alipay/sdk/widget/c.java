package com.alipay.sdk.widget;

/* JADX INFO: loaded from: classes7.dex */
final class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f7260b;

    c(a aVar) {
        this.f7260b = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f7260b.f7255a != null) {
            try {
                this.f7260b.f7255a.dismiss();
            } catch (Exception unused) {
            }
        }
    }
}
