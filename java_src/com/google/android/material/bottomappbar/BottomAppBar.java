package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.animation.l;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.g0;
import com.google.android.material.internal.p0;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.n;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.AttachedBehavior {
    private static final int C = 300;
    private static final float F = 0.2f;
    public static final int G = 0;
    public static final int H = 1;
    public static final int I = 0;
    public static final int J = 1;
    public static final int K = 0;
    public static final int L = 1;
    public static final int M = 0;
    public static final int N = 1;
    private static final int O = -1;
    private static final int P = 0;

    @NonNull
    l<FloatingActionButton> A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private Integer f29516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final MaterialShapeDrawable f29517c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private Animator f29518d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private Animator f29519e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f29520f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f29521g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f29522h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f29523i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Px
    private int f29524j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f29525k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f29526l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f29527m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f29528n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f29529o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f29530p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f29531q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ArrayList<j> f29532r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @MenuRes
    private int f29533s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f29534t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f29535u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Behavior f29536v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f29537w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f29538x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f29539y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    AnimatorListenerAdapter f29540z;
    private static final int B = R.style.Widget_MaterialComponents_BottomAppBar;
    private static final int D = R.attr.motionDurationLong2;
    private static final int E = R.attr.motionEasingEmphasizedInterpolator;

    @Retention(RetentionPolicy.SOURCE)
    public @interface FabAlignmentMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface FabAnchorMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FabAnimationMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface MenuAlignmentMode {
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f29546b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f29547c;

        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @Nullable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
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

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f29546b);
            parcel.writeInt(this.f29547c ? 1 : 0);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f29546b = parcel.readInt();
            this.f29547c = parcel.readInt() != 0;
        }
    }

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (BottomAppBar.this.f29534t) {
                return;
            }
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.d0(bottomAppBar.f29520f, BottomAppBar.this.f29535u);
        }
    }

    class b implements l<FloatingActionButton> {
        b() {
        }

        @Override // com.google.android.material.animation.l
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void a(@NonNull FloatingActionButton floatingActionButton) {
            BottomAppBar.this.f29517c.q0((floatingActionButton.getVisibility() == 0 && BottomAppBar.this.f29522h == 1) ? floatingActionButton.getScaleY() : 0.0f);
        }

        @Override // com.google.android.material.animation.l
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void b(@NonNull FloatingActionButton floatingActionButton) {
            if (BottomAppBar.this.f29522h != 1) {
                return;
            }
            float translationX = floatingActionButton.getTranslationX();
            if (BottomAppBar.this.getTopEdgeTreatment().i() != translationX) {
                BottomAppBar.this.getTopEdgeTreatment().o(translationX);
                BottomAppBar.this.f29517c.invalidateSelf();
            }
            float fMax = Math.max(0.0f, -floatingActionButton.getTranslationY());
            if (BottomAppBar.this.getTopEdgeTreatment().d() != fMax) {
                BottomAppBar.this.getTopEdgeTreatment().j(fMax);
                BottomAppBar.this.f29517c.invalidateSelf();
            }
            BottomAppBar.this.f29517c.q0(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
        }
    }

    class c implements p0.d {
        c() {
        }

        @Override // com.google.android.material.internal.p0.d
        @NonNull
        public WindowInsetsCompat a(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull p0.e eVar) {
            boolean z10;
            if (BottomAppBar.this.f29528n) {
                BottomAppBar.this.f29537w = windowInsetsCompat.getSystemWindowInsetBottom();
            }
            boolean z11 = false;
            if (BottomAppBar.this.f29529o) {
                z10 = BottomAppBar.this.f29539y != windowInsetsCompat.getSystemWindowInsetLeft();
                BottomAppBar.this.f29539y = windowInsetsCompat.getSystemWindowInsetLeft();
            } else {
                z10 = false;
            }
            if (BottomAppBar.this.f29530p) {
                boolean z12 = BottomAppBar.this.f29538x != windowInsetsCompat.getSystemWindowInsetRight();
                BottomAppBar.this.f29538x = windowInsetsCompat.getSystemWindowInsetRight();
                z11 = z12;
            }
            if (z10 || z11) {
                BottomAppBar.this.O();
                BottomAppBar.this.n0();
                BottomAppBar.this.m0();
            }
            return windowInsetsCompat;
        }
    }

    class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.T();
            BottomAppBar.this.f29518d = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.U();
        }
    }

    class e extends FloatingActionButton.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f29552a;

        class a extends FloatingActionButton.b {
            a() {
            }

            @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.b
            public void b(FloatingActionButton floatingActionButton) {
                BottomAppBar.this.T();
            }
        }

        e(int i10) {
            this.f29552a = i10;
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.b
        public void a(@NonNull FloatingActionButton floatingActionButton) {
            floatingActionButton.setTranslationX(BottomAppBar.this.Y(this.f29552a));
            floatingActionButton.A(new a());
        }
    }

    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.T();
            BottomAppBar.this.f29534t = false;
            BottomAppBar.this.f29519e = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.U();
        }
    }

    class g extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f29556b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ActionMenuView f29557c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f29558d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f29559e;

        g(ActionMenuView actionMenuView, int i10, boolean z10) {
            this.f29557c = actionMenuView;
            this.f29558d = i10;
            this.f29559e = z10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f29556b = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f29556b) {
                return;
            }
            boolean z10 = BottomAppBar.this.f29533s != 0;
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.l0(bottomAppBar.f29533s);
            BottomAppBar.this.q0(this.f29557c, this.f29558d, this.f29559e, z10);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ActionMenuView f29561b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f29562c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f29563d;

        h(ActionMenuView actionMenuView, int i10, boolean z10) {
            this.f29561b = actionMenuView;
            this.f29562c = i10;
            this.f29563d = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionMenuView actionMenuView = this.f29561b;
            actionMenuView.setTranslationX(BottomAppBar.this.X(actionMenuView, this.f29562c, this.f29563d));
        }
    }

    class i extends AnimatorListenerAdapter {
        i() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.f29540z.onAnimationStart(animator);
            FloatingActionButton floatingActionButtonV = BottomAppBar.this.V();
            if (floatingActionButtonV != null) {
                floatingActionButtonV.setTranslationX(BottomAppBar.this.getFabTranslationX());
            }
        }
    }

    interface j {
        void a(BottomAppBar bottomAppBar);

        void b(BottomAppBar bottomAppBar);
    }

    public BottomAppBar(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M(@NonNull FloatingActionButton floatingActionButton) {
        floatingActionButton.f(this.f29540z);
        floatingActionButton.g(new i());
        floatingActionButton.h(this.A);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        Animator animator = this.f29519e;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.f29518d;
        if (animator2 != null) {
            animator2.cancel();
        }
    }

    private void R(int i10, @NonNull List<Animator> list) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(V(), "translationX", Y(i10));
        objectAnimatorOfFloat.setDuration(getFabAlignmentAnimationDuration());
        list.add(objectAnimatorOfFloat);
    }

    private void S(int i10, boolean z10, @NonNull List<Animator> list) {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        float fabAlignmentAnimationDuration = getFabAlignmentAnimationDuration();
        Animator animatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        animatorOfFloat.setDuration((long) (0.8f * fabAlignmentAnimationDuration));
        if (Math.abs(actionMenuView.getTranslationX() - X(actionMenuView, i10, z10)) <= 1.0f) {
            if (actionMenuView.getAlpha() < 1.0f) {
                list.add(animatorOfFloat);
            }
        } else {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
            objectAnimatorOfFloat.setDuration((long) (fabAlignmentAnimationDuration * 0.2f));
            objectAnimatorOfFloat.addListener(new g(actionMenuView, i10, z10));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playSequentially(objectAnimatorOfFloat, animatorOfFloat);
            list.add(animatorSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T() {
        ArrayList<j> arrayList;
        int i10 = this.f29531q - 1;
        this.f29531q = i10;
        if (i10 != 0 || (arrayList = this.f29532r) == null) {
            return;
        }
        Iterator<j> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U() {
        ArrayList<j> arrayList;
        int i10 = this.f29531q;
        this.f29531q = i10 + 1;
        if (i10 != 0 || (arrayList = this.f29532r) == null) {
            return;
        }
        Iterator<j> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public FloatingActionButton V() {
        View viewW = W();
        if (viewW instanceof FloatingActionButton) {
            return (FloatingActionButton) viewW;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public View W() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).getDependents(this)) {
            if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                return view;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float Y(int i10) {
        boolean zS = p0.s(this);
        if (i10 != 1) {
            return 0.0f;
        }
        View viewW = W();
        return ((getMeasuredWidth() / 2) - ((zS ? this.f29539y : this.f29538x) + ((this.f29524j == -1 || viewW == null) ? this.f29523i : (viewW.getMeasuredWidth() / 2) + this.f29524j))) * (zS ? -1 : 1);
    }

    private boolean Z() {
        FloatingActionButton floatingActionButtonV = V();
        return floatingActionButtonV != null && floatingActionButtonV.s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0(int i10, boolean z10) {
        if (!ViewCompat.isLaidOut(this)) {
            this.f29534t = false;
            l0(this.f29533s);
            return;
        }
        Animator animator = this.f29519e;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!Z()) {
            i10 = 0;
            z10 = false;
        }
        S(i10, z10, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f29519e = animatorSet;
        animatorSet.addListener(new f());
        this.f29519e.start();
    }

    private void e0(int i10) {
        if (this.f29520f == i10 || !ViewCompat.isLaidOut(this)) {
            return;
        }
        Animator animator = this.f29518d;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (this.f29521g == 1) {
            R(i10, arrayList);
        } else {
            Q(i10, arrayList);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.setInterpolator(com.google.android.material.motion.j.g(getContext(), E, com.google.android.material.animation.b.f29367a));
        this.f29518d = animatorSet;
        animatorSet.addListener(new d());
        this.f29518d.start();
    }

    @Nullable
    private ActionMenuView getActionMenuView() {
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBottomInset() {
        return this.f29537w;
    }

    private int getFabAlignmentAnimationDuration() {
        return com.google.android.material.motion.j.f(getContext(), D, 300);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationX() {
        return Y(this.f29520f);
    }

    private float getFabTranslationY() {
        if (this.f29522h == 1) {
            return -getTopEdgeTreatment().d();
        }
        View viewW = W();
        return viewW != null ? (-((getMeasuredHeight() + getBottomInset()) - viewW.getMeasuredHeight())) / 2 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftInset() {
        return this.f29539y;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightInset() {
        return this.f29538x;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public com.google.android.material.bottomappbar.d getTopEdgeTreatment() {
        return (com.google.android.material.bottomappbar.d) this.f29517c.getShapeAppearanceModel().p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null || this.f29519e != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        if (Z()) {
            p0(actionMenuView, this.f29520f, this.f29535u);
        } else {
            p0(actionMenuView, 0, false);
        }
    }

    @Nullable
    private Drawable maybeTintNavigationIcon(@Nullable Drawable drawable) {
        if (drawable == null || this.f29516b == null) {
            return drawable;
        }
        Drawable drawableWrap = DrawableCompat.wrap(drawable.mutate());
        DrawableCompat.setTint(drawableWrap, this.f29516b.intValue());
        return drawableWrap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n0() {
        getTopEdgeTreatment().o(getFabTranslationX());
        this.f29517c.q0((this.f29535u && Z() && this.f29522h == 1) ? 1.0f : 0.0f);
        View viewW = W();
        if (viewW != null) {
            viewW.setTranslationY(getFabTranslationY());
            viewW.setTranslationX(getFabTranslationX());
        }
    }

    private void p0(@NonNull ActionMenuView actionMenuView, int i10, boolean z10) {
        q0(actionMenuView, i10, z10, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q0(@NonNull ActionMenuView actionMenuView, int i10, boolean z10, boolean z11) {
        h hVar = new h(actionMenuView, i10, z10);
        if (z11) {
            actionMenuView.post(hVar);
        } else {
            hVar.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void r0(BottomAppBar bottomAppBar, View view) {
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
        layoutParams.anchorGravity = 17;
        int i10 = bottomAppBar.f29522h;
        if (i10 == 1) {
            layoutParams.anchorGravity = 17 | 48;
        }
        if (i10 == 0) {
            layoutParams.anchorGravity |= 80;
        }
    }

    void L(@NonNull j jVar) {
        if (this.f29532r == null) {
            this.f29532r = new ArrayList<>();
        }
        this.f29532r.add(jVar);
    }

    public void N(@NonNull HideBottomViewOnScrollBehavior.b bVar) {
        getBehavior().i(bVar);
    }

    public void P() {
        getBehavior().k();
    }

    protected void Q(int i10, List<Animator> list) {
        FloatingActionButton floatingActionButtonV = V();
        if (floatingActionButtonV == null || floatingActionButtonV.r()) {
            return;
        }
        U();
        floatingActionButtonV.p(new e(i10));
    }

    protected int X(@NonNull ActionMenuView actionMenuView, int i10, boolean z10) {
        int dimensionPixelOffset = 0;
        if (this.f29525k != 1 && (i10 != 1 || !z10)) {
            return 0;
        }
        boolean zS = p0.s(this);
        int measuredWidth = zS ? getMeasuredWidth() : 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 8388611) {
                measuredWidth = zS ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
        }
        int right = zS ? actionMenuView.getRight() : actionMenuView.getLeft();
        int i12 = zS ? this.f29538x : -this.f29539y;
        if (getNavigationIcon() == null) {
            dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.m3_bottomappbar_horizontal_padding);
            if (!zS) {
                dimensionPixelOffset = -dimensionPixelOffset;
            }
        }
        return measuredWidth - ((right + i12) + dimensionPixelOffset);
    }

    public boolean a0() {
        return getBehavior().l();
    }

    public boolean b0() {
        return getBehavior().m();
    }

    public void f0() {
        g0(true);
    }

    public void g0(boolean z10) {
        getBehavior().q(this, z10);
    }

    @Nullable
    public ColorStateList getBackgroundTint() {
        return this.f29517c.S();
    }

    @Dimension
    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().d();
    }

    public int getFabAlignmentMode() {
        return this.f29520f;
    }

    @Px
    public int getFabAlignmentModeEndMargin() {
        return this.f29524j;
    }

    public int getFabAnchorMode() {
        return this.f29522h;
    }

    public int getFabAnimationMode() {
        return this.f29521g;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().f();
    }

    @Dimension
    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().g();
    }

    public boolean getHideOnScroll() {
        return this.f29527m;
    }

    public int getMenuAlignmentMode() {
        return this.f29525k;
    }

    public void h0() {
        i0(true);
    }

    public void i0(boolean z10) {
        getBehavior().s(this, z10);
    }

    void j0(@NonNull j jVar) {
        ArrayList<j> arrayList = this.f29532r;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(jVar);
    }

    public void k0(@NonNull HideBottomViewOnScrollBehavior.b bVar) {
        getBehavior().n(bVar);
    }

    public void l0(@MenuRes int i10) {
        if (i10 != 0) {
            this.f29533s = 0;
            getMenu().clear();
            inflateMenu(i10);
        }
    }

    boolean o0(@Px int i10) {
        float f10 = i10;
        if (f10 == getTopEdgeTreatment().h()) {
            return false;
        }
        getTopEdgeTreatment().n(f10);
        this.f29517c.invalidateSelf();
        return true;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.material.shape.j.f(this, this.f29517c);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10) {
            O();
            n0();
            final View viewW = W();
            if (viewW != null && ViewCompat.isLaidOut(viewW)) {
                viewW.post(new Runnable() { // from class: com.google.android.material.bottomappbar.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        viewW.requestLayout();
                    }
                });
            }
        }
        m0();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f29520f = savedState.f29546b;
        this.f29535u = savedState.f29547c;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    @NonNull
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f29546b = this.f29520f;
        savedState.f29547c = this.f29535u;
        return savedState;
    }

    public void setBackgroundTint(@Nullable ColorStateList colorStateList) {
        DrawableCompat.setTintList(this.f29517c, colorStateList);
    }

    public void setCradleVerticalOffset(@Dimension float f10) {
        if (f10 != getCradleVerticalOffset()) {
            getTopEdgeTreatment().j(f10);
            this.f29517c.invalidateSelf();
            n0();
        }
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        this.f29517c.o0(f10);
        getBehavior().o(this, this.f29517c.L() - this.f29517c.K());
    }

    public void setFabAlignmentMode(int i10) {
        setFabAlignmentModeAndReplaceMenu(i10, 0);
    }

    public void setFabAlignmentModeAndReplaceMenu(int i10, @MenuRes int i11) {
        this.f29533s = i11;
        this.f29534t = true;
        d0(i10, this.f29535u);
        e0(i10);
        this.f29520f = i10;
    }

    public void setFabAlignmentModeEndMargin(@Px int i10) {
        if (this.f29524j != i10) {
            this.f29524j = i10;
            n0();
        }
    }

    public void setFabAnchorMode(int i10) {
        this.f29522h = i10;
        n0();
        View viewW = W();
        if (viewW != null) {
            r0(this, viewW);
            viewW.requestLayout();
            this.f29517c.invalidateSelf();
        }
    }

    public void setFabAnimationMode(int i10) {
        this.f29521g = i10;
    }

    void setFabCornerSize(@Dimension float f10) {
        if (f10 != getTopEdgeTreatment().e()) {
            getTopEdgeTreatment().k(f10);
            this.f29517c.invalidateSelf();
        }
    }

    public void setFabCradleMargin(@Dimension float f10) {
        if (f10 != getFabCradleMargin()) {
            getTopEdgeTreatment().l(f10);
            this.f29517c.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(@Dimension float f10) {
        if (f10 != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().m(f10);
            this.f29517c.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z10) {
        this.f29527m = z10;
    }

    public void setMenuAlignmentMode(int i10) {
        if (this.f29525k != i10) {
            this.f29525k = i10;
            ActionMenuView actionMenuView = getActionMenuView();
            if (actionMenuView != null) {
                p0(actionMenuView, this.f29520f, Z());
            }
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(maybeTintNavigationIcon(drawable));
    }

    public void setNavigationIconTint(@ColorInt int i10) {
        this.f29516b = Integer.valueOf(i10);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomAppBarStyle);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public Behavior getBehavior() {
        if (this.f29536v == null) {
            this.f29536v = new Behavior();
        }
        return this.f29536v;
    }

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        @NonNull
        private final Rect f29541r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private WeakReference<BottomAppBar> f29542s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private int f29543t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private final View.OnLayoutChangeListener f29544u;

        class a implements View.OnLayoutChangeListener {
            a() {
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.f29542s.get();
                if (bottomAppBar == null || !((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton))) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                int height = view.getHeight();
                if (view instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                    floatingActionButton.l(Behavior.this.f29541r);
                    int iHeight = Behavior.this.f29541r.height();
                    bottomAppBar.o0(iHeight);
                    bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().r().a(new RectF(Behavior.this.f29541r)));
                    height = iHeight;
                }
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
                if (Behavior.this.f29543t == 0) {
                    if (bottomAppBar.f29522h == 1) {
                        ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fab_bottom_margin) - ((view.getMeasuredHeight() - height) / 2));
                    }
                    ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = bottomAppBar.getLeftInset();
                    ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = bottomAppBar.getRightInset();
                    if (p0.s(view)) {
                        ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin += bottomAppBar.f29523i;
                    } else {
                        ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin += bottomAppBar.f29523i;
                    }
                }
                bottomAppBar.n0();
            }
        }

        public Behavior() {
            this.f29544u = new a();
            this.f29541r = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, int i10) {
            this.f29542s = new WeakReference<>(bottomAppBar);
            View viewW = bottomAppBar.W();
            if (viewW != null && !ViewCompat.isLaidOut(viewW)) {
                BottomAppBar.r0(bottomAppBar, viewW);
                this.f29543t = ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) viewW.getLayoutParams())).bottomMargin;
                if (viewW instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) viewW;
                    if (bottomAppBar.f29522h == 0 && bottomAppBar.f29526l) {
                        ViewCompat.setElevation(floatingActionButton, 0.0f);
                        floatingActionButton.setCompatElevation(0.0f);
                    }
                    if (floatingActionButton.getShowMotionSpec() == null) {
                        floatingActionButton.setShowMotionSpecResource(R.animator.mtrl_fab_show_motion_spec);
                    }
                    if (floatingActionButton.getHideMotionSpec() == null) {
                        floatingActionButton.setHideMotionSpecResource(R.animator.mtrl_fab_hide_motion_spec);
                    }
                    bottomAppBar.M(floatingActionButton);
                }
                viewW.addOnLayoutChangeListener(this.f29544u);
                bottomAppBar.n0();
            }
            coordinatorLayout.onLayoutChild(bottomAppBar, i10);
            return super.onLayoutChild(coordinatorLayout, bottomAppBar, i10);
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, @NonNull View view, @NonNull View view2, int i10, int i11) {
            return bottomAppBar.getHideOnScroll() && super.onStartNestedScroll(coordinatorLayout, bottomAppBar, view, view2, i10, i11);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f29544u = new a();
            this.f29541r = new Rect();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = B;
        super(a5.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.f29517c = materialShapeDrawable;
        this.f29531q = 0;
        this.f29533s = 0;
        this.f29534t = false;
        this.f29535u = true;
        this.f29540z = new a();
        this.A = new b();
        Context context2 = getContext();
        TypedArray typedArrayK = g0.k(context2, attributeSet, R.styleable.BottomAppBar, i10, i11, new int[0]);
        ColorStateList colorStateListA = com.google.android.material.resources.d.a(context2, typedArrayK, R.styleable.BottomAppBar_backgroundTint);
        int i12 = R.styleable.BottomAppBar_navigationIconTint;
        if (typedArrayK.hasValue(i12)) {
            setNavigationIconTint(typedArrayK.getColor(i12, -1));
        }
        int dimensionPixelSize = typedArrayK.getDimensionPixelSize(R.styleable.BottomAppBar_elevation, 0);
        float dimensionPixelOffset = typedArrayK.getDimensionPixelOffset(R.styleable.BottomAppBar_fabCradleMargin, 0);
        float dimensionPixelOffset2 = typedArrayK.getDimensionPixelOffset(R.styleable.BottomAppBar_fabCradleRoundedCornerRadius, 0);
        float dimensionPixelOffset3 = typedArrayK.getDimensionPixelOffset(R.styleable.BottomAppBar_fabCradleVerticalOffset, 0);
        this.f29520f = typedArrayK.getInt(R.styleable.BottomAppBar_fabAlignmentMode, 0);
        this.f29521g = typedArrayK.getInt(R.styleable.BottomAppBar_fabAnimationMode, 0);
        this.f29522h = typedArrayK.getInt(R.styleable.BottomAppBar_fabAnchorMode, 1);
        this.f29526l = typedArrayK.getBoolean(R.styleable.BottomAppBar_removeEmbeddedFabElevation, true);
        this.f29525k = typedArrayK.getInt(R.styleable.BottomAppBar_menuAlignmentMode, 0);
        this.f29527m = typedArrayK.getBoolean(R.styleable.BottomAppBar_hideOnScroll, false);
        this.f29528n = typedArrayK.getBoolean(R.styleable.BottomAppBar_paddingBottomSystemWindowInsets, false);
        this.f29529o = typedArrayK.getBoolean(R.styleable.BottomAppBar_paddingLeftSystemWindowInsets, false);
        this.f29530p = typedArrayK.getBoolean(R.styleable.BottomAppBar_paddingRightSystemWindowInsets, false);
        this.f29524j = typedArrayK.getDimensionPixelOffset(R.styleable.BottomAppBar_fabAlignmentModeEndMargin, -1);
        boolean z10 = typedArrayK.getBoolean(R.styleable.BottomAppBar_addElevationShadow, true);
        typedArrayK.recycle();
        this.f29523i = getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fabOffsetEndMode);
        materialShapeDrawable.setShapeAppearanceModel(n.a().G(new com.google.android.material.bottomappbar.d(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3)).m());
        if (z10) {
            materialShapeDrawable.y0(2);
        } else {
            materialShapeDrawable.y0(1);
            if (Build.VERSION.SDK_INT >= 28) {
                setOutlineAmbientShadowColor(0);
                setOutlineSpotShadowColor(0);
            }
        }
        materialShapeDrawable.s0(Paint.Style.FILL);
        materialShapeDrawable.a0(context2);
        setElevation(dimensionPixelSize);
        DrawableCompat.setTintList(materialShapeDrawable, colorStateListA);
        ViewCompat.setBackground(this, materialShapeDrawable);
        p0.g(this, attributeSet, i10, i11, new c());
    }
}
