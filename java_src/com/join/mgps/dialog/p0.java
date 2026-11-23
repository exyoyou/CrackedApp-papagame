package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class p0 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SimpleDraweeView f67736b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f67737c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f67738d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f67739e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f67740f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private c f67741g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f67742h;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (p0.this.f67741g != null) {
                p0.this.f67741g.a(p0.this);
            } else {
                p0.this.dismiss();
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (p0.this.f67741g != null) {
                p0.this.f67741g.b(p0.this);
            } else {
                p0.this.dismiss();
            }
        }
    }

    public interface c {
        void a(p0 dialog);

        void b(p0 dialog);
    }

    public p0(Context context) {
        super(context);
        this.f67742h = false;
    }

    public p0 b(boolean flag) {
        setCancelable(flag);
        return this;
    }

    public p0 c(c clickListener) {
        this.f67741g = clickListener;
        return this;
    }

    public p0 d(String url) {
        this.f67739e = url;
        return this;
    }

    public p0 e(String title) {
        this.f67740f = title;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(this.f67742h);
        setContentView(R.layout.fight_ad_dialog);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        this.f67736b = (SimpleDraweeView) findViewById(R.id.ad_iv_icon);
        this.f67737c = (TextView) findViewById(R.id.ad_title_tv);
        this.f67738d = (ImageView) findViewById(R.id.ad_cancel_iv);
        this.f67737c.setText(this.f67740f);
        com.join.android.app.common.utils.l.d(this.f67736b, R.drawable.iv_default_newarena_item, this.f67739e);
        this.f67738d.setOnClickListener(new a());
        this.f67736b.setOnClickListener(new b());
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4 && event.getAction() == 0 && this.f67742h) {
            dismiss();
        }
        return super.onKeyDown(keyCode, event);
    }

    public p0(Context context, int themeResId) {
        super(context, themeResId);
        this.f67742h = false;
    }

    protected p0(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67742h = false;
    }
}
