package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class d extends AlertDialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f67461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f67462c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f67463d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    com.join.mgps.callbacks.d f67464e;

    public d(@NonNull Context context) {
        super(context, R.style.Dialog);
    }

    public com.join.mgps.callbacks.d a() {
        return this.f67464e;
    }

    public void b(com.join.mgps.callbacks.d dialogCallback) {
        this.f67464e = dialogCallback;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.tv_opt_left) {
            com.join.mgps.callbacks.d dVar = this.f67464e;
            if (dVar != null) {
                dVar.onClickCancle();
            }
            dismiss();
            return;
        }
        if (id2 == R.id.tv_opt_right) {
            com.join.mgps.callbacks.d dVar2 = this.f67464e;
            if (dVar2 != null) {
                dVar2.onClickOk();
            }
            dismiss();
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_apk_install_guide);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        this.f67461b = (TextView) findViewById(R.id.tv_opt_left);
        this.f67462c = (TextView) findViewById(R.id.tv_opt_right);
        this.f67463d = (TextView) findViewById(R.id.tv_sub_title);
        this.f67461b.setOnClickListener(this);
        this.f67462c.setOnClickListener(this);
        if (MApplication.f3182z.getActivity() == null || MApplication.f3182z.getActivity().getRequestedOrientation() != 0) {
            this.f67463d.setText(Html.fromHtml(getContext().getResources().getString(R.string.str_install_apk_tip_v)));
        } else {
            this.f67463d.setText(Html.fromHtml(getContext().getResources().getString(R.string.str_install_apk_tip_h)));
        }
    }
}
