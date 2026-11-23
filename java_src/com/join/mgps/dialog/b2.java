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
public class b2 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f67423b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f67424c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Button f67425d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f67426e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CheckBox f67427f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f67428g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f67429h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f67430i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f67431j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private b f67432k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f67433l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f67434m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f67435n;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (b2.this.f67432k != null) {
                b2.this.f67432k.b(b2.this);
            } else {
                b2.this.dismiss();
                IntentUtil.getInstance().goLogin(view.getContext());
            }
        }
    }

    public interface b {
        void a(b2 dialog);

        void b(b2 dialog);
    }

    public b2(Context context) {
        super(context);
        this.f67428g = "提示";
        this.f67429h = "登陆后，开始悟饭游戏的精彩旅游";
        this.f67430i = "登陆";
        this.f67431j = "现在不";
        this.f67433l = false;
        this.f67435n = 8;
    }

    public int b() {
        return this.f67434m;
    }

    public boolean c() {
        return this.f67427f.isChecked();
    }

    public b2 d(String cancleButnTitle) {
        this.f67431j = cancleButnTitle;
        return this;
    }

    public b2 e(int cancleButnVisibility) {
        this.f67434m = cancleButnVisibility;
        return this;
    }

    public b2 f(int visibility) {
        this.f67435n = visibility;
        return this;
    }

    public b2 g(String contentText) {
        this.f67429h = contentText;
        return this;
    }

    public b2 h(boolean flag) {
        setCancelable(flag);
        return this;
    }

    public b2 i(b clickListener) {
        this.f67432k = clickListener;
        return this;
    }

    public b2 j(String okButnTitle) {
        this.f67430i = okButnTitle;
        return this;
    }

    public b2 k(String title) {
        this.f67428g = title;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(this.f67433l);
        setContentView(R.layout.layout_simple_alert_dialog);
        this.f67427f = (CheckBox) findViewById(R.id.dialogCb);
        this.f67423b = (TextView) findViewById(R.id.tip_title);
        this.f67424c = (TextView) findViewById(R.id.dialog_content);
        this.f67425d = (Button) findViewById(R.id.dialog_button_ok);
        this.f67426e = findViewById(R.id.middle);
        this.f67424c.setText(this.f67429h);
        this.f67425d.setText(this.f67430i);
        this.f67427f.setVisibility(this.f67435n);
        this.f67423b.setText(this.f67428g);
        int i10 = this.f67434m;
        if (i10 != 0) {
            this.f67426e.setVisibility(i10);
            ViewGroup.LayoutParams layoutParams = this.f67425d.getLayoutParams();
            if (layoutParams instanceof LinearLayout.LayoutParams) {
                int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.wdp15);
                ((LinearLayout.LayoutParams) layoutParams).setMargins(dimensionPixelSize, 0, dimensionPixelSize, 0);
                this.f67425d.setLayoutParams(layoutParams);
            }
            this.f67425d.setMaxWidth(getContext().getResources().getDimensionPixelSize(R.dimen.wdp50));
        }
        this.f67425d.setOnClickListener(new a());
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4 && event.getAction() == 0 && this.f67433l) {
            dismiss();
        }
        return super.onKeyDown(keyCode, event);
    }

    public b2(Context context, int themeResId) {
        super(context, themeResId);
        this.f67428g = "提示";
        this.f67429h = "登陆后，开始悟饭游戏的精彩旅游";
        this.f67430i = "登陆";
        this.f67431j = "现在不";
        this.f67433l = false;
        this.f67435n = 8;
    }

    protected b2(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67428g = "提示";
        this.f67429h = "登陆后，开始悟饭游戏的精彩旅游";
        this.f67430i = "登陆";
        this.f67431j = "现在不";
        this.f67433l = false;
        this.f67435n = 8;
    }
}
