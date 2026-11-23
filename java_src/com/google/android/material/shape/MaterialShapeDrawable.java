package com.google.android.material.shape;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.util.ObjectsCompat;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.BitSet;

/* JADX INFO: loaded from: classes5.dex */
public class MaterialShapeDrawable extends Drawable implements TintAwareDrawable, r {
    private static final float A = 0.25f;
    public static final int B = 0;
    public static final int C = 1;
    public static final int D = 2;
    private static final Paint E;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final String f31559y = "MaterialShapeDrawable";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final float f31560z = 0.75f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f31561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final p.j[] f31562c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final p.j[] f31563d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BitSet f31564e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f31565f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Matrix f31566g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Path f31567h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Path f31568i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final RectF f31569j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final RectF f31570k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Region f31571l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Region f31572m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private n f31573n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Paint f31574o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Paint f31575p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final com.google.android.material.shadow.b f31576q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    private final o.b f31577r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final o f31578s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private PorterDuffColorFilter f31579t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private PorterDuffColorFilter f31580u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f31581v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    private final RectF f31582w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f31583x;

    @Retention(RetentionPolicy.SOURCE)
    public @interface CompatibilityShadowMode {
    }

    class a implements o.b {
        a() {
        }

        @Override // com.google.android.material.shape.o.b
        public void a(@NonNull p pVar, Matrix matrix, int i10) {
            MaterialShapeDrawable.this.f31564e.set(i10, pVar.e());
            MaterialShapeDrawable.this.f31562c[i10] = pVar.f(matrix);
        }

        @Override // com.google.android.material.shape.o.b
        public void b(@NonNull p pVar, Matrix matrix, int i10) {
            MaterialShapeDrawable.this.f31564e.set(i10 + 4, pVar.e());
            MaterialShapeDrawable.this.f31563d[i10] = pVar.f(matrix);
        }
    }

    class b implements n.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ float f31585a;

        b(float f10) {
            this.f31585a = f10;
        }

