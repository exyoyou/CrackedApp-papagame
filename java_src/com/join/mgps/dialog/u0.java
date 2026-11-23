package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class u0 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67850b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67851c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Button f67852d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Button f67853e;

    public u0(Context context, int theme) {
        super(context, theme);
        this.f67850b = context;
    }

    public void a(View.OnClickListener listener) {
        this.f67852d.setOnClickListener(listener);
    }

    public void b(String txt) {
        this.f67851c.setText(txt);
    }

    public void c(View.OnClickListener listener) {
        this.f67853e.setOnClickListener(listener);
    }

    public void d(String txt) {
        this.f67853e.setText(txt);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        requestWindowFeature(-1);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        View viewInflate = LayoutInflater.from(this.f67850b).inflate(R.layout.dialog_invite_fight_error, (ViewGroup) null);
        this.f67851c = (TextView) viewInflate.findViewById(R.id.info);
        this.f67852d = (Button) viewInflate.findViewById(R.id.cancel);
        this.f67853e = (Button) viewInflate.findViewById(R.id.rebuild);
        setContentView(viewInflate);
    }

    public u0(Context context) {
        super(context);
        this.f67850b = context;
    }
}
