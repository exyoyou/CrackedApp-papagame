package com.google.android.material.search;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.activity.BackEventCompat;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.graphics.drawable.DrawerArrowDrawable;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.TouchObserverFrameLayout;
import com.google.android.material.internal.g0;
import com.google.android.material.internal.h0;
import com.google.android.material.internal.p0;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class SearchView extends FrameLayout implements CoordinatorLayout.AttachedBehavior, com.google.android.material.motion.b {
    private static final long E = 100;
    private static final int F = R.style.Widget_Material3_SearchView;
    private boolean A;
    private boolean B;

    @NonNull
    private TransitionState C;
    private Map<View, Integer> D;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final View f31403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ClippableRoundedCornerLayout f31404c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final View f31405d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final View f31406e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final FrameLayout f31407f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final FrameLayout f31408g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final MaterialToolbar f31409h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final Toolbar f31410i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final TextView f31411j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final EditText f31412k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final ImageButton f31413l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final View f31414m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final TouchObserverFrameLayout f31415n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f31416o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final d0 f31417p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    private final com.google.android.material.motion.c f31418q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final boolean f31419r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final x4.a f31420s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Set<b> f31421t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private SearchBar f31422u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f31423v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f31424w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f31425x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f31426y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @ColorInt
    private final int f31427z;

    public static class Behavior extends CoordinatorLayout.Behavior<SearchView> {
        public Behavior() {
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull SearchView searchView, @NonNull View view) {
            if (searchView.D() || !(view instanceof SearchBar)) {
                return false;
            }
            searchView.setupWithSearchBar((SearchBar) view);
            return false;
        }

        public Behavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f31428b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f31429c;

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
            parcel.writeString(this.f31428b);
            parcel.writeInt(this.f31429c);
        }

        public SavedState(Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f31428b = parcel.readString();
            this.f31429c = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public enum TransitionState {
        HIDING,
        HIDDEN,
        SHOWING,
        SHOWN
    }

    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            SearchView.this.f31413l.setVisibility(charSequence.length() > 0 ? 0 : 8);
        }
    }

    public interface b {
        void a(@NonNull SearchView searchView, @NonNull TransitionState transitionState, @NonNull TransitionState transitionState2);
    }

    public SearchView(@NonNull Context context) {
        this(context, null);
    }

    private boolean A() {
        return this.C.equals(TransitionState.HIDDEN) || this.C.equals(TransitionState.HIDING);
    }

    private boolean C(@NonNull Toolbar toolbar) {
        return DrawableCompat.unwrap(toolbar.getNavigationIcon()) instanceof DrawerArrowDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G() {
        this.f31412k.clearFocus();
        SearchBar searchBar = this.f31422u;
        if (searchBar != null) {
            searchBar.requestFocus();
        }
        p0.r(this.f31412k, this.A);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H() {
        if (this.f31412k.requestFocus()) {
            this.f31412k.sendAccessibilityEvent(8);
        }
        p0.C(this.f31412k, this.A);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(View view) {
        v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J(View view) {
        u();
        U();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean K(View view, MotionEvent motionEvent) {
        if (!x()) {
            return false;
        }
        t();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ WindowInsetsCompat L(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11, View view, WindowInsetsCompat windowInsetsCompat) {
        marginLayoutParams.leftMargin = i10 + windowInsetsCompat.getSystemWindowInsetLeft();
        marginLayoutParams.rightMargin = i11 + windowInsetsCompat.getSystemWindowInsetRight();
        return windowInsetsCompat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean M(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsetsCompat N(View view, WindowInsetsCompat windowInsetsCompat) {
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        setUpStatusBarSpacer(systemWindowInsetTop);
        if (!this.B) {
            setStatusBarSpacerEnabledInternal(systemWindowInsetTop > 0);
        }
        return windowInsetsCompat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsetsCompat O(View view, WindowInsetsCompat windowInsetsCompat, p0.e eVar) {
        boolean zS = p0.s(this.f31409h);
        this.f31409h.setPadding((zS ? eVar.f30957c : eVar.f30955a) + windowInsetsCompat.getSystemWindowInsetLeft(), eVar.f30956b, (zS ? eVar.f30955a : eVar.f30957c) + windowInsetsCompat.getSystemWindowInsetRight(), eVar.f30958d);
        return windowInsetsCompat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void P(View view) {
        g0();
    }

    private void V(@NonNull TransitionState transitionState, boolean z10) {
        if (this.C.equals(transitionState)) {
            return;
        }
        if (z10) {
            if (transitionState == TransitionState.SHOWN) {
                setModalForAccessibility(true);
            } else if (transitionState == TransitionState.HIDDEN) {
                setModalForAccessibility(false);
            }
        }
        TransitionState transitionState2 = this.C;
        this.C = transitionState;
        Iterator it2 = new LinkedHashSet(this.f31421t).iterator();
        while (it2.hasNext()) {
            ((b) it2.next()).a(this, transitionState2, transitionState);
        }
        i0(transitionState);
    }

    private void W(boolean z10, boolean z11) {
        if (z11) {
            this.f31409h.setNavigationIcon((Drawable) null);
            return;
        }
        this.f31409h.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.search.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f31510b.I(view);
            }
        });
        if (z10) {
            DrawerArrowDrawable drawerArrowDrawable = new DrawerArrowDrawable(getContext());
            drawerArrowDrawable.setColor(com.google.android.material.color.s.d(this, R.attr.colorOnSurface));
            this.f31409h.setNavigationIcon(drawerArrowDrawable);
        }
    }

    private void X() {
        setUpBackgroundViewElevationOverlay(getOverlayElevation());
    }

    private void Y() {
        this.f31413l.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.search.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f31518b.J(view);
            }
        });
        this.f31412k.addTextChangedListener(new a());
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void Z() {
        this.f31415n.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.search.k
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f31508b.K(view, motionEvent);
            }
        });
    }

    private void a0() {
        final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f31414m.getLayoutParams();
        final int i10 = marginLayoutParams.leftMargin;
        final int i11 = marginLayoutParams.rightMargin;
        ViewCompat.setOnApplyWindowInsetsListener(this.f31414m, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.search.o
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return SearchView.L(marginLayoutParams, i10, i11, view, windowInsetsCompat);
            }
        });
    }

    private void b0(@StyleRes int i10, String str, String str2) {
        if (i10 != -1) {
            TextViewCompat.setTextAppearance(this.f31412k, i10);
        }
        this.f31412k.setText(str);
        this.f31412k.setHint(str2);
    }

    private void c0() {
        f0();
        a0();
        e0();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void d0() {
        this.f31404c.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.search.m
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return SearchView.M(view, motionEvent);
            }
        });
    }

    private void e0() {
        setUpStatusBarSpacer(getStatusBarHeight());
        ViewCompat.setOnApplyWindowInsetsListener(this.f31406e, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.search.p
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return this.f31514a.N(view, windowInsetsCompat);
            }
        });
    }

    private void f0() {
        p0.h(this.f31409h, new p0.d() { // from class: com.google.android.material.search.u
            @Override // com.google.android.material.internal.p0.d
            public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, p0.e eVar) {
                return this.f31519a.O(view, windowInsetsCompat, eVar);
            }
        });
    }

    @Nullable
    private Window getActivityWindow() {
        Activity activity = com.google.android.material.internal.c.getActivity(getContext());
        if (activity == null) {
            return null;
        }
        return activity.getWindow();
    }

    private float getOverlayElevation() {
        SearchBar searchBar = this.f31422u;
        return searchBar != null ? searchBar.getCompatElevation() : getResources().getDimension(R.dimen.m3_searchview_elevation);
    }

    @Px
    private int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    @SuppressLint({"InlinedApi"})
    private void h0(ViewGroup viewGroup, boolean z10) {
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt != this) {
                if (childAt.findViewById(this.f31404c.getId()) != null) {
                    h0((ViewGroup) childAt, z10);
                } else if (z10) {
                    this.D.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                    ViewCompat.setImportantForAccessibility(childAt, 4);
                } else {
                    Map<View, Integer> map = this.D;
                    if (map != null && map.containsKey(childAt)) {
                        ViewCompat.setImportantForAccessibility(childAt, this.D.get(childAt).intValue());
                    }
                }
            }
        }
    }

    private void i0(@NonNull TransitionState transitionState) {
        if (this.f31422u == null || !this.f31419r) {
            return;
        }
        if (transitionState.equals(TransitionState.SHOWN)) {
            this.f31418q.c();
        } else if (transitionState.equals(TransitionState.HIDDEN)) {
            this.f31418q.f();
        }
    }

    private void j0() {
        MaterialToolbar materialToolbar = this.f31409h;
        if (materialToolbar == null || C(materialToolbar)) {
            return;
        }
        int defaultNavigationIconResource = getDefaultNavigationIconResource();
        if (this.f31422u == null) {
            this.f31409h.setNavigationIcon(defaultNavigationIconResource);
            return;
        }
        Drawable drawableWrap = DrawableCompat.wrap(AppCompatResources.getDrawable(getContext(), defaultNavigationIconResource).mutate());
        if (this.f31409h.getNavigationIconTint() != null) {
            DrawableCompat.setTint(drawableWrap, this.f31409h.getNavigationIconTint().intValue());
        }
        this.f31409h.setNavigationIcon(new com.google.android.material.internal.h(this.f31422u.getNavigationIcon(), drawableWrap));
        k0();
    }

    private void k0() {
        ImageButton imageButtonE = h0.e(this.f31409h);
        if (imageButtonE == null) {
            return;
        }
        int i10 = this.f31404c.getVisibility() == 0 ? 1 : 0;
        Drawable drawableUnwrap = DrawableCompat.unwrap(imageButtonE.getDrawable());
        if (drawableUnwrap instanceof DrawerArrowDrawable) {
            ((DrawerArrowDrawable) drawableUnwrap).setProgress(i10);
        }
        if (drawableUnwrap instanceof com.google.android.material.internal.h) {
            ((com.google.android.material.internal.h) drawableUnwrap).a(i10);
        }
    }

    private void setStatusBarSpacerEnabledInternal(boolean z10) {
        this.f31406e.setVisibility(z10 ? 0 : 8);
    }

    private void setUpBackgroundViewElevationOverlay(float f10) {
        x4.a aVar = this.f31420s;
        if (aVar == null || this.f31405d == null) {
            return;
        }
        this.f31405d.setBackgroundColor(aVar.e(this.f31427z, f10));
    }

    private void setUpHeaderLayout(int i10) {
        if (i10 != -1) {
            r(LayoutInflater.from(getContext()).inflate(i10, (ViewGroup) this.f31407f, false));
        }
    }

    private void setUpStatusBarSpacer(@Px int i10) {
        if (this.f31406e.getLayoutParams().height != i10) {
            this.f31406e.getLayoutParams().height = i10;
            this.f31406e.requestLayout();
        }
    }

    public boolean B() {
        return this.f31425x;
    }

    public boolean D() {
        return this.f31422u != null;
    }

    public boolean E() {
        return this.C.equals(TransitionState.SHOWN) || this.C.equals(TransitionState.SHOWING);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean F() {
        return this.A;
    }

    public void Q() {
        this.f31407f.removeAllViews();
        this.f31407f.setVisibility(8);
    }

    public void R(@NonNull View view) {
        this.f31407f.removeView(view);
        if (this.f31407f.getChildCount() == 0) {
            this.f31407f.setVisibility(8);
        }
    }

    public void S(@NonNull b bVar) {
        this.f31421t.remove(bVar);
    }

    public void T() {
        this.f31412k.postDelayed(new Runnable() { // from class: com.google.android.material.search.q
            @Override // java.lang.Runnable
            public final void run() {
                this.f31515b.H();
            }
        }, 100L);
    }

    void U() {
        if (this.f31426y) {
            T();
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (this.f31416o) {
            this.f31415n.addView(view, i10, layoutParams);
        } else {
            super.addView(view, i10, layoutParams);
        }
    }

    @Override // com.google.android.material.motion.b
    public void b(@NonNull BackEventCompat backEventCompat) {
        if (A() || this.f31422u == null) {
            return;
        }
        this.f31417p.a0(backEventCompat);
    }

    @Override // com.google.android.material.motion.b
    public void c(@NonNull BackEventCompat backEventCompat) {
        if (A() || this.f31422u == null || Build.VERSION.SDK_INT < 34) {
            return;
        }
        this.f31417p.f0(backEventCompat);
    }

    @Override // com.google.android.material.motion.b
    public void d() {
        if (A()) {
            return;
        }
        BackEventCompat backEventCompatS = this.f31417p.S();
        if (Build.VERSION.SDK_INT < 34 || this.f31422u == null || backEventCompatS == null) {
            v();
        } else {
            this.f31417p.p();
        }
    }

    @Override // com.google.android.material.motion.b
    public void f() {
        if (A() || this.f31422u == null || Build.VERSION.SDK_INT < 34) {
            return;
        }
        this.f31417p.o();
    }

    public void g0() {
        if (this.C.equals(TransitionState.SHOWN) || this.C.equals(TransitionState.SHOWING)) {
            return;
        }
        this.f31417p.Z();
    }

    @VisibleForTesting
    com.google.android.material.motion.h getBackHelper() {
        return this.f31417p.r();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<SearchView> getBehavior() {
        return new Behavior();
    }

    @NonNull
    public TransitionState getCurrentTransitionState() {
        return this.C;
    }

    @DrawableRes
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected int getDefaultNavigationIconResource() {
        return R.drawable.ic_arrow_back_black_24;
    }

    @NonNull
    public EditText getEditText() {
        return this.f31412k;
    }

    @Nullable
    public CharSequence getHint() {
        return this.f31412k.getHint();
    }

    @NonNull
    public TextView getSearchPrefix() {
        return this.f31411j;
    }

    @Nullable
    public CharSequence getSearchPrefixText() {
        return this.f31411j.getText();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public int getSoftInputMode() {
        return this.f31423v;
    }

    @NonNull
    @SuppressLint({"KotlinPropertyAccess"})
    public Editable getText() {
        return this.f31412k.getText();
    }

    @NonNull
    public Toolbar getToolbar() {
        return this.f31409h;
    }

    public void l0() {
        Window activityWindow = getActivityWindow();
        if (activityWindow != null) {
            this.f31423v = activityWindow.getAttributes().softInputMode;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.google.android.material.shape.j.e(this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        l0();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setText(savedState.f31428b);
        setVisible(savedState.f31429c == 0);
    }

    @Override // android.view.View
    @NonNull
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Editable text = getText();
        savedState.f31428b = text == null ? null : text.toString();
        savedState.f31429c = this.f31404c.getVisibility();
        return savedState;
    }

    public void r(@NonNull View view) {
        this.f31407f.addView(view);
        this.f31407f.setVisibility(0);
    }

    public void s(@NonNull b bVar) {
        this.f31421t.add(bVar);
    }

    public void setAnimatedNavigationIcon(boolean z10) {
        this.f31424w = z10;
    }

    public void setAutoShowKeyboard(boolean z10) {
        this.f31426y = z10;
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f10) {
        super.setElevation(f10);
        setUpBackgroundViewElevationOverlay(f10);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        this.f31412k.setHint(charSequence);
    }

    public void setMenuItemsAnimated(boolean z10) {
        this.f31425x = z10;
    }

    public void setModalForAccessibility(boolean z10) {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        if (z10) {
            this.D = new HashMap(viewGroup.getChildCount());
        }
        h0(viewGroup, z10);
        if (z10) {
            return;
        }
        this.D = null;
    }

    public void setOnMenuItemClickListener(@Nullable Toolbar.OnMenuItemClickListener onMenuItemClickListener) {
        this.f31409h.setOnMenuItemClickListener(onMenuItemClickListener);
    }

    public void setSearchPrefixText(@Nullable CharSequence charSequence) {
        this.f31411j.setText(charSequence);
        this.f31411j.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setStatusBarSpacerEnabled(boolean z10) {
        this.B = true;
        setStatusBarSpacerEnabledInternal(z10);
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public void setText(@Nullable CharSequence charSequence) {
        this.f31412k.setText(charSequence);
    }

    public void setToolbarTouchscreenBlocksFocus(boolean z10) {
        this.f31409h.setTouchscreenBlocksFocus(z10);
    }

    void setTransitionState(@NonNull TransitionState transitionState) {
        V(transitionState, true);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setUseWindowInsetsController(boolean z10) {
        this.A = z10;
    }

    public void setVisible(boolean z10) {
        boolean z11 = this.f31404c.getVisibility() == 0;
        this.f31404c.setVisibility(z10 ? 0 : 8);
        k0();
        V(z10 ? TransitionState.SHOWN : TransitionState.HIDDEN, z11 != z10);
    }

    public void setupWithSearchBar(@Nullable SearchBar searchBar) {
        this.f31422u = searchBar;
        this.f31417p.X(searchBar);
        if (searchBar != null) {
            searchBar.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.search.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f31516b.P(view);
                }
            });
            if (Build.VERSION.SDK_INT >= 34) {
                try {
                    searchBar.setHandwritingDelegatorCallback(new Runnable() { // from class: com.google.android.material.search.s
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f31517b.g0();
                        }
                    });
                    this.f31412k.setIsHandwritingDelegate(true);
                } catch (LinkageError unused) {
                }
            }
        }
        j0();
        X();
        i0(getCurrentTransitionState());
    }

    public void t() {
        this.f31412k.post(new Runnable() { // from class: com.google.android.material.search.l
            @Override // java.lang.Runnable
            public final void run() {
                this.f31509b.G();
            }
        });
    }

    public void u() {
        this.f31412k.setText("");
    }

    public void v() {
        if (this.C.equals(TransitionState.HIDDEN) || this.C.equals(TransitionState.HIDING)) {
            return;
        }
        this.f31417p.M();
    }

    public void w(@MenuRes int i10) {
        this.f31409h.inflateMenu(i10);
    }

    boolean x() {
        return this.f31423v == 48;
    }

    public boolean y() {
        return this.f31424w;
    }

    public boolean z() {
        return this.f31426y;
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialSearchViewStyle);
    }

    public void setHint(@StringRes int i10) {
        this.f31412k.setHint(i10);
    }

    public void setText(@StringRes int i10) {
        this.f31412k.setText(i10);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = F;
        super(a5.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        this.f31418q = new com.google.android.material.motion.c(this);
        this.f31421t = new LinkedHashSet();
        this.f31423v = 16;
        this.C = TransitionState.HIDDEN;
        Context context2 = getContext();
        TypedArray typedArrayK = g0.k(context2, attributeSet, R.styleable.SearchView, i10, i11, new int[0]);
        this.f31427z = typedArrayK.getColor(R.styleable.SearchView_backgroundTint, 0);
        int resourceId = typedArrayK.getResourceId(R.styleable.SearchView_headerLayout, -1);
        int resourceId2 = typedArrayK.getResourceId(R.styleable.SearchView_android_textAppearance, -1);
        String string = typedArrayK.getString(R.styleable.SearchView_android_text);
        String string2 = typedArrayK.getString(R.styleable.SearchView_android_hint);
        String string3 = typedArrayK.getString(R.styleable.SearchView_searchPrefixText);
        boolean z10 = typedArrayK.getBoolean(R.styleable.SearchView_useDrawerArrowDrawable, false);
        this.f31424w = typedArrayK.getBoolean(R.styleable.SearchView_animateNavigationIcon, true);
        this.f31425x = typedArrayK.getBoolean(R.styleable.SearchView_animateMenuItems, true);
        boolean z11 = typedArrayK.getBoolean(R.styleable.SearchView_hideNavigationIcon, false);
        this.f31426y = typedArrayK.getBoolean(R.styleable.SearchView_autoShowKeyboard, true);
        this.f31419r = typedArrayK.getBoolean(R.styleable.SearchView_backHandlingEnabled, true);
        typedArrayK.recycle();
        LayoutInflater.from(context2).inflate(R.layout.mtrl_search_view, this);
        this.f31416o = true;
        this.f31403b = findViewById(R.id.open_search_view_scrim);
        this.f31404c = (ClippableRoundedCornerLayout) findViewById(R.id.open_search_view_root);
        this.f31405d = findViewById(R.id.open_search_view_background);
        this.f31406e = findViewById(R.id.open_search_view_status_bar_spacer);
        this.f31407f = (FrameLayout) findViewById(R.id.open_search_view_header_container);
        this.f31408g = (FrameLayout) findViewById(R.id.open_search_view_toolbar_container);
        this.f31409h = (MaterialToolbar) findViewById(R.id.open_search_view_toolbar);
        this.f31410i = (Toolbar) findViewById(R.id.open_search_view_dummy_toolbar);
        this.f31411j = (TextView) findViewById(R.id.open_search_view_search_prefix);
        this.f31412k = (EditText) findViewById(R.id.open_search_view_edit_text);
        this.f31413l = (ImageButton) findViewById(R.id.open_search_view_clear_button);
        this.f31414m = findViewById(R.id.open_search_view_divider);
        this.f31415n = (TouchObserverFrameLayout) findViewById(R.id.open_search_view_content_container);
        this.f31417p = new d0(this);
        this.f31420s = new x4.a(context2);
        d0();
        X();
        setUpHeaderLayout(resourceId);
        setSearchPrefixText(string3);
        b0(resourceId2, string, string2);
        W(z10, z11);
        Y();
        Z();
        c0();
    }
}
