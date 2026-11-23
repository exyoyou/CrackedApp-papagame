package com.google.android.material.bottomsheet;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.AppCompatDialog;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.color.s;
import com.google.android.material.internal.p0;
import com.google.android.material.shape.MaterialShapeDrawable;

/* JADX INFO: loaded from: classes5.dex */
public class c extends AppCompatDialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BottomSheetBehavior<FrameLayout> f29665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private FrameLayout f29666c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CoordinatorLayout f29667d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private FrameLayout f29668e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f29669f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f29670g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f29671h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f29672i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private f f29673j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f29674k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private com.google.android.material.motion.c f29675l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    private BottomSheetBehavior.g f29676m;

    class a implements OnApplyWindowInsetsListener {
        a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            if (c.this.f29673j != null) {
                c.this.f29665b.s0(c.this.f29673j);
            }
            if (windowInsetsCompat != null) {
                c cVar = c.this;
                cVar.f29673j = new f(cVar.f29668e, windowInsetsCompat, null);
                c.this.f29673j.e(c.this.getWindow());
                c.this.f29665b.B(c.this.f29673j);
            }
            return windowInsetsCompat;
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c cVar = c.this;
            if (cVar.f29670g && cVar.isShowing() && c.this.m()) {
                c.this.cancel();
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.bottomsheet.c$c, reason: collision with other inner class name */
    class C0594c extends AccessibilityDelegateCompat {
        C0594c() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!c.this.f29670g) {
                accessibilityNodeInfoCompat.setDismissable(false);
            } else {
                accessibilityNodeInfoCompat.addAction(1048576);
                accessibilityNodeInfoCompat.setDismissable(true);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (i10 == 1048576) {
                c cVar = c.this;
                if (cVar.f29670g) {
                    cVar.cancel();
                    return true;
                }
            }
            return super.performAccessibilityAction(view, i10, bundle);
        }
    }

    class d implements View.OnTouchListener {
        d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    class e extends BottomSheetBehavior.g {
        e() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.g
        public void b(@NonNull View view, float f10) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.g
        public void c(@NonNull View view, int i10) {
            if (i10 == 5) {
                c.this.cancel();
            }
        }
    }

    private static class f extends BottomSheetBehavior.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        private final Boolean f29682a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NonNull
        private final WindowInsetsCompat f29683b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        private Window f29684c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f29685d;

        /* synthetic */ f(View view, WindowInsetsCompat windowInsetsCompat, a aVar) {
            this(view, windowInsetsCompat);
        }

        private void d(View view) {
            if (view.getTop() < this.f29683b.getSystemWindowInsetTop()) {
                Window window = this.f29684c;
                if (window != null) {
                    Boolean bool = this.f29682a;
                    com.google.android.material.internal.e.g(window, bool == null ? this.f29685d : bool.booleanValue());
                }
                view.setPadding(view.getPaddingLeft(), this.f29683b.getSystemWindowInsetTop() - view.getTop(), view.getPaddingRight(), view.getPaddingBottom());
                return;
            }
            if (view.getTop() != 0) {
                Window window2 = this.f29684c;
                if (window2 != null) {
                    com.google.android.material.internal.e.g(window2, this.f29685d);
                }
                view.setPadding(view.getPaddingLeft(), 0, view.getPaddingRight(), view.getPaddingBottom());
            }
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.g
        void a(@NonNull View view) {
            d(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.g
        public void b(@NonNull View view, float f10) {
            d(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.g
        public void c(@NonNull View view, int i10) {
            d(view);
        }

        void e(@Nullable Window window) {
            if (this.f29684c == window) {
                return;
            }
            this.f29684c = window;
            if (window != null) {
                this.f29685d = WindowCompat.getInsetsController(window, window.getDecorView()).isAppearanceLightStatusBars();
            }
        }

        private f(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            this.f29683b = windowInsetsCompat;
            MaterialShapeDrawable materialShapeDrawableY = BottomSheetBehavior.R(view).Y();
            ColorStateList colorStateListZ = materialShapeDrawableY != null ? materialShapeDrawableY.z() : ViewCompat.getBackgroundTintList(view);
            if (colorStateListZ != null) {
                this.f29682a = Boolean.valueOf(s.q(colorStateListZ.getDefaultColor()));
                return;
            }
            Integer numJ = p0.j(view);
            if (numJ != null) {
                this.f29682a = Boolean.valueOf(s.q(numJ.intValue()));
            } else {
                this.f29682a = null;
            }
        }
    }

    public c(@NonNull Context context) {
        this(context, 0);
        this.f29674k = getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.enableEdgeToEdge}).getBoolean(0, false);
    }

    private FrameLayout f() {
        if (this.f29666c == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), R.layout.design_bottom_sheet_dialog, null);
            this.f29666c = frameLayout;
            this.f29667d = (CoordinatorLayout) frameLayout.findViewById(R.id.coordinator);
            FrameLayout frameLayout2 = (FrameLayout) this.f29666c.findViewById(R.id.design_bottom_sheet);
            this.f29668e = frameLayout2;
            BottomSheetBehavior<FrameLayout> bottomSheetBehaviorR = BottomSheetBehavior.R(frameLayout2);
            this.f29665b = bottomSheetBehaviorR;
            bottomSheetBehaviorR.B(this.f29676m);
            this.f29665b.F0(this.f29670g);
            this.f29675l = new com.google.android.material.motion.c(this.f29665b, this.f29668e);
        }
        return this.f29666c;
    }

    private static int getThemeResId(@NonNull Context context, int i10) {
        if (i10 != 0) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(R.attr.bottomSheetDialogTheme, typedValue, true) ? typedValue.resourceId : R.style.Theme_Design_Light_BottomSheetDialog;
    }

    @Deprecated
    public static void l(@NonNull View view, boolean z10) {
        if (Build.VERSION.SDK_INT >= 23) {
            int systemUiVisibility = view.getSystemUiVisibility();
            view.setSystemUiVisibility(z10 ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
        }
    }

    private void n() {
        com.google.android.material.motion.c cVar = this.f29675l;
        if (cVar == null) {
            return;
        }
        if (this.f29670g) {
            cVar.c();
        } else {
            cVar.f();
        }
    }

    private View o(int i10, @Nullable View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        f();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f29666c.findViewById(R.id.coordinator);
        if (i10 != 0 && view == null) {
            view = getLayoutInflater().inflate(i10, (ViewGroup) coordinatorLayout, false);
        }
        if (this.f29674k) {
            ViewCompat.setOnApplyWindowInsetsListener(this.f29668e, new a());
        }
        this.f29668e.removeAllViews();
        if (layoutParams == null) {
            this.f29668e.addView(view);
        } else {
            this.f29668e.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(R.id.touch_outside).setOnClickListener(new b());
        ViewCompat.setAccessibilityDelegate(this.f29668e, new C0594c());
        this.f29668e.setOnTouchListener(new d());
        return this.f29666c;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        BottomSheetBehavior<FrameLayout> bottomSheetBehaviorG = g();
        if (!this.f29669f || bottomSheetBehaviorG.getState() == 5) {
            super.cancel();
        } else {
            bottomSheetBehaviorG.g(5);
        }
    }

    @NonNull
    public BottomSheetBehavior<FrameLayout> g() {
        if (this.f29665b == null) {
            f();
        }
        return this.f29665b;
    }

    public boolean h() {
        return this.f29669f;
    }

    public boolean i() {
        return this.f29674k;
    }

    void j() {
        this.f29665b.s0(this.f29676m);
    }

    public void k(boolean z10) {
        this.f29669f = z10;
    }

    boolean m() {
        if (!this.f29672i) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{android.R.attr.windowCloseOnTouchOutside});
            this.f29671h = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
            this.f29672i = true;
        }
        return this.f29671h;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Window window = getWindow();
        if (window != null) {
            boolean z10 = this.f29674k && Color.alpha(window.getNavigationBarColor()) < 255;
            FrameLayout frameLayout = this.f29666c;
            if (frameLayout != null) {
                frameLayout.setFitsSystemWindows(!z10);
            }
            CoordinatorLayout coordinatorLayout = this.f29667d;
            if (coordinatorLayout != null) {
                coordinatorLayout.setFitsSystemWindows(!z10);
            }
            WindowCompat.setDecorFitsSystemWindows(window, !z10);
            f fVar = this.f29673j;
            if (fVar != null) {
                fVar.e(window);
            }
        }
        n();
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            int i10 = Build.VERSION.SDK_INT;
            window.setStatusBarColor(0);
            window.addFlags(Integer.MIN_VALUE);
            if (i10 < 23) {
                window.addFlags(67108864);
            }
            window.setLayout(-1, -1);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        f fVar = this.f29673j;
        if (fVar != null) {
            fVar.e(null);
        }
        com.google.android.material.motion.c cVar = this.f29675l;
        if (cVar != null) {
            cVar.f();
        }
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    protected void onStart() {
        super.onStart();
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f29665b;
        if (bottomSheetBehavior == null || bottomSheetBehavior.getState() != 5) {
            return;
        }
        this.f29665b.g(4);
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z10) {
        super.setCancelable(z10);
        if (this.f29670g != z10) {
            this.f29670g = z10;
            BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f29665b;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.F0(z10);
            }
            if (getWindow() != null) {
                n();
            }
        }
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z10) {
        super.setCanceledOnTouchOutside(z10);
        if (z10 && !this.f29670g) {
            this.f29670g = true;
        }
        this.f29671h = z10;
        this.f29672i = true;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(@LayoutRes int i10) {
        super.setContentView(o(i10, null, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(View view) {
        super.setContentView(o(0, view, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(o(0, view, layoutParams));
    }

    public c(@NonNull Context context, @StyleRes int i10) {
        super(context, getThemeResId(context, i10));
        this.f29670g = true;
        this.f29671h = true;
        this.f29676m = new e();
        supportRequestWindowFeature(1);
        this.f29674k = getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.enableEdgeToEdge}).getBoolean(0, false);
    }

    protected c(@NonNull Context context, boolean z10, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z10, onCancelListener);
        this.f29670g = true;
        this.f29671h = true;
        this.f29676m = new e();
        supportRequestWindowFeature(1);
        this.f29670g = z10;
        this.f29674k = getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.enableEdgeToEdge}).getBoolean(0, false);
    }
}
