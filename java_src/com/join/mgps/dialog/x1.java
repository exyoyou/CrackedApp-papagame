package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class x1 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f67940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ImageView f67941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f67942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f67943e;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (x1.this.f67942d != null) {
                x1.this.f67942d.a(x1.this);
            } else {
                x1.this.dismiss();
            }
        }
    }

    public interface b {
        void a(x1 dialog);

        void b(x1 dialog);
    }

    public x1(Context context) {
        super(context);
        this.f67943e = false;
    }

    public x1 b(boolean flag) {
        setCancelable(flag);
        return this;
    }

    public x1 c(b clickListener) {
        this.f67942d = clickListener;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(this.f67943e);
        setContentView(R.layout.paiwei_rule_dialog);
        this.f67940b = (TextView) findViewById(R.id.paiwei_rule_tv);
        ImageView imageView = (ImageView) findViewById(R.id.paiwei_cancel_iv);
        this.f67941c = imageView;
        imageView.setOnClickListener(new a());
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4 && event.getAction() == 0 && this.f67943e) {
            dismiss();
        }
        return super.onKeyDown(keyCode, event);
    }

    public x1(Context context, int themeResId) {
        super(context, themeResId);
        this.f67943e = false;
    }

    protected x1(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67943e = false;
    }
}
