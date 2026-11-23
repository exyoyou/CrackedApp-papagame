package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class w extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67889c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f67890d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    CheckBox f67891e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f67892f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    TextView f67893g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    TextView f67894h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    String f67895i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    String f67896j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    String f67897k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    String f67898l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    e f67899m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    e f67900n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    e f67901o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    CompoundButton.OnCheckedChangeListener f67902p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    boolean f67903q;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            w.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            w wVar = w.this;
            wVar.f67899m.a(wVar);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            w wVar = w.this;
            wVar.f67900n.a(wVar);
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            w wVar = w.this;
            e eVar = wVar.f67901o;
            if (eVar != null) {
                eVar.a(wVar);
            }
        }
    }

    public interface e {
        void a(w dialog);
    }

    public w(Context context) {
        super(context);
        this.f67903q = false;
        this.f67888b = context;
    }

    public w a(e listener) {
        this.f67900n = listener;
        return this;
    }

    public w b(String cancleText) {
        this.f67898l = cancleText;
        return this;
    }

    public w c(CompoundButton.OnCheckedChangeListener listener) {
        this.f67902p = listener;
        return this;
    }

    public w d(String content) {
        this.f67897k = content;
        return this;
    }

    public w e(e listener) {
        this.f67899m = listener;
        return this;
    }

    public w f(String okString) {
        this.f67895i = okString;
        return this;
    }

    public w g(String title) {
        this.f67896j = title;
        return this;
    }

    public w h(boolean show) {
        this.f67903q = show;
        return this;
    }

    public w i(e listener) {
        this.f67901o = listener;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
        setContentView(LayoutInflater.from(this.f67888b).inflate(R.layout.dialog_cloud_notice, (ViewGroup) null), new ViewGroup.LayoutParams(com.join.android.app.common.utils.q.n(this.f67888b).C((Activity) this.f67888b), com.join.android.app.common.utils.q.n(this.f67888b).k((Activity) this.f67888b)));
        this.f67892f = (TextView) findViewById(R.id.ok);
        this.f67890d = (TextView) findViewById(R.id.tv_vip);
        this.f67889c = (TextView) findViewById(R.id.cancle);
        this.f67893g = (TextView) findViewById(R.id.title);
        this.f67894h = (TextView) findViewById(R.id.content);
        this.f67891e = (CheckBox) findViewById(R.id.checkBox);
        ((ImageView) findViewById(R.id.close)).setOnClickListener(new a());
        this.f67893g.setText(this.f67896j);
        this.f67894h.setText(this.f67897k);
        this.f67892f.setText(this.f67895i);
        this.f67892f.setOnClickListener(new b());
        this.f67889c.setText(this.f67898l);
        this.f67889c.setOnClickListener(new c());
        this.f67890d.setOnClickListener(new d());
        if (this.f67903q) {
            this.f67890d.setVisibility(8);
        } else {
            this.f67890d.setVisibility(8);
        }
        this.f67891e.setOnCheckedChangeListener(this.f67902p);
    }

    protected w(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67903q = false;
        this.f67888b = context;
    }

    public w(Context context, int themeResId) {
        super(context, themeResId);
        this.f67903q = false;
        this.f67888b = context;
    }
}
