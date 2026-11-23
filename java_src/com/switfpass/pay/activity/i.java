package com.switfpass.pay.activity;

/* JADX INFO: loaded from: classes2.dex */
final class i implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ QrcodeActivity f82520b;

    i(QrcodeActivity qrcodeActivity) {
        this.f82520b = qrcodeActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (QrcodeActivity.a(this.f82520b) <= 0 || QrcodeActivity.b(this.f82520b) == null) {
            QrcodeActivity.c(this.f82520b).removeCallbacks(this);
            if (QrcodeActivity.b(this.f82520b) != null && QrcodeActivity.b(this.f82520b).isShowing()) {
                QrcodeActivity.b(this.f82520b).dismiss();
            }
            QrcodeActivity.b(this.f82520b).h("确定(关闭)");
            this.f82520b.finish();
            return;
        }
        QrcodeActivity.b(this.f82520b).h("确定(" + QrcodeActivity.a(this.f82520b) + "秒后关闭)");
        QrcodeActivity qrcodeActivity = this.f82520b;
        QrcodeActivity.a(qrcodeActivity, QrcodeActivity.a(qrcodeActivity) - 1);
        QrcodeActivity.c(this.f82520b).postDelayed(this, 1000L);
    }
}
