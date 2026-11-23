package com.google.android.material.navigation;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.activity.BackEventCompat;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.material.drawable.g;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.g0;
import com.google.android.material.internal.q0;
import com.google.android.material.internal.r;
import com.google.android.material.internal.s;
import com.google.android.material.motion.i;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.j;
import com.google.android.material.shape.n;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class NavigationView extends ScrimInsetsFrameLayout implements com.google.android.material.motion.b {
    private static final int B = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final r f31150i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final s f31151j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    d f31152k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f31153l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int[] f31154m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private MenuInflater f31155n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ViewTreeObserver.OnGlobalLayoutListener f31156o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f31157p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f31158q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Px
    private int f31159r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final boolean f31160s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Px
    private final int f31161t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final com.google.android.material.shape.s f31162u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final i f31163v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final com.google.android.material.motion.c f31164w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final DrawerLayout.DrawerListener f31165x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int[] f31148y = {R.attr.state_checked};

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int[] f31149z = {-16842910};
    private static final int A = com.google.android.material.R.style.Widget_Design_NavigationView;

    class a extends DrawerLayout.SimpleDrawerListener {
        a() {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.SimpleDrawerListener, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerClosed(@NonNull View view) {
            NavigationView navigationView = NavigationView.this;
            if (view == navigationView) {
                navigationView.f31164w.f();
                NavigationView.this.y();
            }
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.SimpleDrawerListener, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerOpened(@NonNull View view) {
            NavigationView navigationView = NavigationView.this;
            if (view == navigationView) {
                final com.google.android.material.motion.c cVar = navigationView.f31164w;
                Objects.requireNonNull(cVar);
                view.post(new Runnable() { // from class: com.google.android.material.navigation.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        cVar.e();
                    }
                });
            }
        }
    }

    class b implements MenuBuilder.Callback {
        b() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            d dVar = NavigationView.this.f31152k;
            return dVar != null && dVar.a(menuItem);
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }
    }

    class c implements ViewTreeObserver.OnGlobalLayoutListener {
        c() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            NavigationView navigationView = NavigationView.this;
            navigationView.getLocationOnScreen(navigationView.f31154m);
            boolean z10 = true;
            boolean z11 = NavigationView.this.f31154m[1] == 0;
            NavigationView.this.f31151j.v(z11);
            NavigationView navigationView2 = NavigationView.this;
            navigationView2.setDrawTopInsetForeground(z11 && navigationView2.w());
            NavigationView.this.setDrawLeftInsetForeground(NavigationView.this.f31154m[0] == 0 || NavigationView.this.f31154m[0] + NavigationView.this.getWidth() == 0);
            Activity activity = com.google.android.material.internal.c.getActivity(NavigationView.this.getContext());
            if (activity != null) {
                Rect rectB = q0.b(activity);
                boolean z12 = rectB.height() - NavigationView.this.getHeight() == NavigationView.this.f31154m[1];
                boolean z13 = Color.alpha(activity.getWindow().getNavigationBarColor()) != 0;
                NavigationView navigationView3 = NavigationView.this;
                navigationView3.setDrawBottomInsetForeground(z12 && z13 && navigationView3.v());
                if (rectB.width() != NavigationView.this.f31154m[0] && rectB.width() - NavigationView.this.getWidth() != NavigationView.this.f31154m[0]) {
                    z10 = false;
                }
                NavigationView.this.setDrawRightInsetForeground(z10);
            }
        }
    }

    public interface d {
        boolean a(@NonNull MenuItem menuItem);
    }

    public NavigationView(@NonNull Context context) {
        this(context, null);
    }

    @CanIgnoreReturnValue
    private Pair<DrawerLayout, DrawerLayout.LayoutParams> B() {
        ViewParent parent = getParent();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if ((parent instanceof DrawerLayout) && (layoutParams instanceof DrawerLayout.LayoutParams)) {
            return new Pair<>((DrawerLayout) parent, (DrawerLayout.LayoutParams) layoutParams);
        }
        throw new IllegalStateException("NavigationView back progress requires the direct parent view to be a DrawerLayout.");
    }

    private void C() {
        this.f31156o = new c();
        getViewTreeObserver().addOnGlobalLayoutListener(this.f31156o);
    }

    private MenuInflater getMenuInflater() {
        if (this.f31155n == null) {
            this.f31155n = new SupportMenuInflater(getContext());
        }
        return this.f31155n;
    }

    @Nullable
    private ColorStateList o(int i10) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i10, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = AppCompatResources.getColorStateList(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i11 = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        int[] iArr = f31149z;
        return new ColorStateList(new int[][]{iArr, f31148y, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i11, defaultColor});
    }

    @NonNull
    private Drawable p(@NonNull TintTypedArray tintTypedArray) {
        return q(tintTypedArray, com.google.android.material.resources.d.b(getContext(), tintTypedArray, com.google.android.material.R.styleable.NavigationView_itemShapeFillColor));
    }

    @NonNull
    private Drawable q(@NonNull TintTypedArray tintTypedArray, @Nullable ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(n.b(getContext(), tintTypedArray.getResourceId(com.google.android.material.R.styleable.NavigationView_itemShapeAppearance, 0), tintTypedArray.getResourceId(com.google.android.material.R.styleable.NavigationView_itemShapeAppearanceOverlay, 0)).m());
        materialShapeDrawable.p0(colorStateList);
        return new InsetDrawable((Drawable) materialShapeDrawable, tintTypedArray.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetStart, 0), tintTypedArray.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetTop, 0), tintTypedArray.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetEnd, 0), tintTypedArray.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetBottom, 0));
    }

    private boolean s(@NonNull TintTypedArray tintTypedArray) {
        return tintTypedArray.hasValue(com.google.android.material.R.styleable.NavigationView_itemShapeAppearance) || tintTypedArray.hasValue(com.google.android.material.R.styleable.NavigationView_itemShapeAppearanceOverlay);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        if (!this.f31160s || this.f31159r == 0) {
            return;
        }
        this.f31159r = 0;
        z(getWidth(), getHeight());
    }

    private void z(@Px int i10, @Px int i11) {
        if ((getParent() instanceof DrawerLayout) && (getLayoutParams() instanceof DrawerLayout.LayoutParams)) {
            if ((this.f31159r > 0 || this.f31160s) && (getBackground() instanceof MaterialShapeDrawable)) {
                boolean z10 = GravityCompat.getAbsoluteGravity(((DrawerLayout.LayoutParams) getLayoutParams()).gravity, ViewCompat.getLayoutDirection(this)) == 3;
                MaterialShapeDrawable materialShapeDrawable = (MaterialShapeDrawable) getBackground();
                n.b bVarO = materialShapeDrawable.getShapeAppearanceModel().v().o(this.f31159r);
                if (z10) {
                    bVarO.K(0.0f);
                    bVarO.x(0.0f);
                } else {
                    bVarO.P(0.0f);
                    bVarO.C(0.0f);
                }
                n nVarM = bVarO.m();
                materialShapeDrawable.setShapeAppearanceModel(nVarM);
                this.f31162u.g(this, nVarM);
                this.f31162u.f(this, new RectF(0.0f, 0.0f, i10, i11));
                this.f31162u.i(this, true);
            }
        }
    }

    public void A(@NonNull View view) {
        this.f31151j.u(view);
    }

    @Override // com.google.android.material.motion.b
    public void b(@NonNull BackEventCompat backEventCompat) {
        B();
        this.f31163v.j(backEventCompat);
    }

    @Override // com.google.android.material.motion.b
    public void c(@NonNull BackEventCompat backEventCompat) {
        this.f31163v.l(backEventCompat, ((DrawerLayout.LayoutParams) B().second).gravity);
        if (this.f31160s) {
            this.f31159r = com.google.android.material.animation.b.c(0, this.f31161t, this.f31163v.a(backEventCompat.getProgress()));
            z(getWidth(), getHeight());
        }
    }

    @Override // com.google.android.material.motion.b
    public void d() {
        Pair<DrawerLayout, DrawerLayout.LayoutParams> pairB = B();
        DrawerLayout drawerLayout = (DrawerLayout) pairB.first;
        BackEventCompat backEventCompatC = this.f31163v.c();
        if (backEventCompatC == null || Build.VERSION.SDK_INT < 34) {
            drawerLayout.closeDrawer(this);
            return;
        }
        this.f31163v.h(backEventCompatC, ((DrawerLayout.LayoutParams) pairB.second).gravity, com.google.android.material.navigation.b.b(drawerLayout, this), com.google.android.material.navigation.b.c(drawerLayout));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NonNull Canvas canvas) {
        this.f31162u.e(canvas, new v4.a.InterfaceC1251a() { // from class: com.google.android.material.navigation.e
            @Override // v4.a.InterfaceC1251a
            public final void a(Canvas canvas2) {
                this.f31177a.x(canvas2);
            }
        });
    }

    @Override // com.google.android.material.motion.b
    public void f() {
        B();
        this.f31163v.f();
        y();
    }

    @VisibleForTesting
    i getBackHelper() {
        return this.f31163v;
    }

    @Nullable
    public MenuItem getCheckedItem() {
        return this.f31151j.d();
    }

    @Px
    public int getDividerInsetEnd() {
        return this.f31151j.e();
    }

    @Px
    public int getDividerInsetStart() {
        return this.f31151j.f();
    }

    public int getHeaderCount() {
        return this.f31151j.g();
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f31151j.i();
    }

    @Dimension
    public int getItemHorizontalPadding() {
        return this.f31151j.j();
    }

    @Dimension
    public int getItemIconPadding() {
        return this.f31151j.k();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f31151j.n();
    }

    public int getItemMaxLines() {
        return this.f31151j.l();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f31151j.m();
    }

    @Px
    public int getItemVerticalPadding() {
        return this.f31151j.o();
    }

    @NonNull
    public Menu getMenu() {
        return this.f31150i;
    }

    @Px
    public int getSubheaderInsetEnd() {
        return this.f31151j.p();
    }

    @Px
    public int getSubheaderInsetStart() {
        return this.f31151j.q();
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected void h(@NonNull WindowInsetsCompat windowInsetsCompat) {
        this.f31151j.c(windowInsetsCompat);
    }

    public void n(@NonNull View view) {
        this.f31151j.b(view);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        j.e(this);
        ViewParent parent = getParent();
        if ((parent instanceof DrawerLayout) && this.f31164w.b()) {
            DrawerLayout drawerLayout = (DrawerLayout) parent;
            drawerLayout.removeDrawerListener(this.f31165x);
            drawerLayout.addDrawerListener(this.f31165x);
            if (drawerLayout.isDrawerOpen(this)) {
                this.f31164w.e();
            }
        }
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.f31156o);
        ViewParent parent = getParent();
        if (parent instanceof DrawerLayout) {
            ((DrawerLayout) parent).removeDrawerListener(this.f31165x);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        if (mode == Integer.MIN_VALUE) {
            i10 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i10), this.f31153l), 1073741824);
        } else if (mode == 0) {
            i10 = View.MeasureSpec.makeMeasureSpec(this.f31153l, 1073741824);
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f31150i.restorePresenterStates(savedState.f31166b);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.f31166b = bundle;
        this.f31150i.savePresenterStates(bundle);
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        z(i10, i11);
    }

    public View r(int i10) {
        return this.f31151j.h(i10);
    }

    public void setBottomInsetScrimEnabled(boolean z10) {
        this.f31158q = z10;
    }

    public void setCheckedItem(@IdRes int i10) {
        MenuItem menuItemFindItem = this.f31150i.findItem(i10);
        if (menuItemFindItem != null) {
            this.f31151j.w((MenuItemImpl) menuItemFindItem);
        }
    }

    public void setDividerInsetEnd(@Px int i10) {
        this.f31151j.x(i10);
    }

    public void setDividerInsetStart(@Px int i10) {
        this.f31151j.y(i10);
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        j.d(this, f10);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setForceCompatClippingEnabled(boolean z10) {
        this.f31162u.h(this, z10);
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f31151j.A(drawable);
    }

    public void setItemBackgroundResource(@DrawableRes int i10) {
        setItemBackground(ContextCompat.getDrawable(getContext(), i10));
    }

    public void setItemHorizontalPadding(@Dimension int i10) {
        this.f31151j.C(i10);
    }

    public void setItemHorizontalPaddingResource(@DimenRes int i10) {
        this.f31151j.C(getResources().getDimensionPixelSize(i10));
    }

    public void setItemIconPadding(@Dimension int i10) {
        this.f31151j.D(i10);
    }

    public void setItemIconPaddingResource(int i10) {
        this.f31151j.D(getResources().getDimensionPixelSize(i10));
    }

    public void setItemIconSize(@Dimension int i10) {
        this.f31151j.E(i10);
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f31151j.F(colorStateList);
    }

    public void setItemMaxLines(int i10) {
        this.f31151j.G(i10);
    }

    public void setItemTextAppearance(@StyleRes int i10) {
        this.f31151j.H(i10);
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z10) {
        this.f31151j.I(z10);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f31151j.J(colorStateList);
    }

    public void setItemVerticalPadding(@Px int i10) {
        this.f31151j.K(i10);
    }

    public void setItemVerticalPaddingResource(@DimenRes int i10) {
        this.f31151j.K(getResources().getDimensionPixelSize(i10));
    }

    public void setNavigationItemSelectedListener(@Nullable d dVar) {
        this.f31152k = dVar;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i10) {
        super.setOverScrollMode(i10);
        s sVar = this.f31151j;
        if (sVar != null) {
            sVar.L(i10);
        }
    }

    public void setSubheaderInsetEnd(@Px int i10) {
        this.f31151j.N(i10);
    }

    public void setSubheaderInsetStart(@Px int i10) {
        this.f31151j.O(i10);
    }

    public void setTopInsetScrimEnabled(boolean z10) {
        this.f31157p = z10;
    }

    public View t(@LayoutRes int i10) {
        return this.f31151j.s(i10);
    }

    public void u(int i10) {
        this.f31151j.Q(true);
        getMenuInflater().inflate(i10, this.f31150i);
        this.f31151j.Q(false);
        this.f31151j.updateMenuView(false);
    }

    public boolean v() {
        return this.f31158q;
    }

    public boolean w() {
        return this.f31157p;
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        public Bundle f31166b;

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

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f31166b = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeBundle(this.f31166b);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public NavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R.attr.navigationViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        ColorStateList colorStateListO;
        int i11;
        int i12;
        int i13 = A;
        super(a5.a.c(context, attributeSet, i10, i13), attributeSet, i10);
        s sVar = new s();
        this.f31151j = sVar;
        this.f31154m = new int[2];
        this.f31157p = true;
        this.f31158q = true;
        this.f31159r = 0;
        this.f31162u = com.google.android.material.shape.s.a(this);
        this.f31163v = new i(this);
        this.f31164w = new com.google.android.material.motion.c(this);
        this.f31165x = new a();
        Context context2 = getContext();
        r rVar = new r(context2);
        this.f31150i = rVar;
        TintTypedArray tintTypedArrayL = g0.l(context2, attributeSet, com.google.android.material.R.styleable.NavigationView, i10, i13, new int[0]);
        int i14 = com.google.android.material.R.styleable.NavigationView_android_background;
        if (tintTypedArrayL.hasValue(i14)) {
            ViewCompat.setBackground(this, tintTypedArrayL.getDrawable(i14));
        }
        int dimensionPixelSize = tintTypedArrayL.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_drawerLayoutCornerSize, 0);
        this.f31159r = dimensionPixelSize;
        this.f31160s = dimensionPixelSize == 0;
        this.f31161t = getResources().getDimensionPixelSize(com.google.android.material.R.dimen.m3_navigation_drawer_layout_corner_size);
        Drawable background = getBackground();
        ColorStateList colorStateListG = g.g(background);
        if (background == null || colorStateListG != null) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(n.e(context2, attributeSet, i10, i13).m());
            if (colorStateListG != null) {
                materialShapeDrawable.p0(colorStateListG);
            }
            materialShapeDrawable.a0(context2);
            ViewCompat.setBackground(this, materialShapeDrawable);
        }
        int i15 = com.google.android.material.R.styleable.NavigationView_elevation;
        if (tintTypedArrayL.hasValue(i15)) {
            setElevation(tintTypedArrayL.getDimensionPixelSize(i15, 0));
        }
        setFitsSystemWindows(tintTypedArrayL.getBoolean(com.google.android.material.R.styleable.NavigationView_android_fitsSystemWindows, false));
        this.f31153l = tintTypedArrayL.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_android_maxWidth, 0);
        int i16 = com.google.android.material.R.styleable.NavigationView_subheaderColor;
        ColorStateList colorStateList = tintTypedArrayL.hasValue(i16) ? tintTypedArrayL.getColorStateList(i16) : null;
        int i17 = com.google.android.material.R.styleable.NavigationView_subheaderTextAppearance;
        int resourceId = tintTypedArrayL.hasValue(i17) ? tintTypedArrayL.getResourceId(i17, 0) : 0;
        if (resourceId == 0 && colorStateList == null) {
            colorStateList = o(R.attr.textColorSecondary);
        }
        int i18 = com.google.android.material.R.styleable.NavigationView_itemIconTint;
        if (tintTypedArrayL.hasValue(i18)) {
            colorStateListO = tintTypedArrayL.getColorStateList(i18);
        } else {
            colorStateListO = o(R.attr.textColorSecondary);
        }
        int i19 = com.google.android.material.R.styleable.NavigationView_itemTextAppearance;
        int resourceId2 = tintTypedArrayL.hasValue(i19) ? tintTypedArrayL.getResourceId(i19, 0) : 0;
        boolean z10 = tintTypedArrayL.getBoolean(com.google.android.material.R.styleable.NavigationView_itemTextAppearanceActiveBoldEnabled, true);
        int i20 = com.google.android.material.R.styleable.NavigationView_itemIconSize;
        if (tintTypedArrayL.hasValue(i20)) {
            setItemIconSize(tintTypedArrayL.getDimensionPixelSize(i20, 0));
        }
        int i21 = com.google.android.material.R.styleable.NavigationView_itemTextColor;
        ColorStateList colorStateList2 = tintTypedArrayL.hasValue(i21) ? tintTypedArrayL.getColorStateList(i21) : null;
        if (resourceId2 == 0 && colorStateList2 == null) {
            colorStateList2 = o(R.attr.textColorPrimary);
        }
        Drawable drawable = tintTypedArrayL.getDrawable(com.google.android.material.R.styleable.NavigationView_itemBackground);
        if (drawable == null && s(tintTypedArrayL)) {
            drawable = p(tintTypedArrayL);
            ColorStateList colorStateListB = com.google.android.material.resources.d.b(context2, tintTypedArrayL, com.google.android.material.R.styleable.NavigationView_itemRippleColor);
            if (colorStateListB != null) {
                sVar.B(new RippleDrawable(com.google.android.material.ripple.b.e(colorStateListB), null, q(tintTypedArrayL, null)));
            }
        }
        int i22 = com.google.android.material.R.styleable.NavigationView_itemHorizontalPadding;
        if (tintTypedArrayL.hasValue(i22)) {
            i11 = 0;
            setItemHorizontalPadding(tintTypedArrayL.getDimensionPixelSize(i22, 0));
        } else {
            i11 = 0;
        }
        int i23 = com.google.android.material.R.styleable.NavigationView_itemVerticalPadding;
        if (tintTypedArrayL.hasValue(i23)) {
            setItemVerticalPadding(tintTypedArrayL.getDimensionPixelSize(i23, i11));
        }
        setDividerInsetStart(tintTypedArrayL.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_dividerInsetStart, i11));
        setDividerInsetEnd(tintTypedArrayL.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_dividerInsetEnd, i11));
        setSubheaderInsetStart(tintTypedArrayL.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_subheaderInsetStart, i11));
        setSubheaderInsetEnd(tintTypedArrayL.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_subheaderInsetEnd, i11));
        setTopInsetScrimEnabled(tintTypedArrayL.getBoolean(com.google.android.material.R.styleable.NavigationView_topInsetScrimEnabled, this.f31157p));
        setBottomInsetScrimEnabled(tintTypedArrayL.getBoolean(com.google.android.material.R.styleable.NavigationView_bottomInsetScrimEnabled, this.f31158q));
        int dimensionPixelSize2 = tintTypedArrayL.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemIconPadding, i11);
        setItemMaxLines(tintTypedArrayL.getInt(com.google.android.material.R.styleable.NavigationView_itemMaxLines, 1));
        rVar.setCallback(new b());
        sVar.z(1);
        sVar.initForMenu(context2, rVar);
        if (resourceId != 0) {
            sVar.P(resourceId);
        }
        sVar.M(colorStateList);
        sVar.F(colorStateListO);
        sVar.L(getOverScrollMode());
        if (resourceId2 != 0) {
            sVar.H(resourceId2);
        }
        sVar.I(z10);
        sVar.J(colorStateList2);
        sVar.A(drawable);
        sVar.D(dimensionPixelSize2);
        rVar.addMenuPresenter(sVar);
        addView((View) sVar.getMenuView(this));
        int i24 = com.google.android.material.R.styleable.NavigationView_menu;
        if (tintTypedArrayL.hasValue(i24)) {
            i12 = 0;
            u(tintTypedArrayL.getResourceId(i24, 0));
        } else {
            i12 = 0;
        }
        int i25 = com.google.android.material.R.styleable.NavigationView_headerLayout;
        if (tintTypedArrayL.hasValue(i25)) {
            t(tintTypedArrayL.getResourceId(i25, i12));
        }
        tintTypedArrayL.recycle();
        C();
    }

    public void setCheckedItem(@NonNull MenuItem menuItem) {
        MenuItem menuItemFindItem = this.f31150i.findItem(menuItem.getItemId());
        if (menuItemFindItem != null) {
            this.f31151j.w((MenuItemImpl) menuItemFindItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }
}
