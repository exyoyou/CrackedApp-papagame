package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.g0;
import com.google.android.material.internal.p0;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.j;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
@ViewPager.DecorView
public class TabLayout extends HorizontalScrollView {
    private static final int L1 = -1;
    private static final String V1 = "TabLayout";

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    public static final int f31971a2 = 0;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    public static final int f31973b2 = 1;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    public static final int f31974c2 = 2;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    public static final int f31975d2 = 0;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    public static final int f31976e2 = 1;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    @Dimension(unit = 0)
    private static final int f31977f1 = 72;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    public static final int f31978f2 = 0;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    public static final int f31979g2 = 1;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    public static final int f31980h2 = 2;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    @Dimension(unit = 0)
    static final int f31981i1 = 8;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    public static final int f31982i2 = 0;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    public static final int f31983j2 = 1;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    public static final int f31984k2 = 2;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    @Dimension(unit = 0)
    private static final int f31985l1 = 48;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    public static final int f31986l2 = 3;

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    public static final int f31987m2 = 0;

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    public static final int f31988n2 = 1;

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    public static final int f31989o2 = 2;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    @Dimension(unit = 0)
    private static final int f31990p1 = 56;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    @Dimension(unit = 0)
    static final int f31991q1 = 16;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private static final int f31992r1 = -1;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private static final int f31993v1 = 300;
    private int A;
    int B;
    int C;
    int D;
    int E;
    boolean F;
    boolean G;
    int H;
    int I;
    boolean J;
    private com.google.android.material.tabs.c K;
    private final TimeInterpolator L;

    @Nullable
    private c M;
    private final ArrayList<c> N;

    @Nullable
    private c O;
    private ValueAnimator P;

    @Nullable
    ViewPager Q;

    @Nullable
    private PagerAdapter R;
    private DataSetObserver S;
    private h T;
    private b U;
    private boolean V;
    private int W;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f31994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList<g> f31995c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private g f31996d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    final f f31997e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f31998f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f31999g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f32000h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f32001i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f32002j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f32003k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f32004l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    ColorStateList f32005m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    ColorStateList f32006n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    ColorStateList f32007o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    Drawable f32008p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private final Pools.Pool<TabView> f32009p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f32010q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    PorterDuff.Mode f32011r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    float f32012s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    float f32013t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    float f32014u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final int f32015v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    int f32016w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final int f32017x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final int f32018y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final int f32019z;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private static final int f31972b1 = R.style.Widget_Design_TabLayout;
    private static final Pools.Pool<g> R1 = new Pools.SynchronizedPool(16);

    public @interface LabelVisibility {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface Mode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface TabGravity {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface TabIndicatorAnimationMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface TabIndicatorGravity {
    }

    public final class TabView extends LinearLayout {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private g f32020b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TextView f32021c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ImageView f32022d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Nullable
        private View f32023e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @Nullable
        private BadgeDrawable f32024f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @Nullable
        private View f32025g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @Nullable
        private TextView f32026h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @Nullable
        private ImageView f32027i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        @Nullable
        private Drawable f32028j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f32029k;

        class a implements View.OnLayoutChangeListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ View f32031a;

            a(View view) {
                this.f32031a = view;
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                if (this.f32031a.getVisibility() == 0) {
                    TabView.this.w(this.f32031a);
                }
            }
        }

        public TabView(Context context) {
            super(context);
            this.f32029k = 2;
            x(context);
            ViewCompat.setPaddingRelative(this, TabLayout.this.f31998f, TabLayout.this.f31999g, TabLayout.this.f32000h, TabLayout.this.f32001i);
            setGravity(17);
            setOrientation(!TabLayout.this.F ? 1 : 0);
            setClickable(true);
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        }

