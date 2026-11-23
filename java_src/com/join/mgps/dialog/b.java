package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;

/* JADX INFO: loaded from: classes3.dex */
public class b extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f67400b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f67401c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Button f67402d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Button f67403e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f67404f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CheckBox f67405g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f67406h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f67407i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f67408j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f67409k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private c f67410l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f67411m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f67412n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f67413o;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (b.this.f67410l != null) {
                b.this.f67410l.ClickCancleButn(b.this);
            } else {
                b.this.dismiss();
            }
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.dialog.b$b, reason: collision with other inner class name */
    class ViewOnClickListenerC0720b implements View.OnClickListener {
        ViewOnClickListenerC0720b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (b.this.f67410l != null) {
                b.this.f67410l.ClickOKButn(b.this);
            } else {
                b.this.dismiss();
                IntentUtil.getInstance().goLogin(view.getContext());
            }
        }
    }

    public interface c {
        void ClickCancleButn(b dialog);

        void ClickOKButn(b dialog);
    }

    public b(Context context) {
        super(context);
        this.f67406h = "提示";
        this.f67407i = "登陆后，开始悟饭游戏的精彩旅游";
        this.f67408j = "登陆";
        this.f67409k = "现在不";
        this.f67411m = false;
        this.f67413o = 8;
    }

    public int b() {
        return this.f67412n;
    }

    public boolean c() {
        return this.f67405g.isChecked();
    }

    public b d(String cancleButnTitle) {
        this.f67409k = cancleButnTitle;
        return this;
    }

    public b e(int cancleButnVisibility) {
        this.f67412n = cancleButnVisibility;
        return this;
    }

    public b f(int visibility) {
        this.f67413o = visibility;
        return this;
    }

    public b g(String contentText) {
        this.f67407i = contentText;
        return this;
    }

    public b h(boolean flag) {
        setCancelable(flag);
        return this;
    }

    public b i(c clickListener) {
        this.f67410l = clickListener;
        return this;
    }

    public b j(String okButnTitle) {
        this.f67408j = okButnTitle;
        return this;
    }

    public b k(String title) {
        this.f67406h = title;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(this.f67411m);
        setContentView(R.layout.accountlogin_notice_dialog);
        this.f67405g = (CheckBox) findViewById(R.id.dialogCb);
        this.f67400b = (TextView) findViewById(R.id.tip_title);
        this.f67401c = (TextView) findViewById(R.id.dialog_content);
        this.f67402d = (Button) findViewById(R.id.dialog_button_ok);
        this.f67403e = (Button) findViewById(R.id.dialog_button_cancle);
        this.f67404f = findViewById(R.id.middle);
        this.f67403e.setText(this.f67409k);
        this.f67401c.setText(this.f67407i);
        this.f67402d.setText(this.f67408j);
        this.f67405g.setVisibility(this.f67413o);
        this.f67400b.setText(this.f67406h);
        int i10 = this.f67412n;
        if (i10 != 0) {
            this.f67403e.setVisibility(i10);
            this.f67404f.setVisibility(this.f67412n);
            ViewGroup.LayoutParams layoutParams = this.f67402d.getLayoutParams();
            if (layoutParams instanceof LinearLayout.LayoutParams) {
                int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.wdp15);
                ((LinearLayout.LayoutParams) layoutParams).setMargins(dimensionPixelSize, 0, dimensionPixelSize, 0);
                this.f67402d.setLayoutParams(layoutParams);
            }
            this.f67402d.setMaxWidth(getContext().getResources().getDimensionPixelSize(R.dimen.wdp50));
        }
        this.f67403e.setOnClickListener(new a());
        this.f67402d.setOnClickListener(new ViewOnClickListenerC0720b());
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4 && event.getAction() == 0 && this.f67411m) {
            dismiss();
        }
        return super.onKeyDown(keyCode, event);
    }

    public b(Context context, int themeResId) {
        super(context, themeResId);
        this.f67406h = "提示";
        this.f67407i = "登陆后，开始悟饭游戏的精彩旅游";
        this.f67408j = "登陆";
        this.f67409k = "现在不";
        this.f67411m = false;
        this.f67413o = 8;
    }

    protected b(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67406h = "提示";
        this.f67407i = "登陆后，开始悟饭游戏的精彩旅游";
        this.f67408j = "登陆";
        this.f67409k = "现在不";
        this.f67411m = false;
        this.f67413o = 8;
    }
}
