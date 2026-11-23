package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.IdRes;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.internal.g0;
import com.google.android.material.internal.p0;
import com.google.android.material.internal.q0;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {
    public static final int A = 0;
    public static final int B = 1;
    public static final int C = -2;
    public static final int D = -1;
    public static final int E = 0;
    static final int F = 250;
    static final int G = 180;
    private static final int I = 150;
    private static final int J = 75;
    private static final float M = 0.8f;
    static final int O = 0;
    static final int P = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f31871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f31872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f31873c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TimeInterpolator f31874d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TimeInterpolator f31875e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final TimeInterpolator f31876f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final ViewGroup f31877g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Context f31878h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    protected final SnackbarBaseLayout f31879i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    private final com.google.android.material.snackbar.b f31880j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f31881k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f31882l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private q f31883m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f31884n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @RequiresApi(29)
    private final Runnable f31885o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f31886p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f31887q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f31888r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f31889s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f31890t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f31891u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f31892v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private List<BaseCallback<B>> f31893w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Behavior f31894x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @Nullable
    private final AccessibilityManager f31895y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    com.google.android.material.snackbar.e.b f31896z;
    private static final TimeInterpolator H = com.google.android.material.animation.b.f29368b;
    private static final TimeInterpolator K = com.google.android.material.animation.b.f29367a;
    private static final TimeInterpolator L = com.google.android.material.animation.b.f29370d;
    private static final boolean Q = false;
    private static final int[] R = {R.attr.snackbarStyle};
    private static final String S = BaseTransientBottomBar.class.getSimpleName();

    @NonNull
    static final Handler N = new Handler(Looper.getMainLooper(), new h());

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface AnimationMode {
    }

    public static abstract class BaseCallback<B> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f31897a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f31898b = 1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f31899c = 2;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final int f31900d = 3;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f31901e = 4;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public @interface DismissEvent {
        }

        public void a(B b10, int i10) {
        }

        public void b(B b10) {
        }
    }

    public static class Behavior extends SwipeDismissBehavior<View> {

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        @NonNull
        private final r f31902v = new r(this);

        /* JADX INFO: Access modifiers changed from: private */
        public void x(@NonNull BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f31902v.c(baseTransientBottomBar);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public boolean i(View view) {
            return this.f31902v.a(view);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            this.f31902v.b(coordinatorLayout, view, motionEvent);
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }
    }

    @IntRange(from = -2)
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface Duration {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected static class SnackbarBaseLayout extends FrameLayout {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final View.OnTouchListener f31903m = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        private BaseTransientBottomBar<?> f31904b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        com.google.android.material.shape.n f31905c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f31906d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float f31907e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final float f31908f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f31909g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final int f31910h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private ColorStateList f31911i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private PorterDuff.Mode f31912j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        @Nullable
        private Rect f31913k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f31914l;

        class a implements View.OnTouchListener {
            a() {
            }

            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        protected SnackbarBaseLayout(@NonNull Context context) {
            this(context, null);
        }

        @NonNull
        private Drawable d() {
            int iV = com.google.android.material.color.s.v(this, R.attr.colorSurface, R.attr.colorOnSurface, getBackgroundOverlayColorAlpha());
            com.google.android.material.shape.n nVar = this.f31905c;
            Drawable drawableZ = nVar != null ? BaseTransientBottomBar.z(iV, nVar) : BaseTransientBottomBar.y(iV, getResources());
            if (this.f31911i == null) {
                return DrawableCompat.wrap(drawableZ);
            }
            Drawable drawableWrap = DrawableCompat.wrap(drawableZ);
            DrawableCompat.setTintList(drawableWrap, this.f31911i);
            return drawableWrap;
        }

        private void e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.f31913k = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBaseTransientBottomBar(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f31904b = baseTransientBottomBar;
        }

        void c(ViewGroup viewGroup) {
            this.f31914l = true;
            viewGroup.addView(this);
            this.f31914l = false;
        }

        float getActionTextColorAlpha() {
            return this.f31908f;
        }

        int getAnimationMode() {
            return this.f31906d;
        }

        float getBackgroundOverlayColorAlpha() {
            return this.f31907e;
        }

        int getMaxInlineActionWidth() {
            return this.f31910h;
        }

        int getMaxWidth() {
            return this.f31909g;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f31904b;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.U();
            }
            ViewCompat.requestApplyInsets(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f31904b;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.V();
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
            super.onLayout(z10, i10, i11, i12, i13);
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f31904b;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.W();
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i10, int i11) {
            super.onMeasure(i10, i11);
            if (this.f31909g > 0) {
                int measuredWidth = getMeasuredWidth();
                int i12 = this.f31909g;
                if (measuredWidth > i12) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), i11);
                }
            }
        }

        void setAnimationMode(int i10) {
            this.f31906d = i10;
        }

        @Override // android.view.View
        public void setBackground(@Nullable Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            if (drawable != null && this.f31911i != null) {
                drawable = DrawableCompat.wrap(drawable.mutate());
                DrawableCompat.setTintList(drawable, this.f31911i);
                DrawableCompat.setTintMode(drawable, this.f31912j);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
            this.f31911i = colorStateList;
            if (getBackground() != null) {
                Drawable drawableWrap = DrawableCompat.wrap(getBackground().mutate());
                DrawableCompat.setTintList(drawableWrap, colorStateList);
                DrawableCompat.setTintMode(drawableWrap, this.f31912j);
                if (drawableWrap != getBackground()) {
                    super.setBackgroundDrawable(drawableWrap);
                }
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
            this.f31912j = mode;
            if (getBackground() != null) {
                Drawable drawableWrap = DrawableCompat.wrap(getBackground().mutate());
                DrawableCompat.setTintMode(drawableWrap, mode);
                if (drawableWrap != getBackground()) {
                    super.setBackgroundDrawable(drawableWrap);
                }
            }
        }

        @Override // android.view.View
        public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
            if (this.f31914l || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                return;
            }
            e((ViewGroup.MarginLayoutParams) layoutParams);
            BaseTransientBottomBar<?> baseTransientBottomBar = this.f31904b;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.s0();
            }
        }

        @Override // android.view.View
        public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : f31903m);
            super.setOnClickListener(onClickListener);
        }

        protected SnackbarBaseLayout(@NonNull Context context, AttributeSet attributeSet) {
            super(a5.a.c(context, attributeSet, 0, 0), attributeSet);
            Context context2 = getContext();
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.SnackbarLayout);
            int i10 = R.styleable.SnackbarLayout_elevation;
            if (typedArrayObtainStyledAttributes.hasValue(i10)) {
                ViewCompat.setElevation(this, typedArrayObtainStyledAttributes.getDimensionPixelSize(i10, 0));
            }
            this.f31906d = typedArrayObtainStyledAttributes.getInt(R.styleable.SnackbarLayout_animationMode, 0);
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SnackbarLayout_shapeAppearance) || typedArrayObtainStyledAttributes.hasValue(R.styleable.SnackbarLayout_shapeAppearanceOverlay)) {
                this.f31905c = com.google.android.material.shape.n.e(context2, attributeSet, 0, 0).m();
            }
            this.f31907e = typedArrayObtainStyledAttributes.getFloat(R.styleable.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
            setBackgroundTintList(com.google.android.material.resources.d.a(context2, typedArrayObtainStyledAttributes, R.styleable.SnackbarLayout_backgroundTint));
            setBackgroundTintMode(p0.u(typedArrayObtainStyledAttributes.getInt(R.styleable.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
            this.f31908f = typedArrayObtainStyledAttributes.getFloat(R.styleable.SnackbarLayout_actionTextColorAlpha, 1.0f);
            this.f31909g = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_android_maxWidth, -1);
            this.f31910h = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
            typedArrayObtainStyledAttributes.recycle();
            setOnTouchListener(f31903m);
            setFocusable(true);
            if (getBackground() == null) {
                ViewCompat.setBackground(this, d());
            }
        }
    }

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f31915b;

        a(int i10) {
            this.f31915b = i10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.X(this.f31915b);
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            BaseTransientBottomBar.this.f31879i.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            BaseTransientBottomBar.this.f31879i.setScaleX(fFloatValue);
            BaseTransientBottomBar.this.f31879i.setScaleY(fFloatValue);
        }
    }

    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.Y();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.f31880j.a(BaseTransientBottomBar.this.f31873c - BaseTransientBottomBar.this.f31871a, BaseTransientBottomBar.this.f31871a);
        }
    }

    class e implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f31920b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f31921c;

        e(int i10) {
            this.f31921c = i10;
            this.f31920b = i10;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.Q) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f31879i, iIntValue - this.f31920b);
            } else {
                BaseTransientBottomBar.this.f31879i.setTranslationY(iIntValue);
            }
            this.f31920b = iIntValue;
        }
    }

    class f extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f31923b;

        f(int i10) {
            this.f31923b = i10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.X(this.f31923b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BaseTransientBottomBar.this.f31880j.b(0, BaseTransientBottomBar.this.f31872b);
        }
    }

    class g implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f31925b = 0;

        g() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (BaseTransientBottomBar.Q) {
                ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.f31879i, iIntValue - this.f31925b);
            } else {
                BaseTransientBottomBar.this.f31879i.setTranslationY(iIntValue);
            }
            this.f31925b = iIntValue;
        }
    }

    class h implements Handler.Callback {
        h() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            int i10 = message.what;
            if (i10 == 0) {
                ((BaseTransientBottomBar) message.obj).m0();
                return true;
            }
            if (i10 != 1) {
                return false;
            }
            ((BaseTransientBottomBar) message.obj).O(message.arg1);
            return true;
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
            if (baseTransientBottomBar.f31879i == null || baseTransientBottomBar.f31878h == null) {
                return;
            }
            int iHeight = (q0.b(BaseTransientBottomBar.this.f31878h).height() - BaseTransientBottomBar.this.M()) + ((int) BaseTransientBottomBar.this.f31879i.getTranslationY());
            if (iHeight >= BaseTransientBottomBar.this.f31890t) {
                BaseTransientBottomBar baseTransientBottomBar2 = BaseTransientBottomBar.this;
                baseTransientBottomBar2.f31891u = baseTransientBottomBar2.f31890t;
                return;
            }
            ViewGroup.LayoutParams layoutParams = BaseTransientBottomBar.this.f31879i.getLayoutParams();
            if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                String unused = BaseTransientBottomBar.S;
                return;
            }
            BaseTransientBottomBar baseTransientBottomBar3 = BaseTransientBottomBar.this;
            baseTransientBottomBar3.f31891u = baseTransientBottomBar3.f31890t;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin += BaseTransientBottomBar.this.f31890t - iHeight;
            BaseTransientBottomBar.this.f31879i.requestLayout();
        }
    }

    class j implements OnApplyWindowInsetsListener {
        j() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        @NonNull
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            BaseTransientBottomBar.this.f31886p = windowInsetsCompat.getSystemWindowInsetBottom();
            BaseTransientBottomBar.this.f31887q = windowInsetsCompat.getSystemWindowInsetLeft();
            BaseTransientBottomBar.this.f31888r = windowInsetsCompat.getSystemWindowInsetRight();
            BaseTransientBottomBar.this.s0();
            return windowInsetsCompat;
        }
    }

    class k extends AccessibilityDelegateCompat {
        k() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.addAction(1048576);
            accessibilityNodeInfoCompat.setDismissable(true);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (i10 != 1048576) {
                return super.performAccessibilityAction(view, i10, bundle);
            }
            BaseTransientBottomBar.this.A();
            return true;
        }
    }

    class l implements com.google.android.material.snackbar.e.b {
        l() {
        }

        @Override // com.google.android.material.snackbar.e.b
        public void a(int i10) {
            Handler handler = BaseTransientBottomBar.N;
            handler.sendMessage(handler.obtainMessage(1, i10, 0, BaseTransientBottomBar.this));
        }

        @Override // com.google.android.material.snackbar.e.b
        public void show() {
            Handler handler = BaseTransientBottomBar.N;
            handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseTransientBottomBar.this.X(3);
        }
    }

    class n implements SwipeDismissBehavior.c {
        n() {
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior.c
        public void a(@NonNull View view) {
            if (view.getParent() != null) {
                view.setVisibility(8);
            }
            BaseTransientBottomBar.this.B(0);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior.c
        public void b(int i10) {
            if (i10 == 0) {
                com.google.android.material.snackbar.e.c().l(BaseTransientBottomBar.this.f31896z);
            } else if (i10 == 1 || i10 == 2) {
                com.google.android.material.snackbar.e.c().k(BaseTransientBottomBar.this.f31896z);
            }
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SnackbarBaseLayout snackbarBaseLayout = BaseTransientBottomBar.this.f31879i;
            if (snackbarBaseLayout == null) {
                return;
            }
            if (snackbarBaseLayout.getParent() != null) {
                BaseTransientBottomBar.this.f31879i.setVisibility(0);
            }
            if (BaseTransientBottomBar.this.f31879i.getAnimationMode() == 1) {
                BaseTransientBottomBar.this.o0();
            } else {
                BaseTransientBottomBar.this.q0();
            }
        }
    }

    class p extends AnimatorListenerAdapter {
        p() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BaseTransientBottomBar.this.Y();
        }
    }

    static class q implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NonNull
        private final WeakReference<BaseTransientBottomBar> f31935b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @NonNull
        private final WeakReference<View> f31936c;

        private q(@NonNull BaseTransientBottomBar baseTransientBottomBar, @NonNull View view) {
            this.f31935b = new WeakReference<>(baseTransientBottomBar);
            this.f31936c = new WeakReference<>(view);
        }

        static q a(@NonNull BaseTransientBottomBar baseTransientBottomBar, @NonNull View view) {
            q qVar = new q(baseTransientBottomBar, view);
            if (ViewCompat.isAttachedToWindow(view)) {
                p0.b(view, qVar);
            }
            view.addOnAttachStateChangeListener(qVar);
            return qVar;
        }

        private boolean d() {
            if (this.f31935b.get() != null) {
                return false;
            }
            c();
            return true;
        }

        @Nullable
        View b() {
            return this.f31936c.get();
        }

        void c() {
            if (this.f31936c.get() != null) {
                this.f31936c.get().removeOnAttachStateChangeListener(this);
                p0.v(this.f31936c.get(), this);
            }
            this.f31936c.clear();
            this.f31935b.clear();
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (d() || !this.f31935b.get().f31884n) {
                return;
            }
            this.f31935b.get().Z();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            if (d()) {
                return;
            }
            p0.b(view, this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (d()) {
                return;
            }
            p0.v(view, this);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static class r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.google.android.material.snackbar.e.b f31937a;

        public r(@NonNull SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.t(0.1f);
            swipeDismissBehavior.q(0.6f);
            swipeDismissBehavior.u(0);
        }

        public boolean a(View view) {
            return view instanceof SnackbarBaseLayout;
        }

        public void b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                    com.google.android.material.snackbar.e.c().k(this.f31937a);
                }
            } else if (actionMasked == 1 || actionMasked == 3) {
                com.google.android.material.snackbar.e.c().l(this.f31937a);
            }
        }

        public void c(@NonNull BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f31937a = baseTransientBottomBar.f31896z;
        }
    }

    @Deprecated
    public interface s extends com.google.android.material.snackbar.b {
    }

    protected BaseTransientBottomBar(@NonNull ViewGroup viewGroup, @NonNull View view, @NonNull com.google.android.material.snackbar.b bVar) {
        this(viewGroup.getContext(), viewGroup, view, bVar);
    }

    private ValueAnimator C(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(this.f31874d);
        valueAnimatorOfFloat.addUpdateListener(new b());
        return valueAnimatorOfFloat;
    }

    private ValueAnimator I(float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(this.f31876f);
        valueAnimatorOfFloat.addUpdateListener(new c());
        return valueAnimatorOfFloat;
    }

    private int K() {
        int height = this.f31879i.getHeight();
        ViewGroup.LayoutParams layoutParams = this.f31879i.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : height;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int M() {
        int[] iArr = new int[2];
        this.f31879i.getLocationInWindow(iArr);
        return iArr[1] + this.f31879i.getHeight();
    }

    private boolean T() {
        ViewGroup.LayoutParams layoutParams = this.f31879i.getLayoutParams();
        return (layoutParams instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof SwipeDismissBehavior);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z() {
        this.f31889s = x();
        s0();
    }

    private void i0(CoordinatorLayout.LayoutParams layoutParams) {
        SwipeDismissBehavior<? extends View> swipeDismissBehaviorH = this.f31894x;
        if (swipeDismissBehaviorH == null) {
            swipeDismissBehaviorH = H();
        }
        if (swipeDismissBehaviorH instanceof Behavior) {
            ((Behavior) swipeDismissBehaviorH).x(this);
        }
        swipeDismissBehaviorH.r(new n());
        layoutParams.setBehavior(swipeDismissBehaviorH);
        if (D() == null) {
            layoutParams.insetEdge = 80;
        }
    }

    private boolean k0() {
        return this.f31890t > 0 && !this.f31882l && T();
    }

    private void n0() {
        if (j0()) {
            v();
            return;
        }
        if (this.f31879i.getParent() != null) {
            this.f31879i.setVisibility(0);
        }
        Y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0() {
        ValueAnimator valueAnimatorC = C(0.0f, 1.0f);
        ValueAnimator valueAnimatorI = I(M, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorC, valueAnimatorI);
        animatorSet.setDuration(this.f31871a);
        animatorSet.addListener(new p());
        animatorSet.start();
    }

    private void p0(int i10) {
        ValueAnimator valueAnimatorC = C(1.0f, 0.0f);
        valueAnimatorC.setDuration(this.f31872b);
        valueAnimatorC.addListener(new a(i10));
        valueAnimatorC.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q0() {
        int iK = K();
        if (Q) {
            ViewCompat.offsetTopAndBottom(this.f31879i, iK);
        } else {
            this.f31879i.setTranslationY(iK);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(iK, 0);
        valueAnimator.setInterpolator(this.f31875e);
        valueAnimator.setDuration(this.f31873c);
        valueAnimator.addListener(new d());
        valueAnimator.addUpdateListener(new e(iK));
        valueAnimator.start();
    }

    private void r0(int i10) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, K());
        valueAnimator.setInterpolator(this.f31875e);
        valueAnimator.setDuration(this.f31873c);
        valueAnimator.addListener(new f(i10));
        valueAnimator.addUpdateListener(new g());
        valueAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0() {
        ViewGroup.LayoutParams layoutParams = this.f31879i.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams) || this.f31879i.f31913k == null || this.f31879i.getParent() == null) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        int i10 = this.f31879i.f31913k.bottom + (D() != null ? this.f31889s : this.f31886p);
        int i11 = this.f31879i.f31913k.left + this.f31887q;
        int i12 = this.f31879i.f31913k.right + this.f31888r;
        int i13 = this.f31879i.f31913k.top;
        boolean z10 = (marginLayoutParams.bottomMargin == i10 && marginLayoutParams.leftMargin == i11 && marginLayoutParams.rightMargin == i12 && marginLayoutParams.topMargin == i13) ? false : true;
        if (z10) {
            marginLayoutParams.bottomMargin = i10;
            marginLayoutParams.leftMargin = i11;
            marginLayoutParams.rightMargin = i12;
            marginLayoutParams.topMargin = i13;
            this.f31879i.requestLayout();
        }
        if ((z10 || this.f31891u != this.f31890t) && Build.VERSION.SDK_INT >= 29 && k0()) {
            this.f31879i.removeCallbacks(this.f31885o);
            this.f31879i.post(this.f31885o);
        }
    }

    private void w(int i10) {
        if (this.f31879i.getAnimationMode() == 1) {
            p0(i10);
        } else {
            r0(i10);
        }
    }

    private int x() {
        if (D() == null) {
            return 0;
        }
        int[] iArr = new int[2];
        D().getLocationOnScreen(iArr);
        int i10 = iArr[1];
        int[] iArr2 = new int[2];
        this.f31877g.getLocationOnScreen(iArr2);
        return (iArr2[1] + this.f31877g.getHeight()) - i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static GradientDrawable y(@ColorInt int i10, @NonNull Resources resources) {
        float dimension = resources.getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(dimension);
        gradientDrawable.setColor(i10);
        return gradientDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static MaterialShapeDrawable z(@ColorInt int i10, @NonNull com.google.android.material.shape.n nVar) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(nVar);
        materialShapeDrawable.p0(ColorStateList.valueOf(i10));
        return materialShapeDrawable;
    }

    public void A() {
        B(3);
    }

    protected void B(int i10) {
        com.google.android.material.snackbar.e.c().b(this.f31896z, i10);
    }

    @Nullable
    public View D() {
        q qVar = this.f31883m;
        if (qVar == null) {
            return null;
        }
        return qVar.b();
    }

    public int E() {
        return this.f31879i.getAnimationMode();
    }

    public Behavior F() {
        return this.f31894x;
    }

    public int G() {
        return this.f31881k;
    }

    @NonNull
    protected SwipeDismissBehavior<? extends View> H() {
        return new Behavior();
    }

    @LayoutRes
    protected int J() {
        return N() ? R.layout.mtrl_layout_snackbar : R.layout.design_layout_snackbar;
    }

    @NonNull
    public View L() {
        return this.f31879i;
    }

    protected boolean N() {
        TypedArray typedArrayObtainStyledAttributes = this.f31878h.obtainStyledAttributes(R);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    final void O(int i10) {
        if (j0() && this.f31879i.getVisibility() == 0) {
            w(i10);
        } else {
            X(i10);
        }
    }

    public boolean P() {
        return this.f31884n;
    }

    public boolean Q() {
        return this.f31882l;
    }

    public boolean R() {
        return com.google.android.material.snackbar.e.c().e(this.f31896z);
    }

    public boolean S() {
        return com.google.android.material.snackbar.e.c().f(this.f31896z);
    }

    void U() {
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT < 29 || (rootWindowInsets = this.f31879i.getRootWindowInsets()) == null) {
            return;
        }
        this.f31890t = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
        s0();
    }

    void V() {
        if (S()) {
            N.post(new m());
        }
    }

    void W() {
        if (this.f31892v) {
            n0();
            this.f31892v = false;
        }
    }

    void X(int i10) {
        com.google.android.material.snackbar.e.c().i(this.f31896z);
        List<BaseCallback<B>> list = this.f31893w;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f31893w.get(size).a(this, i10);
            }
        }
        ViewParent parent = this.f31879i.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f31879i);
        }
    }

    void Y() {
        com.google.android.material.snackbar.e.c().j(this.f31896z);
        List<BaseCallback<B>> list = this.f31893w;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f31893w.get(size).b(this);
            }
        }
    }

    @NonNull
    public B a0(@Nullable BaseCallback<B> baseCallback) {
        List<BaseCallback<B>> list;
        if (baseCallback == null || (list = this.f31893w) == null) {
            return this;
        }
        list.remove(baseCallback);
        return this;
    }

    @NonNull
    public B b0(@IdRes int i10) {
        View viewFindViewById = this.f31877g.findViewById(i10);
        if (viewFindViewById != null) {
            return (B) c0(viewFindViewById);
        }
        throw new IllegalArgumentException("Unable to find anchor view with id: " + i10);
    }

    @NonNull
    public B c0(@Nullable View view) {
        q qVar = this.f31883m;
        if (qVar != null) {
            qVar.c();
        }
        this.f31883m = view == null ? null : q.a(this, view);
        return this;
    }

    public void d0(boolean z10) {
        this.f31884n = z10;
    }

    @NonNull
    public B e0(int i10) {
        this.f31879i.setAnimationMode(i10);
        return this;
    }

    @NonNull
    public B f0(Behavior behavior) {
        this.f31894x = behavior;
        return this;
    }

    @NonNull
    public B g0(int i10) {
        this.f31881k = i10;
        return this;
    }

    @NonNull
    public Context getContext() {
        return this.f31878h;
    }

    @NonNull
    public B h0(boolean z10) {
        this.f31882l = z10;
        return this;
    }

    boolean j0() {
        AccessibilityManager accessibilityManager = this.f31895y;
        if (accessibilityManager == null) {
            return true;
        }
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1);
        return enabledAccessibilityServiceList != null && enabledAccessibilityServiceList.isEmpty();
    }

    public void l0() {
        com.google.android.material.snackbar.e.c().n(G(), this.f31896z);
    }

    final void m0() {
        if (this.f31879i.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.f31879i.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                i0((CoordinatorLayout.LayoutParams) layoutParams);
            }
            this.f31879i.c(this.f31877g);
            Z();
            this.f31879i.setVisibility(4);
        }
        if (ViewCompat.isLaidOut(this.f31879i)) {
            n0();
        } else {
            this.f31892v = true;
        }
    }

    @NonNull
    public B u(@Nullable BaseCallback<B> baseCallback) {
        if (baseCallback == null) {
            return this;
        }
        if (this.f31893w == null) {
            this.f31893w = new ArrayList();
        }
        this.f31893w.add(baseCallback);
        return this;
    }

    void v() {
        this.f31879i.post(new o());
    }

    protected BaseTransientBottomBar(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull View view, @NonNull com.google.android.material.snackbar.b bVar) {
        this.f31884n = false;
        this.f31885o = new i();
        this.f31896z = new l();
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        }
        if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        if (bVar == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        }
        this.f31877g = viewGroup;
        this.f31880j = bVar;
        this.f31878h = context;
        g0.a(context);
        SnackbarBaseLayout snackbarBaseLayout = (SnackbarBaseLayout) LayoutInflater.from(context).inflate(J(), viewGroup, false);
        this.f31879i = snackbarBaseLayout;
        snackbarBaseLayout.setBaseTransientBottomBar(this);
        if (view instanceof SnackbarContentLayout) {
            SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) view;
            snackbarContentLayout.c(snackbarBaseLayout.getActionTextColorAlpha());
            snackbarContentLayout.setMaxInlineActionWidth(snackbarBaseLayout.getMaxInlineActionWidth());
        }
        snackbarBaseLayout.addView(view);
        ViewCompat.setAccessibilityLiveRegion(snackbarBaseLayout, 1);
        ViewCompat.setImportantForAccessibility(snackbarBaseLayout, 1);
        ViewCompat.setFitsSystemWindows(snackbarBaseLayout, true);
        ViewCompat.setOnApplyWindowInsetsListener(snackbarBaseLayout, new j());
        ViewCompat.setAccessibilityDelegate(snackbarBaseLayout, new k());
        this.f31895y = (AccessibilityManager) context.getSystemService("accessibility");
        int i10 = R.attr.motionDurationLong2;
        this.f31873c = com.google.android.material.motion.j.f(context, i10, 250);
        this.f31871a = com.google.android.material.motion.j.f(context, i10, 150);
        this.f31872b = com.google.android.material.motion.j.f(context, R.attr.motionDurationMedium1, 75);
        int i11 = R.attr.motionEasingEmphasizedInterpolator;
        this.f31874d = com.google.android.material.motion.j.g(context, i11, K);
        this.f31876f = com.google.android.material.motion.j.g(context, i11, L);
        this.f31875e = com.google.android.material.motion.j.g(context, i11, H);
    }
}
