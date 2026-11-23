package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;

/* JADX INFO: loaded from: classes3.dex */
public class a1 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f67379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private CheckBox f67380c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CheckBox f67381d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CheckBox f67382e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CheckBox f67383f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CheckBox f67384g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f67385h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private PrefDef_ f67386i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private f f67387j;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a1.this.f67387j.d();
            a1.this.i();
            a1.this.f67380c.setChecked(true);
            a1.this.f67386i.gprsNoticeInfo().g(0);
            a1.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a1.this.f67387j.b();
            a1.this.i();
            a1.this.f67381d.setChecked(true);
            a1.this.f67386i.gprsNoticeInfo().g(1);
            a1.this.dismiss();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a1.this.f67387j.e();
            a1.this.i();
            a1.this.f67382e.setChecked(true);
            a1.this.f67386i.gprsNoticeInfo().g(2);
            a1.this.dismiss();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a1.this.f67387j.c();
            a1.this.i();
            a1.this.f67383f.setChecked(true);
            a1.this.f67386i.gprsNoticeInfo().g(3);
            a1.this.dismiss();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a1.this.f67387j.a();
            a1.this.i();
            a1.this.f67384g.setChecked(true);
            a1.this.f67386i.gprsNoticeInfo().g(4);
            a1.this.dismiss();
        }
    }

    public interface f {
        void a();

        void b();

        void c();

        void d();

        void e();
    }

    public a1(Context context) {
        super(context);
        this.f67379b = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.f67380c.setChecked(false);
        this.f67381d.setChecked(false);
        this.f67382e.setChecked(false);
        this.f67383f.setChecked(false);
        this.f67384g.setChecked(false);
    }

    public void j(f choiceAlowGrps) {
        this.f67387j = choiceAlowGrps;
    }

    public void k(PrefDef_ prefDef) {
        this.f67386i = prefDef;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.gprs_choice_dialog_layout);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.noticeall);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.notice10);
        LinearLayout linearLayout3 = (LinearLayout) findViewById(R.id.notice50);
        LinearLayout linearLayout4 = (LinearLayout) findViewById(R.id.notice100);
        LinearLayout linearLayout5 = (LinearLayout) findViewById(R.id.noticeno);
        this.f67380c = (CheckBox) findViewById(R.id.noticeallbox);
        this.f67381d = (CheckBox) findViewById(R.id.notice10box);
        this.f67382e = (CheckBox) findViewById(R.id.notice50box);
        this.f67383f = (CheckBox) findViewById(R.id.notice100box);
        this.f67384g = (CheckBox) findViewById(R.id.noticenobox);
        linearLayout.setOnClickListener(new a());
        linearLayout2.setOnClickListener(new b());
        linearLayout3.setOnClickListener(new c());
        linearLayout4.setOnClickListener(new d());
        linearLayout5.setOnClickListener(new e());
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        this.f67380c.setChecked(false);
        this.f67381d.setChecked(false);
        this.f67382e.setChecked(false);
        this.f67383f.setChecked(false);
        this.f67384g.setChecked(false);
        int iIntValue = this.f67386i.gprsNoticeInfo().d().intValue();
        this.f67385h = iIntValue;
        if (iIntValue == 0) {
            this.f67380c.setChecked(true);
            return;
        }
        if (iIntValue == 1) {
            this.f67381d.setChecked(true);
            return;
        }
        if (iIntValue == 2) {
            this.f67382e.setChecked(true);
        } else if (iIntValue == 3) {
            this.f67383f.setChecked(true);
        } else {
            if (iIntValue != 4) {
                return;
            }
            this.f67384g.setChecked(true);
        }
    }

    public a1(Context context, int theme) {
        super(context, theme);
        this.f67379b = context;
    }

    protected a1(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67379b = context;
    }
}
