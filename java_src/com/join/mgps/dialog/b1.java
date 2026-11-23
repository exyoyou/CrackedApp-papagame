package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class b1 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Button f67421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TextView f67422e;

    public b1(Context context, int theme) {
        super(context, theme);
        this.f67419b = context;
    }

    public void a(View.OnClickListener onClickListener) {
        this.f67422e.setOnClickListener(onClickListener);
    }

    public void b(View.OnClickListener onClickListener) {
        this.f67421d.setOnClickListener(onClickListener);
    }

    public void c(String name) {
        this.f67420c.setText(name);
    }

    public b1(Context context) {
        super(context, R.style.dialog_error);
        this.f67419b = context;
        setContentView(LayoutInflater.from(context).inflate(R.layout.dialog_handshank, (ViewGroup) null));
        this.f67420c = (TextView) findViewById(R.id.name_tv);
        this.f67422e = (TextView) findViewById(R.id.cancel_tv);
        this.f67421d = (Button) findViewById(R.id.check_btn);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
    }
}
