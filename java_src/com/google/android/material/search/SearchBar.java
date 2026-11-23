package com.google.android.material.search;

import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.google.android.material.R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.g0;
import com.google.android.material.internal.h0;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* JADX INFO: loaded from: classes5.dex */
public class SearchBar extends Toolbar {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f31382q = R.style.Widget_Material3_SearchBar;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f31383r = 53;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f31384s = "http://schemas.android.com/apk/res-auto";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TextView f31385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f31386c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f31387d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j f31388e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Drawable f31389f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f31390g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f31391h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private View f31392i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private Integer f31393j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private Drawable f31394k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f31395l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f31396m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private MaterialShapeDrawable f31397n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private final AccessibilityManager f31398o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final AccessibilityManagerCompat.TouchExplorationStateChangeListener f31399p;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f31400b;

        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f31400b);
        }

        public SavedState(Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f31400b = parcel.readString();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    class a implements View.OnAttachStateChangeListener {
        a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            AccessibilityManagerCompat.addTouchExplorationStateChangeListener(SearchBar.this.f31398o, SearchBar.this.f31399p);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(SearchBar.this.f31398o, SearchBar.this.f31399p);
        }
    }

    public static abstract class b {
        public void a() {
        }

        public void b() {
        }
    }

    public SearchBar(@NonNull Context context) {
        this(context, null);
    }

    private void A(View view, int i10, int i11, int i12, int i13) {
        if (ViewCompat.getLayoutDirection(this) == 1) {
            view.layout(getMeasuredWidth() - i12, i11, getMeasuredWidth() - i10, i13);
        } else {
            view.layout(i10, i11, i12, i13);
        }
    }

    private void B(int i10, int i11) {
        View view = this.f31392i;
        if (view != null) {
            view.measure(i10, i11);
        }
    }

    private void F() {
        if (this.f31387d && (getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            Resources resources = getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.m3_searchbar_margin_horizontal);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(getDefaultMarginVerticalResource());
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
            marginLayoutParams.leftMargin = l(marginLayoutParams.leftMargin, dimensionPixelSize);
            marginLayoutParams.topMargin = l(marginLayoutParams.topMargin, dimensionPixelSize2);
            marginLayoutParams.rightMargin = l(marginLayoutParams.rightMargin, dimensionPixelSize);
            marginLayoutParams.bottomMargin = l(marginLayoutParams.bottomMargin, dimensionPixelSize2);
        }
    }

    private void G() {
        int width;
        if (Build.VERSION.SDK_INT < 34) {
            return;
        }
        int right = 0;
        boolean z10 = getLayoutDirection() == 1;
        ImageButton imageButtonE = h0.e(this);
        if (imageButtonE == null || !imageButtonE.isClickable()) {
            width = 0;
        } else {
            width = z10 ? getWidth() - imageButtonE.getLeft() : imageButtonE.getRight();
        }
        ActionMenuView actionMenuViewB = h0.b(this);
        if (actionMenuViewB != null) {
            right = z10 ? actionMenuViewB.getRight() : getWidth() - actionMenuViewB.getLeft();
        }
        float f10 = -(z10 ? right : width);
        if (!z10) {
            width = right;
        }
        setHandwritingBoundsOffsets(f10, 0.0f, -width, 0.0f);
    }

    private void H() {
        if (getLayoutParams() instanceof AppBarLayout.LayoutParams) {
            AppBarLayout.LayoutParams layoutParams = (AppBarLayout.LayoutParams) getLayoutParams();
            if (this.f31396m) {
                if (layoutParams.getScrollFlags() == 0) {
                    layoutParams.setScrollFlags(53);
                }
            } else if (layoutParams.getScrollFlags() == 53) {
                layoutParams.setScrollFlags(0);
            }
        }
    }

    private void I() {
        AccessibilityManager accessibilityManager = this.f31398o;
        if (accessibilityManager != null) {
            if (accessibilityManager.isEnabled() && this.f31398o.isTouchExplorationEnabled()) {
                setFocusableInTouchMode(true);
            }
            addOnAttachStateChangeListener(new a());
        }
    }

    private void L(@Nullable AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue(f31384s, "title") != null) {
            throw new UnsupportedOperationException("SearchBar does not support title. Use hint or text instead.");
        }
        if (attributeSet.getAttributeValue(f31384s, MediaFormat.KEY_SUBTITLE) != null) {
            throw new UnsupportedOperationException("SearchBar does not support subtitle. Use hint or text instead.");
        }
    }

    private int l(int i10, int i11) {
        return i10 == 0 ? i11 : i10;
    }

    @Nullable
    private Drawable maybeTintNavigationIcon(@Nullable Drawable drawable) {
        int iD;
        if (!this.f31390g || drawable == null) {
            return drawable;
        }
        Integer num = this.f31393j;
        if (num != null) {
            iD = num.intValue();
        } else {
            iD = com.google.android.material.color.s.d(this, drawable == this.f31389f ? R.attr.colorOnSurfaceVariant : R.attr.colorOnSurface);
        }
        Drawable drawableWrap = DrawableCompat.wrap(drawable.mutate());
        DrawableCompat.setTint(drawableWrap, iD);
        return drawableWrap;
    }

    private ColorStateList p(@ColorInt int i10, @ColorInt int i11) {
        int[][] iArr = {new int[]{android.R.attr.state_pressed}, new int[]{android.R.attr.state_focused}, new int[0]};
        int iS = com.google.android.material.color.s.s(i10, i11);
        return new ColorStateList(iArr, new int[]{iS, iS, i10});
    }

    private void q(com.google.android.material.shape.n nVar, @ColorInt int i10, float f10, float f11, @ColorInt int i11) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(nVar);
        this.f31397n = materialShapeDrawable;
        materialShapeDrawable.a0(getContext());
        this.f31397n.o0(f10);
        if (f11 >= 0.0f) {
            this.f31397n.E0(f11, i11);
        }
        int iD = com.google.android.material.color.s.d(this, R.attr.colorControlHighlight);
        this.f31397n.p0(ColorStateList.valueOf(i10));
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(iD);
        MaterialShapeDrawable materialShapeDrawable2 = this.f31397n;
        ViewCompat.setBackground(this, new RippleDrawable(colorStateListValueOf, materialShapeDrawable2, materialShapeDrawable2));
    }

    private void r() {
        setNavigationIcon(getNavigationIcon() == null ? this.f31389f : getNavigationIcon());
        setNavigationIconDecorative(true);
    }

    private void s(@StyleRes int i10, String str, String str2) {
        if (i10 != -1) {
            TextViewCompat.setTextAppearance(this.f31385b, i10);
        }
        setText(str);
        setHint(str2);
        if (getNavigationIcon() == null) {
            MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) this.f31385b.getLayoutParams(), getResources().getDimensionPixelSize(R.dimen.m3_searchbar_text_margin_start_no_navigation_icon));
        }
    }

    private void setNavigationIconDecorative(boolean z10) {
        ImageButton imageButtonE = h0.e(this);
        if (imageButtonE == null) {
            return;
        }
        imageButtonE.setClickable(!z10);
        imageButtonE.setFocusable(!z10);
        Drawable background = imageButtonE.getBackground();
        if (background != null) {
            this.f31394k = background;
        }
        imageButtonE.setBackgroundDrawable(z10 ? null : this.f31394k);
        G();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(boolean z10) {
        setFocusableInTouchMode(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y() {
        this.f31388e.J(this);
    }

    private void z() {
        View view = this.f31392i;
        if (view == null) {
            return;
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredWidth2 = (getMeasuredWidth() / 2) - (measuredWidth / 2);
        int i10 = measuredWidth2 + measuredWidth;
        int measuredHeight = this.f31392i.getMeasuredHeight();
        int measuredHeight2 = (getMeasuredHeight() / 2) - (measuredHeight / 2);
        A(this.f31392i, measuredWidth2, measuredHeight2, i10, measuredHeight2 + measuredHeight);
    }

    public boolean C(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        return this.f31388e.D(animatorListenerAdapter);
    }

    public boolean D(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        return this.f31388e.E(animatorListenerAdapter);
    }

    public boolean E(@NonNull b bVar) {
        return this.f31388e.F(bVar);
    }

    public void J() {
        post(new Runnable() { // from class: com.google.android.material.search.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f31434b.y();
            }
        });
    }

    public void K() {
        this.f31388e.K(this);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (this.f31386c && this.f31392i == null && !(view instanceof ActionMenuView)) {
            this.f31392i = view;
            view.setAlpha(0.0f);
        }
        super.addView(view, i10, layoutParams);
    }

    public void e(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        this.f31388e.h(animatorListenerAdapter);
    }

    public void f(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        this.f31388e.i(animatorListenerAdapter);
    }

    public void g(@NonNull b bVar) {
        this.f31388e.j(bVar);
    }

    @Nullable
    public View getCenterView() {
        return this.f31392i;
    }

    float getCompatElevation() {
        MaterialShapeDrawable materialShapeDrawable = this.f31397n;
        return materialShapeDrawable != null ? materialShapeDrawable.y() : ViewCompat.getElevation(this);
    }

    public float getCornerSize() {
        return this.f31397n.T();
    }

    @DimenRes
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected int getDefaultMarginVerticalResource() {
        return R.dimen.m3_searchbar_margin_vertical;
    }

    @DrawableRes
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected int getDefaultNavigationIconResource() {
        return R.drawable.ic_search_black_24;
    }

    @Nullable
    public CharSequence getHint() {
        return this.f31385b.getHint();
    }

    int getMenuResId() {
        return this.f31395l;
    }

    @ColorInt
    public int getStrokeColor() {
        return this.f31397n.O().getDefaultColor();
    }

    @Dimension
    public float getStrokeWidth() {
        return this.f31397n.R();
    }

    @NonNull
    public CharSequence getText() {
        return this.f31385b.getText();
    }

    @NonNull
    public TextView getTextView() {
        return this.f31385b;
    }

    public void h() {
        this.f31385b.setText("");
    }

    @CanIgnoreReturnValue
    public boolean i(@NonNull View view) {
        return j(view, null);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void inflateMenu(@MenuRes int i10) {
        Menu menu = getMenu();
        boolean z10 = menu instanceof MenuBuilder;
        if (z10) {
            ((MenuBuilder) menu).stopDispatchingItemsChanged();
        }
        super.inflateMenu(i10);
        this.f31395l = i10;
        if (z10) {
            ((MenuBuilder) menu).startDispatchingItemsChanged();
        }
    }

    @CanIgnoreReturnValue
    public boolean j(@NonNull View view, @Nullable AppBarLayout appBarLayout) {
        return k(view, appBarLayout, false);
    }

    @CanIgnoreReturnValue
    public boolean k(@NonNull View view, @Nullable AppBarLayout appBarLayout, boolean z10) {
        if ((view.getVisibility() != 0 || t()) && !v()) {
            return false;
        }
        this.f31388e.H(this, view, appBarLayout, z10);
        return true;
    }

    @CanIgnoreReturnValue
    public boolean m(@NonNull View view) {
        return n(view, null);
    }

    @CanIgnoreReturnValue
    public boolean n(@NonNull View view, @Nullable AppBarLayout appBarLayout) {
        return o(view, appBarLayout, false);
    }

    @CanIgnoreReturnValue
    public boolean o(@NonNull View view, @Nullable AppBarLayout appBarLayout, boolean z10) {
        if ((view.getVisibility() == 0 || v()) && !t()) {
            return false;
        }
        this.f31388e.I(this, view, appBarLayout, z10);
        return true;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.material.shape.j.f(this, this.f31397n);
        F();
        H();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(EditText.class.getCanonicalName());
        int i10 = Build.VERSION.SDK_INT;
        accessibilityNodeInfo.setEditable(isEnabled());
        CharSequence text = getText();
        boolean zIsEmpty = TextUtils.isEmpty(text);
        if (i10 >= 26) {
            accessibilityNodeInfo.setHintText(getHint());
            accessibilityNodeInfo.setShowingHintText(zIsEmpty);
        }
        if (zIsEmpty) {
            text = getHint();
        }
        accessibilityNodeInfo.setText(text);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        z();
        G();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        B(i10, i11);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setText(savedState.f31400b);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    @NonNull
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        CharSequence text = getText();
        savedState.f31400b = text == null ? null : text.toString();
        return savedState;
    }

    public void setCenterView(@Nullable View view) {
        View view2 = this.f31392i;
        if (view2 != null) {
            removeView(view2);
            this.f31392i = null;
        }
        if (view != null) {
            addView(view);
        }
    }

    public void setDefaultScrollFlagsEnabled(boolean z10) {
        this.f31396m = z10;
        H();
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f10) {
        super.setElevation(f10);
        MaterialShapeDrawable materialShapeDrawable = this.f31397n;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.o0(f10);
        }
    }

    public void setHint(@Nullable CharSequence charSequence) {
        this.f31385b.setHint(charSequence);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(maybeTintNavigationIcon(drawable));
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        if (this.f31391h) {
            return;
        }
        super.setNavigationOnClickListener(onClickListener);
        setNavigationIconDecorative(onClickListener == null);
    }

    public void setOnLoadAnimationFadeInEnabled(boolean z10) {
        this.f31388e.G(z10);
    }

    public void setStrokeColor(@ColorInt int i10) {
        if (getStrokeColor() != i10) {
            this.f31397n.G0(ColorStateList.valueOf(i10));
        }
    }

    public void setStrokeWidth(@Dimension float f10) {
        if (getStrokeWidth() != f10) {
            this.f31397n.J0(f10);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    public void setText(@Nullable CharSequence charSequence) {
        this.f31385b.setText(charSequence);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public boolean t() {
        return this.f31388e.x();
    }

    public boolean u() {
        return this.f31396m;
    }

    public boolean v() {
        return this.f31388e.y();
    }

    public boolean w() {
        return this.f31388e.z();
    }

    public static class ScrollingViewBehavior extends AppBarLayout.ScrollingViewBehavior {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f31401b;

        public ScrollingViewBehavior() {
            this.f31401b = false;
        }

        private void h(AppBarLayout appBarLayout) {
            appBarLayout.setBackgroundColor(0);
            if (Build.VERSION.SDK_INT == 21) {
                appBarLayout.setOutlineProvider(null);
            } else {
                appBarLayout.setTargetElevation(0.0f);
            }
        }

        @Override // com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
            boolean zOnDependentViewChanged = super.onDependentViewChanged(coordinatorLayout, view, view2);
            if (!this.f31401b && (view2 instanceof AppBarLayout)) {
                this.f31401b = true;
                h((AppBarLayout) view2);
            }
            return zOnDependentViewChanged;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        protected boolean shouldHeaderOverlapScrollingChild() {
            return true;
        }

        public ScrollingViewBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f31401b = false;
        }
    }

    public SearchBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialSearchBarStyle);
    }

    public void setHint(@StringRes int i10) {
        this.f31385b.setHint(i10);
    }

    public void setText(@StringRes int i10) {
        this.f31385b.setText(i10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SearchBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f31382q;
        super(a5.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f31395l = -1;
        this.f31399p = new AccessibilityManagerCompat.TouchExplorationStateChangeListener() { // from class: com.google.android.material.search.b
            @Override // androidx.core.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
            public final void onTouchExplorationStateChanged(boolean z10) {
                this.f31432a.x(z10);
            }
        };
        Context context2 = getContext();
        L(attributeSet);
        this.f31389f = AppCompatResources.getDrawable(context2, getDefaultNavigationIconResource());
        this.f31388e = new j();
        TypedArray typedArrayK = g0.k(context2, attributeSet, R.styleable.SearchBar, i10, i11, new int[0]);
        com.google.android.material.shape.n nVarM = com.google.android.material.shape.n.e(context2, attributeSet, i10, i11).m();
        int color = typedArrayK.getColor(R.styleable.SearchBar_backgroundTint, 0);
        float dimension = typedArrayK.getDimension(R.styleable.SearchBar_elevation, 0.0f);
        this.f31387d = typedArrayK.getBoolean(R.styleable.SearchBar_defaultMarginsEnabled, true);
        this.f31396m = typedArrayK.getBoolean(R.styleable.SearchBar_defaultScrollFlagsEnabled, true);
        boolean z10 = typedArrayK.getBoolean(R.styleable.SearchBar_hideNavigationIcon, false);
        this.f31391h = typedArrayK.getBoolean(R.styleable.SearchBar_forceDefaultNavigationOnClickListener, false);
        this.f31390g = typedArrayK.getBoolean(R.styleable.SearchBar_tintNavigationIcon, true);
        int i12 = R.styleable.SearchBar_navigationIconTint;
        if (typedArrayK.hasValue(i12)) {
            this.f31393j = Integer.valueOf(typedArrayK.getColor(i12, -1));
        }
        int resourceId = typedArrayK.getResourceId(R.styleable.SearchBar_android_textAppearance, -1);
        String string = typedArrayK.getString(R.styleable.SearchBar_android_text);
        String string2 = typedArrayK.getString(R.styleable.SearchBar_android_hint);
        float dimension2 = typedArrayK.getDimension(R.styleable.SearchBar_strokeWidth, -1.0f);
        int color2 = typedArrayK.getColor(R.styleable.SearchBar_strokeColor, 0);
        typedArrayK.recycle();
        if (!z10) {
            r();
        }
        setClickable(true);
        setFocusable(true);
        LayoutInflater.from(context2).inflate(R.layout.mtrl_search_bar, this);
        this.f31386c = true;
        this.f31385b = (TextView) findViewById(R.id.open_search_bar_text_view);
        ViewCompat.setElevation(this, dimension);
        s(resourceId, string, string2);
        q(nVarM, color, dimension, dimension2, color2);
        this.f31398o = (AccessibilityManager) getContext().getSystemService("accessibility");
        I();
    }
}
