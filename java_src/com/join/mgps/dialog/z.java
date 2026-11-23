package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class z extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ImageView f67995c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f67996d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TextView f67997e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f67998f;

    public z(Context context) {
        super(context);
        this.f67994b = context;
    }

    public void a(String txt) {
        this.f67996d.setText(txt);
    }

    public void b(int vis) {
        this.f67996d.setVisibility(vis);
    }

    public void c(int id2) {
        this.f67995c.setImageResource(id2);
    }

    public void d(String subtxt) {
        this.f67998f.setText(subtxt);
    }

    public void e(View.OnClickListener click) {
        this.f67998f.setOnClickListener(click);
    }

    public void f(String t10) {
        this.f67997e.setText(t10);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        View viewInflate = LayoutInflater.from(this.f67994b).inflate(R.layout.dialog_cloud_pass, (ViewGroup) null);
        this.f67995c = (ImageView) viewInflate.findViewById(R.id.status_icon);
        this.f67996d = (TextView) viewInflate.findViewById(R.id.per);
        this.f67997e = (TextView) viewInflate.findViewById(R.id.txt);
        this.f67998f = (TextView) viewInflate.findViewById(R.id.sub);
        setContentView(viewInflate);
    }

    protected z(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67994b = context;
    }

    public z(Context context, int themeResId) {
        super(context, themeResId);
        this.f67994b = context;
    }
}
