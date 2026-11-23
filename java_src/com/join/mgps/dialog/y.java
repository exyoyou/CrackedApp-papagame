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
public class y extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67946c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f67947d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    CheckBox f67948e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f67949f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    TextView f67950g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    TextView f67951h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    String f67952i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    String f67953j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    String f67954k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    String f67955l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    e f67956m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    e f67957n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    e f67958o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    CompoundButton.OnCheckedChangeListener f67959p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    boolean f67960q;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            y yVar = y.this;
            yVar.f67956m.a(yVar);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            y yVar = y.this;
            yVar.f67957n.a(yVar);
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            y yVar = y.this;
            e eVar = yVar.f67958o;
            if (eVar != null) {
                eVar.a(yVar);
            }
        }
    }

    public interface e {
        void a(y dialog);
    }

    public y(Context context) {
        super(context);
        this.f67960q = false;
        this.f67945b = context;
    }

    public y a(e listener) {
        this.f67957n = listener;
        return this;
    }

    public y b(String cancleText) {
        this.f67955l = cancleText;
        return this;
    }

    public y c(CompoundButton.OnCheckedChangeListener listener) {
        this.f67959p = listener;
        return this;
    }

    public y d(String content) {
        this.f67954k = content;
        return this;
    }

    public y e(e listener) {
        this.f67956m = listener;
        return this;
    }

    public y f(String okString) {
        this.f67952i = okString;
        return this;
    }

    public y g(String title) {
        this.f67953j = title;
        return this;
    }

    public y h(boolean show) {
        this.f67960q = show;
        return this;
    }

    public y i(e listener) {
        this.f67958o = listener;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
        setContentView(LayoutInflater.from(this.f67945b).inflate(R.layout.dialog_cloud_notice_vip, (ViewGroup) null), new ViewGroup.LayoutParams(com.join.android.app.common.utils.q.n(this.f67945b).C((Activity) this.f67945b), com.join.android.app.common.utils.q.n(this.f67945b).k((Activity) this.f67945b)));
        this.f67949f = (TextView) findViewById(R.id.ok);
        this.f67947d = (TextView) findViewById(R.id.tv_vip);
        this.f67946c = (TextView) findViewById(R.id.cancle);
        this.f67950g = (TextView) findViewById(R.id.title);
        this.f67951h = (TextView) findViewById(R.id.content);
        this.f67948e = (CheckBox) findViewById(R.id.checkBox);
        ((ImageView) findViewById(R.id.close)).setOnClickListener(new a());
        this.f67950g.setText(this.f67953j);
        this.f67951h.setText(this.f67954k);
        this.f67949f.setText(this.f67952i);
        this.f67949f.setOnClickListener(new b());
        this.f67946c.setText(this.f67955l);
        this.f67946c.setOnClickListener(new c());
        this.f67947d.setOnClickListener(new d());
        if (this.f67960q) {
            this.f67947d.setVisibility(8);
        } else {
            this.f67947d.setVisibility(8);
        }
        this.f67948e.setOnCheckedChangeListener(this.f67959p);
    }

    protected y(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67960q = false;
        this.f67945b = context;
    }

    public y(Context context, int themeResId) {
        super(context, themeResId);
        this.f67960q = false;
        this.f67945b = context;
    }
}
