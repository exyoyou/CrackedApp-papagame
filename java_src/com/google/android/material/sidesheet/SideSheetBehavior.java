package com.google.android.material.sidesheet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.activity.BackEventCompat;
import androidx.annotation.GravityInt;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.n;
import com.join.mgps.Util.o0;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class SideSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> implements Sheet<l> {
    static final int B = 500;
    private static final float C = 0.5f;
    private static final float D = 0.1f;
    private static final int E = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private d f31730b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f31731c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private MaterialShapeDrawable f31732d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private ColorStateList f31733e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private n f31734f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final SideSheetBehavior<V>.c f31735g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f31736h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f31737i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f31738j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f31739k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private ViewDragHelper f31740l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f31741m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f31742n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f31743o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f31744p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f31745q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f31746r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private WeakReference<V> f31747s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private WeakReference<View> f31748t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @IdRes
    private int f31749u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    private VelocityTracker f31750v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private com.google.android.material.motion.i f31751w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f31752x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    private final Set<l> f31753y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final ViewDragHelper.Callback f31754z;
    private static final int A = R.string.side_sheet_accessibility_pane_title;
    private static final int F = R.style.Widget_Material3_SideSheet;

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f31755b;

        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @Nullable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState(@NonNull Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f31755b);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f31755b = parcel.readInt();
        }

        public SavedState(Parcelable parcelable, @NonNull SideSheetBehavior<?> sideSheetBehavior) {
            super(parcelable);
            this.f31755b = ((SideSheetBehavior) sideSheetBehavior).f31738j;
        }
    }

    class a extends ViewDragHelper.Callback {
        a() {
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i10, int i11) {
            return MathUtils.clamp(i10, SideSheetBehavior.this.f31730b.g(), SideSheetBehavior.this.f31730b.f());
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i10, int i11) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(@NonNull View view) {
            return SideSheetBehavior.this.f31743o + SideSheetBehavior.this.N();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i10) {
            if (i10 == 1 && SideSheetBehavior.this.f31737i) {
                SideSheetBehavior.this.s0(1);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i10, int i11, int i12, int i13) {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            View viewI = SideSheetBehavior.this.I();
            if (viewI != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) viewI.getLayoutParams()) != null) {
                SideSheetBehavior.this.f31730b.p(marginLayoutParams, view.getLeft(), view.getRight());
                viewI.setLayoutParams(marginLayoutParams);
            }
            SideSheetBehavior.this.A(view, i10);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(@NonNull View view, float f10, float f11) {
            int iW = SideSheetBehavior.this.w(view, f10, f11);
            SideSheetBehavior sideSheetBehavior = SideSheetBehavior.this;
            sideSheetBehavior.x0(view, iW, sideSheetBehavior.w0());
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(@NonNull View view, int i10) {
            return (SideSheetBehavior.this.f31738j == 1 || SideSheetBehavior.this.f31747s == null || SideSheetBehavior.this.f31747s.get() != view) ? false : true;
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SideSheetBehavior.this.s0(5);
            if (SideSheetBehavior.this.f31747s == null || SideSheetBehavior.this.f31747s.get() == null) {
                return;
            }
            ((View) SideSheetBehavior.this.f31747s.get()).requestLayout();
        }
    }

    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f31758a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f31759b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Runnable f31760c = new Runnable() { // from class: com.google.android.material.sidesheet.k
            @Override // java.lang.Runnable
            public final void run() {
                this.f31784b.c();
            }
        };

        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            this.f31759b = false;
            if (SideSheetBehavior.this.f31740l != null && SideSheetBehavior.this.f31740l.continueSettling(true)) {
                b(this.f31758a);
            } else if (SideSheetBehavior.this.f31738j == 2) {
                SideSheetBehavior.this.s0(this.f31758a);
            }
        }

        void b(int i10) {
            if (SideSheetBehavior.this.f31747s == null || SideSheetBehavior.this.f31747s.get() == null) {
                return;
            }
            this.f31758a = i10;
            if (this.f31759b) {
                return;
            }
            ViewCompat.postOnAnimation((View) SideSheetBehavior.this.f31747s.get(), this.f31760c);
            this.f31759b = true;
        }
    }

    public SideSheetBehavior() {
        this.f31735g = new c();
        this.f31737i = true;
        this.f31738j = 5;
        this.f31739k = 5;
        this.f31742n = 0.1f;
        this.f31749u = -1;
        this.f31753y = new LinkedHashSet();
        this.f31754z = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(@NonNull View view, int i10) {
        if (this.f31753y.isEmpty()) {
            return;
        }
        float fB = this.f31730b.b(i10);
        Iterator<l> it2 = this.f31753y.iterator();
        while (it2.hasNext()) {
            it2.next().b(view, fB);
        }
    }

    private void A0(@NonNull n nVar) {
        MaterialShapeDrawable materialShapeDrawable = this.f31732d;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(nVar);
        }
    }

    private void B(View view) {
        if (ViewCompat.getAccessibilityPaneTitle(view) == null) {
            ViewCompat.setAccessibilityPaneTitle(view, view.getResources().getString(A));
        }
    }

    private void B0(@NonNull View view) {
        int i10 = this.f31738j == 5 ? 4 : 0;
        if (view.getVisibility() != i10) {
            view.setVisibility(i10);
        }
    }

    @NonNull
    public static <V extends View> SideSheetBehavior<V> D(@NonNull V v10) {
        ViewGroup.LayoutParams layoutParams = v10.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (behavior instanceof SideSheetBehavior) {
            return (SideSheetBehavior) behavior;
        }
        throw new IllegalArgumentException("The view is not associated with SideSheetBehavior");
    }

    private int F(int i10, int i11, int i12, int i13) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, i11, i13);
        if (i12 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i12), 1073741824);
        }
        if (size != 0) {
            i12 = Math.min(size, i12);
        }
        return View.MeasureSpec.makeMeasureSpec(i12, Integer.MIN_VALUE);
    }

    @Nullable
    private ValueAnimator.AnimatorUpdateListener H() {
        final ViewGroup.MarginLayoutParams marginLayoutParams;
        final View viewI = I();
        if (viewI == null || (marginLayoutParams = (ViewGroup.MarginLayoutParams) viewI.getLayoutParams()) == null) {
            return null;
        }
        final int iC = this.f31730b.c(marginLayoutParams);
        return new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.sidesheet.h
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f31776b.f0(marginLayoutParams, iC, viewI, valueAnimator);
            }
        };
    }

    @GravityInt
    private int K() {
        d dVar = this.f31730b;
        return (dVar == null || dVar.j() == 0) ? 5 : 3;
    }

    @Nullable
    private CoordinatorLayout.LayoutParams U() {
        V v10;
        WeakReference<V> weakReference = this.f31747s;
        if (weakReference == null || (v10 = weakReference.get()) == null || !(v10.getLayoutParams() instanceof CoordinatorLayout.LayoutParams)) {
            return null;
        }
        return (CoordinatorLayout.LayoutParams) v10.getLayoutParams();
    }

    private boolean W() {
        CoordinatorLayout.LayoutParams layoutParamsU = U();
        return layoutParamsU != null && ((ViewGroup.MarginLayoutParams) layoutParamsU).leftMargin > 0;
    }

    private boolean X() {
        CoordinatorLayout.LayoutParams layoutParamsU = U();
        return layoutParamsU != null && ((ViewGroup.MarginLayoutParams) layoutParamsU).rightMargin > 0;
    }

    private boolean a0(@NonNull MotionEvent motionEvent) {
        return t0() && v((float) this.f31752x, motionEvent.getX()) > ((float) this.f31740l.getTouchSlop());
    }

    private boolean b0(float f10) {
        return this.f31730b.k(f10);
    }

    private boolean c0(@NonNull V v10) {
        ViewParent parent = v10.getParent();
        return parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(v10);
    }

    private boolean d0(View view, int i10, boolean z10) {
        int iP = P(i10);
        ViewDragHelper viewDragHelperT = T();
        return viewDragHelperT != null && (!z10 ? !viewDragHelperT.smoothSlideViewTo(view, iP, view.getTop()) : !viewDragHelperT.settleCapturedViewAt(iP, view.getTop()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean e0(int i10, View view, AccessibilityViewCommand.CommandArguments commandArguments) {
        g(i10);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f0(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, View view, ValueAnimator valueAnimator) {
        this.f31730b.o(marginLayoutParams, com.google.android.material.animation.b.c(i10, 0, valueAnimator.getAnimatedFraction()));
        view.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g0(int i10) {
        V v10 = this.f31747s.get();
        if (v10 != null) {
            x0(v10, i10, false);
        }
    }

    private void h0(@NonNull CoordinatorLayout coordinatorLayout) {
        int i10;
        View viewFindViewById;
        if (this.f31748t != null || (i10 = this.f31749u) == -1 || (viewFindViewById = coordinatorLayout.findViewById(i10)) == null) {
            return;
        }
        this.f31748t = new WeakReference<>(viewFindViewById);
    }

    private void j0(V v10, AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, int i10) {
        ViewCompat.replaceAccessibilityAction(v10, accessibilityActionCompat, null, y(i10));
    }

    private void k0() {
        VelocityTracker velocityTracker = this.f31750v;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f31750v = null;
        }
    }

    private void l0(@NonNull V v10, Runnable runnable) {
        if (c0(v10)) {
            v10.post(runnable);
        } else {
            runnable.run();
        }
    }

    private void q0(int i10) {
        d dVar = this.f31730b;
        if (dVar == null || dVar.j() != i10) {
            if (i10 == 0) {
                this.f31730b = new com.google.android.material.sidesheet.b(this);
                if (this.f31734f == null || X()) {
                    return;
                }
                n.b bVarV = this.f31734f.v();
                bVarV.P(0.0f).C(0.0f);
                A0(bVarV.m());
                return;
            }
            if (i10 == 1) {
                this.f31730b = new com.google.android.material.sidesheet.a(this);
                if (this.f31734f == null || W()) {
                    return;
                }
                n.b bVarV2 = this.f31734f.v();
                bVarV2.K(0.0f).x(0.0f);
                A0(bVarV2.m());
                return;
            }
            throw new IllegalArgumentException("Invalid sheet edge position value: " + i10 + ". Must be 0 or 1" + o0.f49827a);
        }
    }

    private void r0(@NonNull V v10, int i10) {
        q0(GravityCompat.getAbsoluteGravity(((CoordinatorLayout.LayoutParams) v10.getLayoutParams()).gravity, i10) == 3 ? 1 : 0);
    }

    private boolean t0() {
        return this.f31740l != null && (this.f31737i || this.f31738j == 1);
    }

    private int u(int i10, V v10) {
        int i11 = this.f31738j;
        if (i11 == 1 || i11 == 2) {
            return i10 - this.f31730b.h(v10);
        }
        if (i11 == 3) {
            return 0;
        }
        if (i11 == 5) {
            return this.f31730b.e();
        }
        throw new IllegalStateException("Unexpected value: " + this.f31738j);
    }

    private float v(float f10, float f11) {
        return Math.abs(f10 - f11);
    }

    private boolean v0(@NonNull V v10) {
        return (v10.isShown() || ViewCompat.getAccessibilityPaneTitle(v10) != null) && this.f31737i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int w(@NonNull View view, float f10, float f11) {
        if (b0(f10)) {
            return 3;
        }
        if (u0(view, f10)) {
            if (!this.f31730b.m(f10, f11) && !this.f31730b.l(view)) {
                return 3;
            }
        } else if (f10 == 0.0f || !g.a(f10, f11)) {
            int left = view.getLeft();
            if (Math.abs(left - J()) < Math.abs(left - this.f31730b.e())) {
                return 3;
            }
        }
        return 5;
    }

    private void x() {
        WeakReference<View> weakReference = this.f31748t;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f31748t = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x0(View view, int i10, boolean z10) {
        if (!d0(view, i10, z10)) {
            s0(i10);
        } else {
            s0(2);
            this.f31735g.b(i10);
        }
    }

    private AccessibilityViewCommand y(final int i10) {
        return new AccessibilityViewCommand() { // from class: com.google.android.material.sidesheet.j
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public final boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
                return this.f31782a.e0(i10, view, commandArguments);
            }
        };
    }

    private void y0() {
        V v10;
        WeakReference<V> weakReference = this.f31747s;
        if (weakReference == null || (v10 = weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(v10, 262144);
        ViewCompat.removeAccessibilityAction(v10, 1048576);
        if (this.f31738j != 5) {
            j0(v10, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, 5);
        }
        if (this.f31738j != 3) {
            j0(v10, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, 3);
        }
    }

    private void z(@NonNull Context context) {
        if (this.f31734f == null) {
            return;
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.f31734f);
        this.f31732d = materialShapeDrawable;
        materialShapeDrawable.a0(context);
        ColorStateList colorStateList = this.f31733e;
        if (colorStateList != null) {
            this.f31732d.p0(colorStateList);
            return;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
        this.f31732d.setTint(typedValue.data);
    }

    private void z0() {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        WeakReference<V> weakReference = this.f31747s;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        V v10 = this.f31747s.get();
        View viewI = I();
        if (viewI == null || (marginLayoutParams = (ViewGroup.MarginLayoutParams) viewI.getLayoutParams()) == null) {
            return;
        }
        this.f31730b.o(marginLayoutParams, (int) ((this.f31743o * v10.getScaleX()) + this.f31746r));
        viewI.requestLayout();
    }

    public void C() {
        g(3);
    }

    @Nullable
    @VisibleForTesting
    com.google.android.material.motion.i E() {
        return this.f31751w;
    }

    int G() {
        return this.f31743o;
    }

    @Nullable
    public View I() {
        WeakReference<View> weakReference = this.f31748t;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public int J() {
        return this.f31730b.d();
    }

    public float L() {
        return this.f31742n;
    }

    float M() {
        return 0.5f;
    }

    int N() {
        return this.f31746r;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int O() {
        return this.f31739k;
    }

    int P(int i10) {
        if (i10 == 3) {
            return J();
        }
        if (i10 == 5) {
            return this.f31730b.e();
        }
        throw new IllegalArgumentException("Invalid state to get outer edge offset: " + i10);
    }

    int Q() {
        return this.f31745q;
    }

    int R() {
        return this.f31744p;
    }

    int S() {
        return 500;
    }

    @Nullable
    ViewDragHelper T() {
        return this.f31740l;
    }

    float V() {
        VelocityTracker velocityTracker = this.f31750v;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.f31731c);
        return this.f31750v.getXVelocity();
    }

    public void Y() {
        g(5);
    }

    public boolean Z() {
        return this.f31737i;
    }

    @Override // com.google.android.material.motion.b
    public void b(@NonNull BackEventCompat backEventCompat) {
        com.google.android.material.motion.i iVar = this.f31751w;
        if (iVar == null) {
            return;
        }
        iVar.j(backEventCompat);
    }

    @Override // com.google.android.material.motion.b
    public void c(@NonNull BackEventCompat backEventCompat) {
        com.google.android.material.motion.i iVar = this.f31751w;
        if (iVar == null) {
            return;
        }
        iVar.l(backEventCompat, K());
        z0();
    }

    @Override // com.google.android.material.motion.b
    public void d() {
        com.google.android.material.motion.i iVar = this.f31751w;
        if (iVar == null) {
            return;
        }
        BackEventCompat backEventCompatC = iVar.c();
        if (backEventCompatC == null || Build.VERSION.SDK_INT < 34) {
            g(5);
        } else {
            this.f31751w.h(backEventCompatC, K(), new b(), H());
        }
    }

    @Override // com.google.android.material.motion.b
    public void f() {
        com.google.android.material.motion.i iVar = this.f31751w;
        if (iVar == null) {
            return;
        }
        iVar.f();
    }

    @Override // com.google.android.material.sidesheet.Sheet
    public void g(final int i10) {
        if (i10 == 1 || i10 == 2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("STATE_");
            sb2.append(i10 == 1 ? "DRAGGING" : "SETTLING");
            sb2.append(" should not be set externally.");
            throw new IllegalArgumentException(sb2.toString());
        }
        WeakReference<V> weakReference = this.f31747s;
        if (weakReference == null || weakReference.get() == null) {
            s0(i10);
        } else {
            l0(this.f31747s.get(), new Runnable() { // from class: com.google.android.material.sidesheet.i
                @Override // java.lang.Runnable
                public final void run() {
                    this.f31780b.g0(i10);
                }
            });
        }
    }

    @Override // com.google.android.material.sidesheet.Sheet
    public int getState() {
        return this.f31738j;
    }

    @Override // com.google.android.material.sidesheet.Sheet
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
    public void e(@NonNull l lVar) {
        this.f31753y.remove(lVar);
    }

    public void m0(@Nullable View view) {
        this.f31749u = -1;
        if (view == null) {
            x();
            return;
        }
        this.f31748t = new WeakReference<>(view);
        WeakReference<V> weakReference = this.f31747s;
        if (weakReference != null) {
            V v10 = weakReference.get();
            if (ViewCompat.isLaidOut(v10)) {
                v10.requestLayout();
            }
        }
    }

    public void n0(@IdRes int i10) {
        this.f31749u = i10;
        x();
        WeakReference<V> weakReference = this.f31747s;
        if (weakReference != null) {
            V v10 = weakReference.get();
            if (i10 == -1 || !ViewCompat.isLaidOut(v10)) {
                return;
            }
            v10.requestLayout();
        }
    }

    public void o0(boolean z10) {
        this.f31737i = z10;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        super.onAttachedToLayoutParams(layoutParams);
        this.f31747s = null;
        this.f31740l = null;
        this.f31751w = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.f31747s = null;
        this.f31740l = null;
        this.f31751w = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        if (!v0(v10)) {
            this.f31741m = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            k0();
        }
        if (this.f31750v == null) {
            this.f31750v = VelocityTracker.obtain();
        }
        this.f31750v.addMovement(motionEvent);
        if (actionMasked == 0) {
            this.f31752x = (int) motionEvent.getX();
        } else if ((actionMasked == 1 || actionMasked == 3) && this.f31741m) {
            this.f31741m = false;
            return false;
        }
        return (this.f31741m || (viewDragHelper = this.f31740l) == null || !viewDragHelper.shouldInterceptTouchEvent(motionEvent)) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, int i10) {
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(v10)) {
            v10.setFitsSystemWindows(true);
        }
        if (this.f31747s == null) {
            this.f31747s = new WeakReference<>(v10);
            this.f31751w = new com.google.android.material.motion.i(v10);
            MaterialShapeDrawable materialShapeDrawable = this.f31732d;
            if (materialShapeDrawable != null) {
                ViewCompat.setBackground(v10, materialShapeDrawable);
                MaterialShapeDrawable materialShapeDrawable2 = this.f31732d;
                float elevation = this.f31736h;
                if (elevation == -1.0f) {
                    elevation = ViewCompat.getElevation(v10);
                }
                materialShapeDrawable2.o0(elevation);
            } else {
                ColorStateList colorStateList = this.f31733e;
                if (colorStateList != null) {
                    ViewCompat.setBackgroundTintList(v10, colorStateList);
                }
            }
            B0(v10);
            y0();
            if (ViewCompat.getImportantForAccessibility(v10) == 0) {
                ViewCompat.setImportantForAccessibility(v10, 1);
            }
            B(v10);
        }
        r0(v10, i10);
        if (this.f31740l == null) {
            this.f31740l = ViewDragHelper.create(coordinatorLayout, this.f31754z);
        }
        int iH = this.f31730b.h(v10);
        coordinatorLayout.onLayoutChild(v10, i10);
        this.f31744p = coordinatorLayout.getWidth();
        this.f31745q = this.f31730b.i(coordinatorLayout);
        this.f31743o = v10.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v10.getLayoutParams();
        this.f31746r = marginLayoutParams != null ? this.f31730b.a(marginLayoutParams) : 0;
        ViewCompat.offsetLeftAndRight(v10, u(iH, v10));
        h0(coordinatorLayout);
        for (l lVar : this.f31753y) {
            if (lVar instanceof l) {
                lVar.c(v10);
            }
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, int i10, int i11, int i12, int i13) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v10.getLayoutParams();
        v10.measure(F(i10, coordinatorLayout.getPaddingLeft() + coordinatorLayout.getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, -1, marginLayoutParams.width), F(i12, coordinatorLayout.getPaddingTop() + coordinatorLayout.getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, -1, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        if (savedState.getSuperState() != null) {
            super.onRestoreInstanceState(coordinatorLayout, v10, savedState.getSuperState());
        }
        int i10 = savedState.f31755b;
        if (i10 == 1 || i10 == 2) {
            i10 = 5;
        }
        this.f31738j = i10;
        this.f31739k = i10;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @NonNull
    public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v10), (SideSheetBehavior<?>) this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull MotionEvent motionEvent) {
        if (!v10.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f31738j == 1 && actionMasked == 0) {
            return true;
        }
        if (t0()) {
            this.f31740l.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            k0();
        }
        if (this.f31750v == null) {
            this.f31750v = VelocityTracker.obtain();
        }
        this.f31750v.addMovement(motionEvent);
        if (t0() && actionMasked == 2 && !this.f31741m && a0(motionEvent)) {
            this.f31740l.captureChildView(v10, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f31741m;
    }

    public void p0(float f10) {
        this.f31742n = f10;
    }

    void s0(int i10) {
        V v10;
        if (this.f31738j == i10) {
            return;
        }
        this.f31738j = i10;
        if (i10 == 3 || i10 == 5) {
            this.f31739k = i10;
        }
        WeakReference<V> weakReference = this.f31747s;
        if (weakReference == null || (v10 = weakReference.get()) == null) {
            return;
        }
        B0(v10);
        Iterator<l> it2 = this.f31753y.iterator();
        while (it2.hasNext()) {
            it2.next().a(v10, i10);
        }
        y0();
    }

    @Override // com.google.android.material.sidesheet.Sheet
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public void a(@NonNull l lVar) {
        this.f31753y.add(lVar);
    }

    boolean u0(@NonNull View view, float f10) {
        return this.f31730b.n(view, f10);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean w0() {
        return true;
    }

    public SideSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f31735g = new c();
        this.f31737i = true;
        this.f31738j = 5;
        this.f31739k = 5;
        this.f31742n = 0.1f;
        this.f31749u = -1;
        this.f31753y = new LinkedHashSet();
        this.f31754z = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SideSheetBehavior_Layout);
        int i10 = R.styleable.SideSheetBehavior_Layout_backgroundTint;
        if (typedArrayObtainStyledAttributes.hasValue(i10)) {
            this.f31733e = com.google.android.material.resources.d.a(context, typedArrayObtainStyledAttributes, i10);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.SideSheetBehavior_Layout_shapeAppearance)) {
            this.f31734f = n.e(context, attributeSet, 0, F).m();
        }
        int i11 = R.styleable.SideSheetBehavior_Layout_coplanarSiblingViewId;
        if (typedArrayObtainStyledAttributes.hasValue(i11)) {
            n0(typedArrayObtainStyledAttributes.getResourceId(i11, -1));
        }
        z(context);
        this.f31736h = typedArrayObtainStyledAttributes.getDimension(R.styleable.SideSheetBehavior_Layout_android_elevation, -1.0f);
        o0(typedArrayObtainStyledAttributes.getBoolean(R.styleable.SideSheetBehavior_Layout_behavior_draggable, true));
        typedArrayObtainStyledAttributes.recycle();
        this.f31731c = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
