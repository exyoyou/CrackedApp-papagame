package com.join.mgps.customview.smartpopupwindow;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.annotation.NonNull;
import androidx.core.widget.PopupWindowCompat;

/* JADX INFO: loaded from: classes3.dex */
public class SmartPopupWindow extends PopupWindow {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f66865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f66866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f66867c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f66868d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f66869e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f66870f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f66871g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f66872h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private View f66873i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f66874j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f66875k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f66876l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f66877m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final ViewTreeObserver.OnGlobalLayoutListener f66878n;

    class a implements View.OnKeyListener {
        a() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View v10, int keyCode, KeyEvent event) {
            if (keyCode != 4) {
                return false;
            }
            SmartPopupWindow.this.dismiss();
            return true;
        }
    }

    class b implements View.OnTouchListener {
        b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            int x10 = (int) event.getX();
            int y10 = (int) event.getY();
            return (event.getAction() == 0 && (x10 < 0 || x10 >= SmartPopupWindow.this.f66865a || y10 < 0 || y10 >= SmartPopupWindow.this.f66866b)) || event.getAction() == 4;
        }
    }

    class c implements ViewTreeObserver.OnGlobalLayoutListener {
        c() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            SmartPopupWindow smartPopupWindow = SmartPopupWindow.this;
            smartPopupWindow.f66865a = smartPopupWindow.getContentView().getWidth();
            SmartPopupWindow smartPopupWindow2 = SmartPopupWindow.this;
            smartPopupWindow2.f66866b = smartPopupWindow2.getContentView().getHeight();
            if (SmartPopupWindow.this.f66872h) {
                SmartPopupWindow.this.z();
                return;
            }
            SmartPopupWindow smartPopupWindow3 = SmartPopupWindow.this;
            smartPopupWindow3.H(smartPopupWindow3.f66865a, SmartPopupWindow.this.f66866b, SmartPopupWindow.this.f66873i, SmartPopupWindow.this.f66874j, SmartPopupWindow.this.f66875k, SmartPopupWindow.this.f66876l, SmartPopupWindow.this.f66877m);
            SmartPopupWindow.this.z();
        }
    }

    class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animation) {
            SmartPopupWindow.this.A(((Float) animation.getAnimatedValue()).floatValue());
        }
    }

    class e implements ValueAnimator.AnimatorUpdateListener {
        e() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animation) {
            SmartPopupWindow.this.A(((Float) animation.getAnimatedValue()).floatValue());
        }
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SmartPopupWindow f66884a;

        private f(Activity activity, View view) {
            SmartPopupWindow smartPopupWindow = new SmartPopupWindow(activity);
            this.f66884a = smartPopupWindow;
            smartPopupWindow.f66868d = activity;
            this.f66884a.f66869e = view;
        }

        public static f a(Activity activity, View view) {
            return new f(activity, view);
        }

        public SmartPopupWindow b() {
            this.f66884a.x();
            return this.f66884a;
        }

        public f c(float alpha) {
            this.f66884a.f66867c = alpha;
            return this;
        }

        public f d(int animationStyle) {
            this.f66884a.f66871g = animationStyle;
            return this;
        }

        public f e(boolean dismiss) {
            this.f66884a.f66870f = dismiss;
            return this;
        }

        public f f(int width, int height) {
            this.f66884a.f66865a = width;
            this.f66884a.f66866b = height;
            return this;
        }
    }

    public SmartPopupWindow(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(float alpha) {
        Context context = this.f66868d;
        if (context != null && (context instanceof Activity)) {
            Window window = ((Activity) context).getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.alpha = alpha;
            window.setAttributes(attributes);
        }
    }

    private void F() {
        float f10 = this.f66867c;
        if (f10 >= 1.0f) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, f10);
        valueAnimatorOfFloat.addUpdateListener(new d());
        valueAnimatorOfFloat.setDuration(360L);
        valueAnimatorOfFloat.start();
    }

    private void G(boolean touchOutsideDismiss) {
        if (touchOutsideDismiss) {
            setFocusable(true);
            setOutsideTouchable(true);
            setBackgroundDrawable(new ColorDrawable(0));
            return;
        }
        setFocusable(true);
        setOutsideTouchable(false);
        setBackgroundDrawable(null);
        getContentView().setFocusable(true);
        getContentView().setFocusableInTouchMode(true);
        getContentView().setOnKeyListener(new a());
        setTouchInterceptor(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(int width, int height, @NonNull View anchor, final int verticalGravity, int horizontalGravity, int x10, int y10) {
        update(anchor, t(anchor, horizontalGravity, width, x10), u(anchor, verticalGravity, height, y10), width, height);
    }

    private void s(View contentView) {
        contentView.getViewTreeObserver().addOnGlobalLayoutListener(this.f66878n);
    }

    private int t(View anchor, int horizontalGravity, int measuredW, int x10) {
        int width;
        if (horizontalGravity != 0) {
            if (horizontalGravity != 1) {
                if (horizontalGravity == 2) {
                    width = anchor.getWidth();
                } else {
                    if (horizontalGravity != 4) {
                        return x10;
                    }
                    measuredW -= anchor.getWidth();
                }
            }
            return x10 - measuredW;
        }
        width = (anchor.getWidth() / 2) - (measuredW / 2);
        return x10 + width;
    }

    private int u(View anchor, int verticalGravity, int measuredH, int y10) {
        int height;
        if (verticalGravity != 0) {
            if (verticalGravity == 1) {
                measuredH += anchor.getHeight();
            } else if (verticalGravity == 3) {
                height = anchor.getHeight();
            } else if (verticalGravity != 4) {
                return y10;
            }
            return y10 - measuredH;
        }
        height = (anchor.getHeight() / 2) + (measuredH / 2);
        return y10 - height;
    }

    private void v() {
        float f10 = this.f66867c;
        if (f10 >= 1.0f) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f10, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new e());
        valueAnimatorOfFloat.setDuration(360L);
        valueAnimatorOfFloat.start();
    }

    private static int w(int measureSpec) {
        return measureSpec != -2 ? 1073741824 : 0;
    }

    private static int y(int measureSpec) {
        return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(measureSpec), w(measureSpec));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        if (getContentView() != null) {
            getContentView().getViewTreeObserver().removeOnGlobalLayoutListener(this.f66878n);
        }
    }

    public void B(@NonNull View anchorView, int verticalPos, int horizontalPos) {
        E(anchorView, verticalPos, horizontalPos, true);
    }

    public void C(@NonNull View anchorView, int verticalPos, int horizontalPos, int x10, int y10) {
        D(anchorView, verticalPos, horizontalPos, x10, y10, true);
    }

    public void D(@NonNull View anchorView, int verticalPos, int horizontalPos, int x10, int y10, boolean fitInScreen) {
        this.f66872h = false;
        this.f66873i = anchorView;
        this.f66876l = x10;
        this.f66877m = y10;
        this.f66874j = verticalPos;
        this.f66875k = horizontalPos;
        F();
        View contentView = getContentView();
        s(contentView);
        setClippingEnabled(fitInScreen);
        contentView.measure(y(getWidth()), y(getHeight()));
        int measuredWidth = contentView.getMeasuredWidth();
        int measuredHeight = contentView.getMeasuredHeight();
        if (!fitInScreen) {
            int[] iArr = new int[2];
            anchorView.getLocationInWindow(iArr);
            x10 += iArr[0];
            y10 += iArr[1] + anchorView.getHeight();
        }
        int iU = u(anchorView, verticalPos, measuredHeight, y10);
        int iT = t(anchorView, horizontalPos, measuredWidth, x10);
        if (fitInScreen) {
            PopupWindowCompat.showAsDropDown(this, anchorView, iT, iU, 0);
        } else {
            showAtLocation(anchorView, 0, iT, iU);
        }
    }

    public void E(@NonNull View anchorView, int verticalPos, int horizontalPos, boolean fitInScreen) {
        D(anchorView, verticalPos, horizontalPos, 0, 0, fitInScreen);
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        super.dismiss();
        v();
        z();
    }

    @Override // android.widget.PopupWindow
    public void showAtLocation(View parent, int gravity, int x10, int y10) {
        this.f66872h = true;
        this.f66873i = parent;
        this.f66876l = x10;
        this.f66877m = y10;
        s(getContentView());
        super.showAtLocation(parent, gravity, x10, y10);
    }

    public void x() {
        setContentView(this.f66869e);
        setHeight(this.f66866b);
        setWidth(this.f66865a);
        G(this.f66870f);
        int i10 = this.f66871g;
        if (i10 != -1) {
            setAnimationStyle(i10);
        }
    }

    public SmartPopupWindow(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SmartPopupWindow(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f66865a = -2;
        this.f66866b = -2;
        this.f66867c = 1.0f;
        this.f66870f = true;
        this.f66871g = -1;
        this.f66872h = true;
        this.f66874j = 2;
        this.f66875k = 1;
        this.f66878n = new c();
        this.f66868d = context;
    }
}
