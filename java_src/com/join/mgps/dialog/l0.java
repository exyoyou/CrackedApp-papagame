package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.dto.Filepath;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class l0 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f67651b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f67652c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f67653d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Filepath f67654e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Filepath f67655f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private d f67656g;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(8);
            intentDateBean.setLink_type_val("12410");
            IntentUtil.getInstance().intentActivity(l0.this.f67651b, intentDateBean);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l0.this.f67656g.a(l0.this.f67654e);
            try {
                if (l0.this.f67654e.getAvailable() < 10485760) {
                    a3.b(l0.this.f67651b).d("存储空间小于10M可能存储空间不足");
                }
                com.join.mgps.pref.h.n(l0.this.f67651b).V(l0.this.f67652c);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            l0.this.dismiss();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l0.this.f67656g.b(l0.this.f67655f);
            if (l0.this.f67655f.getAvailable() < 10485760) {
                a3.b(l0.this.f67651b).d("存储空间小于10M可能存储空间不足");
            }
            com.join.mgps.pref.h.n(l0.this.f67651b).V(l0.this.f67653d);
            l0.this.dismiss();
        }
    }

    public interface d {
        void a(Filepath filepath);

        void b(Filepath filepath);
    }

    public l0(Context context) {
        super(context);
        this.f67652c = "";
        this.f67653d = "";
        this.f67651b = context;
    }

    public void g(d choicedWhat) {
        this.f67656g = choicedWhat;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.download_path_set_dialog_layout);
        CheckBox checkBox = (CheckBox) findViewById(R.id.checkBoxlocal);
        CheckBox checkBox2 = (CheckBox) findViewById(R.id.checkBoxSd);
        TextView textView = (TextView) findViewById(R.id.localpath);
        TextView textView2 = (TextView) findViewById(R.id.localsize);
        TextView textView3 = (TextView) findViewById(R.id.changeSdkard);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.noticelayout);
        TextView textView4 = (TextView) findViewById(R.id.sdpath);
        TextView textView5 = (TextView) findViewById(R.id.sdSize);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.localPathLayout);
        RelativeLayout relativeLayout2 = (RelativeLayout) findViewById(R.id.sdPathLayout);
        relativeLayout2.setVisibility(8);
        String strG = com.join.mgps.pref.h.n(this.f67651b).g();
        List<Filepath> listA = com.join.mgps.Util.f2.a(this.f67651b);
        if (listA == null || listA.size() == 0) {
            relativeLayout.setVisibility(8);
            linearLayout.setVisibility(0);
            textView3.setText("没有可选下载位置", TextView.BufferType.SPANNABLE);
            return;
        }
        for (Filepath filepath : listA) {
            if (filepath.isIslocal()) {
                this.f67654e = filepath;
                if (strG.equals(filepath.getPathHome())) {
                    checkBox.setChecked(true);
                    checkBox2.setChecked(false);
                }
                textView.setText(filepath.getPathHome());
                this.f67652c = filepath.getPathHome();
                textView2.setText("可用:" + UtilsMy.c(filepath.getAvailable()) + "/总" + UtilsMy.c(filepath.getAllsize()));
            } else {
                this.f67655f = filepath;
                if (strG.equals(filepath.getPathHome())) {
                    checkBox.setChecked(false);
                    checkBox2.setChecked(true);
                }
                relativeLayout2.setVisibility(0);
                textView4.setText(filepath.getPathHome());
                this.f67653d = filepath.getPathHome();
                textView5.setText("可用:" + UtilsMy.c(filepath.getAvailable()) + "/总" + UtilsMy.c(filepath.getAllsize()));
                if (this.f67653d.contains("/Android/data")) {
                    linearLayout.setVisibility(0);
                } else {
                    linearLayout.setVisibility(8);
                }
            }
        }
        linearLayout.setOnClickListener(new a());
        relativeLayout.setOnClickListener(new b());
        relativeLayout2.setOnClickListener(new c());
    }

    public l0(Context context, int theme) {
        super(context, theme);
        this.f67652c = "";
        this.f67653d = "";
        this.f67651b = context;
    }

    protected l0(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67652c = "";
        this.f67653d = "";
        this.f67651b = context;
    }
}
