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
public class x0 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Button f67936c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Button f67937d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TextView f67938e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f67939f;

    public x0(Context context, int theme) {
        super(context, theme);
        this.f67935b = context;
    }

    public x0 a(String content) {
        this.f67939f.setText(content);
        return this;
    }

    public void b(int visibility) {
        this.f67939f.setVisibility(visibility);
    }

    public x0 c(View.OnClickListener listener) {
        this.f67937d.setOnClickListener(listener);
        return this;
    }

    public void d(String text) {
        this.f67937d.setText(text);
    }

    public x0 e(View.OnClickListener listener) {
        this.f67936c.setOnClickListener(listener);
        return this;
    }

    public void f(String text) {
        this.f67936c.setText(text);
    }

    public x0 g(String title) {
        this.f67938e.setText(title);
        return this;
    }

    public x0(Context context) {
        super(context, R.style.dialog_error);
        this.f67935b = context;
        setContentView(LayoutInflater.from(context).inflate(R.layout.dialog_forum, (ViewGroup) null));
        this.f67936c = (Button) findViewById(R.id.positive_btn);
        this.f67937d = (Button) findViewById(R.id.negative_btn);
        this.f67938e = (TextView) findViewById(R.id.tip_title);
        this.f67939f = (TextView) findViewById(R.id.tip_content);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
    }
}
