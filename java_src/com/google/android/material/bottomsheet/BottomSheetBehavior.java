package com.google.android.material.bottomsheet;

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
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.RoundedCorner;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import androidx.activity.BackEventCompat;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.Insets;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.R;
import com.google.android.material.internal.p0;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.n;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> implements com.google.android.material.motion.b {
    public static final int L1 = 1;
    public static final int R1 = 2;
    public static final int V1 = 3;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    public static final int f29580a2 = 4;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    public static final int f29581b2 = 5;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    public static final int f29582c2 = 6;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    public static final int f29583d2 = -1;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    public static final int f29584e2 = 1;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    public static final int f29585f2 = 2;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    public static final int f29586g2 = 4;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    public static final int f29587h2 = 8;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    public static final int f29588i2 = -1;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    public static final int f29589j2 = 0;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    private static final String f29590k2 = "BottomSheetBehavior";

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    @VisibleForTesting
    static final int f29591l2 = 500;

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    private static final float f29592m2 = 0.5f;

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    private static final float f29593n2 = 0.1f;

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    private static final int f29594o2 = 500;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    private static final int f29595p2 = -1;

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    private static final int f29596q2 = 0;

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    private static final int f29597r2 = -1;

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    @VisibleForTesting
    static final int f29598s2 = 1;

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    private static final int f29599t2 = R.style.Widget_Design_BottomSheet_Modal;
    private n A;
    private boolean B;
    private final BottomSheetBehavior<V>.h C;

    @Nullable
    private ValueAnimator D;
    int E;
    int F;
    int G;
    float H;
    int I;
    float J;
    boolean K;
    private boolean L;
    private boolean M;
    int N;
    int O;

    @Nullable
    ViewDragHelper P;
    private boolean Q;
    private int R;
    private boolean S;
    private float T;
    private int U;
    int V;
    int W;

    @Nullable
    WeakReference<V> X;

    @Nullable
    WeakReference<View> Y;

    @Nullable
    WeakReference<View> Z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f29600b;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    @Nullable
    private VelocityTracker f29601b1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f29602c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f29603d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f29604e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f29605f;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    @Nullable
    com.google.android.material.motion.f f29606f1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f29607g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f29608h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f29609i;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    int f29610i1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f29611j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private MaterialShapeDrawable f29612k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private ColorStateList f29613l;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private int f29614l1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f29615m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f29616n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f29617o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f29618p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    @NonNull
    private final ArrayList<g> f29619p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    boolean f29620p1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f29621q;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    @Nullable
    private Map<View, Integer> f29622q1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f29623r;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    @VisibleForTesting
    final SparseIntArray f29624r1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f29625s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f29626t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f29627u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f29628v;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private final ViewDragHelper.Callback f29629v1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f29630w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f29631x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f29632y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f29633z;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface SaveFlags {
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f29634b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f29635c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f29636d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f29637e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f29638f;

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
            parcel.writeInt(this.f29634b);
            parcel.writeInt(this.f29635c);
            parcel.writeInt(this.f29636d ? 1 : 0);
            parcel.writeInt(this.f29637e ? 1 : 0);
            parcel.writeInt(this.f29638f ? 1 : 0);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f29634b = parcel.readInt();
            this.f29635c = parcel.readInt();
            this.f29636d = parcel.readInt() == 1;
            this.f29637e = parcel.readInt() == 1;
            this.f29638f = parcel.readInt() == 1;
        }

        public SavedState(Parcelable parcelable, @NonNull BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.f29634b = bottomSheetBehavior.N;
            this.f29635c = ((BottomSheetBehavior) bottomSheetBehavior).f29607g;
            this.f29636d = ((BottomSheetBehavior) bottomSheetBehavior).f29602c;
            this.f29637e = bottomSheetBehavior.K;
            this.f29638f = ((BottomSheetBehavior) bottomSheetBehavior).L;
        }

        @Deprecated
        public SavedState(Parcelable parcelable, int i10) {
            super(parcelable);
            this.f29634b = i10;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface StableState {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface State {
    }

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f29639b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f29640c;

        a(View view, int i10) {
            this.f29639b = view;
            this.f29640c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            BottomSheetBehavior.this.X0(this.f29639b, this.f29640c, false);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomSheetBehavior.this.P0(5);
            WeakReference<V> weakReference = BottomSheetBehavior.this.X;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            BottomSheetBehavior.this.X.get().requestLayout();
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (BottomSheetBehavior.this.f29612k != null) {
                BottomSheetBehavior.this.f29612k.q0(fFloatValue);
            }
        }
    }

    class d implements p0.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f29644a;

        d(boolean z10) {
            this.f29644a = z10;
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0080  */
        /* JADX WARN: Code duplicated, block: B:33:0x00a3  */
        @Override // com.google.android.material.internal.p0.d
        public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, p0.e eVar) {
            boolean z10;
            Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
            Insets insets2 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.mandatorySystemGestures());
            BottomSheetBehavior.this.f29632y = insets.top;
            boolean zS = p0.s(view);
            int paddingBottom = view.getPaddingBottom();
            int paddingLeft = view.getPaddingLeft();
            int paddingRight = view.getPaddingRight();
            if (BottomSheetBehavior.this.f29621q) {
                BottomSheetBehavior.this.f29631x = windowInsetsCompat.getSystemWindowInsetBottom();
                paddingBottom = eVar.f30958d + BottomSheetBehavior.this.f29631x;
            }
            if (BottomSheetBehavior.this.f29623r) {
                paddingLeft = (zS ? eVar.f30957c : eVar.f30955a) + insets.left;
            }
            if (BottomSheetBehavior.this.f29625s) {
                paddingRight = (zS ? eVar.f30955a : eVar.f30957c) + insets.right;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            boolean z11 = true;
            if (BottomSheetBehavior.this.f29627u) {
                int i10 = marginLayoutParams.leftMargin;
                int i11 = insets.left;
                if (i10 != i11) {
                    marginLayoutParams.leftMargin = i11;
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            if (BottomSheetBehavior.this.f29628v) {
                int i12 = marginLayoutParams.rightMargin;
                int i13 = insets.right;
                if (i12 != i13) {
                    marginLayoutParams.rightMargin = i13;
                    z10 = true;
                }
            }
            if (BottomSheetBehavior.this.f29630w) {
                int i14 = marginLayoutParams.topMargin;
                int i15 = insets.top;
                if (i14 != i15) {
                    marginLayoutParams.topMargin = i15;
                } else {
                    z11 = z10;
                }
            } else {
                z11 = z10;
            }
            if (z11) {
                view.setLayoutParams(marginLayoutParams);
            }
            view.setPadding(paddingLeft, view.getPaddingTop(), paddingRight, paddingBottom);
            if (this.f29644a) {
                BottomSheetBehavior.this.f29617o = insets2.bottom;
            }
            if (BottomSheetBehavior.this.f29621q || this.f29644a) {
                BottomSheetBehavior.this.c1(false);
            }
            return windowInsetsCompat;
        }
    }

    class e extends ViewDragHelper.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f29646a;

        e() {
        }

        private boolean a(@NonNull View view) {
            int top = view.getTop();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return top > (bottomSheetBehavior.W + bottomSheetBehavior.U()) / 2;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i10, int i11) {
            return view.getLeft();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i10, int i11) {
            return MathUtils.clamp(i10, BottomSheetBehavior.this.U(), getViewVerticalDragRange(view));
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewVerticalDragRange(@NonNull View view) {
            return BottomSheetBehavior.this.J() ? BottomSheetBehavior.this.W : BottomSheetBehavior.this.I;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i10) {
            if (i10 == 1 && BottomSheetBehavior.this.M) {
                BottomSheetBehavior.this.P0(1);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i10, int i11, int i12, int i13) {
            BottomSheetBehavior.this.P(i11);
        }

        /* JADX WARN: Code duplicated, block: B:39:0x00ae  */
        /* JADX WARN: Code duplicated, block: B:6:0x0010  */
        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(@NonNull View view, float f10, float f11) {
            int i10 = 6;
            if (f11 >= 0.0f) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.K && bottomSheetBehavior.U0(view, f11)) {
                    if ((Math.abs(f10) < Math.abs(f11) && f11 > BottomSheetBehavior.this.f29605f) || a(view)) {
                        i10 = 5;
                    } else if (BottomSheetBehavior.this.f29602c || Math.abs(view.getTop() - BottomSheetBehavior.this.U()) < Math.abs(view.getTop() - BottomSheetBehavior.this.G)) {
                        i10 = 3;
                    }
                } else if (f11 == 0.0f || Math.abs(f10) > Math.abs(f11)) {
                    int top = view.getTop();
                    if (!BottomSheetBehavior.this.f29602c) {
                        BottomSheetBehavior bottomSheetBehavior2 = BottomSheetBehavior.this;
                        int i11 = bottomSheetBehavior2.G;
                        if (top < i11) {
                            if (top < Math.abs(top - bottomSheetBehavior2.I)) {
                                i10 = 3;
                            } else if (BottomSheetBehavior.this.V0()) {
                                i10 = 4;
                            }
                        } else if (Math.abs(top - i11) >= Math.abs(top - BottomSheetBehavior.this.I) || BottomSheetBehavior.this.V0()) {
                            i10 = 4;
                        }
                    } else if (Math.abs(top - BottomSheetBehavior.this.F) < Math.abs(top - BottomSheetBehavior.this.I)) {
                        i10 = 3;
                    } else {
                        i10 = 4;
                    }
                } else if (BottomSheetBehavior.this.f29602c) {
                    i10 = 4;
                } else {
                    int top2 = view.getTop();
                    if (Math.abs(top2 - BottomSheetBehavior.this.G) >= Math.abs(top2 - BottomSheetBehavior.this.I) || BottomSheetBehavior.this.V0()) {
                        i10 = 4;
                    }
                }
            } else if (BottomSheetBehavior.this.f29602c) {
                i10 = 3;
            } else {
                int top3 = view.getTop();
                long jCurrentTimeMillis = System.currentTimeMillis() - this.f29646a;
                if (BottomSheetBehavior.this.V0()) {
                    BottomSheetBehavior bottomSheetBehavior3 = BottomSheetBehavior.this;
                    if (!bottomSheetBehavior3.S0(jCurrentTimeMillis, (top3 * 100.0f) / bottomSheetBehavior3.W)) {
                        i10 = 4;
                    }
                } else if (top3 <= BottomSheetBehavior.this.G) {
                }
                i10 = 3;
            }
            BottomSheetBehavior bottomSheetBehavior4 = BottomSheetBehavior.this;
            bottomSheetBehavior4.X0(view, i10, bottomSheetBehavior4.W0());
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(@NonNull View view, int i10) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i11 = bottomSheetBehavior.N;
            if (i11 == 1 || bottomSheetBehavior.f29620p1) {
                return false;
            }
            if (i11 == 3 && bottomSheetBehavior.f29610i1 == i10) {
                WeakReference<View> weakReference = bottomSheetBehavior.Z;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            this.f29646a = System.currentTimeMillis();
            WeakReference<V> weakReference2 = BottomSheetBehavior.this.X;
            return weakReference2 != null && weakReference2.get() == view;
        }
    }

    class f implements AccessibilityViewCommand {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f29648a;

        f(int i10) {
            this.f29648a = i10;
        }

        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
        public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
            BottomSheetBehavior.this.g(this.f29648a);
            return true;
        }
    }

    public static abstract class g {
        void a(@NonNull View view) {
        }

        public abstract void b(@NonNull View view, float f10);

        public abstract void c(@NonNull View view, int i10);
    }

    public BottomSheetBehavior() {
        this.f29600b = 0;
        this.f29602c = true;
        this.f29603d = false;
        this.f29615m = -1;
        this.f29616n = -1;
        this.C = new h(this, null);
        this.H = 0.5f;
        this.J = -1.0f;
        this.M = true;
        this.N = 4;
        this.O = 4;
        this.T = 0.1f;
        this.f29619p0 = new ArrayList<>();
        this.f29614l1 = -1;
        this.f29624r1 = new SparseIntArray();
        this.f29629v1 = new e();
    }

    private int A(View view, @StringRes int i10, int i11) {
        return ViewCompat.addAccessibilityAction(view, view.getResources().getString(i10), L(i11));
    }

    private void C() {
        int iG = G();
        if (this.f29602c) {
            this.I = Math.max(this.W - iG, this.F);
        } else {
            this.I = this.W - iG;
        }
    }

    @RequiresApi(31)
    private float D(float f10, @Nullable RoundedCorner roundedCorner) {
        if (roundedCorner != null) {
            float radius = roundedCorner.getRadius();
            if (radius > 0.0f && f10 > 0.0f) {
                return radius / f10;
            }
        }
        return 0.0f;
    }

    private void E() {
        this.G = (int) (this.W * (1.0f - this.H));
    }

    private float F() {
        WeakReference<V> weakReference;
        WindowInsets rootWindowInsets;
        if (this.f29612k == null || (weakReference = this.X) == null || weakReference.get() == null || Build.VERSION.SDK_INT < 31) {
            return 0.0f;
        }
        V v10 = this.X.get();
        if (!i0() || (rootWindowInsets = v10.getRootWindowInsets()) == null) {
            return 0.0f;
        }
        return Math.max(D(this.f29612k.T(), rootWindowInsets.getRoundedCorner(0)), D(this.f29612k.U(), rootWindowInsets.getRoundedCorner(1)));
    }

    private int G() {
        int i10;
        if (this.f29608h) {
            return Math.min(Math.max(this.f29609i, this.W - ((this.V * 9) / 16)), this.U) + this.f29631x;
        }
        return (this.f29618p || this.f29621q || (i10 = this.f29617o) <= 0) ? this.f29607g + this.f29631x : Math.max(this.f29607g, i10 + this.f29611j);
    }

    private float I(int i10) {
        float f10;
        float fU;
        int i11 = this.I;
        if (i10 > i11 || i11 == U()) {
            int i12 = this.I;
            f10 = i12 - i10;
            fU = this.W - i12;
        } else {
            int i13 = this.I;
            f10 = i13 - i10;
            fU = i13 - U();
        }
        return f10 / fU;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean J() {
        return n0() && o0();
    }

    private void K(View view, int i10) {
        if (view == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(view, 524288);
        ViewCompat.removeAccessibilityAction(view, 262144);
        ViewCompat.removeAccessibilityAction(view, 1048576);
        int i11 = this.f29624r1.get(i10, -1);
        if (i11 != -1) {
            ViewCompat.removeAccessibilityAction(view, i11);
            this.f29624r1.delete(i10);
        }
    }

    private AccessibilityViewCommand L(int i10) {
        return new f(i10);
    }

    private void M(@NonNull Context context) {
        if (this.A == null) {
            return;
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.A);
        this.f29612k = materialShapeDrawable;
        materialShapeDrawable.a0(context);
        ColorStateList colorStateList = this.f29613l;
        if (colorStateList != null) {
            this.f29612k.p0(colorStateList);
            return;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
        this.f29612k.setTint(typedValue.data);
    }

    private void N() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(F(), 1.0f);
        this.D = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.D.addUpdateListener(new c());
    }

    @NonNull
    public static <V extends View> BottomSheetBehavior<V> R(@NonNull V v10) {
        ViewGroup.LayoutParams layoutParams = v10.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (behavior instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) behavior;
        }
        throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
    }

    private void R0(@NonNull View view) {
        boolean z10 = (Build.VERSION.SDK_INT < 29 || m0() || this.f29608h) ? false : true;
        if (this.f29621q || this.f29623r || this.f29625s || this.f29627u || this.f29628v || this.f29630w || z10) {
            p0.h(view, new d(z10));
        }
    }

    private int T(int i10, int i11, int i12, int i13) {
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

    private boolean T0() {
        return this.P != null && (this.M || this.N == 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X0(View view, int i10, boolean z10) {
        int iG0 = g0(i10);
        ViewDragHelper viewDragHelper = this.P;
        if (!(viewDragHelper != null && (!z10 ? !viewDragHelper.smoothSlideViewTo(view, view.getLeft(), iG0) : !viewDragHelper.settleCapturedViewAt(view.getLeft(), iG0)))) {
            P0(i10);
            return;
        }
        P0(2);
        a1(i10, true);
        this.C.c(i10);
    }

    private void Y0() {
        WeakReference<V> weakReference = this.X;
        if (weakReference != null) {
            Z0(weakReference.get(), 0);
        }
        WeakReference<View> weakReference2 = this.Y;
        if (weakReference2 != null) {
            Z0(weakReference2.get(), 1);
        }
    }

    private void Z0(View view, int i10) {
        if (view == null) {
            return;
        }
        K(view, i10);
        if (!this.f29602c && this.N != 6) {
            this.f29624r1.put(i10, A(view, R.string.bottomsheet_action_expand_halfway, 6));
        }
        if (this.K && o0() && this.N != 5) {
            t0(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, 5);
        }
        int i11 = this.N;
        if (i11 == 3) {
            t0(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, this.f29602c ? 4 : 6);
            return;
        }
        if (i11 == 4) {
            t0(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, this.f29602c ? 3 : 6);
        } else {
            if (i11 != 6) {
                return;
            }
            t0(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, 4);
            t0(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, 3);
        }
    }

    private void a1(int i10, boolean z10) {
        boolean zK0;
        ValueAnimator valueAnimator;
        if (i10 == 2 || this.B == (zK0 = k0()) || this.f29612k == null) {
            return;
        }
        this.B = zK0;
        if (!z10 || (valueAnimator = this.D) == null) {
            ValueAnimator valueAnimator2 = this.D;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.D.cancel();
            }
            this.f29612k.q0(this.B ? F() : 1.0f);
            return;
        }
        if (valueAnimator.isRunning()) {
            this.D.reverse();
        } else {
            this.D.setFloatValues(this.f29612k.A(), zK0 ? F() : 1.0f);
            this.D.start();
        }
    }

    private void b1(boolean z10) {
        Map<View, Integer> map;
        WeakReference<V> weakReference = this.X;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z10) {
                if (this.f29622q1 != null) {
                    return;
                } else {
                    this.f29622q1 = new HashMap(childCount);
                }
            }
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if (childAt != this.X.get()) {
                    if (z10) {
                        this.f29622q1.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        if (this.f29603d) {
                            ViewCompat.setImportantForAccessibility(childAt, 4);
                        }
                    } else if (this.f29603d && (map = this.f29622q1) != null && map.containsKey(childAt)) {
                        ViewCompat.setImportantForAccessibility(childAt, this.f29622q1.get(childAt).intValue());
                    }
                }
            }
            if (!z10) {
                this.f29622q1 = null;
            } else if (this.f29603d) {
                this.X.get().sendAccessibilityEvent(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c1(boolean z10) {
        V v10;
        if (this.X != null) {
            C();
            if (this.N != 4 || (v10 = this.X.get()) == null) {
                return;
            }
            if (z10) {
                g(4);
            } else {
                v10.requestLayout();
            }
        }
    }

    private int g0(int i10) {
        if (i10 == 3) {
            return U();
        }
        if (i10 == 4) {
            return this.I;
        }
        if (i10 == 5) {
            return this.W;
        }
        if (i10 == 6) {
            return this.G;
        }
        throw new IllegalArgumentException("Invalid state to get top offset: " + i10);
    }

    private float h0() {
        VelocityTracker velocityTracker = this.f29601b1;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.f29604e);
        return this.f29601b1.getYVelocity(this.f29610i1);
    }

    private boolean i0() {
        WeakReference<V> weakReference = this.X;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        int[] iArr = new int[2];
        this.X.get().getLocationOnScreen(iArr);
        return iArr[1] == 0;
    }

    private boolean k0() {
        return this.N == 3 && (this.f29633z || i0());
    }

    private boolean p0(V v10) {
        ViewParent parent = v10.getParent();
        return parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(v10);
    }

    private void t0(View view, AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, int i10) {
        ViewCompat.replaceAccessibilityAction(view, accessibilityActionCompat, null, L(i10));
    }

    private void u0() {
        this.f29610i1 = -1;
        this.f29614l1 = -1;
        VelocityTracker velocityTracker = this.f29601b1;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f29601b1 = null;
        }
    }

    private void v0(@NonNull SavedState savedState) {
        int i10 = this.f29600b;
        if (i10 == 0) {
            return;
        }
        if (i10 == -1 || (i10 & 1) == 1) {
            this.f29607g = savedState.f29635c;
        }
        if (i10 == -1 || (i10 & 2) == 2) {
            this.f29602c = savedState.f29636d;
        }
        if (i10 == -1 || (i10 & 4) == 4) {
            this.K = savedState.f29637e;
        }
        if (i10 == -1 || (i10 & 8) == 8) {
            this.L = savedState.f29638f;
        }
    }

    private void w0(V v10, Runnable runnable) {
        if (p0(v10)) {
            v10.post(runnable);
        } else {
            runnable.run();
        }
    }

    public void A0(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("offset must be greater than or equal to 0");
        }
        this.E = i10;
        a1(this.N, true);
    }

    public void B(@NonNull g gVar) {
        if (this.f29619p0.contains(gVar)) {
            return;
        }
        this.f29619p0.add(gVar);
    }

    public void B0(boolean z10) {
        if (this.f29602c == z10) {
            return;
        }
        this.f29602c = z10;
        if (this.X != null) {
            C();
        }
        P0((this.f29602c && this.N == 6) ? 3 : this.N);
        a1(this.N, true);
        Y0();
    }

    public void C0(boolean z10) {
        this.f29618p = z10;
    }

    public void D0(@FloatRange(from = 0.0d, fromInclusive = false, to = com.google.android.material.color.utilities.d.f30216a, toInclusive = false) float f10) {
        if (f10 <= 0.0f || f10 >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.H = f10;
        if (this.X != null) {
            E();
        }
    }

    public void E0(float f10) {
        this.T = f10;
    }

    public void F0(boolean z10) {
        if (this.K != z10) {
            this.K = z10;
            if (!z10 && this.N == 5) {
                g(4);
            }
            Y0();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void G0(boolean z10) {
        this.K = z10;
    }

    public float H() {
        WeakReference<V> weakReference = this.X;
        if (weakReference == null || weakReference.get() == null) {
            return -1.0f;
        }
        return I(this.X.get().getTop());
    }

    public void H0(@Px int i10) {
        this.f29616n = i10;
    }

    public void I0(@Px int i10) {
        this.f29615m = i10;
    }

    public void J0(int i10) {
        K0(i10, false);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0015  */
    public final void K0(int i10, boolean z10) {
        boolean z11 = true;
        if (i10 == -1) {
            if (this.f29608h) {
                z11 = false;
            } else {
                this.f29608h = true;
            }
        } else if (this.f29608h || this.f29607g != i10) {
            this.f29608h = false;
            this.f29607g = Math.max(0, i10);
        } else {
            z11 = false;
        }
        if (z11) {
            c1(z10);
        }
    }

    public void L0(int i10) {
        this.f29600b = i10;
    }

    public void M0(boolean z10) {
        if (this.f29633z != z10) {
            this.f29633z = z10;
            a1(getState(), true);
        }
    }

    public void N0(int i10) {
        this.f29605f = i10;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void O() {
        this.D = null;
    }

    public void O0(boolean z10) {
        this.L = z10;
    }

    void P(int i10) {
        V v10 = this.X.get();
        if (v10 == null || this.f29619p0.isEmpty()) {
            return;
        }
        float fI = I(i10);
        for (int i11 = 0; i11 < this.f29619p0.size(); i11++) {
            this.f29619p0.get(i11).b(v10, fI);
        }
    }

    void P0(int i10) {
        V v10;
        if (this.N == i10) {
            return;
        }
        this.N = i10;
        if (i10 == 4 || i10 == 3 || i10 == 6 || (this.K && i10 == 5)) {
            this.O = i10;
        }
        WeakReference<V> weakReference = this.X;
        if (weakReference == null || (v10 = weakReference.get()) == null) {
            return;
        }
        if (i10 == 3) {
            b1(true);
        } else if (i10 == 6 || i10 == 5 || i10 == 4) {
            b1(false);
        }
        a1(i10, true);
        for (int i11 = 0; i11 < this.f29619p0.size(); i11++) {
            this.f29619p0.get(i11).c(v10, i10);
        }
        Y0();
    }

    @Nullable
    @VisibleForTesting
    View Q(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        if (ViewCompat.isNestedScrollingEnabled(view)) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View viewQ = Q(viewGroup.getChildAt(i10));
                if (viewQ != null) {
                    return viewQ;
                }
            }
        }
        return null;
    }

    public void Q0(boolean z10) {
        this.f29603d = z10;
    }

    @Nullable
    @VisibleForTesting
    com.google.android.material.motion.f S() {
        return this.f29606f1;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean S0(long j10, @FloatRange(from = 0.0d, to = 100.0d) float f10) {
        return false;
    }

    public int U() {
        if (this.f29602c) {
            return this.F;
        }
        return Math.max(this.E, this.f29626t ? 0 : this.f29632y);
    }

    boolean U0(@NonNull View view, float f10) {
        if (this.L) {
            return true;
        }
        if (o0() && view.getTop() >= this.I) {
            return Math.abs((((float) view.getTop()) + (f10 * this.T)) - ((float) this.I)) / ((float) G()) > 0.5f;
        }
        return false;
    }

    @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
    public float V() {
        return this.H;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean V0() {
        return false;
    }

    public float W() {
        return this.T;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean W0() {
        return true;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int X() {
        return this.O;
    }

    MaterialShapeDrawable Y() {
        return this.f29612k;
    }

    @Px
    public int Z() {
        return this.f29616n;
    }

    @Px
    public int a0() {
        return this.f29615m;
    }

    @Override // com.google.android.material.motion.b
    public void b(@NonNull BackEventCompat backEventCompat) {
        com.google.android.material.motion.f fVar = this.f29606f1;
        if (fVar == null) {
            return;
        }
        fVar.j(backEventCompat);
    }

    public int b0() {
        if (this.f29608h) {
            return -1;
        }
        return this.f29607g;
    }

    @Override // com.google.android.material.motion.b
    public void c(@NonNull BackEventCompat backEventCompat) {
        com.google.android.material.motion.f fVar = this.f29606f1;
        if (fVar == null) {
            return;
        }
        fVar.l(backEventCompat);
    }

    @VisibleForTesting
    int c0() {
        return this.f29609i;
    }

    @Override // com.google.android.material.motion.b
    public void d() {
        com.google.android.material.motion.f fVar = this.f29606f1;
        if (fVar == null) {
            return;
        }
        BackEventCompat backEventCompatC = fVar.c();
        if (backEventCompatC == null || Build.VERSION.SDK_INT < 34) {
            g(this.K ? 5 : 4);
        } else if (this.K) {
            this.f29606f1.h(backEventCompatC, new b());
        } else {
            this.f29606f1.i(backEventCompatC, null);
            g(4);
        }
    }

    public int d0() {
        return this.f29600b;
    }

    public int e0() {
        return this.f29605f;
    }

    @Override // com.google.android.material.motion.b
    public void f() {
        com.google.android.material.motion.f fVar = this.f29606f1;
        if (fVar == null) {
            return;
        }
        fVar.f();
    }

    public boolean f0() {
        return this.L;
    }

    public void g(int i10) {
        if (i10 == 1 || i10 == 2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("STATE_");
            sb2.append(i10 == 1 ? "DRAGGING" : "SETTLING");
            sb2.append(" should not be set externally.");
            throw new IllegalArgumentException(sb2.toString());
        }
        if (!this.K && i10 == 5) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Cannot set state: ");
            sb3.append(i10);
            return;
        }
        int i11 = (i10 == 6 && this.f29602c && g0(i10) <= this.F) ? 3 : i10;
        WeakReference<V> weakReference = this.X;
        if (weakReference == null || weakReference.get() == null) {
            P0(i10);
        } else {
            V v10 = this.X.get();
            w0(v10, new a(v10, i11));
        }
    }

    public int getState() {
        return this.N;
    }

    public boolean j0() {
        return this.M;
    }

    public boolean l0() {
        return this.f29602c;
    }

    public boolean m0() {
        return this.f29618p;
    }

    public boolean n0() {
        return this.K;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean o0() {
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        super.onAttachedToLayoutParams(layoutParams);
        this.X = null;
        this.P = null;
        this.f29606f1 = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.X = null;
        this.P = null;
        this.f29606f1 = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull MotionEvent motionEvent) {
        int i10;
        ViewDragHelper viewDragHelper;
        if (!v10.isShown() || !this.M) {
            this.Q = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            u0();
        }
        if (this.f29601b1 == null) {
            this.f29601b1 = VelocityTracker.obtain();
        }
        this.f29601b1.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x10 = (int) motionEvent.getX();
            this.f29614l1 = (int) motionEvent.getY();
            if (this.N != 2) {
                WeakReference<View> weakReference = this.Z;
                View view = weakReference != null ? weakReference.get() : null;
                if (view != null && coordinatorLayout.isPointInChildBounds(view, x10, this.f29614l1)) {
                    this.f29610i1 = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f29620p1 = true;
                }
            }
            this.Q = this.f29610i1 == -1 && !coordinatorLayout.isPointInChildBounds(v10, x10, this.f29614l1);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f29620p1 = false;
            this.f29610i1 = -1;
            if (this.Q) {
                this.Q = false;
                return false;
            }
        }
        if (!this.Q && (viewDragHelper = this.P) != null && viewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.Z;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.Q || this.N == 1 || coordinatorLayout.isPointInChildBounds(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.P == null || (i10 = this.f29614l1) == -1 || Math.abs(((float) i10) - motionEvent.getY()) <= ((float) this.P.getTouchSlop())) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, int i10) {
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(v10)) {
            v10.setFitsSystemWindows(true);
        }
        if (this.X == null) {
            this.f29609i = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            R0(v10);
            ViewCompat.setWindowInsetsAnimationCallback(v10, new com.google.android.material.bottomsheet.f(v10));
            this.X = new WeakReference<>(v10);
            this.f29606f1 = new com.google.android.material.motion.f(v10);
            MaterialShapeDrawable materialShapeDrawable = this.f29612k;
            if (materialShapeDrawable != null) {
                ViewCompat.setBackground(v10, materialShapeDrawable);
                MaterialShapeDrawable materialShapeDrawable2 = this.f29612k;
                float elevation = this.J;
                if (elevation == -1.0f) {
                    elevation = ViewCompat.getElevation(v10);
                }
                materialShapeDrawable2.o0(elevation);
            } else {
                ColorStateList colorStateList = this.f29613l;
                if (colorStateList != null) {
                    ViewCompat.setBackgroundTintList(v10, colorStateList);
                }
            }
            Y0();
            if (ViewCompat.getImportantForAccessibility(v10) == 0) {
                ViewCompat.setImportantForAccessibility(v10, 1);
            }
        }
        if (this.P == null) {
            this.P = ViewDragHelper.create(coordinatorLayout, this.f29629v1);
        }
        int top = v10.getTop();
        coordinatorLayout.onLayoutChild(v10, i10);
        this.V = coordinatorLayout.getWidth();
        this.W = coordinatorLayout.getHeight();
        int height = v10.getHeight();
        this.U = height;
        int iMin = this.W;
        int i11 = iMin - height;
        int i12 = this.f29632y;
        if (i11 < i12) {
            if (this.f29626t) {
                int i13 = this.f29616n;
                if (i13 != -1) {
                    iMin = Math.min(iMin, i13);
                }
                this.U = iMin;
            } else {
                int iMin2 = iMin - i12;
                int i14 = this.f29616n;
                if (i14 != -1) {
                    iMin2 = Math.min(iMin2, i14);
                }
                this.U = iMin2;
            }
        }
        this.F = Math.max(0, this.W - this.U);
        E();
        C();
        int i15 = this.N;
        if (i15 == 3) {
            ViewCompat.offsetTopAndBottom(v10, U());
        } else if (i15 == 6) {
            ViewCompat.offsetTopAndBottom(v10, this.G);
        } else if (this.K && i15 == 5) {
            ViewCompat.offsetTopAndBottom(v10, this.W);
        } else if (i15 == 4) {
            ViewCompat.offsetTopAndBottom(v10, this.I);
        } else if (i15 == 1 || i15 == 2) {
            ViewCompat.offsetTopAndBottom(v10, top - v10.getTop());
        }
        a1(this.N, false);
        this.Z = new WeakReference<>(Q(v10));
        for (int i16 = 0; i16 < this.f29619p0.size(); i16++) {
            this.f29619p0.get(i16).a(v10);
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, int i10, int i11, int i12, int i13) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v10.getLayoutParams();
        v10.measure(T(i10, coordinatorLayout.getPaddingLeft() + coordinatorLayout.getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, this.f29615m, marginLayoutParams.width), T(i12, coordinatorLayout.getPaddingTop() + coordinatorLayout.getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, this.f29616n, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onNestedPreFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull View view, float f10, float f11) {
        WeakReference<View> weakReference;
        if (q0() && (weakReference = this.Z) != null && view == weakReference.get()) {
            return this.N != 3 || super.onNestedPreFling(coordinatorLayout, v10, view, f10, f11);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull View view, int i10, int i11, @NonNull int[] iArr, int i12) {
        if (i12 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.Z;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (!q0() || view == view2) {
            int top = v10.getTop();
            int i13 = top - i11;
            if (i11 > 0) {
                if (i13 < U()) {
                    int iU = top - U();
                    iArr[1] = iU;
                    ViewCompat.offsetTopAndBottom(v10, -iU);
                    P0(3);
                } else {
                    if (!this.M) {
                        return;
                    }
                    iArr[1] = i11;
                    ViewCompat.offsetTopAndBottom(v10, -i11);
                    P0(1);
                }
            } else if (i11 < 0 && !view.canScrollVertically(-1)) {
                if (i13 > this.I && !J()) {
                    int i14 = top - this.I;
                    iArr[1] = i14;
                    ViewCompat.offsetTopAndBottom(v10, -i14);
                    P0(4);
                } else {
                    if (!this.M) {
                        return;
                    }
                    iArr[1] = i11;
                    ViewCompat.offsetTopAndBottom(v10, -i11);
                    P0(1);
                }
            }
            P(v10.getTop());
            this.R = i11;
            this.S = true;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull View view, int i10, int i11, int i12, int i13, int i14, @NonNull int[] iArr) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v10, savedState.getSuperState());
        v0(savedState);
        int i10 = savedState.f29634b;
        if (i10 == 1 || i10 == 2) {
            this.N = 4;
            this.O = 4;
        } else {
            this.N = i10;
            this.O = i10;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @NonNull
    public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v10), (BottomSheetBehavior<?>) this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull View view, @NonNull View view2, int i10, int i11) {
        this.R = 0;
        this.S = false;
        return (i10 & 2) != 0;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0092  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a9  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onStopNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull View view, int i10) {
        WeakReference<View> weakReference;
        int i11 = 3;
        if (v10.getTop() == U()) {
            P0(3);
            return;
        }
        if (!q0() || ((weakReference = this.Z) != null && view == weakReference.get() && this.S)) {
            if (this.R > 0) {
                if (!this.f29602c && v10.getTop() > this.G) {
                    i11 = 6;
                }
            } else if (this.K && U0(v10, h0())) {
                i11 = 5;
            } else if (this.R == 0) {
                int top = v10.getTop();
                if (!this.f29602c) {
                    int i12 = this.G;
                    if (top < i12) {
                        if (top >= Math.abs(top - this.I)) {
                            if (V0()) {
                                i11 = 4;
                            } else {
                                i11 = 6;
                            }
                        }
                    } else if (Math.abs(top - i12) < Math.abs(top - this.I)) {
                        i11 = 6;
                    } else {
                        i11 = 4;
                    }
                } else if (Math.abs(top - this.F) >= Math.abs(top - this.I)) {
                    i11 = 4;
                }
            } else {
                if (!this.f29602c) {
                    int top2 = v10.getTop();
                    if (Math.abs(top2 - this.G) < Math.abs(top2 - this.I)) {
                        i11 = 6;
                    }
                }
                i11 = 4;
            }
            X0(v10, i11, false);
            this.S = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v10, @NonNull MotionEvent motionEvent) {
        if (!v10.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.N == 1 && actionMasked == 0) {
            return true;
        }
        if (T0()) {
            this.P.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            u0();
        }
        if (this.f29601b1 == null) {
            this.f29601b1 = VelocityTracker.obtain();
        }
        this.f29601b1.addMovement(motionEvent);
        if (T0() && actionMasked == 2 && !this.Q && Math.abs(this.f29614l1 - motionEvent.getY()) > this.P.getTouchSlop()) {
            this.P.captureChildView(v10, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.Q;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean q0() {
        return true;
    }

    public boolean r0() {
        return this.f29633z;
    }

    public void s0(@NonNull g gVar) {
        this.f29619p0.remove(gVar);
    }

    void x0(@Nullable View view) {
        WeakReference<View> weakReference;
        if (view != null || (weakReference = this.Y) == null) {
            this.Y = new WeakReference<>(view);
            Z0(view, 1);
        } else {
            K(weakReference.get(), 1);
            this.Y = null;
        }
    }

    @Deprecated
    public void y0(g gVar) {
        this.f29619p0.clear();
        if (gVar != null) {
            this.f29619p0.add(gVar);
        }
    }

    public void z0(boolean z10) {
        this.M = z10;
    }

    private class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f29650a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f29651b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Runnable f29652c;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                h.this.f29651b = false;
                ViewDragHelper viewDragHelper = BottomSheetBehavior.this.P;
                if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                    h hVar = h.this;
                    hVar.c(hVar.f29650a);
                    return;
                }
                h hVar2 = h.this;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.N == 2) {
                    bottomSheetBehavior.P0(hVar2.f29650a);
                }
            }
        }

        private h() {
            this.f29652c = new a();
        }

        void c(int i10) {
            WeakReference<V> weakReference = BottomSheetBehavior.this.X;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.f29650a = i10;
            if (this.f29651b) {
                return;
            }
            ViewCompat.postOnAnimation(BottomSheetBehavior.this.X.get(), this.f29652c);
            this.f29651b = true;
        }

        /* synthetic */ h(BottomSheetBehavior bottomSheetBehavior, a aVar) {
            this();
        }
    }

    public BottomSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        int i10;
        super(context, attributeSet);
        this.f29600b = 0;
        this.f29602c = true;
        this.f29603d = false;
        this.f29615m = -1;
        this.f29616n = -1;
        this.C = new h(this, null);
        this.H = 0.5f;
        this.J = -1.0f;
        this.M = true;
        this.N = 4;
        this.O = 4;
        this.T = 0.1f;
        this.f29619p0 = new ArrayList<>();
        this.f29614l1 = -1;
        this.f29624r1 = new SparseIntArray();
        this.f29629v1 = new e();
        this.f29611j = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BottomSheetBehavior_Layout);
        int i11 = R.styleable.BottomSheetBehavior_Layout_backgroundTint;
        if (typedArrayObtainStyledAttributes.hasValue(i11)) {
            this.f29613l = com.google.android.material.resources.d.a(context, typedArrayObtainStyledAttributes, i11);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.BottomSheetBehavior_Layout_shapeAppearance)) {
            this.A = n.e(context, attributeSet, R.attr.bottomSheetStyle, f29599t2).m();
        }
        M(context);
        N();
        this.J = typedArrayObtainStyledAttributes.getDimension(R.styleable.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        int i12 = R.styleable.BottomSheetBehavior_Layout_android_maxWidth;
        if (typedArrayObtainStyledAttributes.hasValue(i12)) {
            I0(typedArrayObtainStyledAttributes.getDimensionPixelSize(i12, -1));
        }
        int i13 = R.styleable.BottomSheetBehavior_Layout_android_maxHeight;
        if (typedArrayObtainStyledAttributes.hasValue(i13)) {
            H0(typedArrayObtainStyledAttributes.getDimensionPixelSize(i13, -1));
        }
        int i14 = R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight;
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(i14);
        if (typedValuePeekValue != null && (i10 = typedValuePeekValue.data) == -1) {
            J0(i10);
        } else {
            J0(typedArrayObtainStyledAttributes.getDimensionPixelSize(i14, -1));
        }
        F0(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        C0(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false));
        B0(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        O0(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        z0(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_draggable, true));
        L0(typedArrayObtainStyledAttributes.getInt(R.styleable.BottomSheetBehavior_Layout_behavior_saveFlags, 0));
        D0(typedArrayObtainStyledAttributes.getFloat(R.styleable.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f));
        int i15 = R.styleable.BottomSheetBehavior_Layout_behavior_expandedOffset;
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(i15);
        if (typedValuePeekValue2 != null && typedValuePeekValue2.type == 16) {
            A0(typedValuePeekValue2.data);
        } else {
            A0(typedArrayObtainStyledAttributes.getDimensionPixelOffset(i15, 0));
        }
        N0(typedArrayObtainStyledAttributes.getInt(R.styleable.BottomSheetBehavior_Layout_behavior_significantVelocityThreshold, 500));
        this.f29621q = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets, false);
        this.f29623r = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets, false);
        this.f29625s = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingRightSystemWindowInsets, false);
        this.f29626t = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingTopSystemWindowInsets, true);
        this.f29627u = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginLeftSystemWindowInsets, false);
        this.f29628v = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginRightSystemWindowInsets, false);
        this.f29630w = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_marginTopSystemWindowInsets, false);
        this.f29633z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_shouldRemoveExpandedCorners, true);
        typedArrayObtainStyledAttributes.recycle();
        this.f29604e = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
