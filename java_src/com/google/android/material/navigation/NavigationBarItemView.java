package com.google.android.material.navigation;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.motion.j;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public abstract class NavigationBarItemView extends FrameLayout implements MenuView.ItemView {
    private static final int H = -1;
    private static final int[] I = {R.attr.state_checked};
    private static final d J;
    private static final d K;
    private float A;
    private boolean B;
    private int C;
    private int D;
    private boolean E;
    private int F;

    @Nullable
    private BadgeDrawable G;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f31070b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ColorStateList f31071c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    Drawable f31072d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f31073e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f31074f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f31075g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f31076h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f31077i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f31078j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f31079k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f31080l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private final FrameLayout f31081m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private final View f31082n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ImageView f31083o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final ViewGroup f31084p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final TextView f31085q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final TextView f31086r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f31087s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @StyleRes
    private int f31088t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private MenuItemImpl f31089u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    private ColorStateList f31090v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private Drawable f31091w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Nullable
    private Drawable f31092x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private ValueAnimator f31093y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private d f31094z;

    class a implements View.OnLayoutChangeListener {
        a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            if (NavigationBarItemView.this.f31083o.getVisibility() == 0) {
                NavigationBarItemView navigationBarItemView = NavigationBarItemView.this;
                navigationBarItemView.u(navigationBarItemView.f31083o);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f31096b;

        b(int i10) {
            this.f31096b = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            NavigationBarItemView.this.v(this.f31096b);
        }
    }

    class c implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ float f31098b;

        c(float f10) {
            this.f31098b = f10;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            NavigationBarItemView.this.o(((Float) valueAnimator.getAnimatedValue()).floatValue(), this.f31098b);
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final float f31100a = 0.4f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final float f31101b = 1.0f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final float f31102c = 0.2f;

        private d() {
        }

        protected float a(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f11) {
            return com.google.android.material.animation.b.b(0.0f, 1.0f, f11 == 0.0f ? 0.8f : 0.0f, f11 == 0.0f ? 1.0f : 0.2f, f10);
        }

        protected float b(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f11) {
            return com.google.android.material.animation.b.a(f31100a, 1.0f, f10);
        }

        protected float c(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f11) {
            return 1.0f;
        }

        public void d(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f11, @NonNull View view) {
            view.setScaleX(b(f10, f11));
            view.setScaleY(c(f10, f11));
            view.setAlpha(a(f10, f11));
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }

    private static class e extends d {
        private e() {
            super(null);
        }

        @Override // com.google.android.material.navigation.NavigationBarItemView.d
        protected float c(float f10, float f11) {
            return b(f10, f11);
        }

        /* synthetic */ e(a aVar) {
            this();
        }
    }

    static {
        a aVar = null;
        J = new d(aVar);
        K = new e(aVar);
    }

    public NavigationBarItemView(@NonNull Context context) {
        super(context);
        this.f31070b = false;
        this.f31087s = -1;
        this.f31088t = 0;
        this.f31094z = J;
        this.A = 0.0f;
        this.B = false;
        this.C = 0;
        this.D = 0;
        this.E = false;
        this.F = 0;
        LayoutInflater.from(context).inflate(getItemLayoutResId(), (ViewGroup) this, true);
        this.f31081m = (FrameLayout) findViewById(com.google.android.material.R.id.navigation_bar_item_icon_container);
        this.f31082n = findViewById(com.google.android.material.R.id.navigation_bar_item_active_indicator_view);
        ImageView imageView = (ImageView) findViewById(com.google.android.material.R.id.navigation_bar_item_icon_view);
        this.f31083o = imageView;
        ViewGroup viewGroup = (ViewGroup) findViewById(com.google.android.material.R.id.navigation_bar_item_labels_group);
        this.f31084p = viewGroup;
        TextView textView = (TextView) findViewById(com.google.android.material.R.id.navigation_bar_item_small_label_view);
        this.f31085q = textView;
        TextView textView2 = (TextView) findViewById(com.google.android.material.R.id.navigation_bar_item_large_label_view);
        this.f31086r = textView2;
        setBackgroundResource(getItemBackgroundResId());
        this.f31073e = getResources().getDimensionPixelSize(getItemDefaultMarginResId());
        this.f31074f = viewGroup.getPaddingBottom();
        this.f31075g = getResources().getDimensionPixelSize(com.google.android.material.R.dimen.m3_navigation_item_active_indicator_label_padding);
        ViewCompat.setImportantForAccessibility(textView, 2);
        ViewCompat.setImportantForAccessibility(textView2, 2);
        setFocusable(true);
        e(textView.getTextSize(), textView2.getTextSize());
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new a());
        }
    }

    private void e(float f10, float f11) {
        this.f31076h = f10 - f11;
        this.f31077i = (f11 * 1.0f) / f10;
        this.f31078j = (f10 * 1.0f) / f11;
    }

    private static Drawable g(@NonNull ColorStateList colorStateList) {
        return new RippleDrawable(com.google.android.material.ripple.b.a(colorStateList), null, null);
    }

    private View getIconOrContainer() {
        FrameLayout frameLayout = this.f31081m;
        return frameLayout != null ? frameLayout : this.f31083o;
    }

    private int getItemVisiblePosition() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        int iIndexOfChild = viewGroup.indexOfChild(this);
        int i10 = 0;
        for (int i11 = 0; i11 < iIndexOfChild; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if ((childAt instanceof NavigationBarItemView) && childAt.getVisibility() == 0) {
                i10++;
            }
        }
        return i10;
    }

    private int getSuggestedIconHeight() {
        return ((FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams()).topMargin + getIconOrContainer().getMeasuredHeight();
    }

    private int getSuggestedIconWidth() {
        BadgeDrawable badgeDrawable = this.G;
        int minimumWidth = badgeDrawable == null ? 0 : badgeDrawable.getMinimumWidth() - this.G.u();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getIconOrContainer().getLayoutParams();
        return Math.max(minimumWidth, layoutParams.leftMargin) + this.f31083o.getMeasuredWidth() + Math.max(minimumWidth, layoutParams.rightMargin);
    }

    @Nullable
    private FrameLayout h(View view) {
        ImageView imageView = this.f31083o;
        if (view == imageView && com.google.android.material.badge.c.f29463a) {
            return (FrameLayout) imageView.getParent();
        }
        return null;
    }

    private boolean i() {
        return this.G != null;
    }

    private boolean j() {
        return this.E && this.f31079k == 2;
    }

    private void k(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        if (!this.B || !this.f31070b || !ViewCompat.isAttachedToWindow(this)) {
            o(f10, f10);
            return;
        }
        ValueAnimator valueAnimator = this.f31093y;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f31093y = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.A, f10);
        this.f31093y = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new c(f10));
        this.f31093y.setInterpolator(j.g(getContext(), com.google.android.material.R.attr.motionEasingEmphasizedInterpolator, com.google.android.material.animation.b.f29368b));
        this.f31093y.setDuration(j.f(getContext(), com.google.android.material.R.attr.motionDurationLong2, getResources().getInteger(com.google.android.material.R.integer.material_motion_duration_long_1)));
        this.f31093y.start();
    }

    private void l() {
        MenuItemImpl menuItemImpl = this.f31089u;
        if (menuItemImpl != null) {
            setChecked(menuItemImpl.isChecked());
        }
    }

    private void m() {
        Drawable drawableG = this.f31072d;
        RippleDrawable rippleDrawable = null;
        boolean z10 = true;
        if (this.f31071c != null) {
            Drawable activeIndicatorDrawable = getActiveIndicatorDrawable();
            if (this.B && getActiveIndicatorDrawable() != null && this.f31081m != null && activeIndicatorDrawable != null) {
                rippleDrawable = new RippleDrawable(com.google.android.material.ripple.b.e(this.f31071c), null, activeIndicatorDrawable);
                z10 = false;
            } else if (drawableG == null) {
                drawableG = g(this.f31071c);
            }
        }
        FrameLayout frameLayout = this.f31081m;
        if (frameLayout != null) {
            frameLayout.setPadding(0, 0, 0, 0);
            this.f31081m.setForeground(rippleDrawable);
        }
        ViewCompat.setBackground(this, drawableG);
        if (Build.VERSION.SDK_INT >= 26) {
            setDefaultFocusHighlightEnabled(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10, float f11) {
        View view = this.f31082n;
        if (view != null) {
            this.f31094z.d(f10, f11, view);
        }
        this.A = f10;
    }

    private static void p(TextView textView, @StyleRes int i10) {
        TextViewCompat.setTextAppearance(textView, i10);
        int i11 = com.google.android.material.resources.d.i(textView.getContext(), i10, 0);
        if (i11 != 0) {
            textView.setTextSize(0, i11);
        }
    }

    private static void q(@NonNull View view, float f10, float f11, int i10) {
        view.setScaleX(f10);
        view.setScaleY(f11);
        view.setVisibility(i10);
    }

    private static void r(@NonNull View view, int i10, int i11) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i10;
        layoutParams.bottomMargin = i10;
        layoutParams.gravity = i11;
        view.setLayoutParams(layoutParams);
    }

    private void s(@Nullable View view) {
        if (i() && view != null) {
            setClipChildren(false);
            setClipToPadding(false);
            com.google.android.material.badge.c.d(this.G, view, h(view));
        }
    }

    private void t(@Nullable View view) {
        if (i()) {
            if (view != null) {
                setClipChildren(true);
                setClipToPadding(true);
                com.google.android.material.badge.c.j(this.G, view);
            }
            this.G = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(View view) {
        if (i()) {
            com.google.android.material.badge.c.m(this.G, view, h(view));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(int i10) {
        if (this.f31082n == null || i10 <= 0) {
            return;
        }
        int iMin = Math.min(this.C, i10 - (this.F * 2));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f31082n.getLayoutParams();
        layoutParams.height = j() ? iMin : this.D;
        layoutParams.width = iMin;
        this.f31082n.setLayoutParams(layoutParams);
    }

    private void w() {
        if (j()) {
            this.f31094z = K;
        } else {
            this.f31094z = J;
        }
    }

    private static void x(@NonNull View view, int i10) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i10);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        FrameLayout frameLayout = this.f31081m;
        if (frameLayout != null && this.B) {
            frameLayout.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    void f() {
        n();
        this.f31089u = null;
        this.A = 0.0f;
        this.f31070b = false;
    }

    @Nullable
    public Drawable getActiveIndicatorDrawable() {
        View view = this.f31082n;
        if (view == null) {
            return null;
        }
        return view.getBackground();
    }

    @Nullable
    public BadgeDrawable getBadge() {
        return this.G;
    }

    @DrawableRes
    protected int getItemBackgroundResId() {
        return com.google.android.material.R.drawable.mtrl_navigation_bar_item_background;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    @Nullable
    public MenuItemImpl getItemData() {
        return this.f31089u;
    }

    @DimenRes
    protected int getItemDefaultMarginResId() {
        return com.google.android.material.R.dimen.mtrl_navigation_bar_item_default_margin;
    }

    @LayoutRes
    protected abstract int getItemLayoutResId();

    public int getItemPosition() {
        return this.f31087s;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f31084p.getLayoutParams();
        return getSuggestedIconHeight() + (this.f31084p.getVisibility() == 0 ? this.f31075g : 0) + layoutParams.topMargin + this.f31084p.getMeasuredHeight() + layoutParams.bottomMargin;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f31084p.getLayoutParams();
        return Math.max(getSuggestedIconWidth(), layoutParams.leftMargin + this.f31084p.getMeasuredWidth() + layoutParams.rightMargin);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(@NonNull MenuItemImpl menuItemImpl, int i10) {
        this.f31089u = menuItemImpl;
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.getTitle());
        setId(menuItemImpl.getItemId());
        if (!TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(menuItemImpl.getContentDescription());
        }
        CharSequence tooltipText = !TextUtils.isEmpty(menuItemImpl.getTooltipText()) ? menuItemImpl.getTooltipText() : menuItemImpl.getTitle();
        if (Build.VERSION.SDK_INT > 23) {
            TooltipCompat.setTooltipText(this, tooltipText);
        }
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        this.f31070b = true;
    }

    void n() {
        t(this.f31083o);
    }

    @Override // android.view.ViewGroup, android.view.View
    @NonNull
    public int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        MenuItemImpl menuItemImpl = this.f31089u;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.f31089u.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, I);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        BadgeDrawable badgeDrawable = this.G;
        if (badgeDrawable != null && badgeDrawable.isVisible()) {
            CharSequence title = this.f31089u.getTitle();
            if (!TextUtils.isEmpty(this.f31089u.getContentDescription())) {
                title = this.f31089u.getContentDescription();
            }
            accessibilityNodeInfo.setContentDescription(((Object) title) + ", " + ((Object) this.G.r()));
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
        accessibilityNodeInfoCompatWrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, getItemVisiblePosition(), 1, false, isSelected()));
        if (isSelected()) {
            accessibilityNodeInfoCompatWrap.setClickable(false);
            accessibilityNodeInfoCompatWrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }
        accessibilityNodeInfoCompatWrap.setRoleDescription(getResources().getString(com.google.android.material.R.string.item_view_role_description));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        post(new b(i10));
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setActiveIndicatorDrawable(@Nullable Drawable drawable) {
        View view = this.f31082n;
        if (view == null) {
            return;
        }
        view.setBackgroundDrawable(drawable);
        m();
    }

    public void setActiveIndicatorEnabled(boolean z10) {
        this.B = z10;
        m();
        View view = this.f31082n;
        if (view != null) {
            view.setVisibility(z10 ? 0 : 8);
            requestLayout();
        }
    }

    public void setActiveIndicatorHeight(int i10) {
        this.D = i10;
        v(getWidth());
    }

    public void setActiveIndicatorLabelPadding(int i10) {
        if (this.f31075g != i10) {
            this.f31075g = i10;
            l();
        }
    }

    public void setActiveIndicatorMarginHorizontal(@Px int i10) {
        this.F = i10;
        v(getWidth());
    }

    public void setActiveIndicatorResizeable(boolean z10) {
        this.E = z10;
    }

    public void setActiveIndicatorWidth(int i10) {
        this.C = i10;
        v(getWidth());
    }

    void setBadge(@NonNull BadgeDrawable badgeDrawable) {
        if (this.G == badgeDrawable) {
            return;
        }
        if (i() && this.f31083o != null) {
            t(this.f31083o);
        }
        this.G = badgeDrawable;
        ImageView imageView = this.f31083o;
        if (imageView != null) {
            s(imageView);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z10) {
        refreshDrawableState();
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z10) {
        TextView textView = this.f31086r;
        textView.setPivotX(textView.getWidth() / 2);
        TextView textView2 = this.f31086r;
        textView2.setPivotY(textView2.getBaseline());
        TextView textView3 = this.f31085q;
        textView3.setPivotX(textView3.getWidth() / 2);
        TextView textView4 = this.f31085q;
        textView4.setPivotY(textView4.getBaseline());
        k(z10 ? 1.0f : 0.0f);
        int i10 = this.f31079k;
        if (i10 != -1) {
            if (i10 == 0) {
                if (z10) {
                    r(getIconOrContainer(), this.f31073e, 49);
                    x(this.f31084p, this.f31074f);
                    this.f31086r.setVisibility(0);
                } else {
                    r(getIconOrContainer(), this.f31073e, 17);
                    x(this.f31084p, 0);
                    this.f31086r.setVisibility(4);
                }
                this.f31085q.setVisibility(4);
            } else if (i10 == 1) {
                x(this.f31084p, this.f31074f);
                if (z10) {
                    r(getIconOrContainer(), (int) (this.f31073e + this.f31076h), 49);
                    q(this.f31086r, 1.0f, 1.0f, 0);
                    TextView textView5 = this.f31085q;
                    float f10 = this.f31077i;
                    q(textView5, f10, f10, 4);
                } else {
                    r(getIconOrContainer(), this.f31073e, 49);
                    TextView textView6 = this.f31086r;
                    float f11 = this.f31078j;
                    q(textView6, f11, f11, 4);
                    q(this.f31085q, 1.0f, 1.0f, 0);
                }
            } else if (i10 == 2) {
                r(getIconOrContainer(), this.f31073e, 17);
                this.f31086r.setVisibility(8);
                this.f31085q.setVisibility(8);
            }
        } else if (this.f31080l) {
            if (z10) {
                r(getIconOrContainer(), this.f31073e, 49);
                x(this.f31084p, this.f31074f);
                this.f31086r.setVisibility(0);
            } else {
                r(getIconOrContainer(), this.f31073e, 17);
                x(this.f31084p, 0);
                this.f31086r.setVisibility(4);
            }
            this.f31085q.setVisibility(4);
        } else {
            x(this.f31084p, this.f31074f);
            if (z10) {
                r(getIconOrContainer(), (int) (this.f31073e + this.f31076h), 49);
                q(this.f31086r, 1.0f, 1.0f, 0);
                TextView textView7 = this.f31085q;
                float f12 = this.f31077i;
                q(textView7, f12, f12, 4);
            } else {
                r(getIconOrContainer(), this.f31073e, 49);
                TextView textView8 = this.f31086r;
                float f13 = this.f31078j;
                q(textView8, f13, f13, 4);
                q(this.f31085q, 1.0f, 1.0f, 0);
            }
        }
        refreshDrawableState();
        setSelected(z10);
    }

    @Override // android.view.View, androidx.appcompat.view.menu.MenuView.ItemView
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        this.f31085q.setEnabled(z10);
        this.f31086r.setEnabled(z10);
        this.f31083o.setEnabled(z10);
        if (z10) {
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        } else {
            ViewCompat.setPointerIcon(this, null);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(@Nullable Drawable drawable) {
        if (drawable == this.f31091w) {
            return;
        }
        this.f31091w = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = DrawableCompat.wrap(drawable).mutate();
            this.f31092x = drawable;
            ColorStateList colorStateList = this.f31090v;
            if (colorStateList != null) {
                DrawableCompat.setTintList(drawable, colorStateList);
            }
        }
        this.f31083o.setImageDrawable(drawable);
    }

    public void setIconSize(int i10) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f31083o.getLayoutParams();
        layoutParams.width = i10;
        layoutParams.height = i10;
        this.f31083o.setLayoutParams(layoutParams);
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        Drawable drawable;
        this.f31090v = colorStateList;
        if (this.f31089u == null || (drawable = this.f31092x) == null) {
            return;
        }
        DrawableCompat.setTintList(drawable, colorStateList);
        this.f31092x.invalidateSelf();
    }

    public void setItemBackground(int i10) {
        setItemBackground(i10 == 0 ? null : ContextCompat.getDrawable(getContext(), i10));
    }

    public void setItemPaddingBottom(int i10) {
        if (this.f31074f != i10) {
            this.f31074f = i10;
            l();
        }
    }

    public void setItemPaddingTop(int i10) {
        if (this.f31073e != i10) {
            this.f31073e = i10;
            l();
        }
    }

    public void setItemPosition(int i10) {
        this.f31087s = i10;
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        this.f31071c = colorStateList;
        m();
    }

    public void setLabelVisibilityMode(int i10) {
        if (this.f31079k != i10) {
            this.f31079k = i10;
            w();
            v(getWidth());
            l();
        }
    }

    public void setShifting(boolean z10) {
        if (this.f31080l != z10) {
            this.f31080l = z10;
            l();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setShortcut(boolean z10, char c10) {
    }

    public void setTextAppearanceActive(@StyleRes int i10) {
        this.f31088t = i10;
        p(this.f31086r, i10);
        e(this.f31085q.getTextSize(), this.f31086r.getTextSize());
    }

    public void setTextAppearanceActiveBoldEnabled(boolean z10) {
        setTextAppearanceActive(this.f31088t);
        TextView textView = this.f31086r;
        textView.setTypeface(textView.getTypeface(), z10 ? 1 : 0);
    }

    public void setTextAppearanceInactive(@StyleRes int i10) {
        p(this.f31085q, i10);
        e(this.f31085q.getTextSize(), this.f31086r.getTextSize());
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f31085q.setTextColor(colorStateList);
            this.f31086r.setTextColor(colorStateList);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(@Nullable CharSequence charSequence) {
        this.f31085q.setText(charSequence);
        this.f31086r.setText(charSequence);
        MenuItemImpl menuItemImpl = this.f31089u;
        if (menuItemImpl == null || TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(charSequence);
        }
        MenuItemImpl menuItemImpl2 = this.f31089u;
        if (menuItemImpl2 != null && !TextUtils.isEmpty(menuItemImpl2.getTooltipText())) {
            charSequence = this.f31089u.getTooltipText();
        }
        if (Build.VERSION.SDK_INT > 23) {
            TooltipCompat.setTooltipText(this, charSequence);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        this.f31072d = drawable;
        m();
    }
}
