package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.PluralsRes;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.XmlRes;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.internal.d0;
import com.google.android.material.internal.g0;
import com.google.android.material.resources.d;
import com.google.android.material.resources.e;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.n;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
@OptIn(markerClass = {ExperimentalBadgeUtils.class})
public class BadgeDrawable extends Drawable implements d0.b {
    public static final int A = -2;
    private static final float B = 0.3f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f29398o = "Badge";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f29399p = 8388661;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f29400q = 8388659;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Deprecated
    public static final int f29401r = 8388693;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Deprecated
    public static final int f29402s = 8388691;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @StyleRes
    private static final int f29403t = R.style.Widget_MaterialComponents_Badge;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @AttrRes
    private static final int f29404u = R.attr.badgeStyle;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    static final String f29405v = "+";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    static final String f29406w = "…";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    static final int f29407x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    static final int f29408y = 1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    static final int f29409z = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final WeakReference<Context> f29410b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final MaterialShapeDrawable f29411c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final d0 f29412d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final Rect f29413e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final BadgeState f29414f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f29415g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f29416h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f29417i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f29418j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f29419k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f29420l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private WeakReference<View> f29421m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private WeakReference<FrameLayout> f29422n;

    @Retention(RetentionPolicy.SOURCE)
    public @interface BadgeGravity {
    }

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f29423b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ FrameLayout f29424c;

