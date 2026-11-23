package com.alipay.sdk.widget;

import com.alipay.sdk.widget.a.AlertDialogC0204a;

/* JADX INFO: loaded from: classes7.dex */
final class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f7259b;

    b(a aVar) {
        this.f7259b = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f7259b.f7255a == null) {
            a aVar = this.f7259b;
            a aVar2 = this.f7259b;
            aVar.f7255a = aVar2.new AlertDialogC0204a(aVar2.f7256b);
        }
        try {
            if (this.f7259b.f7255a.isShowing()) {
                return;
            }
            this.f7259b.f7255a.show();
        } catch (Exception unused) {
        }
    }
}
