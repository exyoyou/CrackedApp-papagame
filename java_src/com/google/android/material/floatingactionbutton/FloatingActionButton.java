package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.AnimatorRes;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatImageHelper;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TintableImageSourceView;
import com.google.android.material.R;
import com.google.android.material.animation.i;
import com.google.android.material.animation.l;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.internal.g0;
import com.google.android.material.internal.p0;
import com.google.android.material.shape.n;
import com.google.android.material.shape.r;
import com.google.android.material.stateful.ExtendableSavedState;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class FloatingActionButton extends VisibilityAwareImageButton implements TintableBackgroundView, TintableImageSourceView, y4.a, r, CoordinatorLayout.AttachedBehavior {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f30643s = "FloatingActionButton";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f30644t = "expandableWidgetHelper";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f30645u = R.style.Widget_Design_FloatingActionButton;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f30646v = 1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f30647w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f30648x = -1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f30649y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f30650z = 470;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private ColorStateList f30651c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private PorterDuff.Mode f30652d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private ColorStateList f30653e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private PorterDuff.Mode f30654f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private ColorStateList f30655g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f30656h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f30657i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f30658j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f30659k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f30660l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    boolean f30661m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final Rect f30662n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Rect f30663o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    private final AppCompatImageHelper f30664p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    private final y4.c f30665q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.google.android.material.floatingactionbutton.d f30666r;

    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* JADX INFO: renamed from: h */
        public /* bridge */ /* synthetic */ boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull Rect rect) {
            return super.getInsetDodgeRect(coordinatorLayout, floatingActionButton, rect);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public /* bridge */ /* synthetic */ boolean i() {
            return super.i();
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* JADX INFO: renamed from: l */
        public /* bridge */ /* synthetic */ boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, View view) {
            return super.onDependentViewChanged(coordinatorLayout, floatingActionButton, view);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* JADX INFO: renamed from: m */
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, int i10) {
            return super.onLayoutChild(coordinatorLayout, floatingActionButton, i10);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public /* bridge */ /* synthetic */ void n(boolean z10) {
            super.n(z10);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        @VisibleForTesting
        public /* bridge */ /* synthetic */ void o(b bVar) {
            super.o(bVar);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            super.onAttachedToLayoutParams(layoutParams);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface Size {
    }

    class a implements com.google.android.material.floatingactionbutton.d.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b f30671a;

        a(b bVar) {
            this.f30671a = bVar;
        }

        @Override // com.google.android.material.floatingactionbutton.d.k
        public void onHidden() {
            this.f30671a.a(FloatingActionButton.this);
        }

        @Override // com.google.android.material.floatingactionbutton.d.k
        public void onShown() {
            this.f30671a.b(FloatingActionButton.this);
        }
    }

    public static abstract class b {
        public void a(FloatingActionButton floatingActionButton) {
        }

        public void b(FloatingActionButton floatingActionButton) {
        }
    }

    private class c implements com.google.android.material.shadow.c {
        c() {
        }

        @Override // com.google.android.material.shadow.c
        public boolean a() {
            return FloatingActionButton.this.f30661m;
        }

        @Override // com.google.android.material.shadow.c
        public float b() {
            return FloatingActionButton.this.getSizeDimension() / 2.0f;
        }

        @Override // com.google.android.material.shadow.c
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            if (drawable != null) {
                FloatingActionButton.super.setBackgroundDrawable(drawable);
            }
        }

        @Override // com.google.android.material.shadow.c
        public void setShadowPadding(int i10, int i11, int i12, int i13) {
            FloatingActionButton.this.f30662n.set(i10, i11, i12, i13);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.setPadding(i10 + floatingActionButton.f30659k, i11 + FloatingActionButton.this.f30659k, i12 + FloatingActionButton.this.f30659k, i13 + FloatingActionButton.this.f30659k);
        }
    }

    class d<T extends FloatingActionButton> implements com.google.android.material.floatingactionbutton.d.j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NonNull
        private final l<T> f30674a;

        d(l<T> lVar) {
            this.f30674a = lVar;
        }

        @Override // com.google.android.material.floatingactionbutton.d.j
        public void a() {
            this.f30674a.a(FloatingActionButton.this);
        }

        @Override // com.google.android.material.floatingactionbutton.d.j
        public void b() {
            this.f30674a.b(FloatingActionButton.this);
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof d) && ((d) obj).f30674a.equals(this.f30674a);
        }

        public int hashCode() {
            return this.f30674a.hashCode();
        }
    }

    public FloatingActionButton(@NonNull Context context) {
        this(context, null);
    }

    @Nullable
    private com.google.android.material.floatingactionbutton.d.k C(@Nullable b bVar) {
        if (bVar == null) {
            return null;
        }
        return new a(bVar);
    }

    private com.google.android.material.floatingactionbutton.d getImpl() {
        if (this.f30666r == null) {
            this.f30666r = j();
        }
        return this.f30666r;
    }

    @NonNull
    private com.google.android.material.floatingactionbutton.d j() {
        return new e(this, new c());
    }

    private int m(int i10) {
        int i11 = this.f30658j;
        if (i11 != 0) {
            return i11;
        }
        Resources resources = getResources();
        if (i10 != -1) {
            return i10 != 1 ? resources.getDimensionPixelSize(R.dimen.design_fab_size_normal) : resources.getDimensionPixelSize(R.dimen.design_fab_size_mini);
        }
        return Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < f30650z ? m(1) : m(0);
    }

    private void n(@NonNull Rect rect) {
        l(rect);
        int i10 = -this.f30666r.w();
        rect.inset(i10, i10);
    }

    private void t(@NonNull Rect rect) {
        int i10 = rect.left;
        Rect rect2 = this.f30662n;
        rect.left = i10 + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    private void u() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.f30653e;
        if (colorStateList == null) {
            DrawableCompat.clearColorFilter(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.f30654f;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(colorForState, mode));
    }

    public void A(@Nullable b bVar) {
        B(bVar, true);
    }

    void B(@Nullable b bVar, boolean z10) {
        getImpl().g0(C(bVar), z10);
    }

    @Override // y4.b
    public boolean a(boolean z10) {
        return this.f30665q.f(z10);
    }

    @Override // y4.b
    public boolean b() {
        return this.f30665q.c();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().F(getDrawableState());
    }

    public void f(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().e(animatorListener);
    }

    public void g(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().f(animatorListener);
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return this.f30651c;
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f30652d;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<FloatingActionButton> getBehavior() {
        return new Behavior();
    }

    public float getCompatElevation() {
        return getImpl().n();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().q();
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().t();
    }

    @Nullable
    public Drawable getContentBackground() {
        return getImpl().m();
    }

    @Px
    public int getCustomSize() {
        return this.f30658j;
    }

    @Override // y4.a
    public int getExpandedComponentIdHint() {
        return this.f30665q.b();
    }

    @Nullable
    public i getHideMotionSpec() {
        return getImpl().p();
    }

    @ColorInt
    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f30655g;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    @Nullable
    public ColorStateList getRippleColorStateList() {
        return this.f30655g;
    }

    @Override // com.google.android.material.shape.r
    @NonNull
    public n getShapeAppearanceModel() {
        return (n) Preconditions.checkNotNull(getImpl().u());
    }

    @Nullable
    public i getShowMotionSpec() {
        return getImpl().v();
    }

    public int getSize() {
        return this.f30657i;
    }

    int getSizeDimension() {
        return m(this.f30657i);
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    public ColorStateList getSupportImageTintList() {
        return this.f30653e;
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f30654f;
    }

    public boolean getUseCompatPadding() {
        return this.f30661m;
    }

    public void h(@NonNull l<? extends FloatingActionButton> lVar) {
        getImpl().g(new d(lVar));
    }

    public void i() {
        setCustomSize(0);
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().B();
    }

    @Deprecated
    public boolean k(@NonNull Rect rect) {
        if (!ViewCompat.isLaidOut(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        t(rect);
        return true;
    }

    public void l(@NonNull Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        t(rect);
    }

    public void o() {
        p(null);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getImpl().C();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().E();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        int sizeDimension = getSizeDimension();
        this.f30659k = (sizeDimension - this.f30660l) / 2;
        getImpl().j0();
        int iMin = Math.min(View.resolveSize(sizeDimension, i10), View.resolveSize(sizeDimension, i11));
        Rect rect = this.f30662n;
        setMeasuredDimension(rect.left + iMin + rect.right, iMin + rect.top + rect.bottom);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.getSuperState());
        this.f30665q.d((Bundle) Preconditions.checkNotNull(extendableSavedState.f31961b.get(f30644t)));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (parcelableOnSaveInstanceState == null) {
            parcelableOnSaveInstanceState = new Bundle();
        }
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(parcelableOnSaveInstanceState);
        extendableSavedState.f31961b.put(f30644t, this.f30665q.e());
        return extendableSavedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            n(this.f30663o);
            if (!this.f30663o.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void p(@Nullable b bVar) {
        q(bVar, true);
    }

    void q(@Nullable b bVar, boolean z10) {
        getImpl().x(C(bVar), z10);
    }

    public boolean r() {
        return getImpl().z();
    }

    public boolean s() {
        return getImpl().A();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.f30651c != colorStateList) {
            this.f30651c = colorStateList;
            getImpl().P(colorStateList);
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f30652d != mode) {
            this.f30652d = mode;
            getImpl().Q(mode);
        }
    }

    public void setCompatElevation(float f10) {
        getImpl().R(f10);
    }

    public void setCompatElevationResource(@DimenRes int i10) {
        setCompatElevation(getResources().getDimension(i10));
    }

    public void setCompatHoveredFocusedTranslationZ(float f10) {
        getImpl().U(f10);
    }

    public void setCompatHoveredFocusedTranslationZResource(@DimenRes int i10) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i10));
    }

    public void setCompatPressedTranslationZ(float f10) {
        getImpl().Y(f10);
    }

    public void setCompatPressedTranslationZResource(@DimenRes int i10) {
        setCompatPressedTranslationZ(getResources().getDimension(i10));
    }

    public void setCustomSize(@Px int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Custom size must be non-negative");
        }
        if (i10 != this.f30658j) {
            this.f30658j = i10;
            requestLayout();
        }
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f10) {
        super.setElevation(f10);
        getImpl().k0(f10);
    }

    public void setEnsureMinTouchTargetSize(boolean z10) {
        if (z10 != getImpl().o()) {
            getImpl().S(z10);
            requestLayout();
        }
    }

    @Override // y4.a
    public void setExpandedComponentIdHint(@IdRes int i10) {
        this.f30665q.g(i10);
    }

    public void setHideMotionSpec(@Nullable i iVar) {
        getImpl().T(iVar);
    }

    public void setHideMotionSpecResource(@AnimatorRes int i10) {
        setHideMotionSpec(i.d(getContext(), i10));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            getImpl().i0();
            if (this.f30653e != null) {
                u();
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i10) {
        this.f30664p.setImageResource(i10);
        u();
    }

    public void setMaxImageSize(int i10) {
        this.f30660l = i10;
        getImpl().W(i10);
    }

    public void setRippleColor(@ColorInt int i10) {
        setRippleColor(ColorStateList.valueOf(i10));
    }

    @Override // android.view.View
    public void setScaleX(float f10) {
        super.setScaleX(f10);
        getImpl().J();
    }

    @Override // android.view.View
    public void setScaleY(float f10) {
        super.setScaleY(f10);
        getImpl().J();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setShadowPaddingEnabled(boolean z10) {
        getImpl().a0(z10);
    }

    @Override // com.google.android.material.shape.r
    public void setShapeAppearanceModel(@NonNull n nVar) {
        getImpl().b0(nVar);
    }

    public void setShowMotionSpec(@Nullable i iVar) {
        getImpl().c0(iVar);
    }

    public void setShowMotionSpecResource(@AnimatorRes int i10) {
        setShowMotionSpec(i.d(getContext(), i10));
    }

    public void setSize(int i10) {
        this.f30658j = 0;
        if (i10 != this.f30657i) {
            this.f30657i = i10;
            requestLayout();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        if (this.f30653e != colorStateList) {
            this.f30653e = colorStateList;
            u();
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f30654f != mode) {
            this.f30654f = mode;
            u();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f10) {
        super.setTranslationX(f10);
        getImpl().K();
    }

    @Override // android.view.View
    public void setTranslationY(float f10) {
        super.setTranslationY(f10);
        getImpl().K();
    }

    @Override // android.view.View
    public void setTranslationZ(float f10) {
        super.setTranslationZ(f10);
        getImpl().K();
    }

    public void setUseCompatPadding(boolean z10) {
        if (this.f30661m != z10) {
            this.f30661m = z10;
            getImpl().D();
        }
    }

    @Override // com.google.android.material.internal.VisibilityAwareImageButton, android.widget.ImageView, android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
    }

    public void v(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().L(animatorListener);
    }

    public void w(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().M(animatorListener);
    }

    public void x(@NonNull l<? extends FloatingActionButton> lVar) {
        getImpl().N(new d(lVar));
    }

    public boolean y() {
        return getImpl().o();
    }

    public void z() {
        A(null);
    }

    protected static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final boolean f30667e = true;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Rect f30668b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private b f30669c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f30670d;

        public BaseBehavior() {
            this.f30670d = true;
        }

        private static boolean j(@NonNull View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                return ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private void k(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton) {
            int i10;
            Rect rect = floatingActionButton.f30662n;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return;
            }
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams();
            int i11 = 0;
            if (floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) {
                i10 = rect.right;
            } else {
                i10 = floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin ? -rect.left : 0;
            }
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) {
                i11 = rect.bottom;
            } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) {
                i11 = -rect.top;
            }
            if (i11 != 0) {
                ViewCompat.offsetTopAndBottom(floatingActionButton, i11);
            }
            if (i10 != 0) {
                ViewCompat.offsetLeftAndRight(floatingActionButton, i10);
            }
        }

        private boolean p(@NonNull View view, @NonNull FloatingActionButton floatingActionButton) {
            return this.f30670d && ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams()).getAnchorId() == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        private boolean q(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull FloatingActionButton floatingActionButton) {
            if (!p(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f30668b == null) {
                this.f30668b = new Rect();
            }
            Rect rect = this.f30668b;
            com.google.android.material.internal.d.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.q(this.f30669c, false);
                return true;
            }
            floatingActionButton.B(this.f30669c, false);
            return true;
        }

        private boolean r(@NonNull View view, @NonNull FloatingActionButton floatingActionButton) {
            if (!p(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.q(this.f30669c, false);
                return true;
            }
            floatingActionButton.B(this.f30669c, false);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull Rect rect) {
            Rect rect2 = floatingActionButton.f30662n;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        public boolean i() {
            return this.f30670d;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                q(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            }
            if (!j(view)) {
                return false;
            }
            r(view, floatingActionButton);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, int i10) {
            List<View> dependencies = coordinatorLayout.getDependencies(floatingActionButton);
            int size = dependencies.size();
            for (int i11 = 0; i11 < size; i11++) {
                View view = dependencies.get(i11);
                if (!(view instanceof AppBarLayout)) {
                    if (j(view) && r(view, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (q(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(floatingActionButton, i10);
            k(coordinatorLayout, floatingActionButton);
            return true;
        }

        public void n(boolean z10) {
            this.f30670d = z10;
        }

        @VisibleForTesting
        public void o(b bVar) {
            this.f30669c = bVar;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.dodgeInsetEdges == 0) {
                layoutParams.dodgeInsetEdges = 80;
            }
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FloatingActionButton_Behavior_Layout);
            this.f30670d = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public FloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.floatingActionButtonStyle);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f30655g != colorStateList) {
            this.f30655g = colorStateList;
            getImpl().Z(this.f30655g);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public FloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f30645u;
        super(a5.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f30662n = new Rect();
        this.f30663o = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayK = g0.k(context2, attributeSet, R.styleable.FloatingActionButton, i10, i11, new int[0]);
        this.f30651c = com.google.android.material.resources.d.a(context2, typedArrayK, R.styleable.FloatingActionButton_backgroundTint);
        this.f30652d = p0.u(typedArrayK.getInt(R.styleable.FloatingActionButton_backgroundTintMode, -1), null);
        this.f30655g = com.google.android.material.resources.d.a(context2, typedArrayK, R.styleable.FloatingActionButton_rippleColor);
        this.f30657i = typedArrayK.getInt(R.styleable.FloatingActionButton_fabSize, -1);
        this.f30658j = typedArrayK.getDimensionPixelSize(R.styleable.FloatingActionButton_fabCustomSize, 0);
        this.f30656h = typedArrayK.getDimensionPixelSize(R.styleable.FloatingActionButton_borderWidth, 0);
        float dimension = typedArrayK.getDimension(R.styleable.FloatingActionButton_elevation, 0.0f);
        float dimension2 = typedArrayK.getDimension(R.styleable.FloatingActionButton_hoveredFocusedTranslationZ, 0.0f);
        float dimension3 = typedArrayK.getDimension(R.styleable.FloatingActionButton_pressedTranslationZ, 0.0f);
        this.f30661m = typedArrayK.getBoolean(R.styleable.FloatingActionButton_useCompatPadding, false);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mtrl_fab_min_touch_target);
        setMaxImageSize(typedArrayK.getDimensionPixelSize(R.styleable.FloatingActionButton_maxImageSize, 0));
        i iVarC = i.c(context2, typedArrayK, R.styleable.FloatingActionButton_showMotionSpec);
        i iVarC2 = i.c(context2, typedArrayK, R.styleable.FloatingActionButton_hideMotionSpec);
        n nVarM = n.g(context2, attributeSet, i10, i11, n.f31626m).m();
        boolean z10 = typedArrayK.getBoolean(R.styleable.FloatingActionButton_ensureMinTouchTargetSize, false);
        setEnabled(typedArrayK.getBoolean(R.styleable.FloatingActionButton_android_enabled, true));
        typedArrayK.recycle();
        AppCompatImageHelper appCompatImageHelper = new AppCompatImageHelper(this);
        this.f30664p = appCompatImageHelper;
        appCompatImageHelper.loadFromAttributes(attributeSet, i10);
        this.f30665q = new y4.c(this);
        getImpl().b0(nVarM);
        getImpl().y(this.f30651c, this.f30652d, this.f30655g, this.f30656h);
        getImpl().X(dimensionPixelSize);
        getImpl().R(dimension);
        getImpl().U(dimension2);
        getImpl().Y(dimension3);
        getImpl().c0(iVarC);
        getImpl().T(iVarC2);
        getImpl().S(z10);
        setScaleType(ImageView.ScaleType.MATRIX);
    }
}
