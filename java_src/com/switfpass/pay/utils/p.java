package com.switfpass.pay.utils;

import android.view.View;
import com.switfpass.pay.activity.PaySDKCaptureActivity;

/* JADX INFO: loaded from: classes2.dex */
final class p implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ b0 f82829b;

    p(b0 b0Var) {
        this.f82829b = b0Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        c0 c0Var = new c0();
        if (this.f82829b.f82756m.getTokenId() == null || "".equals(this.f82829b.f82756m.getTokenId())) {
            c0Var.a(this.f82829b.f82745b, "tokenid不能为空");
        } else {
            this.f82829b.cancel();
            PaySDKCaptureActivity.startActivity(this.f82829b.f82745b, this.f82829b.f82756m);
        }
    }
}
