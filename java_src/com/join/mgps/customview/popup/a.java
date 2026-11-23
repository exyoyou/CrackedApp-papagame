package com.join.mgps.customview.popup;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.annotation.StyleRes;
import com.join.mgps.Util.h2;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a<V extends View> implements DialogInterface.OnKeyListener, DialogInterface.OnDismissListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f66735h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f66736i = -2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Activity f66737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f66738c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f66739d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Dialog f66740e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private FrameLayout f66741f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f66742g = false;

    /* JADX INFO: renamed from: com.join.mgps.customview.popup.a$a, reason: collision with other inner class name */
    class DialogInterfaceOnDismissListenerC0715a implements DialogInterface.OnDismissListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DialogInterface.OnDismissListener f66743b;

        DialogInterfaceOnDismissListenerC0715a(final DialogInterface.OnDismissListener val$onDismissListener) {
            this.f66743b = val$onDismissListener;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            a.this.onDismiss(dialog);
            this.f66743b.onDismiss(dialog);
        }
    }

    class b implements DialogInterface.OnKeyListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DialogInterface.OnKeyListener f66745b;

        b(final DialogInterface.OnKeyListener val$onKeyListener) {
            this.f66745b = val$onKeyListener;
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
            a.this.onKey(dialog, keyCode, event);
            return this.f66745b.onKey(dialog, keyCode, event);
        }
    }

    public a(Activity activity) {
        this.f66737b = activity;
        DisplayMetrics displayMetricsC = h2.c(activity);
        this.f66738c = displayMetricsC.widthPixels;
        this.f66739d = displayMetricsC.heightPixels;
        h();
    }

    private void h() {
        FrameLayout frameLayout = new FrameLayout(this.f66737b);
        this.f66741f = frameLayout;
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        this.f66741f.setFocusable(true);
        this.f66741f.setFocusableInTouchMode(true);
        Dialog dialog = new Dialog(this.f66737b);
        this.f66740e = dialog;
        dialog.setCanceledOnTouchOutside(true);
        this.f66740e.setCancelable(true);
        this.f66740e.setOnKeyListener(this);
        this.f66740e.setOnDismissListener(this);
        Window window = this.f66740e.getWindow();
        if (window != null) {
            window.setGravity(80);
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.requestFeature(1);
            window.setContentView(this.f66741f);
        }
        z(this.f66738c, -2);
    }

    public void A(int width) {
        z(width, 0);
    }

    public final void B() {
        if (this.f66742g) {
            this.f66740e.show();
            C();
            return;
        }
        q();
        View viewJ = j();
        o(viewJ);
        p(viewJ);
        this.f66742g = true;
        this.f66740e.show();
        C();
    }

    protected void C() {
    }

    public void a() {
        b();
    }

    protected final void b() {
        this.f66740e.dismiss();
    }

    public View c() {
        return this.f66741f.getChildAt(0);
    }

    public ViewGroup d() {
        return this.f66741f;
    }

    public int e() {
        return this.f66739d;
    }

    public int f() {
        return this.f66738c;
    }

    public Window g() {
        return this.f66740e.getWindow();
    }

    public Context getContext() {
        return this.f66740e.getContext();
    }

    public boolean i() {
        return this.f66740e.isShowing();
    }

    protected abstract V j();

    public boolean k() {
        a();
        return false;
    }

    public void l(@StyleRes int animRes) {
        Window window = this.f66740e.getWindow();
        if (window != null) {
            window.setWindowAnimations(animRes);
        }
    }

    public void m(boolean flag) {
        this.f66740e.setCancelable(flag);
    }

    public void n(boolean flag) {
        this.f66740e.setCanceledOnTouchOutside(flag);
    }

    public void o(View view) {
        this.f66741f.removeAllViews();
        this.f66741f.addView(view);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        a();
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
        if (event.getAction() != 0 || keyCode != 4) {
            return false;
        }
        k();
        return false;
    }

    protected void p(V contentView) {
    }

    protected void q() {
    }

    public void r(boolean fillScreen) {
        if (fillScreen) {
            z(this.f66738c, (int) (this.f66739d * 0.85f));
        }
    }

    public void s(boolean flag) {
        this.f66741f.setFitsSystemWindows(flag);
    }

    public void t(int gravity) {
        Window window = this.f66740e.getWindow();
        if (window != null) {
            window.setGravity(gravity);
        }
        if (gravity == 17) {
            A((int) (this.f66738c * 0.7f));
        }
    }

    public void u(boolean halfScreen) {
        if (halfScreen) {
            z(this.f66738c, this.f66739d / 2);
        }
    }

    public void v(int height) {
        z(0, height);
    }

    public void w(final DialogInterface.OnDismissListener onDismissListener) {
        this.f66740e.setOnDismissListener(new DialogInterfaceOnDismissListenerC0715a(onDismissListener));
    }

    public void x(final DialogInterface.OnKeyListener onKeyListener) {
        this.f66740e.setOnKeyListener(new b(onKeyListener));
    }

    public void y(boolean prepared) {
        this.f66742g = prepared;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x001e  */
    /* JADX WARN: Code duplicated, block: B:17:0x0024  */
    public void z(int width, int height) {
        ViewGroup.LayoutParams layoutParams;
        if (width == -1) {
            width = this.f66738c;
        }
        if (width != 0 || height != 0) {
            if (width == 0) {
                width = this.f66738c;
            } else if (height == 0) {
            }
            layoutParams = this.f66741f.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new ViewGroup.LayoutParams(width, height);
            } else {
                layoutParams.width = width;
                layoutParams.height = height;
            }
            this.f66741f.setLayoutParams(layoutParams);
        }
        width = this.f66738c;
        height = -2;
        layoutParams = this.f66741f.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(width, height);
        } else {
            layoutParams.width = width;
            layoutParams.height = height;
        }
        this.f66741f.setLayoutParams(layoutParams);
    }
}
