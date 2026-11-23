package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;

/* JADX INFO: loaded from: classes3.dex */
public class t extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e f67823b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f67824c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CheckBox f67825d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CheckBox f67826e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CheckBox f67827f;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            t.this.f67825d.setChecked(true);
            com.papa.sim.statistic.pref.b.k(t.this.f67824c).H(0);
            t.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.papa.sim.statistic.pref.b.k(t.this.f67824c).H(1);
            t.this.f67826e.setChecked(true);
            t.this.dismiss();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.papa.sim.statistic.pref.b.k(t.this.f67824c).H(2);
            t.this.f67827f.setChecked(true);
            t.this.dismiss();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(8);
            intentDateBean.setLink_type_val("79707");
            IntentUtil.getInstance().intentActivity(t.this.f67824c, intentDateBean);
        }
    }

    public interface e {
        void a(int plugViewId);
    }

    public t(Context context) {
        super(context);
        this.f67824c = context;
    }

    public void e(e choicePlug) {
        this.f67823b = choicePlug;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.gbaplug_choice_dialog_layout);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.newGBAOlug);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.oldGBAPlug);
        LinearLayout linearLayout3 = (LinearLayout) findViewById(R.id.showdialog);
        ((TextView) findViewById(R.id.titleText)).setText("请选择默认启动插件");
        linearLayout3.setVisibility(0);
        LinearLayout linearLayout4 = (LinearLayout) findViewById(R.id.why);
        linearLayout3.setOnClickListener(new a());
        linearLayout.setOnClickListener(new b());
        linearLayout2.setOnClickListener(new c());
        linearLayout4.setOnClickListener(new d());
        this.f67825d = (CheckBox) findViewById(R.id.showdialogPlug);
        this.f67826e = (CheckBox) findViewById(R.id.gbaNewPlug);
        this.f67827f = (CheckBox) findViewById(R.id.gbaOld);
        this.f67825d.setChecked(false);
        this.f67826e.setChecked(false);
        this.f67827f.setChecked(false);
        int iN = com.papa.sim.statistic.pref.b.k(this.f67824c).n();
        if (iN == 0) {
            this.f67825d.setChecked(true);
        } else if (iN == 1) {
            this.f67826e.setChecked(true);
        } else {
            if (iN != 2) {
                return;
            }
            this.f67827f.setChecked(true);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        this.f67825d.setChecked(false);
        this.f67826e.setChecked(false);
        this.f67827f.setChecked(false);
        int iN = com.papa.sim.statistic.pref.b.k(this.f67824c).n();
        if (iN == 0) {
            this.f67825d.setChecked(true);
        } else if (iN == 1) {
            this.f67826e.setChecked(true);
        } else {
            if (iN != 2) {
                return;
            }
            this.f67827f.setChecked(true);
        }
    }

    public t(Context context, int theme) {
        super(context, theme);
        this.f67824c = context;
    }

    protected t(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67824c = context;
    }
}
