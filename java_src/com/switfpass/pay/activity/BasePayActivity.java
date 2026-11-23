package com.switfpass.pay.activity;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public class BasePayActivity extends Activity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected ProgressDialog f82467b = null;

    public void a() {
        try {
            ProgressDialog progressDialog = this.f82467b;
            if (progressDialog == null || !progressDialog.isShowing()) {
                return;
            }
            this.f82467b.dismiss();
            this.f82467b.cancel();
            this.f82467b = null;
        } catch (Exception e10) {
            new StringBuilder("dismissMyLoading ").append(e10);
        }
    }

    public void b(boolean z10, String str, Context context) {
        if (z10) {
            try {
                if (this.f82467b == null) {
                    ProgressDialog progressDialog = new ProgressDialog(context);
                    this.f82467b = progressDialog;
                    progressDialog.setCancelable(z10);
                }
                this.f82467b.setMessage(str);
                this.f82467b.show();
            } catch (Exception e10) {
                new StringBuilder("showNewLoading ").append(e10);
            }
        }
    }

    protected void c(int i10) {
        runOnUiThread(new z(this, i10));
    }

    protected void d(String str) {
        runOnUiThread(new a0(this, str));
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
    }
}