        @Override // com.google.android.material.shape.n.c
        @NonNull
        public d a(@NonNull d dVar) {
            return dVar instanceof l ? dVar : new com.google.android.material.shape.b(this.f31585a, dVar);
        }
    }

    static {
        Paint paint = new Paint(1);
        E = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public MaterialShapeDrawable() {
        this(new n());
    }

    private boolean N0(int[] iArr) {
        boolean z10;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.f31561b.f31590d == null || color2 == (colorForState2 = this.f31561b.f31590d.getColorForState(iArr, (color2 = this.f31574o.getColor())))) {
            z10 = false;
        } else {
            this.f31574o.setColor(colorForState2);
            z10 = true;
        }
        if (this.f31561b.f31591e == null || color == (colorForState = this.f31561b.f31591e.getColorForState(iArr, (color = this.f31575p.getColor())))) {
            return z10;
        }
        this.f31575p.setColor(colorForState);
        return true;
    }

    private boolean O0() {
        PorterDuffColorFilter porterDuffColorFilter = this.f31579t;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f31580u;
        c cVar = this.f31561b;
        this.f31579t = k(cVar.f31593g, cVar.f31594h, this.f31574o, true);
        c cVar2 = this.f31561b;
        this.f31580u = k(cVar2.f31592f, cVar2.f31594h, this.f31575p, false);
        c cVar3 = this.f31561b;
        if (cVar3.f31607u) {
            this.f31576q.e(cVar3.f31593g.getColorForState(getState(), 0));
        }
        return (ObjectsCompat.equals(porterDuffColorFilter, this.f31579t) && ObjectsCompat.equals(porterDuffColorFilter2, this.f31580u)) ? false : true;
    }

    private float P() {
        if (Z()) {
            return this.f31575p.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    private void P0() {
        float fW = W();
        this.f31561b.f31604r = (int) Math.ceil(0.75f * fW);
        this.f31561b.f31605s = (int) Math.ceil(fW * A);
        O0();
        b0();
    }

    private boolean X() {
        c cVar = this.f31561b;
        int i10 = cVar.f31603q;
        return i10 != 1 && cVar.f31604r > 0 && (i10 == 2 || k0());
    }

    private boolean Y() {
        Paint.Style style = this.f31561b.f31608v;
        return style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL;
    }

    private boolean Z() {
        Paint.Style style = this.f31561b.f31608v;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f31575p.getStrokeWidth() > 0.0f;
    }

    private void b0() {
        super.invalidateSelf();
    }

    @Nullable
    private PorterDuffColorFilter f(@NonNull Paint paint, boolean z10) {
        if (!z10) {
            return null;
        }
        int color = paint.getColor();
        int iL = l(color);
        this.f31581v = iL;
        if (iL != color) {
            return new PorterDuffColorFilter(iL, PorterDuff.Mode.SRC_IN);
        }
        return null;
    }

    private void g(@NonNull RectF rectF, @NonNull Path path) {
        h(rectF, path);
        if (this.f31561b.f31596j != 1.0f) {
            this.f31566g.reset();
            Matrix matrix = this.f31566g;
            float f10 = this.f31561b.f31596j;
            matrix.setScale(f10, f10, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.f31566g);
        }
        path.computeBounds(this.f31582w, true);
    }

    private void h0(@NonNull Canvas canvas) {
        if (X()) {
            canvas.save();
            j0(canvas);
            if (!this.f31583x) {
                p(canvas);
                canvas.restore();
                return;
            }
            int iWidth = (int) (this.f31582w.width() - getBounds().width());
            int iHeight = (int) (this.f31582w.height() - getBounds().height());
            if (iWidth < 0 || iHeight < 0) {
                throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(((int) this.f31582w.width()) + (this.f31561b.f31604r * 2) + iWidth, ((int) this.f31582w.height()) + (this.f31561b.f31604r * 2) + iHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap);
            float f10 = (getBounds().left - this.f31561b.f31604r) - iWidth;
            float f11 = (getBounds().top - this.f31561b.f31604r) - iHeight;
            canvas2.translate(-f10, -f11);
            p(canvas2);
            canvas.drawBitmap(bitmapCreateBitmap, f10, f11, (Paint) null);
            bitmapCreateBitmap.recycle();
            canvas.restore();
        }
    }

    private void i() {
        n nVarY = getShapeAppearanceModel().y(new b(-P()));
        this.f31573n = nVarY;
        this.f31578s.d(nVarY, this.f31561b.f31597k, x(), this.f31568i);
    }

    private static int i0(int i10, int i11) {
        return (i10 * (i11 + (i11 >>> 7))) >>> 8;
    }

    @NonNull
    private PorterDuffColorFilter j(@NonNull ColorStateList colorStateList, @NonNull PorterDuff.Mode mode, boolean z10) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        if (z10) {
            colorForState = l(colorForState);
        }
        this.f31581v = colorForState;
        return new PorterDuffColorFilter(colorForState, mode);
    }

    private void j0(@NonNull Canvas canvas) {
        canvas.translate(J(), K());
    }

    @NonNull
    private PorterDuffColorFilter k(@Nullable ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, @NonNull Paint paint, boolean z10) {
        return (colorStateList == null || mode == null) ? f(paint, z10) : j(colorStateList, mode, z10);
    }

    @NonNull
    public static MaterialShapeDrawable m(Context context) {
        return n(context, 0.0f);
    }

    @NonNull
    public static MaterialShapeDrawable n(@NonNull Context context, float f10) {
        return o(context, f10, null);
    }

    @NonNull
    public static MaterialShapeDrawable o(@NonNull Context context, float f10, @Nullable ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(com.google.android.material.color.s.c(context, R.attr.colorSurface, MaterialShapeDrawable.class.getSimpleName()));
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.a0(context);
        materialShapeDrawable.p0(colorStateList);
        materialShapeDrawable.o0(f10);
        return materialShapeDrawable;
    }

    private void p(@NonNull Canvas canvas) {
        this.f31564e.cardinality();
        if (this.f31561b.f31605s != 0) {
            canvas.drawPath(this.f31567h, this.f31576q.d());
        }
        for (int i10 = 0; i10 < 4; i10++) {
            this.f31562c[i10].b(this.f31576q, this.f31561b.f31604r, canvas);
            this.f31563d[i10].b(this.f31576q, this.f31561b.f31604r, canvas);
        }
        if (this.f31583x) {
            int iJ = J();
            int iK = K();
            canvas.translate(-iJ, -iK);
            canvas.drawPath(this.f31567h, E);
            canvas.translate(iJ, iK);
        }
    }

    private void q(@NonNull Canvas canvas) {
        s(canvas, this.f31574o, this.f31567h, this.f31561b.f31587a, w());
    }

    private void s(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull Path path, @NonNull n nVar, @NonNull RectF rectF) {
        if (!nVar.u(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float fA = nVar.t().a(rectF) * this.f31561b.f31597k;
            canvas.drawRoundRect(rectF, fA, fA, paint);
        }
    }

    @NonNull
    private RectF x() {
        this.f31570k.set(w());
        float fP = P();
        this.f31570k.inset(fP, fP);
        return this.f31570k;
    }

    public float A() {
        return this.f31561b.f31597k;
    }

    @Deprecated
    public void A0(boolean z10) {
        y0(!z10 ? 1 : 0);
    }

    public Paint.Style B() {
        return this.f31561b.f31608v;
    }

    @Deprecated
    public void B0(int i10) {
        this.f31561b.f31604r = i10;
    }

    public float C() {
        return this.f31561b.f31600n;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void C0(int i10) {
        c cVar = this.f31561b;
        if (cVar.f31605s != i10) {
            cVar.f31605s = i10;
            b0();
        }
    }

    @Deprecated
    public void D(int i10, int i11, @NonNull Path path) {
        h(new RectF(0.0f, 0.0f, i10, i11), path);
    }

    @Deprecated
    public void D0(@NonNull q qVar) {
        setShapeAppearanceModel(qVar);
    }

    @ColorInt
    public int E() {
        return this.f31581v;
    }

    public void E0(float f10, @ColorInt int i10) {
        J0(f10);
        G0(ColorStateList.valueOf(i10));
    }

    public float F() {
        return this.f31561b.f31596j;
    }

    public void F0(float f10, @Nullable ColorStateList colorStateList) {
        J0(f10);
        G0(colorStateList);
    }

    public int G() {
        return this.f31561b.f31606t;
    }

    public void G0(@Nullable ColorStateList colorStateList) {
        c cVar = this.f31561b;
        if (cVar.f31591e != colorStateList) {
            cVar.f31591e = colorStateList;
            onStateChange(getState());
        }
    }

    public int H() {
        return this.f31561b.f31603q;
    }

    public void H0(@ColorInt int i10) {
        I0(ColorStateList.valueOf(i10));
    }

    @Deprecated
    public int I() {
        return (int) y();
    }

    public void I0(ColorStateList colorStateList) {
        this.f31561b.f31592f = colorStateList;
        O0();
        b0();
    }

    public int J() {
        c cVar = this.f31561b;
        return (int) (((double) cVar.f31605s) * Math.sin(Math.toRadians(cVar.f31606t)));
    }

    public void J0(float f10) {
        this.f31561b.f31598l = f10;
        invalidateSelf();
    }

    public int K() {
        c cVar = this.f31561b;
        return (int) (((double) cVar.f31605s) * Math.cos(Math.toRadians(cVar.f31606t)));
    }

    public void K0(float f10) {
        c cVar = this.f31561b;
        if (cVar.f31602p != f10) {
            cVar.f31602p = f10;
            P0();
        }
    }

    public int L() {
        return this.f31561b.f31604r;
    }

    public void L0(boolean z10) {
        c cVar = this.f31561b;
        if (cVar.f31607u != z10) {
            cVar.f31607u = z10;
            invalidateSelf();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int M() {
        return this.f31561b.f31605s;
    }

    public void M0(float f10) {
        K0(f10 - y());
    }

    @Nullable
    @Deprecated
    public q N() {
        n shapeAppearanceModel = getShapeAppearanceModel();
        if (shapeAppearanceModel instanceof q) {
            return (q) shapeAppearanceModel;
        }
        return null;
    }

    @Nullable
    public ColorStateList O() {
        return this.f31561b.f31591e;
    }

    @Nullable
    public ColorStateList Q() {
        return this.f31561b.f31592f;
    }

    public float R() {
        return this.f31561b.f31598l;
    }

    @Nullable
    public ColorStateList S() {
        return this.f31561b.f31593g;
    }

    public float T() {
        return this.f31561b.f31587a.r().a(w());
    }

    public float U() {
        return this.f31561b.f31587a.t().a(w());
    }

    public float V() {
        return this.f31561b.f31602p;
    }

    public float W() {
        return y() + V();
    }

    public void a0(Context context) {
        this.f31561b.f31588b = new x4.a(context);
        P0();
    }

    public boolean c0() {
        x4.a aVar = this.f31561b.f31588b;
        return aVar != null && aVar.l();
    }

    public boolean d0() {
        return this.f31561b.f31588b != null;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.f31574o.setColorFilter(this.f31579t);
        int alpha = this.f31574o.getAlpha();
        this.f31574o.setAlpha(i0(alpha, this.f31561b.f31599m));
        this.f31575p.setColorFilter(this.f31580u);
        this.f31575p.setStrokeWidth(this.f31561b.f31598l);
        int alpha2 = this.f31575p.getAlpha();
        this.f31575p.setAlpha(i0(alpha2, this.f31561b.f31599m));
        if (this.f31565f) {
            i();
            g(w(), this.f31567h);
            this.f31565f = false;
        }
        h0(canvas);
        if (Y()) {
            q(canvas);
        }
        if (Z()) {
            t(canvas);
        }
        this.f31574o.setAlpha(alpha);
        this.f31575p.setAlpha(alpha2);
    }

    public boolean e0(int i10, int i11) {
        return getTransparentRegion().contains(i10, i11);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean f0() {
        return this.f31561b.f31587a.u(w());
    }

    @Deprecated
    public boolean g0() {
        int i10 = this.f31561b.f31603q;
        return i10 == 0 || i10 == 2;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f31561b.f31599m;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f31561b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.f31561b.f31603q == 2) {
            return;
        }
        if (f0()) {
            outline.setRoundRect(getBounds(), T() * this.f31561b.f31597k);
        } else {
            g(w(), this.f31567h);
            com.google.android.material.drawable.g.l(outline, this.f31567h);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        Rect rect2 = this.f31561b.f31595i;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // com.google.android.material.shape.r
    @NonNull
    public n getShapeAppearanceModel() {
        return this.f31561b.f31587a;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.f31571l.set(getBounds());
        g(w(), this.f31567h);
        this.f31572m.setPath(this.f31567h, this.f31571l);
        this.f31571l.op(this.f31572m, Region.Op.DIFFERENCE);
        return this.f31571l;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected final void h(@NonNull RectF rectF, @NonNull Path path) {
        o oVar = this.f31578s;
        c cVar = this.f31561b;
        oVar.e(cVar.f31587a, cVar.f31597k, rectF, this.f31577r, path);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.f31565f = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.f31561b.f31593g) != null && colorStateList.isStateful()) || (((colorStateList2 = this.f31561b.f31592f) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.f31561b.f31591e) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.f31561b.f31590d) != null && colorStateList4.isStateful())));
    }

    public boolean k0() {
        return (f0() || this.f31567h.isConvex() || Build.VERSION.SDK_INT >= 29) ? false : true;
    }

    @ColorInt
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected int l(@ColorInt int i10) {
        float fW = W() + C();
        x4.a aVar = this.f31561b.f31588b;
        return aVar != null ? aVar.e(i10, fW) : i10;
    }

    public void l0(float f10) {
        setShapeAppearanceModel(this.f31561b.f31587a.w(f10));
    }

    public void m0(@NonNull d dVar) {
        setShapeAppearanceModel(this.f31561b.f31587a.x(dVar));
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        this.f31561b = new c(this.f31561b);
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void n0(boolean z10) {
        this.f31578s.n(z10);
    }

    public void o0(float f10) {
        c cVar = this.f31561b;
        if (cVar.f31601o != f10) {
            cVar.f31601o = f10;
            P0();
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f31565f = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.d0.b
    protected boolean onStateChange(int[] iArr) {
        boolean z10 = N0(iArr) || O0();
        if (z10) {
            invalidateSelf();
        }
        return z10;
    }

    public void p0(@Nullable ColorStateList colorStateList) {
        c cVar = this.f31561b;
        if (cVar.f31590d != colorStateList) {
            cVar.f31590d = colorStateList;
            onStateChange(getState());
        }
    }

    public void q0(float f10) {
        c cVar = this.f31561b;
        if (cVar.f31597k != f10) {
            cVar.f31597k = f10;
            this.f31565f = true;
            invalidateSelf();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected void r(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull Path path, @NonNull RectF rectF) {
        s(canvas, paint, path, this.f31561b.f31587a, rectF);
    }

    public void r0(int i10, int i11, int i12, int i13) {
        c cVar = this.f31561b;
        if (cVar.f31595i == null) {
            cVar.f31595i = new Rect();
        }
        this.f31561b.f31595i.set(i10, i11, i12, i13);
        invalidateSelf();
    }

    public void s0(Paint.Style style) {
        this.f31561b.f31608v = style;
        b0();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i10) {
        c cVar = this.f31561b;
        if (cVar.f31599m != i10) {
            cVar.f31599m = i10;
            b0();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f31561b.f31589c = colorFilter;
        b0();
    }

    @Override // com.google.android.material.shape.r
    public void setShapeAppearanceModel(@NonNull n nVar) {
        this.f31561b.f31587a = nVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(@ColorInt int i10) {
        setTintList(ColorStateList.valueOf(i10));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        this.f31561b.f31593g = colorStateList;
        O0();
        b0();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        c cVar = this.f31561b;
        if (cVar.f31594h != mode) {
            cVar.f31594h = mode;
            O0();
            b0();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected void t(@NonNull Canvas canvas) {
        s(canvas, this.f31575p, this.f31568i, this.f31573n, x());
    }

    public void t0(float f10) {
        c cVar = this.f31561b;
        if (cVar.f31600n != f10) {
            cVar.f31600n = f10;
            P0();
        }
    }

    public float u() {
        return this.f31561b.f31587a.j().a(w());
    }

    public void u0(float f10) {
        c cVar = this.f31561b;
        if (cVar.f31596j != f10) {
            cVar.f31596j = f10;
            invalidateSelf();
        }
    }

    public float v() {
        return this.f31561b.f31587a.l().a(w());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void v0(boolean z10) {
        this.f31583x = z10;
    }

    @NonNull
    protected RectF w() {
        this.f31569j.set(getBounds());
        return this.f31569j;
    }

    public void w0(int i10) {
        this.f31576q.e(i10);
        this.f31561b.f31607u = false;
        b0();
    }

    public void x0(int i10) {
        c cVar = this.f31561b;
        if (cVar.f31606t != i10) {
            cVar.f31606t = i10;
            b0();
        }
    }

    public float y() {
        return this.f31561b.f31601o;
    }

    public void y0(int i10) {
        c cVar = this.f31561b;
        if (cVar.f31603q != i10) {
            cVar.f31603q = i10;
            b0();
        }
    }

    @Nullable
    public ColorStateList z() {
        return this.f31561b.f31590d;
    }

    @Deprecated
    public void z0(int i10) {
        o0(i10);
    }

    public MaterialShapeDrawable(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        this(n.e(context, attributeSet, i10, i11).m());
    }

    @Deprecated
    public MaterialShapeDrawable(@NonNull q qVar) {
        this((n) qVar);
    }

    public MaterialShapeDrawable(@NonNull n nVar) {
        this(new c(nVar, null));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected MaterialShapeDrawable(@NonNull c cVar) {
        o oVar;
        this.f31562c = new p.j[4];
        this.f31563d = new p.j[4];
        this.f31564e = new BitSet(8);
        this.f31566g = new Matrix();
        this.f31567h = new Path();
        this.f31568i = new Path();
        this.f31569j = new RectF();
        this.f31570k = new RectF();
        this.f31571l = new Region();
        this.f31572m = new Region();
        Paint paint = new Paint(1);
        this.f31574o = paint;
        Paint paint2 = new Paint(1);
        this.f31575p = paint2;
        this.f31576q = new com.google.android.material.shadow.b();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            oVar = o.k();
        } else {
            oVar = new o();
        }
        this.f31578s = oVar;
        this.f31582w = new RectF();
        this.f31583x = true;
        this.f31561b = cVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        O0();
        N0(getState());
        this.f31577r = new a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static class c extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NonNull
        n f31587a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        x4.a f31588b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        ColorFilter f31589c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        ColorStateList f31590d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Nullable
        ColorStateList f31591e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @Nullable
        ColorStateList f31592f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @Nullable
        ColorStateList f31593g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @Nullable
        PorterDuff.Mode f31594h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @Nullable
        Rect f31595i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        float f31596j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        float f31597k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        float f31598l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        int f31599m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        float f31600n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        float f31601o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        float f31602p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        int f31603q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        int f31604r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f31605s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        int f31606t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        boolean f31607u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        Paint.Style f31608v;

        public c(@NonNull n nVar, @Nullable x4.a aVar) {
            this.f31590d = null;
            this.f31591e = null;
            this.f31592f = null;
            this.f31593g = null;
            this.f31594h = PorterDuff.Mode.SRC_IN;
            this.f31595i = null;
            this.f31596j = 1.0f;
            this.f31597k = 1.0f;
            this.f31599m = 255;
            this.f31600n = 0.0f;
            this.f31601o = 0.0f;
            this.f31602p = 0.0f;
            this.f31603q = 0;
            this.f31604r = 0;
            this.f31605s = 0;
            this.f31606t = 0;
            this.f31607u = false;
            this.f31608v = Paint.Style.FILL_AND_STROKE;
            this.f31587a = nVar;
            this.f31588b = aVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this);
            materialShapeDrawable.f31565f = true;
            return materialShapeDrawable;
        }

        public c(@NonNull c cVar) {
            this.f31590d = null;
            this.f31591e = null;
            this.f31592f = null;
            this.f31593g = null;
            this.f31594h = PorterDuff.Mode.SRC_IN;
            this.f31595i = null;
            this.f31596j = 1.0f;
            this.f31597k = 1.0f;
            this.f31599m = 255;
            this.f31600n = 0.0f;
            this.f31601o = 0.0f;
            this.f31602p = 0.0f;
            this.f31603q = 0;
            this.f31604r = 0;
            this.f31605s = 0;
            this.f31606t = 0;
            this.f31607u = false;
            this.f31608v = Paint.Style.FILL_AND_STROKE;
            this.f31587a = cVar.f31587a;
            this.f31588b = cVar.f31588b;
            this.f31598l = cVar.f31598l;
            this.f31589c = cVar.f31589c;
            this.f31590d = cVar.f31590d;
            this.f31591e = cVar.f31591e;
            this.f31594h = cVar.f31594h;
            this.f31593g = cVar.f31593g;
            this.f31599m = cVar.f31599m;
            this.f31596j = cVar.f31596j;
            this.f31605s = cVar.f31605s;
            this.f31603q = cVar.f31603q;
            this.f31607u = cVar.f31607u;
            this.f31597k = cVar.f31597k;
            this.f31600n = cVar.f31600n;
            this.f31601o = cVar.f31601o;
            this.f31602p = cVar.f31602p;
            this.f31604r = cVar.f31604r;
            this.f31606t = cVar.f31606t;
            this.f31592f = cVar.f31592f;
            this.f31608v = cVar.f31608v;
            if (cVar.f31595i != null) {
                this.f31595i = new Rect(cVar.f31595i);
            }
        }
    }
}
