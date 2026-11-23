package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AnimatorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.g0;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.AttachedBehavior {
    private static final int R = 0;
    private static final int S = 1;
    private static final int T = 2;
    private static final int U = 0;
    private static final int V = 1;
    private static final int W = 2;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private static final int f30610b1 = 0;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private static final int f30611f1 = 1;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private static final int f30612i1 = 2;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private static final int f30614p0 = 3;
    private final com.google.android.material.floatingactionbutton.a A;

    @NonNull
    private final com.google.android.material.floatingactionbutton.f B;

    @NonNull
    private final com.google.android.material.floatingactionbutton.f C;
    private final com.google.android.material.floatingactionbutton.f D;
    private final com.google.android.material.floatingactionbutton.f E;
    private final int F;
    private int G;
    private int H;

    @NonNull
    private final CoordinatorLayout.Behavior<ExtendedFloatingActionButton> I;
    private boolean J;
    private boolean K;
    private boolean L;

    @NonNull
    protected ColorStateList M;
    private int N;
    private int O;
    private final int P;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f30618z;
    private static final int Q = R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    static final Property<View, Float> f30613l1 = new f(Float.class, "width");

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    static final Property<View, Float> f30615p1 = new g(Float.class, "height");

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    static final Property<View, Float> f30616q1 = new h(Float.class, "paddingStart");

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    static final Property<View, Float> f30617r1 = new i(Float.class, "paddingEnd");

    class a implements n {
        a() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public ViewGroup.LayoutParams a() {
            return new ViewGroup.LayoutParams(getWidth(), getHeight());
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.getCollapsedPadding();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getWidth() {
            return ExtendedFloatingActionButton.this.getCollapsedSize();
        }
    }

    class b implements n {
        b() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public ViewGroup.LayoutParams a() {
            return new ViewGroup.LayoutParams(-2, -2);
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getMeasuredHeight();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.H;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.G;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getWidth() {
            return (ExtendedFloatingActionButton.this.getMeasuredWidth() - (ExtendedFloatingActionButton.this.getCollapsedPadding() * 2)) + ExtendedFloatingActionButton.this.G + ExtendedFloatingActionButton.this.H;
        }
    }

    class c implements n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f30628a;

        c(n nVar) {
            this.f30628a = nVar;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public ViewGroup.LayoutParams a() {
            return new ViewGroup.LayoutParams(-1, ExtendedFloatingActionButton.this.O == 0 ? -2 : ExtendedFloatingActionButton.this.O);
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getHeight() {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            if (ExtendedFloatingActionButton.this.O != -1) {
                return (ExtendedFloatingActionButton.this.O == 0 || ExtendedFloatingActionButton.this.O == -2) ? this.f30628a.getHeight() : ExtendedFloatingActionButton.this.O;
            }
            if (!(ExtendedFloatingActionButton.this.getParent() instanceof View)) {
                return this.f30628a.getHeight();
            }
            View view = (View) ExtendedFloatingActionButton.this.getParent();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams != null && layoutParams.height == -2) {
                return this.f30628a.getHeight();
            }
            int i10 = 0;
            int paddingTop = view.getPaddingTop() + view.getPaddingBottom() + 0;
            if ((ExtendedFloatingActionButton.this.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) && (marginLayoutParams = (ViewGroup.MarginLayoutParams) ExtendedFloatingActionButton.this.getLayoutParams()) != null) {
                i10 = 0 + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            }
            return (view.getHeight() - i10) - paddingTop;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.H;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.G;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getWidth() {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            if (!(ExtendedFloatingActionButton.this.getParent() instanceof View)) {
                return this.f30628a.getWidth();
            }
            View view = (View) ExtendedFloatingActionButton.this.getParent();
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams != null && layoutParams.width == -2) {
                return this.f30628a.getWidth();
            }
            int i10 = 0;
            int paddingLeft = view.getPaddingLeft() + view.getPaddingRight() + 0;
            if ((ExtendedFloatingActionButton.this.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) && (marginLayoutParams = (ViewGroup.MarginLayoutParams) ExtendedFloatingActionButton.this.getLayoutParams()) != null) {
                i10 = 0 + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
            }
            return (view.getWidth() - i10) - paddingLeft;
        }
    }

    class d implements n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f30630a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n f30631b;

        d(n nVar, n nVar2) {
            this.f30630a = nVar;
            this.f30631b = nVar2;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public ViewGroup.LayoutParams a() {
            return new ViewGroup.LayoutParams(ExtendedFloatingActionButton.this.N == 0 ? -2 : ExtendedFloatingActionButton.this.N, ExtendedFloatingActionButton.this.O != 0 ? ExtendedFloatingActionButton.this.O : -2);
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getHeight() {
            if (ExtendedFloatingActionButton.this.O == -1) {
                return this.f30630a.getHeight();
            }
            return (ExtendedFloatingActionButton.this.O == 0 || ExtendedFloatingActionButton.this.O == -2) ? this.f30631b.getHeight() : ExtendedFloatingActionButton.this.O;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getPaddingEnd() {
            return ExtendedFloatingActionButton.this.H;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getPaddingStart() {
            return ExtendedFloatingActionButton.this.G;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.n
        public int getWidth() {
            if (ExtendedFloatingActionButton.this.N == -1) {
                return this.f30630a.getWidth();
            }
            return (ExtendedFloatingActionButton.this.N == 0 || ExtendedFloatingActionButton.this.N == -2) ? this.f30631b.getWidth() : ExtendedFloatingActionButton.this.N;
        }
    }

    class e extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f30633b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.google.android.material.floatingactionbutton.f f30634c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ l f30635d;

        e(com.google.android.material.floatingactionbutton.f fVar, l lVar) {
            this.f30634c = fVar;
            this.f30635d = lVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f30633b = true;
            this.f30634c.j();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f30634c.a();
            if (this.f30633b) {
                return;
            }
            this.f30634c.h(this.f30635d);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f30634c.onAnimationStart(animator);
            this.f30633b = false;
        }
    }

    class f extends Property<View, Float> {
        f(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(@NonNull View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(@NonNull View view, @NonNull Float f10) {
            view.getLayoutParams().width = f10.intValue();
            view.requestLayout();
        }
    }

    class g extends Property<View, Float> {
        g(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(@NonNull View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(@NonNull View view, @NonNull Float f10) {
            view.getLayoutParams().height = f10.intValue();
            view.requestLayout();
        }
    }

    class h extends Property<View, Float> {
        h(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(@NonNull View view) {
            return Float.valueOf(ViewCompat.getPaddingStart(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(@NonNull View view, @NonNull Float f10) {
            ViewCompat.setPaddingRelative(view, f10.intValue(), view.getPaddingTop(), ViewCompat.getPaddingEnd(view), view.getPaddingBottom());
        }
    }

    class i extends Property<View, Float> {
        i(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(@NonNull View view) {
            return Float.valueOf(ViewCompat.getPaddingEnd(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(@NonNull View view, @NonNull Float f10) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), view.getPaddingTop(), f10.intValue(), view.getPaddingBottom());
        }
    }

    class j extends com.google.android.material.floatingactionbutton.b {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final n f30637g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f30638h;

        j(com.google.android.material.floatingactionbutton.a aVar, n nVar, boolean z10) {
            super(ExtendedFloatingActionButton.this, aVar);
            this.f30637g = nVar;
            this.f30638h = z10;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void a() {
            super.a();
            ExtendedFloatingActionButton.this.K = false;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.width = this.f30637g.a().width;
            layoutParams.height = this.f30637g.a().height;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public boolean d() {
            return this.f30638h == ExtendedFloatingActionButton.this.J || ExtendedFloatingActionButton.this.getIcon() == null || TextUtils.isEmpty(ExtendedFloatingActionButton.this.getText());
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public int f() {
            return this.f30638h ? R.animator.mtrl_extended_fab_change_size_expand_motion_spec : R.animator.mtrl_extended_fab_change_size_collapse_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        @NonNull
        public AnimatorSet g() {
            com.google.android.material.animation.i iVarB = b();
            if (iVarB.j("width")) {
                PropertyValuesHolder[] propertyValuesHolderArrG = iVarB.g("width");
                propertyValuesHolderArrG[0].setFloatValues(ExtendedFloatingActionButton.this.getWidth(), this.f30637g.getWidth());
                iVarB.l("width", propertyValuesHolderArrG);
            }
            if (iVarB.j("height")) {
                PropertyValuesHolder[] propertyValuesHolderArrG2 = iVarB.g("height");
                propertyValuesHolderArrG2[0].setFloatValues(ExtendedFloatingActionButton.this.getHeight(), this.f30637g.getHeight());
                iVarB.l("height", propertyValuesHolderArrG2);
            }
            if (iVarB.j("paddingStart")) {
                PropertyValuesHolder[] propertyValuesHolderArrG3 = iVarB.g("paddingStart");
                propertyValuesHolderArrG3[0].setFloatValues(ViewCompat.getPaddingStart(ExtendedFloatingActionButton.this), this.f30637g.getPaddingStart());
                iVarB.l("paddingStart", propertyValuesHolderArrG3);
            }
            if (iVarB.j("paddingEnd")) {
                PropertyValuesHolder[] propertyValuesHolderArrG4 = iVarB.g("paddingEnd");
                propertyValuesHolderArrG4[0].setFloatValues(ViewCompat.getPaddingEnd(ExtendedFloatingActionButton.this), this.f30637g.getPaddingEnd());
                iVarB.l("paddingEnd", propertyValuesHolderArrG4);
            }
            if (iVarB.j("labelOpacity")) {
                PropertyValuesHolder[] propertyValuesHolderArrG5 = iVarB.g("labelOpacity");
                boolean z10 = this.f30638h;
                propertyValuesHolderArrG5[0].setFloatValues(z10 ? 0.0f : 1.0f, z10 ? 1.0f : 0.0f);
                iVarB.l("labelOpacity", propertyValuesHolderArrG5);
            }
            return super.o(iVarB);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void h(@Nullable l lVar) {
            if (lVar == null) {
                return;
            }
            if (this.f30638h) {
                lVar.a(ExtendedFloatingActionButton.this);
            } else {
                lVar.d(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void i() {
            ExtendedFloatingActionButton.this.J = this.f30638h;
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            if (!this.f30638h) {
                ExtendedFloatingActionButton.this.N = layoutParams.width;
                ExtendedFloatingActionButton.this.O = layoutParams.height;
            }
            layoutParams.width = this.f30637g.a().width;
            layoutParams.height = this.f30637g.a().height;
            ViewCompat.setPaddingRelative(ExtendedFloatingActionButton.this, this.f30637g.getPaddingStart(), ExtendedFloatingActionButton.this.getPaddingTop(), this.f30637g.getPaddingEnd(), ExtendedFloatingActionButton.this.getPaddingBottom());
            ExtendedFloatingActionButton.this.requestLayout();
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.J = this.f30638h;
            ExtendedFloatingActionButton.this.K = true;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(true);
        }
    }

    class k extends com.google.android.material.floatingactionbutton.b {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f30640g;

        public k(com.google.android.material.floatingactionbutton.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void a() {
            super.a();
            ExtendedFloatingActionButton.this.f30618z = 0;
            if (this.f30640g) {
                return;
            }
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public boolean d() {
            return ExtendedFloatingActionButton.this.K();
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public int f() {
            return R.animator.mtrl_extended_fab_hide_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void h(@Nullable l lVar) {
            if (lVar != null) {
                lVar.b(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void i() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void j() {
            super.j();
            this.f30640g = true;
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            this.f30640g = false;
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f30618z = 1;
        }
    }

    public static abstract class l {
        public void a(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void b(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void c(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        public void d(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }
    }

    class m extends com.google.android.material.floatingactionbutton.b {
        public m(com.google.android.material.floatingactionbutton.a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void a() {
            super.a();
            ExtendedFloatingActionButton.this.f30618z = 0;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public boolean d() {
            return ExtendedFloatingActionButton.this.L();
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public int f() {
            return R.animator.mtrl_extended_fab_show_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void h(@Nullable l lVar) {
            if (lVar != null) {
                lVar.c(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.f
        public void i() {
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.setAlpha(1.0f);
            ExtendedFloatingActionButton.this.setScaleY(1.0f);
            ExtendedFloatingActionButton.this.setScaleX(1.0f);
        }

        @Override // com.google.android.material.floatingactionbutton.b, com.google.android.material.floatingactionbutton.f
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f30618z = 2;
        }
    }

    interface n {
        ViewGroup.LayoutParams a();

        int getHeight();

        int getPaddingEnd();

        int getPaddingStart();

        int getWidth();
    }

    public ExtendedFloatingActionButton(@NonNull Context context) {
        this(context, null);
    }

    private n G(int i10) {
        b bVar = new b();
        c cVar = new c(bVar);
        d dVar = new d(cVar, bVar);
        if (i10 != 1) {
            return i10 != 2 ? dVar : cVar;
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean K() {
        if (getVisibility() == 0) {
            return this.f30618z == 1;
        }
        return this.f30618z != 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean L() {
        if (getVisibility() != 0) {
            return this.f30618z == 2;
        }
        return this.f30618z != 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M(int i10, @Nullable l lVar) {
        com.google.android.material.floatingactionbutton.f fVar;
        if (i10 == 0) {
            fVar = this.D;
        } else if (i10 == 1) {
            fVar = this.E;
        } else if (i10 == 2) {
            fVar = this.B;
        } else {
            if (i10 != 3) {
                throw new IllegalStateException("Unknown strategy type: " + i10);
            }
            fVar = this.C;
        }
        if (fVar.d()) {
            return;
        }
        if (!S()) {
            fVar.i();
            fVar.h(lVar);
            return;
        }
        if (i10 == 2) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                this.N = layoutParams.width;
                this.O = layoutParams.height;
            } else {
                this.N = getWidth();
                this.O = getHeight();
            }
        }
        measure(0, 0);
        AnimatorSet animatorSetG = fVar.g();
        animatorSetG.addListener(new e(fVar, lVar));
        Iterator<Animator.AnimatorListener> it2 = fVar.m().iterator();
        while (it2.hasNext()) {
            animatorSetG.addListener(it2.next());
        }
        animatorSetG.start();
    }

    private void R() {
        this.M = getTextColors();
    }

    private boolean S() {
        return (ViewCompat.isLaidOut(this) || (!L() && this.L)) && !isInEditMode();
    }

    public void A(@NonNull Animator.AnimatorListener animatorListener) {
        this.C.k(animatorListener);
    }

    public void B(@NonNull Animator.AnimatorListener animatorListener) {
        this.E.k(animatorListener);
    }

    public void C(@NonNull Animator.AnimatorListener animatorListener) {
        this.D.k(animatorListener);
    }

    public void D(@NonNull Animator.AnimatorListener animatorListener) {
        this.B.k(animatorListener);
    }

    public void E() {
        M(3, null);
    }

    public void F(@NonNull l lVar) {
        M(3, lVar);
    }

    public void H() {
        M(1, null);
    }

    public void I(@NonNull l lVar) {
        M(1, lVar);
    }

    public final boolean J() {
        return this.J;
    }

    public void N(@NonNull Animator.AnimatorListener animatorListener) {
        this.C.e(animatorListener);
    }

    public void O(@NonNull Animator.AnimatorListener animatorListener) {
        this.E.e(animatorListener);
    }

    public void P(@NonNull Animator.AnimatorListener animatorListener) {
        this.D.e(animatorListener);
    }

    public void Q(@NonNull Animator.AnimatorListener animatorListener) {
        this.B.e(animatorListener);
    }

    public void T() {
        M(0, null);
    }

    public void U(@NonNull l lVar) {
        M(0, lVar);
    }

    public void V() {
        M(2, null);
    }

    public void W(@NonNull l lVar) {
        M(2, lVar);
    }

    protected void X(@NonNull ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<ExtendedFloatingActionButton> getBehavior() {
        return this.I;
    }

    int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    @VisibleForTesting
    int getCollapsedSize() {
        int i10 = this.F;
        return i10 < 0 ? (Math.min(ViewCompat.getPaddingStart(this), ViewCompat.getPaddingEnd(this)) * 2) + getIconSize() : i10;
    }

    @Nullable
    public com.google.android.material.animation.i getExtendMotionSpec() {
        return this.C.c();
    }

    @Nullable
    public com.google.android.material.animation.i getHideMotionSpec() {
        return this.E.c();
    }

    @Nullable
    public com.google.android.material.animation.i getShowMotionSpec() {
        return this.D.c();
    }

    @Nullable
    public com.google.android.material.animation.i getShrinkMotionSpec() {
        return this.B.c();
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.J && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.J = false;
            this.B.i();
        }
    }

    public void setAnimateShowBeforeLayout(boolean z10) {
        this.L = z10;
    }

    public void setExtendMotionSpec(@Nullable com.google.android.material.animation.i iVar) {
        this.C.l(iVar);
    }

    public void setExtendMotionSpecResource(@AnimatorRes int i10) {
        setExtendMotionSpec(com.google.android.material.animation.i.d(getContext(), i10));
    }

    public void setExtended(boolean z10) {
        if (this.J == z10) {
            return;
        }
        com.google.android.material.floatingactionbutton.f fVar = z10 ? this.C : this.B;
        if (fVar.d()) {
            return;
        }
        fVar.i();
    }

    public void setHideMotionSpec(@Nullable com.google.android.material.animation.i iVar) {
        this.E.l(iVar);
    }

    public void setHideMotionSpecResource(@AnimatorRes int i10) {
        setHideMotionSpec(com.google.android.material.animation.i.d(getContext(), i10));
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i10, int i11, int i12, int i13) {
        super.setPadding(i10, i11, i12, i13);
        if (!this.J || this.K) {
            return;
        }
        this.G = ViewCompat.getPaddingStart(this);
        this.H = ViewCompat.getPaddingEnd(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void setPaddingRelative(int i10, int i11, int i12, int i13) {
        super.setPaddingRelative(i10, i11, i12, i13);
        if (!this.J || this.K) {
            return;
        }
        this.G = i10;
        this.H = i12;
    }

    public void setShowMotionSpec(@Nullable com.google.android.material.animation.i iVar) {
        this.D.l(iVar);
    }

    public void setShowMotionSpecResource(@AnimatorRes int i10) {
        setShowMotionSpec(com.google.android.material.animation.i.d(getContext(), i10));
    }

    public void setShrinkMotionSpec(@Nullable com.google.android.material.animation.i iVar) {
        this.B.l(iVar);
    }

    public void setShrinkMotionSpecResource(@AnimatorRes int i10) {
        setShrinkMotionSpec(com.google.android.material.animation.i.d(getContext(), i10));
    }

    @Override // android.widget.TextView
    public void setTextColor(int i10) {
        super.setTextColor(i10);
        R();
    }

    public ExtendedFloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.extendedFloatingActionButtonStyle);
    }

    protected static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final boolean f30619g = false;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final boolean f30620h = true;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Rect f30621b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        private l f30622c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        private l f30623d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f30624e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f30625f;

        public ExtendedFloatingActionButtonBehavior() {
            this.f30624e = false;
            this.f30625f = true;
        }

        private static boolean l(@NonNull View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                return ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private boolean s(@NonNull View view, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.f30624e || this.f30625f) && ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams()).getAnchorId() == view.getId();
        }

        private boolean u(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!s(appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.f30621b == null) {
                this.f30621b = new Rect();
            }
            Rect rect = this.f30621b;
            com.google.android.material.internal.d.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                t(extendedFloatingActionButton);
                return true;
            }
            h(extendedFloatingActionButton);
            return true;
        }

        private boolean v(@NonNull View view, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!s(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                t(extendedFloatingActionButton);
                return true;
            }
            h(extendedFloatingActionButton);
            return true;
        }

        protected void h(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z10 = this.f30625f;
            extendedFloatingActionButton.M(z10 ? 3 : 0, z10 ? this.f30623d : this.f30622c);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, @NonNull Rect rect) {
            return super.getInsetDodgeRect(coordinatorLayout, extendedFloatingActionButton, rect);
        }

        public boolean j() {
            return this.f30624e;
        }

        public boolean k() {
            return this.f30625f;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                u(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton);
                return false;
            }
            if (!l(view)) {
                return false;
            }
            v(view, extendedFloatingActionButton);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, int i10) {
            List<View> dependencies = coordinatorLayout.getDependencies(extendedFloatingActionButton);
            int size = dependencies.size();
            for (int i11 = 0; i11 < size; i11++) {
                View view = dependencies.get(i11);
                if (!(view instanceof AppBarLayout)) {
                    if (l(view) && v(view, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (u(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(extendedFloatingActionButton, i10);
            return true;
        }

        public void o(boolean z10) {
            this.f30624e = z10;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.dodgeInsetEdges == 0) {
                layoutParams.dodgeInsetEdges = 80;
            }
        }

        public void p(boolean z10) {
            this.f30625f = z10;
        }

        @VisibleForTesting
        void q(@Nullable l lVar) {
            this.f30622c = lVar;
        }

        @VisibleForTesting
        void r(@Nullable l lVar) {
            this.f30623d = lVar;
        }

        protected void t(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z10 = this.f30625f;
            extendedFloatingActionButton.M(z10 ? 2 : 1, z10 ? this.f30623d : this.f30622c);
        }

        public ExtendedFloatingActionButtonBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ExtendedFloatingActionButton_Behavior_Layout);
            this.f30624e = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.f30625f = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ExtendedFloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = Q;
        super(a5.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f30618z = 0;
        com.google.android.material.floatingactionbutton.a aVar = new com.google.android.material.floatingactionbutton.a();
        this.A = aVar;
        m mVar = new m(aVar);
        this.D = mVar;
        k kVar = new k(aVar);
        this.E = kVar;
        this.J = true;
        this.K = false;
        this.L = false;
        Context context2 = getContext();
        this.I = new ExtendedFloatingActionButtonBehavior(context2, attributeSet);
        TypedArray typedArrayK = g0.k(context2, attributeSet, R.styleable.ExtendedFloatingActionButton, i10, i11, new int[0]);
        com.google.android.material.animation.i iVarC = com.google.android.material.animation.i.c(context2, typedArrayK, R.styleable.ExtendedFloatingActionButton_showMotionSpec);
        com.google.android.material.animation.i iVarC2 = com.google.android.material.animation.i.c(context2, typedArrayK, R.styleable.ExtendedFloatingActionButton_hideMotionSpec);
        com.google.android.material.animation.i iVarC3 = com.google.android.material.animation.i.c(context2, typedArrayK, R.styleable.ExtendedFloatingActionButton_extendMotionSpec);
        com.google.android.material.animation.i iVarC4 = com.google.android.material.animation.i.c(context2, typedArrayK, R.styleable.ExtendedFloatingActionButton_shrinkMotionSpec);
        this.F = typedArrayK.getDimensionPixelSize(R.styleable.ExtendedFloatingActionButton_collapsedSize, -1);
        int i12 = typedArrayK.getInt(R.styleable.ExtendedFloatingActionButton_extendStrategy, 1);
        this.P = i12;
        this.G = ViewCompat.getPaddingStart(this);
        this.H = ViewCompat.getPaddingEnd(this);
        com.google.android.material.floatingactionbutton.a aVar2 = new com.google.android.material.floatingactionbutton.a();
        j jVar = new j(aVar2, G(i12), true);
        this.C = jVar;
        j jVar2 = new j(aVar2, new a(), false);
        this.B = jVar2;
        mVar.l(iVarC);
        kVar.l(iVarC2);
        jVar.l(iVarC3);
        jVar2.l(iVarC4);
        typedArrayK.recycle();
        setShapeAppearanceModel(com.google.android.material.shape.n.g(context2, attributeSet, i10, i11, com.google.android.material.shape.n.f31626m).m());
        R();
    }

    @Override // android.widget.TextView
    public void setTextColor(@NonNull ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        R();
    }
}
