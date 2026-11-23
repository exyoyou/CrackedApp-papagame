package com.switfpass.pay.utils;

import com.switfpass.pay.bean.OrderBena;

/* JADX INFO: loaded from: classes2.dex */
final class l extends com.switfpass.pay.thread.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ b0 f82811a;

    l(b0 b0Var) {
        this.f82811a = b0Var;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        this.f82811a.f82755l.dismiss();
        if (this.f82811a.f82761r != null) {
            this.f82811a.f82761r.dismiss();
        }
        if (this.f82811a.f82762s) {
            this.f82811a.f82762s = true;
            super.onError(obj);
            if (obj != null) {
                d8.a.b(0, 0, 1);
                this.f82811a.f82745b.runOnUiThread(new m(this, obj));
            }
        }
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPostExecute() {
        super.onPostExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPreExecute() {
        super.onPreExecute();
        h.e(this.f82811a.f82745b, this.f82811a.f82755l);
        this.f82811a.f82755l.show();
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        this.f82811a.f82755l.dismiss();
        if (this.f82811a.f82761r != null) {
            this.f82811a.f82761r.dismiss();
        }
        if (orderBena == null || !this.f82811a.f82762s) {
            this.f82811a.f82762s = true;
        } else {
            new R(this.f82811a, orderBena).start();
        }
    }
}
