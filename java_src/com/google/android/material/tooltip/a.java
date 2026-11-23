package com.google.android.material.tooltip;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.R;
import com.google.android.material.animation.b;
import com.google.android.material.color.s;
import com.google.android.material.internal.d0;
import com.google.android.material.internal.g0;
import com.google.android.material.resources.d;
import com.google.android.material.resources.e;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.g;
import com.google.android.material.shape.i;
import com.google.android.material.shape.k;
import com.haima.hmcp.proto.GSSDK;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class a extends MaterialShapeDrawable implements d0.b {

    @StyleRes
    private static final int X = R.style.Widget_MaterialComponents_Tooltip;

    @AttrRes
    private static final int Y = R.attr.tooltipStyle;

    @Nullable
    private CharSequence F;

    @NonNull
    private final Context G;

    @Nullable
    private final Paint.FontMetrics H;

    @NonNull
    private final d0 I;

    @NonNull
    private final View.OnLayoutChangeListener J;

    @NonNull
    private final Rect K;
    private int L;
    private int M;
    private int N;
    private int O;
    private boolean P;
    private int Q;
    private int R;
    private float S;
    private float T;
    private final float U;
    private float V;
    private float W;

    /* JADX INFO: renamed from: com.google.android.material.tooltip.a$a, reason: collision with other inner class name */
    class ViewOnLayoutChangeListenerC0609a implements View.OnLayoutChangeListener {
        ViewOnLayoutChangeListenerC0609a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            a.this.s1(view);
        }
    }

    private a(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        super(context, attributeSet, i10, i11);
        this.H = new Paint.FontMetrics();
        d0 d0Var = new d0(this);
        this.I = d0Var;
        this.J = new ViewOnLayoutChangeListenerC0609a();
        this.K = new Rect();
        this.S = 1.0f;
        this.T = 1.0f;
        this.U = 0.5f;
        this.V = 0.5f;
        this.W = 1.0f;
        this.G = context;
        d0Var.g().density = context.getResources().getDisplayMetrics().density;
        d0Var.g().setTextAlign(Paint.Align.CENTER);
    }

    private float R0() {
        int i10;
        if (((this.K.right - getBounds().right) - this.R) - this.O < 0) {
            i10 = ((this.K.right - getBounds().right) - this.R) - this.O;
        } else {
            if (((this.K.left - getBounds().left) - this.R) + this.O <= 0) {
                return 0.0f;
            }
            i10 = ((this.K.left - getBounds().left) - this.R) + this.O;
        }
        return i10;
    }

    private float S0() {
        this.I.g().getFontMetrics(this.H);
        Paint.FontMetrics fontMetrics = this.H;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private float T0(@NonNull Rect rect) {
        return rect.centerY() - S0();
    }

    @NonNull
    public static a U0(@NonNull Context context) {
        return W0(context, null, Y, X);
    }

    @NonNull
    public static a V0(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        return W0(context, attributeSet, Y, X);
    }

    @NonNull
    public static a W0(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        a aVar = new a(context, attributeSet, i10, i11);
        aVar.h1(attributeSet, i10, i11);
        return aVar;
    }

    private g X0() {
        float f10 = -R0();
        float fWidth = ((float) (((double) getBounds().width()) - (((double) this.Q) * Math.sqrt(2.0d)))) / 2.0f;
        return new k(new i(this.Q), Math.min(Math.max(f10, -fWidth), fWidth));
    }

    private void Z0(@NonNull Canvas canvas) {
        if (this.F == null) {
            return;
        }
        Rect bounds = getBounds();
        int iT0 = (int) T0(bounds);
        if (this.I.e() != null) {
            this.I.g().drawableState = getState();
            this.I.o(this.G);
            this.I.g().setAlpha((int) (this.W * 255.0f));
        }
        CharSequence charSequence = this.F;
        canvas.drawText(charSequence, 0, charSequence.length(), bounds.centerX(), iT0, this.I.g());
    }

    private float g1() {
        CharSequence charSequence = this.F;
        if (charSequence == null) {
            return 0.0f;
        }
        return this.I.h(charSequence.toString());
    }

    private void h1(@Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        TypedArray typedArrayK = g0.k(this.G, attributeSet, R.styleable.Tooltip, i10, i11, new int[0]);
        this.Q = this.G.getResources().getDimensionPixelSize(R.dimen.mtrl_tooltip_arrowSize);
        boolean z10 = typedArrayK.getBoolean(R.styleable.Tooltip_showMarker, true);
        this.P = z10;
        if (z10) {
            setShapeAppearanceModel(getShapeAppearanceModel().v().t(X0()).m());
        } else {
            this.Q = 0;
        }
        n1(typedArrayK.getText(R.styleable.Tooltip_android_text));
        e eVarH = d.h(this.G, typedArrayK, R.styleable.Tooltip_android_textAppearance);
        if (eVarH != null) {
            int i12 = R.styleable.Tooltip_android_textColor;
            if (typedArrayK.hasValue(i12)) {
                eVarH.k(d.a(this.G, typedArrayK, i12));
            }
        }
        o1(eVarH);
        p0(ColorStateList.valueOf(typedArrayK.getColor(R.styleable.Tooltip_backgroundTint, s.s(ColorUtils.setAlphaComponent(s.c(this.G, android.R.attr.colorBackground, a.class.getCanonicalName()), GSSDK.OneInputOPData.InputOP.OP_KEY_VK_PROCESSKEY_VALUE), ColorUtils.setAlphaComponent(s.c(this.G, R.attr.colorOnBackground, a.class.getCanonicalName()), 153)))));
        G0(ColorStateList.valueOf(s.c(this.G, R.attr.colorSurface, a.class.getCanonicalName())));
        this.L = typedArrayK.getDimensionPixelSize(R.styleable.Tooltip_android_padding, 0);
        this.M = typedArrayK.getDimensionPixelSize(R.styleable.Tooltip_android_minWidth, 0);
        this.N = typedArrayK.getDimensionPixelSize(R.styleable.Tooltip_android_minHeight, 0);
        this.O = typedArrayK.getDimensionPixelSize(R.styleable.Tooltip_android_layout_margin, 0);
        typedArrayK.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s1(@NonNull View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.R = iArr[0];
        view.getWindowVisibleDisplayFrame(this.K);
    }

    public void Y0(@Nullable View view) {
        if (view == null) {
            return;
        }
        view.removeOnLayoutChangeListener(this.J);
    }

    @Override // com.google.android.material.internal.d0.b
    public void a() {
        invalidateSelf();
    }

    public int a1() {
        return this.O;
    }

    public int b1() {
        return this.N;
    }

    public int c1() {
        return this.M;
    }

    @Nullable
    public CharSequence d1() {
        return this.F;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        canvas.save();
        float fR0 = R0();
        float f10 = (float) (-((((double) this.Q) * Math.sqrt(2.0d)) - ((double) this.Q)));
        canvas.scale(this.S, this.T, getBounds().left + (getBounds().width() * 0.5f), getBounds().top + (getBounds().height() * this.V));
        canvas.translate(fR0, f10);
        super.draw(canvas);
        Z0(canvas);
        canvas.restore();
    }

    @Nullable
    public e e1() {
        return this.I.e();
    }

    public int f1() {
        return this.L;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) Math.max(this.I.g().getTextSize(), this.N);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) Math.max((this.L * 2) + g1(), this.M);
    }

    public void i1(@Px int i10) {
        this.O = i10;
        invalidateSelf();
    }

    public void j1(@Px int i10) {
        this.N = i10;
        invalidateSelf();
    }

    public void k1(@Px int i10) {
        this.M = i10;
        invalidateSelf();
    }

    public void l1(@Nullable View view) {
        if (view == null) {
            return;
        }
        s1(view);
        view.addOnLayoutChangeListener(this.J);
    }

    public void m1(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        this.V = 1.2f;
        this.S = f10;
        this.T = f10;
        this.W = b.b(0.0f, 1.0f, 0.19f, 1.0f, f10);
        invalidateSelf();
    }

    public void n1(@Nullable CharSequence charSequence) {
        if (TextUtils.equals(this.F, charSequence)) {
            return;
        }
        this.F = charSequence;
        this.I.n(true);
        invalidateSelf();
    }

    public void o1(@Nullable e eVar) {
        this.I.l(eVar, this.G);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (this.P) {
            setShapeAppearanceModel(getShapeAppearanceModel().v().t(X0()).m());
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, com.google.android.material.internal.d0.b
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    public void p1(@StyleRes int i10) {
        o1(new e(this.G, i10));
    }

    public void q1(@Px int i10) {
        this.L = i10;
        invalidateSelf();
    }

    public void r1(@StringRes int i10) {
        n1(this.G.getResources().getString(i10));
    }
}
