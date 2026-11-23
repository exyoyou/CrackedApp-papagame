package com.switfpass.pay.activity;

import com.switfpass.pay.lib.Resourcemap;
import com.switfpass.pay.utils.DialogInfoSdk;

/* JADX INFO: loaded from: classes2.dex */
final class v implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ u f82547b;

    v(u uVar) {
        this.f82547b = uVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d8.a.b(0, 0, 1);
        QrcodeActivity.a(this.f82547b.f82545a, new DialogInfoSdk(this.f82547b.f82545a, this.f82547b.f82545a.getResources().getString(Resourcemap.getById_title_prompt()), "支付请求已超时，请重新生成二维码!", "确定", 6, null));
        com.switfpass.pay.utils.h.e(this.f82547b.f82545a, QrcodeActivity.b(this.f82547b.f82545a));
        QrcodeActivity.b(this.f82547b.f82545a).setOnKeyListener(new w());
        QrcodeActivity.b(this.f82547b.f82545a).show();
        QrcodeActivity.c(this.f82547b.f82545a).post(QrcodeActivity.d(this.f82547b.f82545a));
    }
}
