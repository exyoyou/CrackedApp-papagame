package com.switfpass.pay.activity;

import android.view.View;
import com.switfpass.pay.lib.Resourcemap;

/* JADX INFO: loaded from: classes2.dex */
final class l implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ QrcodeActivity f82524b;

    l(QrcodeActivity qrcodeActivity) {
        this.f82524b = qrcodeActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.switfpass.pay.utils.h.l(this.f82524b.getResources().getString(Resourcemap.getById_title_prompt()), this.f82524b.getResources().getString(Resourcemap.getById_pay_unFinished()), this.f82524b.getResources().getString(Resourcemap.getById_pay_str_btnCancel()), this.f82524b.getResources().getString(Resourcemap.getById_pay_str_btnOk()), this.f82524b, new m(this), new n()).show();
    }
}
