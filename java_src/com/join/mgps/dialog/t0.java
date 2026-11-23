package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class t0 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67833c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f67834d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Button f67835e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ImageView f67836f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Button f67837g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    TextView f67838h;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t0.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t0.this.dismiss();
        }
    }

    public t0(Context context, int theme) {
        super(context, theme);
        this.f67832b = context;
    }

    public void a(int visible) {
        this.f67836f.setVisibility(visible);
    }

    public void b(View.OnClickListener listener) {
        this.f67836f.setOnClickListener(listener);
    }

    public void c(int visible) {
        this.f67837g.setVisibility(visible);
    }

    public void d(View.OnClickListener listener) {
        this.f67837g.setOnClickListener(listener);
    }

    public void e(String text) {
        this.f67837g.setText(text);
    }

    public void f(String txt) {
        this.f67834d.setText(txt);
    }

    public void g(int visible) {
        this.f67835e.setVisibility(visible);
    }

    public void h(View.OnClickListener listener) {
        this.f67835e.setOnClickListener(listener);
    }

    public void i(String text) {
        this.f67838h.setText(text);
    }

    public void j(String txt) {
        com.join.mgps.Util.g1.g("title--------" + this.f67833c);
        this.f67833c.setText(txt);
    }

    public void k(int visible) {
        this.f67835e.setVisibility(visible);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        requestWindowFeature(-1);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        View viewInflate = LayoutInflater.from(this.f67832b).inflate(R.layout.dialog_fight_disconnect, (ViewGroup) null);
        this.f67833c = (TextView) viewInflate.findViewById(R.id.title);
        this.f67834d = (TextView) viewInflate.findViewById(R.id.info);
        this.f67835e = (Button) viewInflate.findViewById(R.id.research);
        this.f67836f = (ImageView) viewInflate.findViewById(R.id.back);
        this.f67837g = (Button) viewInflate.findViewById(R.id.cancel);
        this.f67838h = (TextView) viewInflate.findViewById(R.id.research);
        viewInflate.findViewById(R.id.cancel).setOnClickListener(new a());
        viewInflate.findViewById(R.id.back).setOnClickListener(new b());
        setContentView(viewInflate);
    }

    public t0(Context context) {
        super(context);
        this.f67832b = context;
    }
}
