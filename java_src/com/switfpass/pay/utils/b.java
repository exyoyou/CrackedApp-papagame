package com.switfpass.pay.utils;

import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;

/* JADX INFO: loaded from: classes2.dex */
final class b extends com.switfpass.pay.thread.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ b0 f82742a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ RequestMsg f82743b;

    b(b0 b0Var, RequestMsg requestMsg) {
        this.f82742a = b0Var;
        this.f82743b = requestMsg;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        this.f82742a.f82755l.dismiss();
        if (this.f82742a.f82761r != null) {
            this.f82742a.f82761r.dismiss();
        }
        if (this.f82742a.f82762s) {
            this.f82742a.f82762s = true;
            super.onError(obj);
            if (obj != null) {
                d8.a.b(0, 0, 1);
                this.f82742a.f82745b.runOnUiThread(new d(this, obj));
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
        h.e(this.f82742a.f82745b, this.f82742a.f82755l);
        this.f82742a.f82755l.show();
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        this.f82742a.f82755l.dismiss();
        if (this.f82742a.f82761r != null) {
            this.f82742a.f82761r.dismiss();
        }
        if (orderBena == null || !this.f82742a.f82762s) {
            this.f82742a.f82762s = true;
        } else {
            b0.c(this.f82742a, orderBena, this.f82743b);
        }
    }
}