        a(View view, FrameLayout frameLayout) {
            this.f29423b = view;
            this.f29424c = frameLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            BadgeDrawable.this.P0(this.f29423b, this.f29424c);
        }
    }

    private BadgeDrawable(@NonNull Context context, @XmlRes int i10, @AttrRes int i11, @StyleRes int i12, @Nullable BadgeState.State state) {
        this.f29410b = new WeakReference<>(context);
        g0.c(context);
        this.f29413e = new Rect();
        d0 d0Var = new d0(this);
        this.f29412d = d0Var;
        d0Var.g().setTextAlign(Paint.Align.CENTER);
        BadgeState badgeState = new BadgeState(context, i10, i11, i12, state);
        this.f29414f = badgeState;
        this.f29411c = new MaterialShapeDrawable(n.b(context, R() ? badgeState.o() : badgeState.k(), R() ? badgeState.n() : badgeState.j()).m());
        g0();
    }

    @NonNull
    private String D() {
        if (this.f29417i == -2 || C() <= this.f29417i) {
            return NumberFormat.getInstance(this.f29414f.z()).format(C());
        }
        Context context = this.f29410b.get();
        return context == null ? "" : String.format(this.f29414f.z(), context.getString(R.string.mtrl_exceed_max_badge_number_suffix), Integer.valueOf(this.f29417i), f29405v);
    }

    @Nullable
    private String E() {
        Context context;
        if (this.f29414f.s() == 0 || (context = this.f29410b.get()) == null) {
            return null;
        }
        return (this.f29417i == -2 || C() <= this.f29417i) ? context.getResources().getQuantityString(this.f29414f.s(), C(), Integer.valueOf(C())) : context.getString(this.f29414f.p(), Integer.valueOf(this.f29417i));
    }

    private float F(View view, float f10) {
        if (!(view.getParent() instanceof View)) {
            return 0.0f;
        }
        return ((this.f29415g + this.f29419k) - (((View) view.getParent()).getWidth() - view.getX())) + f10;
    }

    @Nullable
    private String I() {
        String strH = H();
        int iA = A();
        if (iA == -2 || strH == null || strH.length() <= iA) {
            return strH;
        }
        Context context = this.f29410b.get();
        if (context == null) {
            return "";
        }
        return String.format(context.getString(R.string.m3_exceed_max_badge_text_suffix), strH.substring(0, iA - 1), f29406w);
    }

    @Nullable
    private CharSequence J() {
        CharSequence charSequenceQ = this.f29414f.q();
        return charSequenceQ != null ? charSequenceQ : H();
    }

    private float K(View view, float f10) {
        return (this.f29416h - this.f29420l) + view.getY() + f10;
    }

    private int L() {
        int iT = R() ? this.f29414f.t() : this.f29414f.u();
        if (this.f29414f.f29437k == 1) {
            iT += R() ? this.f29414f.f29436j : this.f29414f.f29435i;
        }
        return iT + this.f29414f.d();
    }

    private void L0(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup == null || viewGroup.getId() != R.id.mtrl_anchor_parent) {
            WeakReference<FrameLayout> weakReference = this.f29422n;
            if (weakReference == null || weakReference.get() != viewGroup) {
                M0(view);
                FrameLayout frameLayout = new FrameLayout(view.getContext());
                frameLayout.setId(R.id.mtrl_anchor_parent);
                frameLayout.setClipChildren(false);
                frameLayout.setClipToPadding(false);
                frameLayout.setLayoutParams(view.getLayoutParams());
                frameLayout.setMinimumWidth(view.getWidth());
                frameLayout.setMinimumHeight(view.getHeight());
                int iIndexOfChild = viewGroup.indexOfChild(view);
                viewGroup.removeViewAt(iIndexOfChild);
                view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                frameLayout.addView(view);
                viewGroup.addView(frameLayout, iIndexOfChild);
                this.f29422n = new WeakReference<>(frameLayout);
                frameLayout.post(new a(view, frameLayout));
            }
        }
    }

    private int M() {
        int iE = this.f29414f.E();
        if (R()) {
            iE = this.f29414f.D();
            Context context = this.f29410b.get();
            if (context != null) {
                iE = com.google.android.material.animation.b.c(iE, iE - this.f29414f.v(), com.google.android.material.animation.b.b(0.0f, 1.0f, B, 1.0f, d.f(context) - 1.0f));
            }
        }
        if (this.f29414f.f29437k == 0) {
            iE -= Math.round(this.f29420l);
        }
        return iE + this.f29414f.e();
    }

    private static void M0(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
    }

    private void Q0() {
        Context context = this.f29410b.get();
        WeakReference<View> weakReference = this.f29421m;
        View view = weakReference != null ? weakReference.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        rect.set(this.f29413e);
        Rect rect2 = new Rect();
        view.getDrawingRect(rect2);
        WeakReference<FrameLayout> weakReference2 = this.f29422n;
        FrameLayout frameLayout = weakReference2 != null ? weakReference2.get() : null;
        if (frameLayout != null || c.f29463a) {
            if (frameLayout == null) {
                frameLayout = (ViewGroup) view.getParent();
            }
            frameLayout.offsetDescendantRectToMyCoords(view, rect2);
        }
        c(rect2, view);
        c.o(this.f29413e, this.f29415g, this.f29416h, this.f29419k, this.f29420l);
        float f10 = this.f29418j;
        if (f10 != -1.0f) {
            this.f29411c.l0(f10);
        }
        if (rect.equals(this.f29413e)) {
            return;
        }
        this.f29411c.setBounds(this.f29413e);
    }

    private boolean R() {
        return T() || S();
    }

    private void R0() {
        if (A() != -2) {
            this.f29417i = ((int) Math.pow(10.0d, ((double) A()) - 1.0d)) - 1;
        } else {
            this.f29417i = B();
        }
    }

    private boolean U() {
        FrameLayout frameLayoutS = s();
        return frameLayoutS != null && frameLayoutS.getId() == R.id.mtrl_anchor_parent;
    }

    private void V() {
        this.f29412d.g().setAlpha(getAlpha());
        invalidateSelf();
    }

    private void W() {
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(this.f29414f.g());
        if (this.f29411c.z() != colorStateListValueOf) {
            this.f29411c.p0(colorStateListValueOf);
            invalidateSelf();
        }
    }

    private void X() {
        this.f29412d.m(true);
        Z();
        Q0();
        invalidateSelf();
    }

    private void Y() {
        WeakReference<View> weakReference = this.f29421m;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = this.f29421m.get();
        WeakReference<FrameLayout> weakReference2 = this.f29422n;
        P0(view, weakReference2 != null ? weakReference2.get() : null);
    }

    private void Z() {
        Context context = this.f29410b.get();
        if (context == null) {
            return;
        }
        this.f29411c.setShapeAppearanceModel(n.b(context, R() ? this.f29414f.o() : this.f29414f.k(), R() ? this.f29414f.n() : this.f29414f.j()).m());
        invalidateSelf();
    }

    private void a0() {
        e eVar;
        Context context = this.f29410b.get();
        if (context == null || this.f29412d.e() == (eVar = new e(context, this.f29414f.C()))) {
            return;
        }
        this.f29412d.l(eVar, context);
        b0();
        Q0();
        invalidateSelf();
    }

    private void b(@NonNull View view) {
        float y10;
        float x10;
        View viewS = s();
        if (viewS == null) {
            if (!(view.getParent() instanceof View)) {
                return;
            }
            float y11 = view.getY();
            x10 = view.getX();
            viewS = (View) view.getParent();
            y10 = y11;
        } else if (!U()) {
            y10 = 0.0f;
            x10 = 0.0f;
        } else {
            if (!(viewS.getParent() instanceof View)) {
                return;
            }
            y10 = viewS.getY();
            x10 = viewS.getX();
            viewS = (View) viewS.getParent();
        }
        float fK = K(viewS, y10);
        float fZ = z(viewS, x10);
        float fQ = q(viewS, y10);
        float F = F(viewS, x10);
        if (fK < 0.0f) {
            this.f29416h += Math.abs(fK);
        }
        if (fZ < 0.0f) {
            this.f29415g += Math.abs(fZ);
        }
        if (fQ > 0.0f) {
            this.f29416h -= Math.abs(fQ);
        }
        if (F > 0.0f) {
            this.f29415g -= Math.abs(F);
        }
    }

    private void b0() {
        this.f29412d.g().setColor(this.f29414f.l());
        invalidateSelf();
    }

    private void c(@NonNull Rect rect, @NonNull View view) {
        float f10 = R() ? this.f29414f.f29430d : this.f29414f.f29429c;
        this.f29418j = f10;
        if (f10 != -1.0f) {
            this.f29419k = f10;
            this.f29420l = f10;
        } else {
            this.f29419k = Math.round((R() ? this.f29414f.f29433g : this.f29414f.f29431e) / 2.0f);
            this.f29420l = Math.round((R() ? this.f29414f.f29434h : this.f29414f.f29432f) / 2.0f);
        }
        if (R()) {
            String strM = m();
            this.f29419k = Math.max(this.f29419k, (this.f29412d.h(strM) / 2.0f) + this.f29414f.i());
            float fMax = Math.max(this.f29420l, (this.f29412d.f(strM) / 2.0f) + this.f29414f.m());
            this.f29420l = fMax;
            this.f29419k = Math.max(this.f29419k, fMax);
        }
        int iM = M();
        int iH = this.f29414f.h();
        if (iH == 8388691 || iH == 8388693) {
            this.f29416h = rect.bottom - iM;
        } else {
            this.f29416h = rect.top + iM;
        }
        int iL = L();
        int iH2 = this.f29414f.h();
        if (iH2 == 8388659 || iH2 == 8388691) {
            this.f29415g = ViewCompat.getLayoutDirection(view) == 0 ? (rect.left - this.f29419k) + iL : (rect.right + this.f29419k) - iL;
        } else {
            this.f29415g = ViewCompat.getLayoutDirection(view) == 0 ? (rect.right + this.f29419k) - iL : (rect.left - this.f29419k) + iL;
        }
        if (this.f29414f.H()) {
            b(view);
        }
    }

    private void c0() {
        R0();
        this.f29412d.m(true);
        Q0();
        invalidateSelf();
    }

    private void d0() {
        if (T()) {
            return;
        }
        X();
    }

    private void e0() {
        X();
    }

    @NonNull
    public static BadgeDrawable f(@NonNull Context context) {
        return new BadgeDrawable(context, 0, f29404u, f29403t, null);
    }

    private void f0() {
        boolean zI = this.f29414f.I();
        setVisible(zI, false);
        if (!c.f29463a || s() == null || zI) {
            return;
        }
        ((ViewGroup) s().getParent()).invalidate();
    }

    @NonNull
    public static BadgeDrawable g(@NonNull Context context, @XmlRes int i10) {
        return new BadgeDrawable(context, i10, f29404u, f29403t, null);
    }

    private void g0() {
        Z();
        a0();
        c0();
        X();
        V();
        W();
        b0();
        Y();
        Q0();
        f0();
    }

    @NonNull
    static BadgeDrawable h(@NonNull Context context, @NonNull BadgeState.State state) {
        return new BadgeDrawable(context, 0, f29404u, f29403t, state);
    }

    private void i(Canvas canvas) {
        String strM = m();
        if (strM != null) {
            Rect rect = new Rect();
            this.f29412d.g().getTextBounds(strM, 0, strM.length(), rect);
            float fExactCenterY = this.f29416h - rect.exactCenterY();
            canvas.drawText(strM, this.f29415g, rect.bottom <= 0 ? (int) fExactCenterY : Math.round(fExactCenterY), this.f29412d.g());
        }
    }

    @Nullable
    private String m() {
        if (T()) {
            return I();
        }
        if (S()) {
            return D();
        }
        return null;
    }

    private float q(View view, float f10) {
        if (!(view.getParent() instanceof View)) {
            return 0.0f;
        }
        return ((this.f29416h + this.f29420l) - (((View) view.getParent()).getHeight() - view.getY())) + f10;
    }

    private CharSequence t() {
        return this.f29414f.r();
    }

    private float z(View view, float f10) {
        return (this.f29415g - this.f29419k) + view.getX() + f10;
    }

    public int A() {
        return this.f29414f.w();
    }

    public void A0(@Px int i10) {
        this.f29414f.d0(i10);
        Q0();
    }

    public int B() {
        return this.f29414f.x();
    }

    public void B0(int i10) {
        if (this.f29414f.w() != i10) {
            this.f29414f.e0(i10);
            c0();
        }
    }

    public int C() {
        if (this.f29414f.F()) {
            return this.f29414f.y();
        }
        return 0;
    }

    public void C0(int i10) {
        if (this.f29414f.x() != i10) {
            this.f29414f.f0(i10);
            c0();
        }
    }

    public void D0(int i10) {
        int iMax = Math.max(0, i10);
        if (this.f29414f.y() != iMax) {
            this.f29414f.g0(iMax);
            d0();
        }
    }

    public void E0(@Nullable String str) {
        if (TextUtils.equals(this.f29414f.B(), str)) {
            return;
        }
        this.f29414f.i0(str);
        e0();
    }

    public void F0(@StyleRes int i10) {
        this.f29414f.j0(i10);
        a0();
    }

    @NonNull
    BadgeState.State G() {
        return this.f29414f.A();
    }

    public void G0(int i10) {
        I0(i10);
        H0(i10);
    }

    @Nullable
    public String H() {
        return this.f29414f.B();
    }

    public void H0(@Px int i10) {
        this.f29414f.k0(i10);
        Q0();
    }

    public void I0(@Px int i10) {
        this.f29414f.l0(i10);
        Q0();
    }

    public void J0(@Px int i10) {
        if (i10 != this.f29414f.m()) {
            this.f29414f.U(i10);
            Q0();
        }
    }

    public void K0(boolean z10) {
        this.f29414f.m0(z10);
        f0();
    }

    public int N() {
        return this.f29414f.E();
    }

    public void N0(@NonNull View view) {
        P0(view, null);
    }

    @Px
    public int O() {
        return this.f29414f.D();
    }

    @Deprecated
    public void O0(@NonNull View view, @Nullable ViewGroup viewGroup) {
        if (!(viewGroup instanceof FrameLayout)) {
            throw new IllegalArgumentException("customBadgeParent must be a FrameLayout");
        }
        P0(view, (FrameLayout) viewGroup);
    }

    @Px
    public int P() {
        return this.f29414f.E();
    }

    public void P0(@NonNull View view, @Nullable FrameLayout frameLayout) {
        this.f29421m = new WeakReference<>(view);
        boolean z10 = c.f29463a;
        if (z10 && frameLayout == null) {
            L0(view);
        } else {
            this.f29422n = new WeakReference<>(frameLayout);
        }
        if (!z10) {
            M0(view);
        }
        Q0();
        invalidateSelf();
    }

    @Px
    public int Q() {
        return this.f29414f.m();
    }

    public boolean S() {
        return !this.f29414f.G() && this.f29414f.F();
    }

    public boolean T() {
        return this.f29414f.G();
    }

    @Override // com.google.android.material.internal.d0.b
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void a() {
        invalidateSelf();
    }

    public void d() {
        if (this.f29414f.F()) {
            this.f29414f.a();
            d0();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f29411c.draw(canvas);
        if (R()) {
            i(canvas);
        }
    }

    public void e() {
        if (this.f29414f.G()) {
            this.f29414f.b();
            e0();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f29414f.f();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f29413e.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f29413e.width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    void h0(int i10) {
        this.f29414f.K(i10);
        Q0();
    }

    void i0(@Px int i10) {
        this.f29414f.L(i10);
        Q0();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    int j() {
        return this.f29414f.d();
    }

    public void j0(boolean z10) {
        if (this.f29414f.H() == z10) {
            return;
        }
        this.f29414f.N(z10);
        WeakReference<View> weakReference = this.f29421m;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        b(this.f29421m.get());
    }

    @Px
    int k() {
        return this.f29414f.e();
    }

    public void k0(@ColorInt int i10) {
        this.f29414f.O(i10);
        W();
    }

    @ColorInt
    public int l() {
        return this.f29411c.z().getDefaultColor();
    }

    public void l0(int i10) {
        if (i10 != 8388691) {
        }
        if (this.f29414f.h() != i10) {
            this.f29414f.P(i10);
            Y();
        }
    }

    public void m0(@NonNull Locale locale) {
        if (locale.equals(this.f29414f.z())) {
            return;
        }
        this.f29414f.h0(locale);
        invalidateSelf();
    }

    public int n() {
        return this.f29414f.h();
    }

    public void n0(@ColorInt int i10) {
        if (this.f29412d.g().getColor() != i10) {
            this.f29414f.T(i10);
            b0();
        }
    }

    @NonNull
    public Locale o() {
        return this.f29414f.z();
    }

    public void o0(@StyleRes int i10) {
        this.f29414f.W(i10);
        Z();
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.d0.b
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @ColorInt
    public int p() {
        return this.f29412d.g().getColor();
    }

    public void p0(@StyleRes int i10) {
        this.f29414f.V(i10);
        Z();
    }

    public void q0(@StyleRes int i10) {
        this.f29414f.S(i10);
        Z();
    }

    @Nullable
    public CharSequence r() {
        if (!isVisible()) {
            return null;
        }
        if (T()) {
            return J();
        }
        return S() ? E() : t();
    }

    public void r0(@StyleRes int i10) {
        this.f29414f.R(i10);
        Z();
    }

    @Nullable
    public FrameLayout s() {
        WeakReference<FrameLayout> weakReference = this.f29422n;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public void s0(@StringRes int i10) {
        this.f29414f.X(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f29414f.M(i10);
        V();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public void t0(@Nullable CharSequence charSequence) {
        this.f29414f.Y(charSequence);
    }

    public int u() {
        return this.f29414f.u();
    }

    public void u0(CharSequence charSequence) {
        this.f29414f.Z(charSequence);
    }

    @Px
    public int v() {
        return this.f29414f.t();
    }

    public void v0(@PluralsRes int i10) {
        this.f29414f.a0(i10);
    }

    @Px
    public int w() {
        return this.f29414f.u();
    }

    public void w0(int i10) {
        y0(i10);
        x0(i10);
    }

    @Px
    public int x() {
        return this.f29414f.i();
    }

    public void x0(@Px int i10) {
        this.f29414f.b0(i10);
        Q0();
    }

    @Px
    public int y() {
        return this.f29414f.v();
    }

    public void y0(@Px int i10) {
        this.f29414f.c0(i10);
        Q0();
    }

    public void z0(@Px int i10) {
        if (i10 != this.f29414f.i()) {
            this.f29414f.Q(i10);
            Q0();
        }
    }
}
