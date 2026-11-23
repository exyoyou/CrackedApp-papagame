package com.join.mgps.dialog;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class p extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f67727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private DialogInterface.OnDismissListener f67728c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Context f67729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f67730e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f67731f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f67732g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f67733h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f67734i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f67735j;

    public p(@NonNull Context context) {
        this(context, R.style.Dialog);
    }

    private void a() {
        try {
            Window window = getWindow();
            window.setFlags(1024, 1024);
            window.getDecorView().setSystemUiVisibility(5894);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void b(View view) {
        view.setSystemUiVisibility(5894);
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(14)
    private void j() {
        boolean zL = l();
        int i10 = zL;
        if (k()) {
            i10 = (zL ? 1 : 0) | 5126;
        }
        if (getWindow().getDecorView() != null) {
            getWindow().getDecorView().setSystemUiVisibility(i10);
        }
    }

    private boolean k() {
        return true;
    }

    public int c() {
        return this.f67735j;
    }

    public int d() {
        return this.f67734i;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        j();
        DialogInterface.OnDismissListener onDismissListener = this.f67728c;
        if (onDismissListener != null) {
            onDismissListener.onDismiss(this);
        }
    }

    public void e(int animResId) {
        this.f67733h = animResId;
    }

    public void f(float mBackgroundDimAmount) {
        this.f67732g = mBackgroundDimAmount;
    }

    public void g(boolean mBackgroundDimEnabled) {
        this.f67730e = mBackgroundDimEnabled;
    }

    public void h(int mHeight) {
        this.f67735j = mHeight;
    }

    public void i(int mWidth) {
        this.f67734i = mWidth;
    }

    public boolean l() {
        return true;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        window.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        window.setAttributes(attributes);
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        a();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams params) {
        super.onWindowAttributesChanged(params);
        if (Build.VERSION.SDK_INT <= 29) {
            j();
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        if (getWindow() != null) {
            getWindow().setFlags(8, 8);
            b(getWindow().getDecorView());
            getWindow().clearFlags(8);
        }
        super.onWindowFocusChanged(hasFocus);
    }

    @Override // android.app.Dialog
    public void setOnDismissListener(@Nullable DialogInterface.OnDismissListener listener) {
        this.f67728c = listener;
    }

    @Override // android.app.Dialog
    public void show() {
        if (getWindow() != null) {
            getWindow().setFlags(8, 8);
        }
        super.show();
        b(getWindow().getDecorView());
        getWindow().clearFlags(8);
    }

    public p(@NonNull Context context, int themeResId) {
        super(context, themeResId);
        this.f67727b = getClass().getSimpleName();
        this.f67730e = false;
        this.f67731f = 0;
        this.f67732g = 0.5f;
        this.f67733h = R.style.AlphaAnimStyle;
        this.f67734i = -1;
        this.f67735j = -1;
        this.f67729d = context;
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = this.f67734i;
            attributes.height = this.f67735j;
            attributes.gravity = this.f67731f;
            attributes.windowAnimations = this.f67733h;
            window.setAttributes(attributes);
            if (!this.f67730e) {
                window.clearFlags(2);
            } else {
                window.addFlags(2);
                window.setDimAmount(this.f67732g);
            }
        }
    }
}
