package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class x extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67920c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ProgressBar f67921d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TextView f67922e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f67923f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    TextView f67924g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    TextView f67925h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    String f67926i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    String f67927j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    String f67928k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    String f67929l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    c f67930m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    c f67931n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    CompoundButton.OnCheckedChangeListener f67932o;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            x xVar = x.this;
            xVar.f67930m.a(xVar);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            x xVar = x.this;
            xVar.f67931n.a(xVar);
        }
    }

    public interface c {
        void a(x dialog);
    }

    public x(Context context) {
        super(context);
        this.f67919b = context;
    }

    public x a(c listener) {
        this.f67931n = listener;
        return this;
    }

    public x b(String cancleText) {
        this.f67929l = cancleText;
        return this;
    }

    public x c(String downsize, String downSpeed, int progress) {
        this.f67924g.setText(downsize);
        this.f67925h.setText(downSpeed);
        this.f67921d.setProgress(progress);
        return this;
    }

    public x d(c listener) {
        this.f67930m = listener;
        return this;
    }

    public x e(String okString) {
        this.f67926i = okString;
        return this;
    }

    public x f(String title) {
        this.f67927j = title;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(LayoutInflater.from(this.f67919b).inflate(R.layout.dialog_cloud_progress_notice, (ViewGroup) null));
        setCancelable(false);
        this.f67922e = (TextView) findViewById(R.id.ok);
        this.f67920c = (TextView) findViewById(R.id.cancle);
        this.f67923f = (TextView) findViewById(R.id.title);
        this.f67925h = (TextView) findViewById(R.id.downSpeed);
        this.f67924g = (TextView) findViewById(R.id.downsize);
        this.f67921d = (ProgressBar) findViewById(R.id.progress);
        this.f67923f.setText(this.f67927j);
        this.f67922e.setText(this.f67926i);
        this.f67922e.setOnClickListener(new a());
        this.f67920c.setText(this.f67929l);
        this.f67920c.setOnClickListener(new b());
    }

    protected x(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67919b = context;
    }

    public x(Context context, int themeResId) {
        super(context, themeResId);
        this.f67919b = context;
    }
}
