package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.pref.PrefDef_;

/* JADX INFO: loaded from: classes3.dex */
public class q extends AlertDialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f67760b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67761c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f67762d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    PrefDef_ f67763e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    DomainInfoBean f67764f;

    public q(@NonNull Context context) {
        super(context, R.style.Dialog);
    }

    public void a(DomainInfoBean pd_info, String message) {
        super.show();
        Window window = getWindow();
        window.setGravity(17);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -2;
        attributes.flags = 2;
        attributes.dimAmount = 0.6f;
        window.setAttributes(attributes);
        this.f67764f = pd_info;
        TextView textView = this.f67762d;
        if (textView != null) {
            textView.setText(message);
        }
        this.f67763e.lastShowBespeakTipTime().g(Long.valueOf(System.currentTimeMillis()));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.iv_close) {
            dismiss();
        } else if (id2 == R.id.tv_known) {
            dismiss();
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_bespeak_tip);
        setCancelable(false);
        this.f67763e = new PrefDef_(getContext());
        this.f67760b = findViewById(R.id.iv_close);
        this.f67761c = (TextView) findViewById(R.id.tv_known);
        this.f67762d = (TextView) findViewById(R.id.tv_message);
        this.f67760b.setOnClickListener(this);
        this.f67761c.setOnClickListener(this);
    }
}