        private void A(@Nullable TextView textView, @Nullable ImageView imageView, boolean z10) {
            boolean z11;
            g gVar = this.f32020b;
            Drawable drawableMutate = (gVar == null || gVar.h() == null) ? null : DrawableCompat.wrap(this.f32020b.h()).mutate();
            if (drawableMutate != null) {
                DrawableCompat.setTintList(drawableMutate, TabLayout.this.f32006n);
                PorterDuff.Mode mode = TabLayout.this.f32011r;
                if (mode != null) {
                    DrawableCompat.setTintMode(drawableMutate, mode);
                }
            }
            g gVar2 = this.f32020b;
            CharSequence charSequenceN = gVar2 != null ? gVar2.n() : null;
            if (imageView != null) {
                if (drawableMutate != null) {
                    imageView.setImageDrawable(drawableMutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean z12 = !TextUtils.isEmpty(charSequenceN);
            if (textView != null) {
                z11 = z12 && this.f32020b.f32050g == 1;
                textView.setText(z12 ? charSequenceN : null);
                textView.setVisibility(z11 ? 0 : 8);
                if (z12) {
                    setVisibility(0);
                }
            } else {
                z11 = false;
            }
            if (z10 && imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int i10 = (z11 && imageView.getVisibility() == 0) ? (int) p0.i(getContext(), 8) : 0;
                if (TabLayout.this.F) {
                    if (i10 != MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) {
                        MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, i10);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (i10 != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = i10;
                    MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            g gVar3 = this.f32020b;
            CharSequence charSequence = gVar3 != null ? gVar3.f32047d : null;
            if (Build.VERSION.SDK_INT > 23) {
                if (!z12) {
                    charSequenceN = charSequence;
                }
                TooltipCompat.setTooltipText(this, charSequenceN);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public BadgeDrawable getBadge() {
            return this.f32024f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @NonNull
        public BadgeDrawable getOrCreateBadge() {
            if (this.f32024f == null) {
                this.f32024f = BadgeDrawable.f(getContext());
            }
            v();
            BadgeDrawable badgeDrawable = this.f32024f;
            if (badgeDrawable != null) {
                return badgeDrawable;
            }
            throw new IllegalStateException("Unable to create badge");
        }

        private void i(@Nullable View view) {
            if (view == null) {
                return;
            }
            view.addOnLayoutChangeListener(new a(view));
        }

        private float j(@NonNull Layout layout, int i10, float f10) {
            return layout.getLineWidth(i10) * (f10 / layout.getPaint().getTextSize());
        }

        private void k(boolean z10) {
            setClipChildren(z10);
            setClipToPadding(z10);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(z10);
                viewGroup.setClipToPadding(z10);
            }
        }

        @NonNull
        private FrameLayout l() {
            FrameLayout frameLayout = new FrameLayout(getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            return frameLayout;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void m(@NonNull Canvas canvas) {
            Drawable drawable = this.f32028j;
            if (drawable != null) {
                drawable.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.f32028j.draw(canvas);
            }
        }

        @Nullable
        private FrameLayout n(@NonNull View view) {
            if ((view == this.f32022d || view == this.f32021c) && com.google.android.material.badge.c.f29463a) {
                return (FrameLayout) view.getParent();
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean o() {
            return this.f32024f != null;
        }

        private void p() {
            ViewGroup viewGroup;
            if (com.google.android.material.badge.c.f29463a) {
                FrameLayout frameLayoutL = l();
                addView(frameLayoutL, 0);
                viewGroup = frameLayoutL;
            } else {
                viewGroup = this;
            }
            ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, viewGroup, false);
            this.f32022d = imageView;
            viewGroup.addView(imageView, 0);
        }

        private void q() {
            ViewGroup viewGroup;
            if (com.google.android.material.badge.c.f29463a) {
                FrameLayout frameLayoutL = l();
                addView(frameLayoutL);
                viewGroup = frameLayoutL;
            } else {
                viewGroup = this;
            }
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_text, viewGroup, false);
            this.f32021c = textView;
            viewGroup.addView(textView);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void r() {
            if (this.f32023e != null) {
                u();
            }
            this.f32024f = null;
        }

        private void t(@Nullable View view) {
            if (o() && view != null) {
                k(false);
                com.google.android.material.badge.c.d(this.f32024f, view, n(view));
                this.f32023e = view;
            }
        }

        private void u() {
            if (o()) {
                k(true);
                View view = this.f32023e;
                if (view != null) {
                    com.google.android.material.badge.c.j(this.f32024f, view);
                    this.f32023e = null;
                }
            }
        }

        private void v() {
            g gVar;
            g gVar2;
            if (o()) {
                if (this.f32025g != null) {
                    u();
                    return;
                }
                if (this.f32022d != null && (gVar2 = this.f32020b) != null && gVar2.h() != null) {
                    View view = this.f32023e;
                    ImageView imageView = this.f32022d;
                    if (view == imageView) {
                        w(imageView);
                        return;
                    } else {
                        u();
                        t(this.f32022d);
                        return;
                    }
                }
                if (this.f32021c == null || (gVar = this.f32020b) == null || gVar.l() != 1) {
                    u();
                    return;
                }
                View view2 = this.f32023e;
                TextView textView = this.f32021c;
                if (view2 == textView) {
                    w(textView);
                } else {
                    u();
                    t(this.f32021c);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void w(@NonNull View view) {
            if (o() && view == this.f32023e) {
                com.google.android.material.badge.c.m(this.f32024f, view, n(view));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void x(Context context) {
            GradientDrawable gradientDrawable;
            int i10 = TabLayout.this.f32015v;
            if (i10 != 0) {
                Drawable drawable = AppCompatResources.getDrawable(context, i10);
                this.f32028j = drawable;
                if (drawable != null && drawable.isStateful()) {
                    this.f32028j.setState(getDrawableState());
                }
            } else {
                this.f32028j = null;
            }
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(0);
            Drawable rippleDrawable = gradientDrawable2;
            if (TabLayout.this.f32007o != null) {
                GradientDrawable gradientDrawable3 = new GradientDrawable();
                gradientDrawable3.setCornerRadius(1.0E-5f);
                gradientDrawable3.setColor(-1);
                ColorStateList colorStateListA = com.google.android.material.ripple.b.a(TabLayout.this.f32007o);
                boolean z10 = TabLayout.this.J;
                if (z10) {
                    gradientDrawable = gradientDrawable2;
                    gradientDrawable = null;
                }
                rippleDrawable = new RippleDrawable(colorStateListA, gradientDrawable, z10 ? null : gradientDrawable3);
            }
            ViewCompat.setBackground(this, rippleDrawable);
            TabLayout.this.invalidate();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.f32028j;
            boolean state = false;
            if (drawable != null && drawable.isStateful()) {
                state = false | this.f32028j.setState(drawableState);
            }
            if (state) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        int getContentHeight() {
            View[] viewArr = {this.f32021c, this.f32022d, this.f32025g};
            int iMax = 0;
            int iMin = 0;
            boolean z10 = false;
            for (int i10 = 0; i10 < 3; i10++) {
                View view = viewArr[i10];
                if (view != null && view.getVisibility() == 0) {
                    iMin = z10 ? Math.min(iMin, view.getTop()) : view.getTop();
                    iMax = z10 ? Math.max(iMax, view.getBottom()) : view.getBottom();
                    z10 = true;
                }
            }
            return iMax - iMin;
        }

        int getContentWidth() {
            View[] viewArr = {this.f32021c, this.f32022d, this.f32025g};
            int iMax = 0;
            int iMin = 0;
            boolean z10 = false;
            for (int i10 = 0; i10 < 3; i10++) {
                View view = viewArr[i10];
                if (view != null && view.getVisibility() == 0) {
                    iMin = z10 ? Math.min(iMin, view.getLeft()) : view.getLeft();
                    iMax = z10 ? Math.max(iMax, view.getRight()) : view.getRight();
                    z10 = true;
                }
            }
            return iMax - iMin;
        }

        @Nullable
        public g getTab() {
            return this.f32020b;
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompatWrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
            BadgeDrawable badgeDrawable = this.f32024f;
            if (badgeDrawable != null && badgeDrawable.isVisible()) {
                accessibilityNodeInfoCompatWrap.setContentDescription(this.f32024f.r());
            }
            accessibilityNodeInfoCompatWrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, this.f32020b.k(), 1, false, isSelected()));
            if (isSelected()) {
                accessibilityNodeInfoCompatWrap.setClickable(false);
                accessibilityNodeInfoCompatWrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            }
            accessibilityNodeInfoCompatWrap.setRoleDescription(getResources().getString(R.string.item_view_role_description));
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i10, int i11) {
            Layout layout;
            int size = View.MeasureSpec.getSize(i10);
            int mode = View.MeasureSpec.getMode(i10);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i10 = View.MeasureSpec.makeMeasureSpec(TabLayout.this.f32016w, Integer.MIN_VALUE);
            }
            super.onMeasure(i10, i11);
            if (this.f32021c != null) {
                float f10 = TabLayout.this.f32012s;
                int i12 = this.f32029k;
                ImageView imageView = this.f32022d;
                boolean z10 = true;
                if (imageView == null || imageView.getVisibility() != 0) {
                    TextView textView = this.f32021c;
                    if (textView != null && textView.getLineCount() > 1) {
                        f10 = TabLayout.this.f32014u;
                    }
                } else {
                    i12 = 1;
                }
                float textSize = this.f32021c.getTextSize();
                int lineCount = this.f32021c.getLineCount();
                int maxLines = TextViewCompat.getMaxLines(this.f32021c);
                if (f10 != textSize || (maxLines >= 0 && i12 != maxLines)) {
                    if (TabLayout.this.E == 1 && f10 > textSize && lineCount == 1 && ((layout = this.f32021c.getLayout()) == null || j(layout, 0, f10) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) {
                        z10 = false;
                    }
                    if (z10) {
                        this.f32021c.setTextSize(0, f10);
                        this.f32021c.setMaxLines(i12);
                        super.onMeasure(i10, i11);
                    }
                }
            }
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean zPerformClick = super.performClick();
            if (this.f32020b == null) {
                return zPerformClick;
            }
            if (!zPerformClick) {
                playSoundEffect(0);
            }
            this.f32020b.r();
            return true;
        }

        void s() {
            setTab(null);
            setSelected(false);
        }

        @Override // android.view.View
        public void setSelected(boolean z10) {
            if (isSelected() != z10) {
            }
            super.setSelected(z10);
            TextView textView = this.f32021c;
            if (textView != null) {
                textView.setSelected(z10);
            }
            ImageView imageView = this.f32022d;
            if (imageView != null) {
                imageView.setSelected(z10);
            }
            View view = this.f32025g;
            if (view != null) {
                view.setSelected(z10);
            }
        }

        void setTab(@Nullable g gVar) {
            if (gVar != this.f32020b) {
                this.f32020b = gVar;
                update();
            }
        }

        final void update() {
            z();
            g gVar = this.f32020b;
            setSelected(gVar != null && gVar.o());
        }

        final void y() {
            setOrientation(!TabLayout.this.F ? 1 : 0);
            TextView textView = this.f32026h;
            if (textView == null && this.f32027i == null) {
                A(this.f32021c, this.f32022d, true);
            } else {
                A(textView, this.f32027i, false);
            }
        }

        final void z() {
            ViewParent parent;
            g gVar = this.f32020b;
            View viewG = gVar != null ? gVar.g() : null;
            if (viewG != null) {
                ViewParent parent2 = viewG.getParent();
                if (parent2 != this) {
                    if (parent2 != null) {
                        ((ViewGroup) parent2).removeView(viewG);
                    }
                    View view = this.f32025g;
                    if (view != null && (parent = view.getParent()) != null) {
                        ((ViewGroup) parent).removeView(this.f32025g);
                    }
                    addView(viewG);
                }
                this.f32025g = viewG;
                TextView textView = this.f32021c;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f32022d;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f32022d.setImageDrawable(null);
                }
                TextView textView2 = (TextView) viewG.findViewById(android.R.id.text1);
                this.f32026h = textView2;
                if (textView2 != null) {
                    this.f32029k = TextViewCompat.getMaxLines(textView2);
                }
                this.f32027i = (ImageView) viewG.findViewById(android.R.id.icon);
            } else {
                View view2 = this.f32025g;
                if (view2 != null) {
                    removeView(view2);
                    this.f32025g = null;
                }
                this.f32026h = null;
                this.f32027i = null;
            }
            if (this.f32025g == null) {
                if (this.f32022d == null) {
                    p();
                }
                if (this.f32021c == null) {
                    q();
                    this.f32029k = TextViewCompat.getMaxLines(this.f32021c);
                }
                TextViewCompat.setTextAppearance(this.f32021c, TabLayout.this.f32002j);
                if (!isSelected() || TabLayout.this.f32004l == -1) {
                    TextViewCompat.setTextAppearance(this.f32021c, TabLayout.this.f32003k);
                } else {
                    TextViewCompat.setTextAppearance(this.f32021c, TabLayout.this.f32004l);
                }
                ColorStateList colorStateList = TabLayout.this.f32005m;
                if (colorStateList != null) {
                    this.f32021c.setTextColor(colorStateList);
                }
                A(this.f32021c, this.f32022d, true);
                v();
                i(this.f32022d);
                i(this.f32021c);
            } else {
                TextView textView3 = this.f32026h;
                if (textView3 != null || this.f32027i != null) {
                    A(textView3, this.f32027i, false);
                }
            }
            if (gVar == null || TextUtils.isEmpty(gVar.f32047d)) {
                return;
            }
            setContentDescription(gVar.f32047d);
        }
    }

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    private class b implements ViewPager.OnAdapterChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f32034b;

        b() {
        }

        void a(boolean z10) {
            this.f32034b = z10;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        public void onAdapterChanged(@NonNull ViewPager viewPager, @Nullable PagerAdapter pagerAdapter, @Nullable PagerAdapter pagerAdapter2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.Q == viewPager) {
                tabLayout.T(pagerAdapter2, this.f32034b);
            }
        }
    }

    @Deprecated
    public interface c<T extends g> {
        void onTabReselected(T t10);

        void onTabSelected(T t10);

        void onTabUnselected(T t10);
    }

    public interface d extends c<g> {
    }

    private class e extends DataSetObserver {
        e() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabLayout.this.J();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabLayout.this.J();
        }
    }

    class f extends LinearLayout {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ValueAnimator f32037b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f32038c;

        class a implements ValueAnimator.AnimatorUpdateListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ View f32040b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ View f32041c;

            a(View view, View view2) {
                this.f32040b = view;
                this.f32041c = view2;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                f.this.j(this.f32040b, this.f32041c, valueAnimator.getAnimatedFraction());
            }
        }

        f(Context context) {
            super(context);
            this.f32038c = -1;
            setWillNotDraw(false);
        }

        private void e() {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f31994b == -1) {
                tabLayout.f31994b = tabLayout.getSelectedTabPosition();
            }
            f(TabLayout.this.f31994b);
        }

        private void f(int i10) {
            if (TabLayout.this.W == 0 || (TabLayout.this.getTabSelectedIndicator().getBounds().left == -1 && TabLayout.this.getTabSelectedIndicator().getBounds().right == -1)) {
                View childAt = getChildAt(i10);
                com.google.android.material.tabs.c cVar = TabLayout.this.K;
                TabLayout tabLayout = TabLayout.this;
                cVar.c(tabLayout, childAt, tabLayout.f32008p);
                TabLayout.this.f31994b = i10;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g() {
            f(TabLayout.this.getSelectedTabPosition());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j(View view, View view2, float f10) {
            if (view != null && view.getWidth() > 0) {
                com.google.android.material.tabs.c cVar = TabLayout.this.K;
                TabLayout tabLayout = TabLayout.this;
                cVar.d(tabLayout, view, view2, f10, tabLayout.f32008p);
            } else {
                Drawable drawable = TabLayout.this.f32008p;
                drawable.setBounds(-1, drawable.getBounds().top, -1, TabLayout.this.f32008p.getBounds().bottom);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }

        private void k(boolean z10, int i10, int i11) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f31994b == i10) {
                return;
            }
            View childAt = getChildAt(tabLayout.getSelectedTabPosition());
            View childAt2 = getChildAt(i10);
            if (childAt2 == null) {
                g();
                return;
            }
            TabLayout.this.f31994b = i10;
            a aVar = new a(childAt, childAt2);
            if (!z10) {
                this.f32037b.removeAllUpdateListeners();
                this.f32037b.addUpdateListener(aVar);
                return;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f32037b = valueAnimator;
            valueAnimator.setInterpolator(TabLayout.this.L);
            valueAnimator.setDuration(i11);
            valueAnimator.setFloatValues(0.0f, 1.0f);
            valueAnimator.addUpdateListener(aVar);
            valueAnimator.start();
        }

        void c(int i10, int i11) {
            ValueAnimator valueAnimator = this.f32037b;
            if (valueAnimator != null && valueAnimator.isRunning() && TabLayout.this.f31994b != i10) {
                this.f32037b.cancel();
            }
            k(true, i10, i11);
        }

        boolean d() {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                if (getChildAt(i10).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.view.View
        public void draw(@NonNull Canvas canvas) {
            int height;
            int iHeight = TabLayout.this.f32008p.getBounds().height();
            if (iHeight < 0) {
                iHeight = TabLayout.this.f32008p.getIntrinsicHeight();
            }
            int i10 = TabLayout.this.D;
            if (i10 == 0) {
                height = getHeight() - iHeight;
                iHeight = getHeight();
            } else if (i10 != 1) {
                height = 0;
                if (i10 != 2) {
                    iHeight = i10 != 3 ? 0 : getHeight();
                }
            } else {
                height = (getHeight() - iHeight) / 2;
                iHeight = (getHeight() + iHeight) / 2;
            }
            if (TabLayout.this.f32008p.getBounds().width() > 0) {
                Rect bounds = TabLayout.this.f32008p.getBounds();
                TabLayout.this.f32008p.setBounds(bounds.left, height, bounds.right, iHeight);
                TabLayout.this.f32008p.draw(canvas);
            }
            super.draw(canvas);
        }

        void h(int i10, float f10) {
            TabLayout.this.f31994b = Math.round(i10 + f10);
            ValueAnimator valueAnimator = this.f32037b;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f32037b.cancel();
            }
            j(getChildAt(i10), getChildAt(i10 + 1), f10);
        }

        void i(int i10) {
            Rect bounds = TabLayout.this.f32008p.getBounds();
            TabLayout.this.f32008p.setBounds(bounds.left, 0, bounds.right, i10);
            requestLayout();
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
            super.onLayout(z10, i10, i11, i12, i13);
            ValueAnimator valueAnimator = this.f32037b;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                e();
            } else {
                k(false, TabLayout.this.getSelectedTabPosition(), -1);
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i10, int i11) {
            super.onMeasure(i10, i11);
            if (View.MeasureSpec.getMode(i10) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            boolean z10 = true;
            if (tabLayout.B == 1 || tabLayout.E == 2) {
                int childCount = getChildCount();
                int iMax = 0;
                for (int i12 = 0; i12 < childCount; i12++) {
                    View childAt = getChildAt(i12);
                    if (childAt.getVisibility() == 0) {
                        iMax = Math.max(iMax, childAt.getMeasuredWidth());
                    }
                }
                if (iMax <= 0) {
                    return;
                }
                if (iMax * childCount <= getMeasuredWidth() - (((int) p0.i(getContext(), 16)) * 2)) {
                    boolean z11 = false;
                    for (int i13 = 0; i13 < childCount; i13++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i13).getLayoutParams();
                        if (layoutParams.width != iMax || layoutParams.weight != 0.0f) {
                            layoutParams.width = iMax;
                            layoutParams.weight = 0.0f;
                            z11 = true;
                        }
                    }
                    z10 = z11;
                } else {
                    TabLayout tabLayout2 = TabLayout.this;
                    tabLayout2.B = 0;
                    tabLayout2.Y(false);
                }
                if (z10) {
                    super.onMeasure(i10, i11);
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onRtlPropertiesChanged(int i10) {
            super.onRtlPropertiesChanged(i10);
            if (Build.VERSION.SDK_INT >= 23 || this.f32038c == i10) {
                return;
            }
            requestLayout();
            this.f32038c = i10;
        }
    }

    public static class g {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final int f32043k = -1;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        private Object f32044a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        private Drawable f32045b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        private CharSequence f32046c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        private CharSequence f32047d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @Nullable
        private View f32049f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @Nullable
        public TabLayout f32051h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @NonNull
        public TabView f32052i;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f32048e = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @LabelVisibility
        private int f32050g = 1;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f32053j = -1;

        @NonNull
        @CanIgnoreReturnValue
        public g A(@LabelVisibility int i10) {
            this.f32050g = i10;
            TabLayout tabLayout = this.f32051h;
            if (tabLayout.B == 1 || tabLayout.E == 2) {
                tabLayout.Y(true);
            }
            E();
            if (com.google.android.material.badge.c.f29463a && this.f32052i.o() && this.f32052i.f32024f.isVisible()) {
                this.f32052i.invalidate();
            }
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public g B(@Nullable Object obj) {
            this.f32044a = obj;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public g C(@StringRes int i10) {
            TabLayout tabLayout = this.f32051h;
            if (tabLayout != null) {
                return D(tabLayout.getResources().getText(i10));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        @CanIgnoreReturnValue
        public g D(@Nullable CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f32047d) && !TextUtils.isEmpty(charSequence)) {
                this.f32052i.setContentDescription(charSequence);
            }
            this.f32046c = charSequence;
            E();
            return this;
        }

        void E() {
            TabView tabView = this.f32052i;
            if (tabView != null) {
                tabView.update();
            }
        }

        @Nullable
        public BadgeDrawable e() {
            return this.f32052i.getBadge();
        }

        @Nullable
        public CharSequence f() {
            TabView tabView = this.f32052i;
            if (tabView == null) {
                return null;
            }
            return tabView.getContentDescription();
        }

        @Nullable
        public View g() {
            return this.f32049f;
        }

        @Nullable
        public Drawable h() {
            return this.f32045b;
        }

        public int i() {
            return this.f32053j;
        }

        @NonNull
        public BadgeDrawable j() {
            return this.f32052i.getOrCreateBadge();
        }

        public int k() {
            return this.f32048e;
        }

        @LabelVisibility
        public int l() {
            return this.f32050g;
        }

        @Nullable
        public Object m() {
            return this.f32044a;
        }

        @Nullable
        public CharSequence n() {
            return this.f32046c;
        }

        public boolean o() {
            TabLayout tabLayout = this.f32051h;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            int selectedTabPosition = tabLayout.getSelectedTabPosition();
            return selectedTabPosition != -1 && selectedTabPosition == this.f32048e;
        }

        public void p() {
            this.f32052i.r();
        }

        void q() {
            this.f32051h = null;
            this.f32052i = null;
            this.f32044a = null;
            this.f32045b = null;
            this.f32053j = -1;
            this.f32046c = null;
            this.f32047d = null;
            this.f32048e = -1;
            this.f32049f = null;
        }

        public void r() {
            TabLayout tabLayout = this.f32051h;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.R(this);
        }

        @NonNull
        @CanIgnoreReturnValue
        public g s(@StringRes int i10) {
            TabLayout tabLayout = this.f32051h;
            if (tabLayout != null) {
                return t(tabLayout.getResources().getText(i10));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        @CanIgnoreReturnValue
        public g t(@Nullable CharSequence charSequence) {
            this.f32047d = charSequence;
            E();
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public g u(@LayoutRes int i10) {
            return v(LayoutInflater.from(this.f32052i.getContext()).inflate(i10, (ViewGroup) this.f32052i, false));
        }

        @NonNull
        @CanIgnoreReturnValue
        public g v(@Nullable View view) {
            this.f32049f = view;
            E();
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public g w(@DrawableRes int i10) {
            TabLayout tabLayout = this.f32051h;
            if (tabLayout != null) {
                return x(AppCompatResources.getDrawable(tabLayout.getContext(), i10));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        @CanIgnoreReturnValue
        public g x(@Nullable Drawable drawable) {
            this.f32045b = drawable;
            TabLayout tabLayout = this.f32051h;
            if (tabLayout.B == 1 || tabLayout.E == 2) {
                tabLayout.Y(true);
            }
            E();
            if (com.google.android.material.badge.c.f29463a && this.f32052i.o() && this.f32052i.f32024f.isVisible()) {
                this.f32052i.invalidate();
            }
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public g y(int i10) {
            this.f32053j = i10;
            TabView tabView = this.f32052i;
            if (tabView != null) {
                tabView.setId(i10);
            }
            return this;
        }

        void z(int i10) {
            this.f32048e = i10;
        }
    }

    public static class h implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NonNull
        private final WeakReference<TabLayout> f32054b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f32055c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f32056d;

        public h(TabLayout tabLayout) {
            this.f32054b = new WeakReference<>(tabLayout);
        }

        void a() {
            this.f32056d = 0;
            this.f32055c = 0;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i10) {
            this.f32055c = this.f32056d;
            this.f32056d = i10;
            TabLayout tabLayout = this.f32054b.get();
            if (tabLayout != null) {
                tabLayout.Z(this.f32056d);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i10, float f10, int i11) {
            TabLayout tabLayout = this.f32054b.get();
            if (tabLayout != null) {
                int i12 = this.f32056d;
                tabLayout.U(i10, f10, i12 != 2 || this.f32055c == 1, (i12 == 2 && this.f32055c == 0) ? false : true, false);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i10) {
            TabLayout tabLayout = this.f32054b.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i10 || i10 >= tabLayout.getTabCount()) {
                return;
            }
            int i11 = this.f32056d;
            tabLayout.S(tabLayout.D(i10), i11 == 0 || (i11 == 2 && this.f32055c == 0));
        }
    }

    public static class i implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ViewPager f32057a;

        public i(ViewPager viewPager) {
            this.f32057a = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabReselected(g gVar) {
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabSelected(@NonNull g gVar) {
            this.f32057a.setCurrentItem(gVar.k());
        }

        @Override // com.google.android.material.tabs.TabLayout.c
        public void onTabUnselected(g gVar) {
        }
    }

    public TabLayout(@NonNull Context context) {
        this(context, null);
    }

    private void A(@NonNull g gVar) {
        for (int size = this.N.size() - 1; size >= 0; size--) {
            this.N.get(size).onTabSelected(gVar);
        }
    }

    private void B(@NonNull g gVar) {
        for (int size = this.N.size() - 1; size >= 0; size--) {
            this.N.get(size).onTabUnselected(gVar);
        }
    }

    private void C() {
        if (this.P == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.P = valueAnimator;
            valueAnimator.setInterpolator(this.L);
            this.P.setDuration(this.C);
            this.P.addUpdateListener(new a());
        }
    }

    private boolean G() {
        return getTabMode() == 0 || getTabMode() == 2;
    }

    private void Q(int i10) {
        TabView tabView = (TabView) this.f31997e.getChildAt(i10);
        this.f31997e.removeViewAt(i10);
        if (tabView != null) {
            tabView.s();
            this.f32009p0.release(tabView);
        }
        requestLayout();
    }

    private void V(@Nullable ViewPager viewPager, boolean z10, boolean z11) {
        ViewPager viewPager2 = this.Q;
        if (viewPager2 != null) {
            h hVar = this.T;
            if (hVar != null) {
                viewPager2.removeOnPageChangeListener(hVar);
            }
            b bVar = this.U;
            if (bVar != null) {
                this.Q.removeOnAdapterChangeListener(bVar);
            }
        }
        c cVar = this.O;
        if (cVar != null) {
            M(cVar);
            this.O = null;
        }
        if (viewPager != null) {
            this.Q = viewPager;
            if (this.T == null) {
                this.T = new h(this);
            }
            this.T.a();
            viewPager.addOnPageChangeListener(this.T);
            i iVar = new i(viewPager);
            this.O = iVar;
            g(iVar);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                T(adapter, z10);
            }
            if (this.U == null) {
                this.U = new b();
            }
            this.U.a(z10);
            viewPager.addOnAdapterChangeListener(this.U);
            setScrollPosition(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.Q = null;
            T(null, false);
        }
        this.V = z11;
    }

    private void W() {
        int size = this.f31995c.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f31995c.get(i10).E();
        }
    }

    private void X(@NonNull LinearLayout.LayoutParams layoutParams) {
        if (this.E == 1 && this.B == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
    }

    @Dimension(unit = 0)
    private int getDefaultHeight() {
        int size = this.f31995c.size();
        boolean z10 = false;
        for (int i10 = 0; i10 < size; i10++) {
            g gVar = this.f31995c.get(i10);
            if (gVar != null && gVar.h() != null && !TextUtils.isEmpty(gVar.n())) {
                z10 = true;
                break;
            }
        }
        return (!z10 || this.F) ? 48 : 72;
    }

    private int getTabMinWidth() {
        int i10 = this.f32017x;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.E;
        if (i11 == 0 || i11 == 2) {
            return this.f32019z;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f31997e.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void m(@NonNull TabItem tabItem) {
        g gVarI = I();
        CharSequence charSequence = tabItem.f31968b;
        if (charSequence != null) {
            gVarI.D(charSequence);
        }
        Drawable drawable = tabItem.f31969c;
        if (drawable != null) {
            gVarI.x(drawable);
        }
        int i10 = tabItem.f31970d;
        if (i10 != 0) {
            gVarI.u(i10);
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            gVarI.t(tabItem.getContentDescription());
        }
        i(gVarI);
    }

    private void n(@NonNull g gVar) {
        TabView tabView = gVar.f32052i;
        tabView.setSelected(false);
        tabView.setActivated(false);
        this.f31997e.addView(tabView, gVar.k(), w());
    }

    private void o(View view) {
        if (!(view instanceof TabItem)) {
            throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
        }
        m((TabItem) view);
    }

    private void p(int i10) {
        if (i10 == -1) {
            return;
        }
        if (getWindowToken() == null || !ViewCompat.isLaidOut(this) || this.f31997e.d()) {
            setScrollPosition(i10, 0.0f, true);
            return;
        }
        int scrollX = getScrollX();
        int iS = s(i10, 0.0f);
        if (scrollX != iS) {
            C();
            this.P.setIntValues(scrollX, iS);
            this.P.start();
        }
        this.f31997e.c(i10, this.C);
    }

    private void q(int i10) {
        if (i10 != 0) {
            if (i10 == 1) {
                this.f31997e.setGravity(1);
                return;
            } else if (i10 != 2) {
                return;
            }
        }
        this.f31997e.setGravity(GravityCompat.START);
    }

    private void r() {
        int i10 = this.E;
        ViewCompat.setPaddingRelative(this.f31997e, (i10 == 0 || i10 == 2) ? Math.max(0, this.A - this.f31998f) : 0, 0, 0, 0);
        int i11 = this.E;
        if (i11 == 0) {
            q(this.B);
        } else if (i11 == 1 || i11 == 2) {
            this.f31997e.setGravity(1);
        }
        Y(true);
    }

    private int s(int i10, float f10) {
        View childAt;
        int i11 = this.E;
        if ((i11 != 0 && i11 != 2) || (childAt = this.f31997e.getChildAt(i10)) == null) {
            return 0;
        }
        int i12 = i10 + 1;
        View childAt2 = i12 < this.f31997e.getChildCount() ? this.f31997e.getChildAt(i12) : null;
        int width = childAt.getWidth();
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i13 = (int) ((width + width2) * 0.5f * f10);
        return ViewCompat.getLayoutDirection(this) == 0 ? left + i13 : left - i13;
    }

    private void setSelectedTabView(int i10) {
        int childCount = this.f31997e.getChildCount();
        if (i10 < childCount) {
            int i11 = 0;
            while (i11 < childCount) {
                View childAt = this.f31997e.getChildAt(i11);
                if ((i11 != i10 || childAt.isSelected()) && (i11 == i10 || !childAt.isSelected())) {
                    childAt.setSelected(i11 == i10);
                    childAt.setActivated(i11 == i10);
                } else {
                    childAt.setSelected(i11 == i10);
                    childAt.setActivated(i11 == i10);
                    if (childAt instanceof TabView) {
                        ((TabView) childAt).z();
                    }
                }
                i11++;
            }
        }
    }

    private void u(@NonNull g gVar, int i10) {
        gVar.z(i10);
        this.f31995c.add(i10, gVar);
        int size = this.f31995c.size();
        int i11 = -1;
        for (int i12 = i10 + 1; i12 < size; i12++) {
            if (this.f31995c.get(i12).k() == this.f31994b) {
                i11 = i12;
            }
            this.f31995c.get(i12).z(i12);
        }
        this.f31994b = i11;
    }

    @NonNull
    private static ColorStateList v(int i10, int i11) {
        return new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i11, i10});
    }

    @NonNull
    private LinearLayout.LayoutParams w() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        X(layoutParams);
        return layoutParams;
    }

    @NonNull
    private TabView y(@NonNull g gVar) {
        Pools.Pool<TabView> pool = this.f32009p0;
        TabView tabViewAcquire = pool != null ? pool.acquire() : null;
        if (tabViewAcquire == null) {
            tabViewAcquire = new TabView(getContext());
        }
        tabViewAcquire.setTab(gVar);
        tabViewAcquire.setFocusable(true);
        tabViewAcquire.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(gVar.f32047d)) {
            tabViewAcquire.setContentDescription(gVar.f32046c);
        } else {
            tabViewAcquire.setContentDescription(gVar.f32047d);
        }
        return tabViewAcquire;
    }

    private void z(@NonNull g gVar) {
        for (int size = this.N.size() - 1; size >= 0; size--) {
            this.N.get(size).onTabReselected(gVar);
        }
    }

    @Nullable
    public g D(int i10) {
        if (i10 < 0 || i10 >= getTabCount()) {
            return null;
        }
        return this.f31995c.get(i10);
    }

    public boolean E() {
        return this.J;
    }

    public boolean F() {
        return this.F;
    }

    public boolean H() {
        return this.G;
    }

    @NonNull
    public g I() {
        g gVarX = x();
        gVarX.f32051h = this;
        gVarX.f32052i = y(gVarX);
        if (gVarX.f32053j != -1) {
            gVarX.f32052i.setId(gVarX.f32053j);
        }
        return gVarX;
    }

    void J() {
        int currentItem;
        L();
        PagerAdapter pagerAdapter = this.R;
        if (pagerAdapter != null) {
            int count = pagerAdapter.getCount();
            for (int i10 = 0; i10 < count; i10++) {
                l(I().D(this.R.getPageTitle(i10)), false);
            }
            ViewPager viewPager = this.Q;
            if (viewPager == null || count <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            R(D(currentItem));
        }
    }

    protected boolean K(g gVar) {
        return R1.release(gVar);
    }

    public void L() {
        for (int childCount = this.f31997e.getChildCount() - 1; childCount >= 0; childCount--) {
            Q(childCount);
        }
        Iterator<g> it2 = this.f31995c.iterator();
        while (it2.hasNext()) {
            g next = it2.next();
            it2.remove();
            next.q();
            K(next);
        }
        this.f31996d = null;
    }

    @Deprecated
    public void M(@Nullable c cVar) {
        this.N.remove(cVar);
    }

    public void N(@NonNull d dVar) {
        M(dVar);
    }

    public void O(@NonNull g gVar) {
        if (gVar.f32051h != this) {
            throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
        }
        P(gVar.k());
    }

    public void P(int i10) {
        g gVar = this.f31996d;
        int iK = gVar != null ? gVar.k() : 0;
        Q(i10);
        g gVarRemove = this.f31995c.remove(i10);
        if (gVarRemove != null) {
            gVarRemove.q();
            K(gVarRemove);
        }
        int size = this.f31995c.size();
        int i11 = -1;
        for (int i12 = i10; i12 < size; i12++) {
            if (this.f31995c.get(i12).k() == this.f31994b) {
                i11 = i12;
            }
            this.f31995c.get(i12).z(i12);
        }
        this.f31994b = i11;
        if (iK == i10) {
            R(this.f31995c.isEmpty() ? null : this.f31995c.get(Math.max(0, i10 - 1)));
        }
    }

    public void R(@Nullable g gVar) {
        S(gVar, true);
    }

    public void S(@Nullable g gVar, boolean z10) {
        g gVar2 = this.f31996d;
        if (gVar2 == gVar) {
            if (gVar2 != null) {
                z(gVar);
                p(gVar.k());
                return;
            }
            return;
        }
        int iK = gVar != null ? gVar.k() : -1;
        if (z10) {
            if ((gVar2 == null || gVar2.k() == -1) && iK != -1) {
                setScrollPosition(iK, 0.0f, true);
            } else {
                p(iK);
            }
            if (iK != -1) {
                setSelectedTabView(iK);
            }
        }
        this.f31996d = gVar;
        if (gVar2 != null && gVar2.f32051h != null) {
            B(gVar2);
        }
        if (gVar != null) {
            A(gVar);
        }
    }

    void T(@Nullable PagerAdapter pagerAdapter, boolean z10) {
        DataSetObserver dataSetObserver;
        PagerAdapter pagerAdapter2 = this.R;
        if (pagerAdapter2 != null && (dataSetObserver = this.S) != null) {
            pagerAdapter2.unregisterDataSetObserver(dataSetObserver);
        }
        this.R = pagerAdapter;
        if (z10 && pagerAdapter != null) {
            if (this.S == null) {
                this.S = new e();
            }
            pagerAdapter.registerDataSetObserver(this.S);
        }
        J();
    }

    void U(int i10, float f10, boolean z10, boolean z11, boolean z12) {
        int iRound = Math.round(i10 + f10);
        if (iRound < 0 || iRound >= this.f31997e.getChildCount()) {
            return;
        }
        if (z11) {
            this.f31997e.h(i10, f10);
        }
        ValueAnimator valueAnimator = this.P;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.P.cancel();
        }
        int iS = s(i10, f10);
        int scrollX = getScrollX();
        boolean z13 = (i10 < getSelectedTabPosition() && iS >= scrollX) || (i10 > getSelectedTabPosition() && iS <= scrollX) || i10 == getSelectedTabPosition();
        if (ViewCompat.getLayoutDirection(this) == 1) {
            z13 = (i10 < getSelectedTabPosition() && iS <= scrollX) || (i10 > getSelectedTabPosition() && iS >= scrollX) || i10 == getSelectedTabPosition();
        }
        if (z13 || this.W == 1 || z12) {
            if (i10 < 0) {
                iS = 0;
            }
            scrollTo(iS, 0);
        }
        if (z10) {
            setSelectedTabView(iRound);
        }
    }

    void Y(boolean z10) {
        for (int i10 = 0; i10 < this.f31997e.getChildCount(); i10++) {
            View childAt = this.f31997e.getChildAt(i10);
            childAt.setMinimumWidth(getTabMinWidth());
            X((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z10) {
                childAt.requestLayout();
            }
        }
    }

    void Z(int i10) {
        this.W = i10;
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        o(view);
    }

    @Deprecated
    public void g(@Nullable c cVar) {
        if (this.N.contains(cVar)) {
            return;
        }
        this.N.add(cVar);
    }

    public int getSelectedTabPosition() {
        g gVar = this.f31996d;
        if (gVar != null) {
            return gVar.k();
        }
        return -1;
    }

    public int getTabCount() {
        return this.f31995c.size();
    }

    public int getTabGravity() {
        return this.B;
    }

    @Nullable
    public ColorStateList getTabIconTint() {
        return this.f32006n;
    }

    public int getTabIndicatorAnimationMode() {
        return this.I;
    }

    public int getTabIndicatorGravity() {
        return this.D;
    }

    int getTabMaxWidth() {
        return this.f32016w;
    }

    public int getTabMode() {
        return this.E;
    }

    @Nullable
    public ColorStateList getTabRippleColor() {
        return this.f32007o;
    }

    @NonNull
    public Drawable getTabSelectedIndicator() {
        return this.f32008p;
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.f32005m;
    }

    public void h(@NonNull d dVar) {
        g(dVar);
    }

    public void i(@NonNull g gVar) {
        l(gVar, this.f31995c.isEmpty());
    }

    public void j(@NonNull g gVar, int i10) {
        k(gVar, i10, this.f31995c.isEmpty());
    }

    public void k(@NonNull g gVar, int i10, boolean z10) {
        if (gVar.f32051h != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        u(gVar, i10);
        n(gVar);
        if (z10) {
            gVar.r();
        }
    }

    public void l(@NonNull g gVar, boolean z10) {
        k(gVar, this.f31995c.size(), z10);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        j.e(this);
        if (this.Q == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                V((ViewPager) parent, true, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.V) {
            setupWithViewPager(null);
            this.V = false;
        }
    }

    @Override // android.view.View
    protected void onDraw(@NonNull Canvas canvas) {
        for (int i10 = 0; i10 < this.f31997e.getChildCount(); i10++) {
            View childAt = this.f31997e.getChildAt(i10);
            if (childAt instanceof TabView) {
                ((TabView) childAt).m(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getTabCount(), false, 1));
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return G() && super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0080  */
    /* JADX WARN: Code duplicated, block: B:30:0x0082  */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int iRound = Math.round(p0.i(getContext(), getDefaultHeight()));
        int mode = View.MeasureSpec.getMode(i11);
        boolean z10 = false;
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i11 = View.MeasureSpec.makeMeasureSpec(iRound + getPaddingTop() + getPaddingBottom(), 1073741824);
            }
        } else if (getChildCount() == 1 && View.MeasureSpec.getSize(i11) >= iRound) {
            getChildAt(0).setMinimumHeight(iRound);
        }
        int size = View.MeasureSpec.getSize(i10);
        if (View.MeasureSpec.getMode(i10) != 0) {
            int i12 = this.f32018y;
            if (i12 <= 0) {
                i12 = (int) (size - p0.i(getContext(), 56));
            }
            this.f32016w = i12;
        }
        super.onMeasure(i10, i11);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i13 = this.E;
            if (i13 == 0) {
                if (childAt.getMeasuredWidth() < getMeasuredWidth()) {
                    z10 = true;
                }
            } else if (i13 != 1) {
                if (i13 == 2) {
                    if (childAt.getMeasuredWidth() < getMeasuredWidth()) {
                        z10 = true;
                    }
                }
            } else if (childAt.getMeasuredWidth() != getMeasuredWidth()) {
                z10 = true;
            }
            if (z10) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i11, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 8 || G()) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f10) {
        super.setElevation(f10);
        j.d(this, f10);
    }

    public void setInlineLabel(boolean z10) {
        if (this.F != z10) {
            this.F = z10;
            for (int i10 = 0; i10 < this.f31997e.getChildCount(); i10++) {
                View childAt = this.f31997e.getChildAt(i10);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).y();
                }
            }
            r();
        }
    }

    public void setInlineLabelResource(@BoolRes int i10) {
        setInlineLabel(getResources().getBoolean(i10));
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable d dVar) {
        setOnTabSelectedListener((c) dVar);
    }

    void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        C();
        this.P.addListener(animatorListener);
    }

    public void setScrollPosition(int i10, float f10, boolean z10) {
        setScrollPosition(i10, f10, z10, true);
    }

    public void setSelectedTabIndicator(@Nullable Drawable drawable) {
        if (drawable == null) {
            drawable = new GradientDrawable();
        }
        Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
        this.f32008p = drawableMutate;
        com.google.android.material.drawable.g.n(drawableMutate, this.f32010q);
        int intrinsicHeight = this.H;
        if (intrinsicHeight == -1) {
            intrinsicHeight = this.f32008p.getIntrinsicHeight();
        }
        this.f31997e.i(intrinsicHeight);
    }

    public void setSelectedTabIndicatorColor(@ColorInt int i10) {
        this.f32010q = i10;
        com.google.android.material.drawable.g.n(this.f32008p, i10);
        Y(false);
    }

    public void setSelectedTabIndicatorGravity(int i10) {
        if (this.D != i10) {
            this.D = i10;
            ViewCompat.postInvalidateOnAnimation(this.f31997e);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i10) {
        this.H = i10;
        this.f31997e.i(i10);
    }

    public void setTabGravity(int i10) {
        if (this.B != i10) {
            this.B = i10;
            r();
        }
    }

    public void setTabIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f32006n != colorStateList) {
            this.f32006n = colorStateList;
            W();
        }
    }

    public void setTabIconTintResource(@ColorRes int i10) {
        setTabIconTint(AppCompatResources.getColorStateList(getContext(), i10));
    }

    public void setTabIndicatorAnimationMode(int i10) {
        this.I = i10;
        if (i10 == 0) {
            this.K = new com.google.android.material.tabs.c();
            return;
        }
        if (i10 == 1) {
            this.K = new com.google.android.material.tabs.a();
        } else {
            if (i10 == 2) {
                this.K = new com.google.android.material.tabs.b();
                return;
            }
            throw new IllegalArgumentException(i10 + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z10) {
        this.G = z10;
        this.f31997e.g();
        ViewCompat.postInvalidateOnAnimation(this.f31997e);
    }

    public void setTabMode(int i10) {
        if (i10 != this.E) {
            this.E = i10;
            r();
        }
    }

    public void setTabRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f32007o != colorStateList) {
            this.f32007o = colorStateList;
            for (int i10 = 0; i10 < this.f31997e.getChildCount(); i10++) {
                View childAt = this.f31997e.getChildAt(i10);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).x(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(@ColorRes int i10) {
        setTabRippleColor(AppCompatResources.getColorStateList(getContext(), i10));
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.f32005m != colorStateList) {
            this.f32005m = colorStateList;
            W();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable PagerAdapter pagerAdapter) {
        T(pagerAdapter, false);
    }

    public void setUnboundedRipple(boolean z10) {
        if (this.J != z10) {
            this.J = z10;
            for (int i10 = 0; i10 < this.f31997e.getChildCount(); i10++) {
                View childAt = this.f31997e.getChildAt(i10);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).x(getContext());
                }
            }
        }
    }

    public void setUnboundedRippleResource(@BoolRes int i10) {
        setUnboundedRipple(getResources().getBoolean(i10));
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        setupWithViewPager(viewPager, true);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    public void t() {
        this.N.clear();
    }

    protected g x() {
        g gVarAcquire = R1.acquire();
        return gVarAcquire == null ? new g() : gVarAcquire;
    }

    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.tabStyle);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i10) {
        o(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable c cVar) {
        c cVar2 = this.M;
        if (cVar2 != null) {
            M(cVar2);
        }
        this.M = cVar;
        if (cVar != null) {
            g(cVar);
        }
    }

    public void setScrollPosition(int i10, float f10, boolean z10, boolean z11) {
        U(i10, f10, z10, z11, true);
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager, boolean z10) {
        V(viewPager, z10, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f31972b1;
        super(a5.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f31994b = -1;
        this.f31995c = new ArrayList<>();
        this.f32004l = -1;
        this.f32010q = 0;
        this.f32016w = Integer.MAX_VALUE;
        this.H = -1;
        this.N = new ArrayList<>();
        this.f32009p0 = new Pools.SimplePool(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        f fVar = new f(context2);
        this.f31997e = fVar;
        super.addView(fVar, 0, new FrameLayout.LayoutParams(-2, -1));
        int[] iArr = R.styleable.TabLayout;
        int i12 = R.styleable.TabLayout_tabTextAppearance;
        TypedArray typedArrayK = g0.k(context2, attributeSet, iArr, i10, i11, i12);
        ColorStateList colorStateListG = com.google.android.material.drawable.g.g(getBackground());
        if (colorStateListG != null) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            materialShapeDrawable.p0(colorStateListG);
            materialShapeDrawable.a0(context2);
            materialShapeDrawable.o0(ViewCompat.getElevation(this));
            ViewCompat.setBackground(this, materialShapeDrawable);
        }
        setSelectedTabIndicator(com.google.android.material.resources.d.e(context2, typedArrayK, R.styleable.TabLayout_tabIndicator));
        setSelectedTabIndicatorColor(typedArrayK.getColor(R.styleable.TabLayout_tabIndicatorColor, 0));
        fVar.i(typedArrayK.getDimensionPixelSize(R.styleable.TabLayout_tabIndicatorHeight, -1));
        setSelectedTabIndicatorGravity(typedArrayK.getInt(R.styleable.TabLayout_tabIndicatorGravity, 0));
        setTabIndicatorAnimationMode(typedArrayK.getInt(R.styleable.TabLayout_tabIndicatorAnimationMode, 0));
        setTabIndicatorFullWidth(typedArrayK.getBoolean(R.styleable.TabLayout_tabIndicatorFullWidth, true));
        int dimensionPixelSize = typedArrayK.getDimensionPixelSize(R.styleable.TabLayout_tabPadding, 0);
        this.f32001i = dimensionPixelSize;
        this.f32000h = dimensionPixelSize;
        this.f31999g = dimensionPixelSize;
        this.f31998f = dimensionPixelSize;
        this.f31998f = typedArrayK.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingStart, dimensionPixelSize);
        this.f31999g = typedArrayK.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingTop, this.f31999g);
        this.f32000h = typedArrayK.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingEnd, this.f32000h);
        this.f32001i = typedArrayK.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingBottom, this.f32001i);
        if (g0.h(context2)) {
            this.f32002j = R.attr.textAppearanceTitleSmall;
        } else {
            this.f32002j = R.attr.textAppearanceButton;
        }
        int resourceId = typedArrayK.getResourceId(i12, R.style.TextAppearance_Design_Tab);
        this.f32003k = resourceId;
        int[] iArr2 = androidx.appcompat.R.styleable.TextAppearance;
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(resourceId, iArr2);
        try {
            int i13 = androidx.appcompat.R.styleable.TextAppearance_android_textSize;
            this.f32012s = typedArrayObtainStyledAttributes.getDimensionPixelSize(i13, 0);
            int i14 = androidx.appcompat.R.styleable.TextAppearance_android_textColor;
            this.f32005m = com.google.android.material.resources.d.a(context2, typedArrayObtainStyledAttributes, i14);
            typedArrayObtainStyledAttributes.recycle();
            int i15 = R.styleable.TabLayout_tabSelectedTextAppearance;
            if (typedArrayK.hasValue(i15)) {
                this.f32004l = typedArrayK.getResourceId(i15, resourceId);
            }
            int i16 = this.f32004l;
            if (i16 != -1) {
                TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(i16, iArr2);
                try {
                    this.f32013t = typedArrayObtainStyledAttributes2.getDimensionPixelSize(i13, (int) this.f32012s);
                    ColorStateList colorStateListA = com.google.android.material.resources.d.a(context2, typedArrayObtainStyledAttributes2, i14);
                    if (colorStateListA != null) {
                        this.f32005m = v(this.f32005m.getDefaultColor(), colorStateListA.getColorForState(new int[]{android.R.attr.state_selected}, colorStateListA.getDefaultColor()));
                    }
                    typedArrayObtainStyledAttributes2.recycle();
                } catch (Throwable th) {
                    typedArrayObtainStyledAttributes2.recycle();
                    throw th;
                }
            }
            int i17 = R.styleable.TabLayout_tabTextColor;
            if (typedArrayK.hasValue(i17)) {
                this.f32005m = com.google.android.material.resources.d.a(context2, typedArrayK, i17);
            }
            int i18 = R.styleable.TabLayout_tabSelectedTextColor;
            if (typedArrayK.hasValue(i18)) {
                this.f32005m = v(this.f32005m.getDefaultColor(), typedArrayK.getColor(i18, 0));
            }
            this.f32006n = com.google.android.material.resources.d.a(context2, typedArrayK, R.styleable.TabLayout_tabIconTint);
            this.f32011r = p0.u(typedArrayK.getInt(R.styleable.TabLayout_tabIconTintMode, -1), null);
            this.f32007o = com.google.android.material.resources.d.a(context2, typedArrayK, R.styleable.TabLayout_tabRippleColor);
            this.C = typedArrayK.getInt(R.styleable.TabLayout_tabIndicatorAnimationDuration, 300);
            this.L = com.google.android.material.motion.j.g(context2, R.attr.motionEasingEmphasizedInterpolator, com.google.android.material.animation.b.f29368b);
            this.f32017x = typedArrayK.getDimensionPixelSize(R.styleable.TabLayout_tabMinWidth, -1);
            this.f32018y = typedArrayK.getDimensionPixelSize(R.styleable.TabLayout_tabMaxWidth, -1);
            this.f32015v = typedArrayK.getResourceId(R.styleable.TabLayout_tabBackground, 0);
            this.A = typedArrayK.getDimensionPixelSize(R.styleable.TabLayout_tabContentStart, 0);
            this.E = typedArrayK.getInt(R.styleable.TabLayout_tabMode, 1);
            this.B = typedArrayK.getInt(R.styleable.TabLayout_tabGravity, 0);
            this.F = typedArrayK.getBoolean(R.styleable.TabLayout_tabInlineLabel, false);
            this.J = typedArrayK.getBoolean(R.styleable.TabLayout_tabUnboundedRipple, false);
            typedArrayK.recycle();
            Resources resources = getResources();
            this.f32014u = resources.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
            this.f32019z = resources.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
            r();
        } catch (Throwable th2) {
            typedArrayObtainStyledAttributes.recycle();
            throw th2;
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        o(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        o(view);
    }

    public void setTabTextColors(int i10, int i11) {
        setTabTextColors(v(i10, i11));
    }

    public void setSelectedTabIndicator(@DrawableRes int i10) {
        if (i10 != 0) {
            setSelectedTabIndicator(AppCompatResources.getDrawable(getContext(), i10));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }
}
