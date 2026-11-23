package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;

/* JADX INFO: loaded from: classes3.dex */
public class s extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private d f67805b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f67806c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f67807d;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            s.this.f67805b.a(v10.getId());
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            s.this.f67805b.a(v10.getId());
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(8);
            intentDateBean.setLink_type_val("79707");
            IntentUtil.getInstance().intentActivity(s.this.f67806c, intentDateBean);
        }
    }

    public interface d {
        void a(int plugViewId);
    }

    public s(Context context) {
        super(context);
        this.f67807d = "请选择启动插件";
        this.f67806c = context;
    }

    public void c(d choicePlug) {
        this.f67805b = choicePlug;
    }

    public void d(String title) {
        this.f67807d = title;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.gbaplug_choice_start_dialog_layout);
        TextView textView = (TextView) findViewById(R.id.titleText);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.newGBAOlug);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.oldGBAPlug);
        LinearLayout linearLayout3 = (LinearLayout) findViewById(R.id.why);
        linearLayout.setOnClickListener(new a());
        linearLayout2.setOnClickListener(new b());
        linearLayout3.setOnClickListener(new c());
        textView.setText(this.f67807d);
    }

    public s(Context context, int theme) {
        super(context, theme);
        this.f67807d = "请选择启动插件";
        this.f67806c = context;
    }

    protected s(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67807d = "请选择启动插件";
        this.f67806c = context;
    }
}
