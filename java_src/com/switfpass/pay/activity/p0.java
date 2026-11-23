package com.switfpass.pay.activity;

import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
import com.switfpass.pay.utils.DialogInfoSdk;

/* JADX INFO: loaded from: classes2.dex */
final class p0 extends com.switfpass.pay.thread.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ PaySDKCaptureActivity f82533a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ RequestMsg f82534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ boolean f82535c;

    p0(PaySDKCaptureActivity paySDKCaptureActivity, RequestMsg requestMsg, boolean z10) {
        this.f82533a = paySDKCaptureActivity;
        this.f82534b = requestMsg;
        this.f82535c = z10;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        super.onError(obj);
        if (this.f82533a.V != null) {
            this.f82533a.V.dismiss();
        }
        if (PaySDKCaptureActivity.f(this.f82533a)) {
            PaySDKCaptureActivity.a(this.f82533a, true);
            this.f82533a.runOnUiThread(new q0(this, obj));
        }
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPostExecute() {
        super.onPostExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPreExecute() {
        super.onPreExecute();
        PaySDKCaptureActivity paySDKCaptureActivity = this.f82533a;
        com.switfpass.pay.utils.h.e(paySDKCaptureActivity, paySDKCaptureActivity.U);
        this.f82533a.V.show();
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        super.onSucceed(orderBena);
        if (this.f82533a.V != null) {
            this.f82533a.V.dismiss();
        }
        if (orderBena != null) {
            if (orderBena.getMoeny() != null) {
                PaySDKCaptureActivity.a(this.f82533a, com.switfpass.pay.utils.l0.d(Double.parseDouble(orderBena.getMoeny())));
            }
            this.f82534b.setOutTradeNo(orderBena.getOutTradeNo());
            if (PaySDKCaptureActivity.f(this.f82533a)) {
                PaySDKCaptureActivity.a(this.f82533a, true);
                if (orderBena.getStatus().equalsIgnoreCase("SUCCESS") && this.f82533a.ae) {
                    this.f82533a.ae = false;
                    this.f82533a.V.dismiss();
                    orderBena.setMark(true);
                    PayResultActivity.startActivity(orderBena, PaySDKCaptureActivity.g(this.f82533a));
                    this.f82533a.finish();
                    return;
                }
                if (this.f82535c) {
                    if (this.f82533a.V != null) {
                        this.f82533a.V.dismiss();
                    }
                    if (!orderBena.getStatus().equalsIgnoreCase("SUCCESS")) {
                        this.f82533a.V.dismiss();
                        this.f82533a.showToastInfo("该笔订单状态：未支付，请冲正该笔订单或者继续查询确认该笔订单是否已经支付成功!");
                        PaySDKCaptureActivity.h(this.f82533a);
                        return;
                    } else {
                        this.f82533a.V.dismiss();
                        orderBena.setMark(true);
                        PayResultActivity.startActivity(orderBena, PaySDKCaptureActivity.g(this.f82533a));
                        this.f82533a.finish();
                        return;
                    }
                }
                if (this.f82533a.count >= 4) {
                    PaySDKCaptureActivity.d();
                    new StringBuilder("result.state-->").append(orderBena.getStatus());
                    if (orderBena.getStatus().equalsIgnoreCase("SUCCESS")) {
                        this.f82533a.V.dismiss();
                        return;
                    }
                    PaySDKCaptureActivity.b(this.f82533a, orderBena.getOutTradeNo());
                    this.f82533a.V.dismiss();
                    PaySDKCaptureActivity.h(this.f82533a);
                    return;
                }
                this.f82533a.V.dismiss();
                PaySDKCaptureActivity.a(this.f82533a, 5L);
                this.f82533a.count++;
                PaySDKCaptureActivity paySDKCaptureActivity = this.f82533a;
                PaySDKCaptureActivity paySDKCaptureActivity2 = this.f82533a;
                PaySDKCaptureActivity.a(paySDKCaptureActivity, new DialogInfoSdk(paySDKCaptureActivity2, paySDKCaptureActivity2.getString(com.join.android.app.mgsim.wufun.R.drawable._mtrl_checkbox_button_checked_unchecked__2_res_0x7f08000f), "", this.f82533a.getString(com.join.android.app.mgsim.wufun.R.drawable._mtrl_checkbox_button_unchecked_checked__1_res_0x7f08001f), 11, null));
                PaySDKCaptureActivity paySDKCaptureActivity3 = this.f82533a;
                com.switfpass.pay.utils.h.e(paySDKCaptureActivity3, PaySDKCaptureActivity.b(paySDKCaptureActivity3));
                PaySDKCaptureActivity.b(this.f82533a).setOnKeyListener(new r0());
                PaySDKCaptureActivity.b(this.f82533a).show();
                PaySDKCaptureActivity.b(this.f82533a, PaySDKCaptureActivity.c());
                PaySDKCaptureActivity.c(this.f82533a).post(PaySDKCaptureActivity.i(this.f82533a));
            }
        }
    }
}
