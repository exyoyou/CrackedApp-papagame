package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CircleDownloadProgressBar;

/* JADX INFO: loaded from: classes3.dex */
public class g1 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f67559b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f67560c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f67561d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    CircleDownloadProgressBar f67562e;

    protected g1(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67559b = false;
    }

    public Dialog a(int progress) {
        CircleDownloadProgressBar circleDownloadProgressBar = this.f67562e;
        if (circleDownloadProgressBar != null) {
            circleDownloadProgressBar.setProgress(progress);
        }
        return this;
    }

    public Dialog b(String text) {
        TextView textView = this.f67561d;
        if (textView != null) {
            textView.setText(text);
        }
        this.f67560c = text;
        return this;
    }

    public void c() {
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
        setContentView(R.layout.loding_progress_layout);
        setCancelable(this.f67559b);
        this.f67561d = (TextView) findViewById(R.id.textView);
        this.f67562e = (CircleDownloadProgressBar) findViewById(R.id.progressBar);
        if (TextUtils.isEmpty(this.f67560c)) {
            return;
        }
        this.f67561d.setText(this.f67560c);
    }

    public g1(Context context) {
        super(context);
        this.f67559b = false;
    }

    public g1(Context context, int theme) {
        super(context, theme);
        this.f67559b = false;
    }

    public g1(Context context, int theme, boolean canclable) {
        super(context, theme);
        this.f67559b = canclable;
    }

    public g1(Context context, int theme, String text) {
        super(context, theme);
        this.f67559b = false;
        this.f67560c = text;
    }

    public g1(Context context, int theme, String text, boolean canclable) {
        super(context, theme);
        this.f67559b = canclable;
        this.f67560c = text;
    }
}
