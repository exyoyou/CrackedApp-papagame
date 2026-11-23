package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class f0 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    View f67536b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    View f67537c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View f67538d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    View f67539e;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            f0.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            f0.this.dismiss();
        }
    }

    public f0(@NonNull Context context) {
        super(context, R.style.DialogFullscreen);
        a();
    }

    private void a() {
    }

    public void b(int type) {
        if (type == 1) {
            this.f67539e.setVisibility(0);
            this.f67536b.setVisibility(8);
        } else {
            this.f67539e.setVisibility(8);
            this.f67536b.setVisibility(0);
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_device_incompatible);
        this.f67536b = findViewById(R.id.tvConfirm);
        this.f67539e = findViewById(R.id.cl);
        this.f67538d = findViewById(R.id.tvPositive);
        this.f67537c = findViewById(R.id.tvNegative);
        this.f67536b.setOnClickListener(new a());
        this.f67537c.setOnClickListener(new b());
    }

    public f0(@NonNull Context context, int themeResId) {
        super(context, R.style.DialogFullscreen);
        a();
    }

    protected f0(@NonNull Context context, boolean cancelable, @Nullable DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        a();
    }
}
