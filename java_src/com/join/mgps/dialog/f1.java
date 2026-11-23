package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class f1 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f67542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f67543c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f67544d;

    protected f1(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67542b = false;
    }

    public Dialog a(String text) {
        TextView textView = this.f67544d;
        if (textView != null) {
            textView.setText(text);
        }
        this.f67543c = text;
        return this;
    }

    public void b() {
        try {
            if (isShowing()) {
                return;
            }
            show();
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.loding_layout);
        setCancelable(this.f67542b);
        this.f67544d = (TextView) findViewById(R.id.textView);
        if (TextUtils.isEmpty(this.f67543c)) {
            return;
        }
        this.f67544d.setText(this.f67543c);
    }

    public f1(Context context) {
        super(context);
        this.f67542b = false;
    }

    public f1(Context context, int theme) {
        super(context, theme);
        this.f67542b = false;
    }

    public f1(Context context, int theme, boolean canclable) {
        super(context, theme);
        this.f67542b = canclable;
    }

    public f1(Context context, int theme, String text) {
        super(context, theme);
        this.f67542b = false;
        this.f67543c = text;
    }

    public f1(Context context, int theme, String text, boolean canclable) {
        super(context, theme);
        this.f67542b = canclable;
        this.f67543c = text;
    }
}
