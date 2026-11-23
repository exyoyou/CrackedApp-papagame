package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class a0 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67364c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f67365d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TextView f67366e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f67367f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    TextView f67368g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    String f67369h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    String f67370i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    String f67371j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    String f67372k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    String f67373l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    c f67374m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    c f67375n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    CompoundButton.OnCheckedChangeListener f67376o;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a0 a0Var = a0.this;
            a0Var.f67374m.a(a0Var);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a0 a0Var = a0.this;
            a0Var.f67375n.a(a0Var);
        }
    }

    public interface c {
        void a(a0 dialog);
    }

    public a0(Context context) {
        super(context);
        this.f67363b = context;
    }

    public String a() {
        return this.f67367f.getText().toString();
    }

    public a0 b(c listener) {
        this.f67375n = listener;
        return this;
    }

    public a0 c(String cancleText) {
        this.f67372k = cancleText;
        return this;
    }

    public a0 d(String content) {
        this.f67371j = content;
        return this;
    }

    public a0 e(String nomeyPay) {
        this.f67373l = nomeyPay;
        return this;
    }

    public a0 f(c listener) {
        this.f67374m = listener;
        return this;
    }

    public a0 g(String okString) {
        this.f67369h = okString;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(LayoutInflater.from(this.f67363b).inflate(R.layout.dialog_cloud_share, (ViewGroup) null));
        this.f67366e = (TextView) findViewById(R.id.ok);
        setCancelable(false);
        this.f67364c = (TextView) findViewById(R.id.cancle);
        this.f67367f = (TextView) findViewById(R.id.name);
        this.f67368g = (TextView) findViewById(R.id.content);
        this.f67365d = (TextView) findViewById(R.id.number);
        this.f67367f.setText(this.f67370i);
        this.f67368g.setText(this.f67371j);
        this.f67365d.setText(this.f67373l);
        this.f67366e.setText(this.f67369h);
        this.f67366e.setOnClickListener(new a());
        this.f67364c.setText(this.f67372k);
        this.f67364c.setOnClickListener(new b());
    }

    protected a0(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67363b = context;
    }

    public a0(Context context, int themeResId) {
        super(context, themeResId);
        this.f67363b = context;
    }
}
