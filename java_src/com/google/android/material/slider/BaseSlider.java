package com.google.android.material.slider;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import android.widget.SeekBar;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.R;
import com.google.android.material.internal.g0;
import com.google.android.material.internal.n0;
import com.google.android.material.internal.p0;
import com.google.android.material.motion.j;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.n;
import com.google.android.material.slider.BaseSlider;
import com.google.android.material.slider.a;
import com.google.android.material.slider.b;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
abstract class BaseSlider<S extends BaseSlider<S, L, T>, L extends com.google.android.material.slider.a<S>, T extends com.google.android.material.slider.b<S>> extends View {
    static final int A2 = 1;
    static final int B2 = 0;
    private static final int C2 = 83;
    private static final int D2 = 117;

    @Dimension(unit = 0)
    private static final int I2 = 48;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    private static final String f31788l2 = "BaseSlider";

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    private static final String f31789m2 = "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)";

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    private static final String f31790n2 = "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)";

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    private static final String f31791o2 = "valueFrom(%s) must be smaller than valueTo(%s)";

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    private static final String f31792p2 = "valueTo(%s) must be greater than valueFrom(%s)";

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    private static final String f31793q2 = "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range";

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    private static final String f31794r2 = "minSeparation(%s) must be greater or equal to 0";

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    private static final String f31795s2 = "minSeparation(%s) cannot be set as a dimension when using stepSize(%s)";

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    private static final String f31796t2 = "minSeparation(%s) must be greater or equal and a multiple of stepSize(%s) when using stepSize(%s)";

    /* JADX INFO: renamed from: u2, reason: collision with root package name */
    private static final String f31797u2 = "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.";

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    private static final int f31798v2 = 200;

    /* JADX INFO: renamed from: w2, reason: collision with root package name */
    private static final int f31799w2 = 63;

    /* JADX INFO: renamed from: x2, reason: collision with root package name */
    private static final double f31800x2 = 1.0E-4d;

    /* JADX INFO: renamed from: y2, reason: collision with root package name */
    private static final float f31801y2 = 0.5f;
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private int H;
    private int I;
    private int J;
    private int K;
    private int L;

    @NonNull
    private ColorStateList L1;
    private int M;
    private int N;
    private float O;
    private MotionEvent P;
    private com.google.android.material.slider.e Q;
    private boolean R;

    @NonNull
    private ColorStateList R1;
    private float S;
    private float T;
    private ArrayList<Float> U;
    private int V;

    @NonNull
    private ColorStateList V1;
    private int W;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    @NonNull
    private ColorStateList f31803a2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final Paint f31804b;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private float[] f31805b1;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    @NonNull
    private ColorStateList f31806b2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final Paint f31807c;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    @NonNull
    private final Path f31808c2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final Paint f31809d;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    @NonNull
    private final RectF f31810d2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final Paint f31811e;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    @NonNull
    private final RectF f31812e2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final Paint f31813f;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private boolean f31814f1;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    @NonNull
    private final MaterialShapeDrawable f31815f2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final Paint f31816g;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    @Nullable
    private Drawable f31817g2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final Paint f31818h;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    @NonNull
    private List<Drawable> f31819h2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final e f31820i;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private int f31821i1;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    private float f31822i2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final AccessibilityManager f31823j;

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    private int f31824j2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private BaseSlider<S, L, T>.d f31825k;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    @NonNull
    private final ViewTreeObserver.OnScrollChangedListener f31826k2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f31827l;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private int f31828l1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    private final List<com.google.android.material.tooltip.a> f31829m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    private final List<L> f31830n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    private final List<T> f31831o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f31832p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private float f31833p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private int f31834p1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ValueAnimator f31835q;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private boolean f31836q1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ValueAnimator f31837r;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private boolean f31838r1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f31839s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f31840t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f31841u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f31842v;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private boolean f31843v1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f31844w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f31845x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f31846y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @Px
    private int f31847z;

    /* JADX INFO: renamed from: z2, reason: collision with root package name */
    static final int f31802z2 = R.style.Widget_MaterialComponents_Slider;
    private static final int E2 = R.attr.motionDurationMedium4;
    private static final int F2 = R.attr.motionDurationShort3;
    private static final int G2 = R.attr.motionEasingEmphasizedInterpolator;
    private static final int H2 = R.attr.motionEasingEmphasizedAccelerateInterpolator;

    private enum FullCornerDirection {
        BOTH,
        LEFT,
        RIGHT,
        NONE
    }

    static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f31848b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f31849c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ArrayList<Float> f31850d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        float f31851e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f31852f;

        class a implements Parcelable.Creator<SliderState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SliderState createFromParcel(@NonNull Parcel parcel) {
                return new SliderState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SliderState[] newArray(int i10) {
                return new SliderState[i10];
            }
        }

        /* synthetic */ SliderState(Parcel parcel, a aVar) {
            this(parcel);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeFloat(this.f31848b);
            parcel.writeFloat(this.f31849c);
            parcel.writeList(this.f31850d);
            parcel.writeFloat(this.f31851e);
            parcel.writeBooleanArray(new boolean[]{this.f31852f});
        }

        SliderState(Parcelable parcelable) {
            super(parcelable);
        }

        private SliderState(@NonNull Parcel parcel) {
            super(parcel);
            this.f31848b = parcel.readFloat();
            this.f31849c = parcel.readFloat();
            ArrayList<Float> arrayList = new ArrayList<>();
            this.f31850d = arrayList;
            parcel.readList(arrayList, Float.class.getClassLoader());
            this.f31851e = parcel.readFloat();
            this.f31852f = parcel.createBooleanArray()[0];
        }
    }

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Iterator it2 = BaseSlider.this.f31829m.iterator();
            while (it2.hasNext()) {
                ((com.google.android.material.tooltip.a) it2.next()).m1(fFloatValue);
            }
            ViewCompat.postInvalidateOnAnimation(BaseSlider.this);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            n0 n0VarM = p0.m(BaseSlider.this);
            Iterator it2 = BaseSlider.this.f31829m.iterator();
            while (it2.hasNext()) {
                n0VarM.a((com.google.android.material.tooltip.a) it2.next());
            }
        }
    }

    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f31855a;

        static {
            int[] iArr = new int[FullCornerDirection.values().length];
            f31855a = iArr;
            try {
                iArr[FullCornerDirection.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31855a[FullCornerDirection.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31855a[FullCornerDirection.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f31855a[FullCornerDirection.BOTH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static class e extends ExploreByTouchHelper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final BaseSlider<?, ?, ?> f31858a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Rect f31859b;

        e(BaseSlider<?, ?, ?> baseSlider) {
            super(baseSlider);
            this.f31859b = new Rect();
            this.f31858a = baseSlider;
        }

        @NonNull
        private String a(int i10) {
            if (i10 == this.f31858a.getValues().size() - 1) {
                return this.f31858a.getContext().getString(R.string.material_slider_range_end);
            }
            return i10 == 0 ? this.f31858a.getContext().getString(R.string.material_slider_range_start) : "";
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected int getVirtualViewAt(float f10, float f11) {
            for (int i10 = 0; i10 < this.f31858a.getValues().size(); i10++) {
                this.f31858a.z0(i10, this.f31859b);
                if (this.f31859b.contains((int) f10, (int) f11)) {
                    return i10;
                }
            }
            return -1;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void getVisibleVirtualViews(List<Integer> list) {
            for (int i10 = 0; i10 < this.f31858a.getValues().size(); i10++) {
                list.add(Integer.valueOf(i10));
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected boolean onPerformActionForVirtualView(int i10, int i11, Bundle bundle) {
            if (!this.f31858a.isEnabled()) {
                return false;
            }
            if (i11 != 4096 && i11 != 8192) {
                if (i11 == 16908349 && bundle != null && bundle.containsKey(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE)) {
                    if (this.f31858a.x0(i10, bundle.getFloat(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE))) {
                        this.f31858a.A0();
                        this.f31858a.postInvalidate();
                        invalidateVirtualView(i10);
                        return true;
                    }
                }
                return false;
            }
            float fN = this.f31858a.n(20);
            if (i11 == 8192) {
                fN = -fN;
            }
            if (this.f31858a.V()) {
                fN = -fN;
            }
            if (!this.f31858a.x0(i10, MathUtils.clamp(this.f31858a.getValues().get(i10).floatValue() + fN, this.f31858a.getValueFrom(), this.f31858a.getValueTo()))) {
                return false;
            }
            this.f31858a.A0();
            this.f31858a.postInvalidate();
            invalidateVirtualView(i10);
            return true;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void onPopulateNodeForVirtualView(int i10, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SET_PROGRESS);
            List<Float> values = this.f31858a.getValues();
            float fFloatValue = values.get(i10).floatValue();
            float valueFrom = this.f31858a.getValueFrom();
            float valueTo = this.f31858a.getValueTo();
            if (this.f31858a.isEnabled()) {
                if (fFloatValue > valueFrom) {
                    accessibilityNodeInfoCompat.addAction(8192);
                }
                if (fFloatValue < valueTo) {
                    accessibilityNodeInfoCompat.addAction(4096);
                }
            }
            accessibilityNodeInfoCompat.setRangeInfo(AccessibilityNodeInfoCompat.RangeInfoCompat.obtain(1, valueFrom, valueTo, fFloatValue));
            accessibilityNodeInfoCompat.setClassName(SeekBar.class.getName());
            StringBuilder sb2 = new StringBuilder();
            if (this.f31858a.getContentDescription() != null) {
                sb2.append(this.f31858a.getContentDescription());
                sb2.append(",");
            }
            String strF = this.f31858a.F(fFloatValue);
            String string = this.f31858a.getContext().getString(R.string.material_slider_value);
            if (values.size() > 1) {
                string = a(i10);
            }
            sb2.append(String.format(Locale.US, "%s, %s", string, strF));
            accessibilityNodeInfoCompat.setContentDescription(sb2.toString());
            this.f31858a.z0(i10, this.f31859b);
            accessibilityNodeInfoCompat.setBoundsInParent(this.f31859b);
        }
    }

    public BaseSlider(@NonNull Context context) {
        this(context, null);
    }

    private void A(@NonNull Canvas canvas, int i10, int i11) {
        for (int i12 = 0; i12 < this.U.size(); i12++) {
            float fFloatValue = this.U.get(i12).floatValue();
            Drawable drawable = this.f31817g2;
            if (drawable != null) {
                z(canvas, i10, i11, fFloatValue, drawable);
            } else if (i12 < this.f31819h2.size()) {
                z(canvas, i10, i11, fFloatValue, this.f31819h2.get(i12));
            } else {
                if (!isEnabled()) {
                    canvas.drawCircle(this.E + (h0(fFloatValue) * i10), i11, getThumbRadius(), this.f31809d);
                }
                z(canvas, i10, i11, fFloatValue, this.f31815f2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0() {
        if (u0() || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof RippleDrawable) {
            int iH0 = (int) ((h0(this.U.get(this.W).floatValue()) * this.f31834p1) + this.E);
            int iO = o();
            int i10 = this.H;
            DrawableCompat.setHotspotBounds(background, iH0 - i10, iO - i10, iH0 + i10, iO + i10);
        }
    }

    private void B() {
        if (!this.f31832p) {
            this.f31832p = true;
            ValueAnimator valueAnimatorR = r(true);
            this.f31835q = valueAnimatorR;
            this.f31837r = null;
            valueAnimatorR.start();
        }
        Iterator<com.google.android.material.tooltip.a> it2 = this.f31829m.iterator();
        for (int i10 = 0; i10 < this.U.size() && it2.hasNext(); i10++) {
            if (i10 != this.W) {
                r0(it2.next(), this.U.get(i10).floatValue());
            }
        }
        if (!it2.hasNext()) {
            throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(this.f31829m.size()), Integer.valueOf(this.U.size())));
        }
        r0(it2.next(), this.U.get(this.W).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B0() {
        int i10 = this.C;
        if (i10 == 0 || i10 == 1) {
            if (this.V == -1 || !isEnabled()) {
                C();
                return;
            } else {
                B();
                return;
            }
        }
        if (i10 == 2) {
            C();
            return;
        }
        if (i10 != 3) {
            throw new IllegalArgumentException("Unexpected labelBehavior: " + this.C);
        }
        if (isEnabled() && W()) {
            B();
        } else {
            C();
        }
    }

    private void C() {
        if (this.f31832p) {
            this.f31832p = false;
            ValueAnimator valueAnimatorR = r(false);
            this.f31837r = valueAnimatorR;
            this.f31835q = null;
            valueAnimatorR.addListener(new b());
            this.f31837r.start();
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0041  */
    /* JADX WARN: Code duplicated, block: B:14:0x0052  */
    /* JADX WARN: Code duplicated, block: B:16:0x0071 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0073  */
    /* JADX WARN: Code duplicated, block: B:18:0x0087  */
    /* JADX WARN: Code duplicated, block: B:19:0x0097  */
    private void C0(Canvas canvas, Paint paint, RectF rectF, FullCornerDirection fullCornerDirection) {
        int i10;
        float fMax;
        int i11;
        int i12 = this.D;
        float f10 = i12 / 2.0f;
        float f11 = i12 / 2.0f;
        int[] iArr = c.f31855a;
        int i13 = iArr[fullCornerDirection.ordinal()];
        if (i13 != 1) {
            if (i13 == 2) {
                i10 = this.M;
            } else if (i13 == 3) {
                f10 = this.M;
            }
            paint.setStyle(Paint.Style.FILL);
            paint.setStrokeCap(Paint.Cap.BUTT);
            paint.setAntiAlias(true);
            this.f31808c2.reset();
            if (rectF.width() >= f10 + f11) {
                this.f31808c2.addRoundRect(rectF, K(f10, f11), Path.Direction.CW);
                canvas.drawPath(this.f31808c2, paint);
                return;
            }
            float fMin = Math.min(f10, f11);
            fMax = Math.max(f10, f11);
            canvas.save();
            this.f31808c2.addRoundRect(rectF, fMin, fMin, Path.Direction.CW);
            canvas.clipPath(this.f31808c2);
            i11 = iArr[fullCornerDirection.ordinal()];
            if (i11 != 2) {
                RectF rectF2 = this.f31812e2;
                float f12 = rectF.left;
                rectF2.set(f12, rectF.top, (2.0f * fMax) + f12, rectF.bottom);
            } else if (i11 != 3) {
                this.f31812e2.set(rectF.centerX() - fMax, rectF.top, rectF.centerX() + fMax, rectF.bottom);
            } else {
                RectF rectF3 = this.f31812e2;
                float f13 = rectF.right;
                rectF3.set(f13 - (2.0f * fMax), rectF.top, f13, rectF.bottom);
            }
            canvas.drawRoundRect(this.f31812e2, fMax, fMax, paint);
            canvas.restore();
        }
        i10 = this.M;
        f10 = i10;
        f11 = i10;
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        this.f31808c2.reset();
        if (rectF.width() >= f10 + f11) {
            this.f31808c2.addRoundRect(rectF, K(f10, f11), Path.Direction.CW);
            canvas.drawPath(this.f31808c2, paint);
            return;
        }
        float fMin2 = Math.min(f10, f11);
        fMax = Math.max(f10, f11);
        canvas.save();
        this.f31808c2.addRoundRect(rectF, fMin2, fMin2, Path.Direction.CW);
        canvas.clipPath(this.f31808c2);
        i11 = iArr[fullCornerDirection.ordinal()];
        if (i11 != 2) {
            RectF rectF4 = this.f31812e2;
            float f14 = rectF.left;
            rectF4.set(f14, rectF.top, (2.0f * fMax) + f14, rectF.bottom);
        } else if (i11 != 3) {
            this.f31812e2.set(rectF.centerX() - fMax, rectF.top, rectF.centerX() + fMax, rectF.bottom);
        } else {
            RectF rectF5 = this.f31812e2;
            float f15 = rectF.right;
            rectF5.set(f15 - (2.0f * fMax), rectF.top, f15, rectF.bottom);
        }
        canvas.drawRoundRect(this.f31812e2, fMax, fMax, paint);
        canvas.restore();
    }

    private void D(int i10) {
        if (i10 == 1) {
            f0(Integer.MAX_VALUE);
            return;
        }
        if (i10 == 2) {
            f0(Integer.MIN_VALUE);
        } else if (i10 == 17) {
            g0(Integer.MAX_VALUE);
        } else {
            if (i10 != 66) {
                return;
            }
            g0(Integer.MIN_VALUE);
        }
    }

    private void D0(int i10) {
        this.f31834p1 = Math.max(i10 - (this.E * 2), 0);
        Z();
    }

    private void E0() {
        boolean zE0 = e0();
        boolean zD0 = d0();
        if (zE0) {
            requestLayout();
        } else if (zD0) {
            postInvalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String F(float f10) {
        if (O()) {
            return this.Q.a(f10);
        }
        return String.format(((float) ((int) f10)) == f10 ? "%.0f" : "%.2f", Float.valueOf(f10));
    }

    private void F0() {
        if (this.f31843v1) {
            I0();
            J0();
            H0();
            K0();
            G0();
            N0();
            this.f31843v1 = false;
        }
    }

    private float[] G() {
        float fFloatValue = this.U.get(0).floatValue();
        ArrayList<Float> arrayList = this.U;
        float fFloatValue2 = arrayList.get(arrayList.size() - 1).floatValue();
        if (this.U.size() == 1) {
            fFloatValue = this.S;
        }
        float fH0 = h0(fFloatValue);
        float fH1 = h0(fFloatValue2);
        return V() ? new float[]{fH1, fH0} : new float[]{fH0, fH1};
    }

    private void G0() {
        float minSeparation = getMinSeparation();
        if (minSeparation < 0.0f) {
            throw new IllegalStateException(String.format(f31794r2, Float.valueOf(minSeparation)));
        }
        float f10 = this.f31833p0;
        if (f10 <= 0.0f || minSeparation <= 0.0f) {
            return;
        }
        if (this.f31824j2 != 1) {
            throw new IllegalStateException(String.format(f31795s2, Float.valueOf(minSeparation), Float.valueOf(this.f31833p0)));
        }
        if (minSeparation < f10 || !T(minSeparation)) {
            throw new IllegalStateException(String.format(f31796t2, Float.valueOf(minSeparation), Float.valueOf(this.f31833p0), Float.valueOf(this.f31833p0)));
        }
    }

    private static float H(ValueAnimator valueAnimator, float f10) {
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return f10;
        }
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        valueAnimator.cancel();
        return fFloatValue;
    }

    private void H0() {
        if (this.f31833p0 > 0.0f && !L0(this.T)) {
            throw new IllegalStateException(String.format(f31793q2, Float.valueOf(this.f31833p0), Float.valueOf(this.S), Float.valueOf(this.T)));
        }
    }

    private float I(int i10, float f10) {
        float minSeparation = getMinSeparation();
        if (this.f31824j2 == 0) {
            minSeparation = u(minSeparation);
        }
        if (V()) {
            minSeparation = -minSeparation;
        }
        int i11 = i10 + 1;
        int i12 = i10 - 1;
        return MathUtils.clamp(f10, i12 < 0 ? this.S : this.U.get(i12).floatValue() + minSeparation, i11 >= this.U.size() ? this.T : this.U.get(i11).floatValue() - minSeparation);
    }

    private void I0() {
        if (this.S >= this.T) {
            throw new IllegalStateException(String.format(f31791o2, Float.valueOf(this.S), Float.valueOf(this.T)));
        }
    }

    @ColorInt
    private int J(@NonNull ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    private void J0() {
        if (this.T <= this.S) {
            throw new IllegalStateException(String.format(f31792p2, Float.valueOf(this.T), Float.valueOf(this.S)));
        }
    }

    private float[] K(float f10, float f11) {
        return new float[]{f10, f10, f11, f11, f11, f11, f10, f10};
    }

    private void K0() {
        for (Float f10 : this.U) {
            if (f10.floatValue() < this.S || f10.floatValue() > this.T) {
                throw new IllegalStateException(String.format(f31789m2, f10, Float.valueOf(this.S), Float.valueOf(this.T)));
            }
            if (this.f31833p0 > 0.0f && !L0(f10.floatValue())) {
                throw new IllegalStateException(String.format(f31790n2, f10, Float.valueOf(this.S), Float.valueOf(this.f31833p0), Float.valueOf(this.f31833p0)));
            }
        }
    }

    private float L() {
        double dW0 = w0(this.f31822i2);
        if (V()) {
            dW0 = 1.0d - dW0;
        }
        float f10 = this.T;
        float f11 = this.S;
        return (float) ((dW0 * ((double) (f10 - f11))) + ((double) f11));
    }

    private boolean L0(float f10) {
        return T(new BigDecimal(Float.toString(f10)).subtract(new BigDecimal(Float.toString(this.S)), MathContext.DECIMAL64).doubleValue());
    }

    private float M() {
        float f10 = this.f31822i2;
        if (V()) {
            f10 = 1.0f - f10;
        }
        float f11 = this.T;
        float f12 = this.S;
        return (f10 * (f11 - f12)) + f12;
    }

    private float M0(float f10) {
        return (h0(f10) * this.f31834p1) + this.E;
    }

    private boolean N() {
        return this.I > 0;
    }

    private void N0() {
        float f10 = this.f31833p0;
        if (f10 == 0.0f) {
            return;
        }
        if (((int) f10) != f10) {
            String.format(f31797u2, "stepSize", Float.valueOf(f10));
        }
        float f11 = this.S;
        if (((int) f11) != f11) {
            String.format(f31797u2, "valueFrom", Float.valueOf(f11));
        }
        float f12 = this.T;
        if (((int) f12) != f12) {
            String.format(f31797u2, "valueTo", Float.valueOf(f12));
        }
    }

    private Drawable P(Drawable drawable) {
        Drawable drawableNewDrawable = drawable.mutate().getConstantState().newDrawable();
        j(drawableNewDrawable);
        return drawableNewDrawable;
    }

    private void Q() {
        this.f31804b.setStrokeWidth(this.D);
        this.f31807c.setStrokeWidth(this.D);
    }

    private boolean R() {
        ViewParent parent = getParent();
        while (true) {
            if (!(parent instanceof ViewGroup)) {
                return false;
            }
            ViewGroup viewGroup = (ViewGroup) parent;
            if ((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) && viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
            parent = parent.getParent();
        }
    }

    private static boolean S(MotionEvent motionEvent) {
        return motionEvent.getToolType(0) == 3;
    }

    private boolean T(double d10) {
        double dDoubleValue = new BigDecimal(Double.toString(d10)).divide(new BigDecimal(Float.toString(this.f31833p0)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(dDoubleValue)) - dDoubleValue) < f31800x2;
    }

    private boolean U(MotionEvent motionEvent) {
        return !S(motionEvent) && R();
    }

    private boolean W() {
        Rect rect = new Rect();
        p0.l(this).getHitRect(rect);
        return getLocalVisibleRect(rect);
    }

    private void Y(@NonNull Resources resources) {
        this.A = resources.getDimensionPixelSize(R.dimen.mtrl_slider_widget_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_side_padding);
        this.f31840t = dimensionPixelOffset;
        this.E = dimensionPixelOffset;
        this.f31841u = resources.getDimensionPixelSize(R.dimen.mtrl_slider_thumb_radius);
        this.f31842v = resources.getDimensionPixelSize(R.dimen.mtrl_slider_track_height);
        int i10 = R.dimen.mtrl_slider_tick_radius;
        this.f31844w = resources.getDimensionPixelSize(i10);
        this.f31845x = resources.getDimensionPixelSize(i10);
        this.f31846y = resources.getDimensionPixelSize(R.dimen.mtrl_slider_tick_min_spacing);
        this.N = resources.getDimensionPixelSize(R.dimen.mtrl_slider_label_padding);
    }

    private void Z() {
        if (this.f31833p0 <= 0.0f) {
            return;
        }
        F0();
        int iMin = Math.min((int) (((this.T - this.S) / this.f31833p0) + 1.0f), (this.f31834p1 / this.f31846y) + 1);
        float[] fArr = this.f31805b1;
        if (fArr == null || fArr.length != iMin * 2) {
            this.f31805b1 = new float[iMin * 2];
        }
        float f10 = this.f31834p1 / (iMin - 1);
        for (int i10 = 0; i10 < iMin * 2; i10 += 2) {
            float[] fArr2 = this.f31805b1;
            fArr2[i10] = this.E + ((i10 / 2.0f) * f10);
            fArr2[i10 + 1] = o();
        }
    }

    private void a0(@NonNull Canvas canvas, int i10, int i11) {
        if (u0()) {
            int iH0 = (int) (this.E + (h0(this.U.get(this.W).floatValue()) * i10));
            if (Build.VERSION.SDK_INT < 28) {
                int i12 = this.H;
                canvas.clipRect(iH0 - i12, i11 - i12, iH0 + i12, i12 + i11, Region.Op.UNION);
            }
            canvas.drawCircle(iH0, i11, this.H, this.f31811e);
        }
    }

    private void b0(@NonNull Canvas canvas, int i10) {
        if (this.L <= 0) {
            return;
        }
        if (this.U.size() >= 1) {
            ArrayList<Float> arrayList = this.U;
            float fFloatValue = arrayList.get(arrayList.size() - 1).floatValue();
            float f10 = this.T;
            if (fFloatValue < f10) {
                canvas.drawPoint(M0(f10), i10, this.f31818h);
            }
        }
        if (this.U.size() > 1) {
            float fFloatValue2 = this.U.get(0).floatValue();
            float f11 = this.S;
            if (fFloatValue2 > f11) {
                canvas.drawPoint(M0(f11), i10, this.f31818h);
            }
        }
    }

    private void c0(@NonNull Canvas canvas) {
        if (!this.f31814f1 || this.f31833p0 <= 0.0f) {
            return;
        }
        float[] fArrG = G();
        int iCeil = (int) Math.ceil(fArrG[0] * ((this.f31805b1.length / 2.0f) - 1.0f));
        int iFloor = (int) Math.floor(fArrG[1] * ((this.f31805b1.length / 2.0f) - 1.0f));
        if (iCeil > 0) {
            canvas.drawPoints(this.f31805b1, 0, iCeil * 2, this.f31813f);
        }
        if (iCeil <= iFloor) {
            canvas.drawPoints(this.f31805b1, iCeil * 2, ((iFloor - iCeil) + 1) * 2, this.f31816g);
        }
        int i10 = (iFloor + 1) * 2;
        float[] fArr = this.f31805b1;
        if (i10 < fArr.length) {
            canvas.drawPoints(fArr, i10, fArr.length - i10, this.f31813f);
        }
    }

    private boolean d0() {
        int iMax = this.f31840t + Math.max(Math.max(Math.max((this.F / 2) - this.f31841u, 0), Math.max((this.D - this.f31842v) / 2, 0)), Math.max(Math.max(this.f31821i1 - this.f31844w, 0), Math.max(this.f31828l1 - this.f31845x, 0)));
        if (this.E == iMax) {
            return false;
        }
        this.E = iMax;
        if (!ViewCompat.isLaidOut(this)) {
            return true;
        }
        D0(getWidth());
        return true;
    }

    private boolean e0() {
        int iMax = Math.max(this.A, Math.max(this.D + getPaddingTop() + getPaddingBottom(), this.G + getPaddingTop() + getPaddingBottom()));
        if (iMax == this.B) {
            return false;
        }
        this.B = iMax;
        return true;
    }

    private boolean f0(int i10) {
        int i11 = this.W;
        int iClamp = (int) MathUtils.clamp(((long) i11) + ((long) i10), 0L, this.U.size() - 1);
        this.W = iClamp;
        if (iClamp == i11) {
            return false;
        }
        if (this.V != -1) {
            this.V = iClamp;
        }
        A0();
        postInvalidate();
        return true;
    }

    private boolean g0(int i10) {
        if (V()) {
            i10 = i10 == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i10;
        }
        return f0(i10);
    }

    private float h0(float f10) {
        float f11 = this.S;
        float f12 = (f10 - f11) / (this.T - f11);
        return V() ? 1.0f - f12 : f12;
    }

    @Nullable
    private Boolean i0(int i10, @NonNull KeyEvent keyEvent) {
        if (i10 == 61) {
            if (keyEvent.hasNoModifiers()) {
                return Boolean.valueOf(f0(1));
            }
            return keyEvent.isShiftPressed() ? Boolean.valueOf(f0(-1)) : Boolean.FALSE;
        }
        if (i10 != 66) {
            if (i10 != 81) {
                if (i10 == 69) {
                    f0(-1);
                    return Boolean.TRUE;
                }
                if (i10 != 70) {
                    switch (i10) {
                        case 21:
                            g0(-1);
                            return Boolean.TRUE;
                        case 22:
                            g0(1);
                            return Boolean.TRUE;
                        case 23:
                            break;
                        default:
                            return null;
                    }
                }
            }
            f0(1);
            return Boolean.TRUE;
        }
        this.V = this.W;
        postInvalidate();
        return Boolean.TRUE;
    }

    private void j(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth == -1 && intrinsicHeight == -1) {
            drawable.setBounds(0, 0, this.F, this.G);
        } else {
            float fMax = Math.max(this.F, this.G) / Math.max(intrinsicWidth, intrinsicHeight);
            drawable.setBounds(0, 0, (int) (intrinsicWidth * fMax), (int) (intrinsicHeight * fMax));
        }
    }

    private void j0() {
        Iterator<T> it2 = this.f31831o.iterator();
        while (it2.hasNext()) {
            it2.next().a(this);
        }
    }

    private void k(com.google.android.material.tooltip.a aVar) {
        aVar.l1(p0.l(this));
    }

    private void k0() {
        Iterator<T> it2 = this.f31831o.iterator();
        while (it2.hasNext()) {
            it2.next().b(this);
        }
    }

    @Nullable
    private Float l(int i10) {
        float fN = this.f31838r1 ? n(20) : m();
        if (i10 == 21) {
            if (!V()) {
                fN = -fN;
            }
            return Float.valueOf(fN);
        }
        if (i10 == 22) {
            if (V()) {
                fN = -fN;
            }
            return Float.valueOf(fN);
        }
        if (i10 == 69) {
            return Float.valueOf(-fN);
        }
        if (i10 == 70 || i10 == 81) {
            return Float.valueOf(fN);
        }
        return null;
    }

    private float m() {
        float f10 = this.f31833p0;
        if (f10 == 0.0f) {
            return 1.0f;
        }
        return f10;
    }

    private void m0(com.google.android.material.tooltip.a aVar, float f10) {
        int iH0 = (this.E + ((int) (h0(f10) * this.f31834p1))) - (aVar.getIntrinsicWidth() / 2);
        int iO = o() - (this.N + (this.G / 2));
        aVar.setBounds(iH0, iO - aVar.getIntrinsicHeight(), aVar.getIntrinsicWidth() + iH0, iO);
        Rect rect = new Rect(aVar.getBounds());
        com.google.android.material.internal.d.c(p0.l(this), this, rect);
        aVar.setBounds(rect);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float n(int i10) {
        float fM = m();
        float f10 = (this.T - this.S) / fM;
        float f11 = i10;
        return f10 <= f11 ? fM : Math.round(f10 / f11) * fM;
    }

    private void n0(Context context, AttributeSet attributeSet, int i10) {
        TypedArray typedArrayK = g0.k(context, attributeSet, R.styleable.Slider, i10, f31802z2, new int[0]);
        this.f31827l = typedArrayK.getResourceId(R.styleable.Slider_labelStyle, R.style.Widget_MaterialComponents_Tooltip);
        this.S = typedArrayK.getFloat(R.styleable.Slider_android_valueFrom, 0.0f);
        this.T = typedArrayK.getFloat(R.styleable.Slider_android_valueTo, 1.0f);
        setValues(Float.valueOf(this.S));
        this.f31833p0 = typedArrayK.getFloat(R.styleable.Slider_android_stepSize, 0.0f);
        this.f31847z = (int) Math.ceil(typedArrayK.getDimension(R.styleable.Slider_minTouchTargetSize, (float) Math.ceil(p0.i(getContext(), 48))));
        int i11 = R.styleable.Slider_trackColor;
        boolean zHasValue = typedArrayK.hasValue(i11);
        int i12 = zHasValue ? i11 : R.styleable.Slider_trackColorInactive;
        if (!zHasValue) {
            i11 = R.styleable.Slider_trackColorActive;
        }
        ColorStateList colorStateListA = com.google.android.material.resources.d.a(context, typedArrayK, i12);
        if (colorStateListA == null) {
            colorStateListA = AppCompatResources.getColorStateList(context, R.color.material_slider_inactive_track_color);
        }
        setTrackInactiveTintList(colorStateListA);
        ColorStateList colorStateListA2 = com.google.android.material.resources.d.a(context, typedArrayK, i11);
        if (colorStateListA2 == null) {
            colorStateListA2 = AppCompatResources.getColorStateList(context, R.color.material_slider_active_track_color);
        }
        setTrackActiveTintList(colorStateListA2);
        this.f31815f2.p0(com.google.android.material.resources.d.a(context, typedArrayK, R.styleable.Slider_thumbColor));
        int i13 = R.styleable.Slider_thumbStrokeColor;
        if (typedArrayK.hasValue(i13)) {
            setThumbStrokeColor(com.google.android.material.resources.d.a(context, typedArrayK, i13));
        }
        setThumbStrokeWidth(typedArrayK.getDimension(R.styleable.Slider_thumbStrokeWidth, 0.0f));
        ColorStateList colorStateListA3 = com.google.android.material.resources.d.a(context, typedArrayK, R.styleable.Slider_haloColor);
        if (colorStateListA3 == null) {
            colorStateListA3 = AppCompatResources.getColorStateList(context, R.color.material_slider_halo_color);
        }
        setHaloTintList(colorStateListA3);
        this.f31814f1 = typedArrayK.getBoolean(R.styleable.Slider_tickVisible, true);
        int i14 = R.styleable.Slider_tickColor;
        boolean zHasValue2 = typedArrayK.hasValue(i14);
        int i15 = zHasValue2 ? i14 : R.styleable.Slider_tickColorInactive;
        if (!zHasValue2) {
            i14 = R.styleable.Slider_tickColorActive;
        }
        ColorStateList colorStateListA4 = com.google.android.material.resources.d.a(context, typedArrayK, i15);
        if (colorStateListA4 == null) {
            colorStateListA4 = AppCompatResources.getColorStateList(context, R.color.material_slider_inactive_tick_marks_color);
        }
        setTickInactiveTintList(colorStateListA4);
        ColorStateList colorStateListA5 = com.google.android.material.resources.d.a(context, typedArrayK, i14);
        if (colorStateListA5 == null) {
            colorStateListA5 = AppCompatResources.getColorStateList(context, R.color.material_slider_active_tick_marks_color);
        }
        setTickActiveTintList(colorStateListA5);
        setThumbTrackGapSize(typedArrayK.getDimensionPixelSize(R.styleable.Slider_thumbTrackGapSize, 0));
        setTrackStopIndicatorSize(typedArrayK.getDimensionPixelSize(R.styleable.Slider_trackStopIndicatorSize, 0));
        setTrackInsideCornerSize(typedArrayK.getDimensionPixelSize(R.styleable.Slider_trackInsideCornerSize, 0));
        int dimensionPixelSize = typedArrayK.getDimensionPixelSize(R.styleable.Slider_thumbRadius, 0) * 2;
        int dimensionPixelSize2 = typedArrayK.getDimensionPixelSize(R.styleable.Slider_thumbWidth, dimensionPixelSize);
        int dimensionPixelSize3 = typedArrayK.getDimensionPixelSize(R.styleable.Slider_thumbHeight, dimensionPixelSize);
        setThumbWidth(dimensionPixelSize2);
        setThumbHeight(dimensionPixelSize3);
        setHaloRadius(typedArrayK.getDimensionPixelSize(R.styleable.Slider_haloRadius, 0));
        setThumbElevation(typedArrayK.getDimension(R.styleable.Slider_thumbElevation, 0.0f));
        setTrackHeight(typedArrayK.getDimensionPixelSize(R.styleable.Slider_trackHeight, 0));
        setTickActiveRadius(typedArrayK.getDimensionPixelSize(R.styleable.Slider_tickRadiusActive, this.L / 2));
        setTickInactiveRadius(typedArrayK.getDimensionPixelSize(R.styleable.Slider_tickRadiusInactive, this.L / 2));
        setLabelBehavior(typedArrayK.getInt(R.styleable.Slider_labelBehavior, 0));
        if (!typedArrayK.getBoolean(R.styleable.Slider_android_enabled, true)) {
            setEnabled(false);
        }
        typedArrayK.recycle();
    }

    private int o() {
        return (this.B / 2) + ((this.C == 1 || t0()) ? this.f31829m.get(0).getIntrinsicHeight() : 0);
    }

    private void q0(int i10) {
        BaseSlider<S, L, T>.d dVar = this.f31825k;
        if (dVar == null) {
            this.f31825k = new d(this, null);
        } else {
            removeCallbacks(dVar);
        }
        this.f31825k.a(i10);
        postDelayed(this.f31825k, 200L);
    }

    private ValueAnimator r(boolean z10) {
        int iF;
        TimeInterpolator timeInterpolatorG;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(H(z10 ? this.f31837r : this.f31835q, z10 ? 0.0f : 1.0f), z10 ? 1.0f : 0.0f);
        if (z10) {
            iF = j.f(getContext(), E2, 83);
            timeInterpolatorG = j.g(getContext(), G2, com.google.android.material.animation.b.f29371e);
        } else {
            iF = j.f(getContext(), F2, 117);
            timeInterpolatorG = j.g(getContext(), H2, com.google.android.material.animation.b.f29369c);
        }
        valueAnimatorOfFloat.setDuration(iF);
        valueAnimatorOfFloat.setInterpolator(timeInterpolatorG);
        valueAnimatorOfFloat.addUpdateListener(new a());
        return valueAnimatorOfFloat;
    }

    private void r0(com.google.android.material.tooltip.a aVar, float f10) {
        aVar.n1(F(f10));
        m0(aVar, f10);
        p0.m(this).b(aVar);
    }

    private void s() {
        if (this.f31829m.size() > this.U.size()) {
            List<com.google.android.material.tooltip.a> listSubList = this.f31829m.subList(this.U.size(), this.f31829m.size());
            for (com.google.android.material.tooltip.a aVar : listSubList) {
                if (ViewCompat.isAttachedToWindow(this)) {
                    t(aVar);
                }
            }
            listSubList.clear();
        }
        while (true) {
            if (this.f31829m.size() >= this.U.size()) {
                break;
            }
            com.google.android.material.tooltip.a aVarW0 = com.google.android.material.tooltip.a.W0(getContext(), null, 0, this.f31827l);
            this.f31829m.add(aVarW0);
            if (ViewCompat.isAttachedToWindow(this)) {
                k(aVarW0);
            }
        }
        int i10 = this.f31829m.size() != 1 ? 1 : 0;
        Iterator<com.google.android.material.tooltip.a> it2 = this.f31829m.iterator();
        while (it2.hasNext()) {
            it2.next().J0(i10);
        }
    }

    private void s0(@NonNull ArrayList<Float> arrayList) {
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("At least one value must be set");
        }
        Collections.sort(arrayList);
        if (this.U.size() == arrayList.size() && this.U.equals(arrayList)) {
            return;
        }
        this.U = arrayList;
        this.f31843v1 = true;
        this.W = 0;
        A0();
        s();
        w();
        postInvalidate();
    }

    private void t(com.google.android.material.tooltip.a aVar) {
        n0 n0VarM = p0.m(this);
        if (n0VarM != null) {
            n0VarM.a(aVar);
            aVar.Y0(p0.l(this));
        }
    }

    private boolean t0() {
        return this.C == 3;
    }

    private float u(float f10) {
        if (f10 == 0.0f) {
            return 0.0f;
        }
        float f11 = (f10 - this.E) / this.f31834p1;
        float f12 = this.S;
        return (f11 * (f12 - this.T)) + f12;
    }

    private boolean u0() {
        return this.f31836q1 || !(getBackground() instanceof RippleDrawable);
    }

    private void v(int i10) {
        Iterator<L> it2 = this.f31830n.iterator();
        while (it2.hasNext()) {
            it2.next().a(this, this.U.get(i10).floatValue(), true);
        }
        AccessibilityManager accessibilityManager = this.f31823j;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            return;
        }
        q0(i10);
    }

    private boolean v0(float f10) {
        return x0(this.V, f10);
    }

    private void w() {
        for (L l10 : this.f31830n) {
            Iterator<Float> it2 = this.U.iterator();
            while (it2.hasNext()) {
                l10.a(this, it2.next().floatValue(), false);
            }
        }
    }

    private double w0(float f10) {
        float f11 = this.f31833p0;
        if (f11 <= 0.0f) {
            return f10;
        }
        int i10 = (int) ((this.T - this.S) / f11);
        return ((double) Math.round(f10 * i10)) / ((double) i10);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b6 A[SYNTHETIC] */
    private void x(@NonNull Canvas canvas, int i10, int i11) {
        int i12;
        float[] fArrG = G();
        int i13 = this.E;
        float f10 = i10;
        float f11 = i13 + (fArrG[1] * f10);
        float fM0 = i13 + (fArrG[0] * f10);
        if (!N()) {
            this.f31807c.setStyle(Paint.Style.STROKE);
            this.f31807c.setStrokeCap(Paint.Cap.ROUND);
            float f12 = i11;
            canvas.drawLine(fM0, f12, f11, f12, this.f31807c);
            return;
        }
        FullCornerDirection fullCornerDirection = FullCornerDirection.NONE;
        if (this.U.size() == 1) {
            fullCornerDirection = V() ? FullCornerDirection.RIGHT : FullCornerDirection.LEFT;
        }
        for (int i14 = 0; i14 < this.U.size(); i14++) {
            if (this.U.size() > 1) {
                if (i14 > 0) {
                    fM0 = M0(this.U.get(i14 - 1).floatValue());
                }
                float fM1 = M0(this.U.get(i14).floatValue());
                if (V()) {
                    f11 = fM0;
                    fM0 = fM1;
                } else {
                    f11 = fM1;
                }
            }
            int i15 = c.f31855a[fullCornerDirection.ordinal()];
            if (i15 != 1) {
                if (i15 == 2) {
                    fM0 -= this.D / 2.0f;
                    i12 = this.I;
                } else if (i15 == 3) {
                    fM0 += this.I;
                    f11 += this.D / 2.0f;
                }
                if (fM0 >= f11) {
                    RectF rectF = this.f31810d2;
                    float f13 = i11;
                    int i16 = this.D;
                    rectF.set(fM0, f13 - (i16 / 2.0f), f11, f13 + (i16 / 2.0f));
                    C0(canvas, this.f31807c, this.f31810d2, fullCornerDirection);
                }
            } else {
                i12 = this.I;
                fM0 += i12;
            }
            f11 -= i12;
            if (fM0 >= f11) {
                RectF rectF2 = this.f31810d2;
                float f14 = i11;
                int i17 = this.D;
                rectF2.set(fM0, f14 - (i17 / 2.0f), f11, f14 + (i17 / 2.0f));
                C0(canvas, this.f31807c, this.f31810d2, fullCornerDirection);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean x0(int i10, float f10) {
        this.W = i10;
        if (Math.abs(f10 - this.U.get(i10).floatValue()) < f31800x2) {
            return false;
        }
        this.U.set(i10, Float.valueOf(I(i10, f10)));
        v(i10);
        return true;
    }

    private void y(@NonNull Canvas canvas, int i10, int i11) {
        float[] fArrG = G();
        int i12 = this.E;
        float f10 = i10;
        float f11 = i12 + (fArrG[1] * f10);
        if (f11 < i12 + i10) {
            if (N()) {
                RectF rectF = this.f31810d2;
                float f12 = f11 + this.I;
                float f13 = i11;
                int i13 = this.D;
                rectF.set(f12, f13 - (i13 / 2.0f), this.E + i10 + (i13 / 2.0f), f13 + (i13 / 2.0f));
                C0(canvas, this.f31804b, this.f31810d2, FullCornerDirection.RIGHT);
            } else {
                this.f31804b.setStyle(Paint.Style.STROKE);
                this.f31804b.setStrokeCap(Paint.Cap.ROUND);
                float f14 = i11;
                canvas.drawLine(f11, f14, this.E + i10, f14, this.f31804b);
            }
        }
        int i14 = this.E;
        float f15 = i14 + (fArrG[0] * f10);
        if (f15 > i14) {
            if (!N()) {
                this.f31804b.setStyle(Paint.Style.STROKE);
                this.f31804b.setStrokeCap(Paint.Cap.ROUND);
                float f16 = i11;
                canvas.drawLine(this.E, f16, f15, f16, this.f31804b);
                return;
            }
            RectF rectF2 = this.f31810d2;
            float f17 = this.E;
            int i15 = this.D;
            float f18 = i11;
            rectF2.set(f17 - (i15 / 2.0f), f18 - (i15 / 2.0f), f15 - this.I, f18 + (i15 / 2.0f));
            C0(canvas, this.f31804b, this.f31810d2, FullCornerDirection.LEFT);
        }
    }

    private boolean y0() {
        return v0(L());
    }

    private void z(@NonNull Canvas canvas, int i10, int i11, float f10, @NonNull Drawable drawable) {
        canvas.save();
        canvas.translate((this.E + ((int) (h0(f10) * i10))) - (drawable.getBounds().width() / 2.0f), i11 - (drawable.getBounds().height() / 2.0f));
        drawable.draw(canvas);
        canvas.restore();
    }

    @VisibleForTesting
    void E(boolean z10) {
        this.f31836q1 = z10;
    }

    public boolean O() {
        return this.Q != null;
    }

    final boolean V() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    public boolean X() {
        return this.f31814f1;
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        return this.f31820i.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f31804b.setColor(J(this.f31806b2));
        this.f31807c.setColor(J(this.f31803a2));
        this.f31813f.setColor(J(this.V1));
        this.f31816g.setColor(J(this.R1));
        this.f31818h.setColor(J(this.f31803a2));
        for (com.google.android.material.tooltip.a aVar : this.f31829m) {
            if (aVar.isStateful()) {
                aVar.setState(getDrawableState());
            }
        }
        if (this.f31815f2.isStateful()) {
            this.f31815f2.setState(getDrawableState());
        }
        this.f31811e.setColor(J(this.L1));
        this.f31811e.setAlpha(63);
    }

    @Override // android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    @VisibleForTesting
    final int getAccessibilityFocusedVirtualViewId() {
        return this.f31820i.getAccessibilityFocusedVirtualViewId();
    }

    public int getActiveThumbIndex() {
        return this.V;
    }

    public int getFocusedThumbIndex() {
        return this.W;
    }

    @Px
    public int getHaloRadius() {
        return this.H;
    }

    @NonNull
    public ColorStateList getHaloTintList() {
        return this.L1;
    }

    public int getLabelBehavior() {
        return this.C;
    }

    protected float getMinSeparation() {
        return 0.0f;
    }

    public float getStepSize() {
        return this.f31833p0;
    }

    public float getThumbElevation() {
        return this.f31815f2.y();
    }

    @Px
    public int getThumbHeight() {
        return this.G;
    }

    @Px
    public int getThumbRadius() {
        return this.F / 2;
    }

    public ColorStateList getThumbStrokeColor() {
        return this.f31815f2.O();
    }

    public float getThumbStrokeWidth() {
        return this.f31815f2.R();
    }

    @NonNull
    public ColorStateList getThumbTintList() {
        return this.f31815f2.z();
    }

    public int getThumbTrackGapSize() {
        return this.I;
    }

    @Px
    public int getThumbWidth() {
        return this.F;
    }

    @Px
    public int getTickActiveRadius() {
        return this.f31821i1;
    }

    @NonNull
    public ColorStateList getTickActiveTintList() {
        return this.R1;
    }

    @Px
    public int getTickInactiveRadius() {
        return this.f31828l1;
    }

    @NonNull
    public ColorStateList getTickInactiveTintList() {
        return this.V1;
    }

    @NonNull
    public ColorStateList getTickTintList() {
        if (this.V1.equals(this.R1)) {
            return this.R1;
        }
        throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
    }

    @NonNull
    public ColorStateList getTrackActiveTintList() {
        return this.f31803a2;
    }

    @Px
    public int getTrackHeight() {
        return this.D;
    }

    @NonNull
    public ColorStateList getTrackInactiveTintList() {
        return this.f31806b2;
    }

    public int getTrackInsideCornerSize() {
        return this.M;
    }

    @Px
    public int getTrackSidePadding() {
        return this.E;
    }

    public int getTrackStopIndicatorSize() {
        return this.L;
    }

    @NonNull
    public ColorStateList getTrackTintList() {
        if (this.f31806b2.equals(this.f31803a2)) {
            return this.f31803a2;
        }
        throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
    }

    @Px
    public int getTrackWidth() {
        return this.f31834p1;
    }

    public float getValueFrom() {
        return this.S;
    }

    public float getValueTo() {
        return this.T;
    }

    @NonNull
    List<Float> getValues() {
        return new ArrayList(this.U);
    }

    public void h(@NonNull L l10) {
        this.f31830n.add(l10);
    }

    public void i(@NonNull T t10) {
        this.f31831o.add(t10);
    }

    protected boolean l0() {
        if (this.V != -1) {
            return true;
        }
        float fM = M();
        float fM0 = M0(fM);
        this.V = 0;
        float fAbs = Math.abs(this.U.get(0).floatValue() - fM);
        for (int i10 = 1; i10 < this.U.size(); i10++) {
            float fAbs2 = Math.abs(this.U.get(i10).floatValue() - fM);
            float fM1 = M0(this.U.get(i10).floatValue());
            if (Float.compare(fAbs2, fAbs) > 0) {
                break;
            }
            boolean z10 = !V() ? fM1 - fM0 >= 0.0f : fM1 - fM0 <= 0.0f;
            if (Float.compare(fAbs2, fAbs) < 0) {
                this.V = i10;
            } else {
                if (Float.compare(fAbs2, fAbs) != 0) {
                    continue;
                } else {
                    if (Math.abs(fM1 - fM0) < this.f31839s) {
                        this.V = -1;
                        return false;
                    }
                    if (z10) {
                        this.V = i10;
                    }
                }
            }
            fAbs = fAbs2;
        }
        return this.V != -1;
    }

    public void o0(@NonNull L l10) {
        this.f31830n.remove(l10);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnScrollChangedListener(this.f31826k2);
        Iterator<com.google.android.material.tooltip.a> it2 = this.f31829m.iterator();
        while (it2.hasNext()) {
            k(it2.next());
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        BaseSlider<S, L, T>.d dVar = this.f31825k;
        if (dVar != null) {
            removeCallbacks(dVar);
        }
        this.f31832p = false;
        Iterator<com.google.android.material.tooltip.a> it2 = this.f31829m.iterator();
        while (it2.hasNext()) {
            t(it2.next());
        }
        getViewTreeObserver().removeOnScrollChangedListener(this.f31826k2);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(@NonNull Canvas canvas) {
        if (this.f31843v1) {
            F0();
            Z();
        }
        super.onDraw(canvas);
        int iO = o();
        float fFloatValue = this.U.get(0).floatValue();
        ArrayList<Float> arrayList = this.U;
        float fFloatValue2 = arrayList.get(arrayList.size() - 1).floatValue();
        if (fFloatValue2 < this.T || (this.U.size() > 1 && fFloatValue > this.S)) {
            y(canvas, this.f31834p1, iO);
        }
        if (fFloatValue2 > this.S) {
            x(canvas, this.f31834p1, iO);
        }
        c0(canvas);
        b0(canvas, iO);
        if ((this.R || isFocused()) && isEnabled()) {
            a0(canvas, this.f31834p1, iO);
        }
        B0();
        A(canvas, this.f31834p1, iO);
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z10, int i10, @Nullable Rect rect) {
        super.onFocusChanged(z10, i10, rect);
        if (z10) {
            D(i10);
            this.f31820i.requestKeyboardFocusForVirtualView(this.W);
        } else {
            this.V = -1;
            this.f31820i.clearKeyboardFocusForVirtualView(this.W);
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, @NonNull KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i10, keyEvent);
        }
        if (this.U.size() == 1) {
            this.V = 0;
        }
        if (this.V == -1) {
            Boolean boolI0 = i0(i10, keyEvent);
            return boolI0 != null ? boolI0.booleanValue() : super.onKeyDown(i10, keyEvent);
        }
        this.f31838r1 |= keyEvent.isLongPress();
        Float fL = l(i10);
        if (fL != null) {
            if (v0(this.U.get(this.V).floatValue() + fL.floatValue())) {
                A0();
                postInvalidate();
            }
            return true;
        }
        if (i10 != 23) {
            if (i10 == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return f0(1);
                }
                if (keyEvent.isShiftPressed()) {
                    return f0(-1);
                }
                return false;
            }
            if (i10 != 66) {
                return super.onKeyDown(i10, keyEvent);
            }
        }
        this.V = -1;
        postInvalidate();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, @NonNull KeyEvent keyEvent) {
        this.f31838r1 = false;
        return super.onKeyUp(i10, keyEvent);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(this.B + ((this.C == 1 || t0()) ? this.f31829m.get(0).getIntrinsicHeight() : 0), 1073741824));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.S = sliderState.f31848b;
        this.T = sliderState.f31849c;
        s0(sliderState.f31850d);
        this.f31833p0 = sliderState.f31851e;
        if (sliderState.f31852f) {
            requestFocus();
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.f31848b = this.S;
        sliderState.f31849c = this.T;
        sliderState.f31850d = new ArrayList<>(this.U);
        sliderState.f31851e = this.f31833p0;
        sliderState.f31852f = hasFocus();
        return sliderState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        D0(i10);
        A0();
    }

    /* JADX WARN: Code duplicated, block: B:24:0x006f  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b5  */
    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        MotionEvent motionEvent2;
        int i10;
        if (!isEnabled()) {
            return false;
        }
        float x10 = motionEvent.getX();
        float f10 = (x10 - this.E) / this.f31834p1;
        this.f31822i2 = f10;
        float fMax = Math.max(0.0f, f10);
        this.f31822i2 = fMax;
        this.f31822i2 = Math.min(1.0f, fMax);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.O = x10;
            if (!U(motionEvent)) {
                getParent().requestDisallowInterceptTouchEvent(true);
                if (l0()) {
                    requestFocus();
                    this.R = true;
                    y0();
                    A0();
                    if (N()) {
                        int i11 = this.F;
                        this.J = i11;
                        this.K = this.I;
                        int iRound = Math.round(i11 * 0.5f);
                        int i12 = this.F - iRound;
                        setThumbWidth(iRound);
                        setThumbTrackGapSize(this.I - (i12 / 2));
                    }
                    invalidate();
                    j0();
                }
            }
        } else if (actionMasked == 1) {
            this.R = false;
            motionEvent2 = this.P;
            if (motionEvent2 != null && motionEvent2.getActionMasked() == 0 && Math.abs(this.P.getX() - motionEvent.getX()) <= this.f31839s && Math.abs(this.P.getY() - motionEvent.getY()) <= this.f31839s && l0()) {
                j0();
            }
            if (this.V != -1) {
                y0();
                A0();
                if (N() && (i10 = this.J) != -1 && this.K != -1) {
                    setThumbWidth(i10);
                    setThumbTrackGapSize(this.K);
                }
                this.V = -1;
                k0();
            }
            invalidate();
        } else if (actionMasked == 2) {
            if (!this.R) {
                if (U(motionEvent) && Math.abs(x10 - this.O) < this.f31839s) {
                    return false;
                }
                getParent().requestDisallowInterceptTouchEvent(true);
                j0();
            }
            if (l0()) {
                this.R = true;
                y0();
                A0();
                invalidate();
            }
        } else if (actionMasked == 3) {
            this.R = false;
            motionEvent2 = this.P;
            if (motionEvent2 != null) {
                j0();
            }
            if (this.V != -1) {
                y0();
                A0();
                if (N()) {
                    setThumbWidth(i10);
                    setThumbTrackGapSize(this.K);
                }
                this.V = -1;
                k0();
            }
            invalidate();
        }
        setPressed(this.R);
        this.P = MotionEvent.obtain(motionEvent);
        return true;
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        n0 n0VarM;
        super.onVisibilityChanged(view, i10);
        if (i10 == 0 || (n0VarM = p0.m(this)) == null) {
            return;
        }
        Iterator<com.google.android.material.tooltip.a> it2 = this.f31829m.iterator();
        while (it2.hasNext()) {
            n0VarM.a(it2.next());
        }
    }

    public void p() {
        this.f31830n.clear();
    }

    public void p0(@NonNull T t10) {
        this.f31831o.remove(t10);
    }

    public void q() {
        this.f31831o.clear();
    }

    protected void setActiveThumbIndex(int i10) {
        this.V = i10;
    }

    void setCustomThumbDrawable(@DrawableRes int i10) {
        setCustomThumbDrawable(getResources().getDrawable(i10));
    }

    void setCustomThumbDrawablesForValues(@NonNull @DrawableRes int... iArr) {
        Drawable[] drawableArr = new Drawable[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            drawableArr[i10] = getResources().getDrawable(iArr[i10]);
        }
        setCustomThumbDrawablesForValues(drawableArr);
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        setLayerType(z10 ? 0 : 2, null);
    }

    public void setFocusedThumbIndex(int i10) {
        if (i10 < 0 || i10 >= this.U.size()) {
            throw new IllegalArgumentException("index out of range");
        }
        this.W = i10;
        this.f31820i.requestKeyboardFocusForVirtualView(i10);
        postInvalidate();
    }

    public void setHaloRadius(@IntRange(from = 0) @Px int i10) {
        if (i10 == this.H) {
            return;
        }
        this.H = i10;
        Drawable background = getBackground();
        if (u0() || !(background instanceof RippleDrawable)) {
            postInvalidate();
        } else {
            com.google.android.material.drawable.g.m((RippleDrawable) background, this.H);
        }
    }

    public void setHaloRadiusResource(@DimenRes int i10) {
        setHaloRadius(getResources().getDimensionPixelSize(i10));
    }

    public void setHaloTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.L1)) {
            return;
        }
        this.L1 = colorStateList;
        Drawable background = getBackground();
        if (!u0() && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        this.f31811e.setColor(J(colorStateList));
        this.f31811e.setAlpha(63);
        invalidate();
    }

    public void setLabelBehavior(int i10) {
        if (this.C != i10) {
            this.C = i10;
            requestLayout();
        }
    }

    public void setLabelFormatter(@Nullable com.google.android.material.slider.e eVar) {
        this.Q = eVar;
    }

    protected void setSeparationUnit(int i10) {
        this.f31824j2 = i10;
        this.f31843v1 = true;
        postInvalidate();
    }

    public void setStepSize(float f10) {
        if (f10 < 0.0f) {
            throw new IllegalArgumentException(String.format(f31793q2, Float.valueOf(f10), Float.valueOf(this.S), Float.valueOf(this.T)));
        }
        if (this.f31833p0 != f10) {
            this.f31833p0 = f10;
            this.f31843v1 = true;
            postInvalidate();
        }
    }

    public void setThumbElevation(float f10) {
        this.f31815f2.o0(f10);
    }

    public void setThumbElevationResource(@DimenRes int i10) {
        setThumbElevation(getResources().getDimension(i10));
    }

    public void setThumbHeight(@IntRange(from = 0) @Px int i10) {
        if (i10 == this.G) {
            return;
        }
        this.G = i10;
        this.f31815f2.setBounds(0, 0, this.F, i10);
        Drawable drawable = this.f31817g2;
        if (drawable != null) {
            j(drawable);
        }
        Iterator<Drawable> it2 = this.f31819h2.iterator();
        while (it2.hasNext()) {
            j(it2.next());
        }
        E0();
    }

    public void setThumbHeightResource(@DimenRes int i10) {
        setThumbHeight(getResources().getDimensionPixelSize(i10));
    }

    public void setThumbRadius(@IntRange(from = 0) @Px int i10) {
        int i11 = i10 * 2;
        setThumbWidth(i11);
        setThumbHeight(i11);
    }

    public void setThumbRadiusResource(@DimenRes int i10) {
        setThumbRadius(getResources().getDimensionPixelSize(i10));
    }

    public void setThumbStrokeColor(@Nullable ColorStateList colorStateList) {
        this.f31815f2.G0(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeColorResource(@ColorRes int i10) {
        if (i10 != 0) {
            setThumbStrokeColor(AppCompatResources.getColorStateList(getContext(), i10));
        }
    }

    public void setThumbStrokeWidth(float f10) {
        this.f31815f2.J0(f10);
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(@DimenRes int i10) {
        if (i10 != 0) {
            setThumbStrokeWidth(getResources().getDimension(i10));
        }
    }

    public void setThumbTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f31815f2.z())) {
            return;
        }
        this.f31815f2.p0(colorStateList);
        invalidate();
    }

    public void setThumbTrackGapSize(@Px int i10) {
        if (this.I == i10) {
            return;
        }
        this.I = i10;
        invalidate();
    }

    public void setThumbWidth(@IntRange(from = 0) @Px int i10) {
        if (i10 == this.F) {
            return;
        }
        this.F = i10;
        this.f31815f2.setShapeAppearanceModel(n.a().q(0, this.F / 2.0f).m());
        this.f31815f2.setBounds(0, 0, this.F, this.G);
        Drawable drawable = this.f31817g2;
        if (drawable != null) {
            j(drawable);
        }
        Iterator<Drawable> it2 = this.f31819h2.iterator();
        while (it2.hasNext()) {
            j(it2.next());
        }
        E0();
    }

    public void setThumbWidthResource(@DimenRes int i10) {
        setThumbWidth(getResources().getDimensionPixelSize(i10));
    }

    public void setTickActiveRadius(@IntRange(from = 0) @Px int i10) {
        if (this.f31821i1 != i10) {
            this.f31821i1 = i10;
            this.f31816g.setStrokeWidth(i10 * 2);
            E0();
        }
    }

    public void setTickActiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.R1)) {
            return;
        }
        this.R1 = colorStateList;
        this.f31816g.setColor(J(colorStateList));
        invalidate();
    }

    public void setTickInactiveRadius(@IntRange(from = 0) @Px int i10) {
        if (this.f31828l1 != i10) {
            this.f31828l1 = i10;
            this.f31813f.setStrokeWidth(i10 * 2);
            E0();
        }
    }

    public void setTickInactiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.V1)) {
            return;
        }
        this.V1 = colorStateList;
        this.f31813f.setColor(J(colorStateList));
        invalidate();
    }

    public void setTickTintList(@NonNull ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisible(boolean z10) {
        if (this.f31814f1 != z10) {
            this.f31814f1 = z10;
            postInvalidate();
        }
    }

    public void setTrackActiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f31803a2)) {
            return;
        }
        this.f31803a2 = colorStateList;
        this.f31807c.setColor(J(colorStateList));
        this.f31818h.setColor(J(this.f31803a2));
        invalidate();
    }

    public void setTrackHeight(@IntRange(from = 0) @Px int i10) {
        if (this.D != i10) {
            this.D = i10;
            Q();
            E0();
        }
    }

    public void setTrackInactiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.f31806b2)) {
            return;
        }
        this.f31806b2 = colorStateList;
        this.f31804b.setColor(J(colorStateList));
        invalidate();
    }

    public void setTrackInsideCornerSize(@Px int i10) {
        if (this.M == i10) {
            return;
        }
        this.M = i10;
        invalidate();
    }

    public void setTrackStopIndicatorSize(@Px int i10) {
        if (this.L == i10) {
            return;
        }
        this.L = i10;
        this.f31818h.setStrokeWidth(i10);
        invalidate();
    }

    public void setTrackTintList(@NonNull ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValueFrom(float f10) {
        this.S = f10;
        this.f31843v1 = true;
        postInvalidate();
    }

    public void setValueTo(float f10) {
        this.T = f10;
        this.f31843v1 = true;
        postInvalidate();
    }

    void setValues(@NonNull Float... fArr) {
        ArrayList<Float> arrayList = new ArrayList<>();
        Collections.addAll(arrayList, fArr);
        s0(arrayList);
    }

    void z0(int i10, Rect rect) {
        int iH0 = this.E + ((int) (h0(getValues().get(i10).floatValue()) * this.f31834p1));
        int iO = o();
        int iMax = Math.max(this.F / 2, this.f31847z / 2);
        int iMax2 = Math.max(this.G / 2, this.f31847z / 2);
        rect.set(iH0 - iMax, iO - iMax2, iH0 + iMax, iO + iMax2);
    }

    private class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f31856b;

        private d() {
            this.f31856b = -1;
        }

        void a(int i10) {
            this.f31856b = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseSlider.this.f31820i.sendEventForVirtualView(this.f31856b, 4);
        }

        /* synthetic */ d(BaseSlider baseSlider, a aVar) {
            this();
        }
    }

    public BaseSlider(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.sliderStyle);
    }

    void setCustomThumbDrawable(@NonNull Drawable drawable) {
        this.f31817g2 = P(drawable);
        this.f31819h2.clear();
        postInvalidate();
    }

    public BaseSlider(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(a5.a.c(context, attributeSet, i10, f31802z2), attributeSet, i10);
        this.f31829m = new ArrayList();
        this.f31830n = new ArrayList();
        this.f31831o = new ArrayList();
        this.f31832p = false;
        this.J = -1;
        this.K = -1;
        this.R = false;
        this.U = new ArrayList<>();
        this.V = -1;
        this.W = -1;
        this.f31833p0 = 0.0f;
        this.f31814f1 = true;
        this.f31838r1 = false;
        this.f31808c2 = new Path();
        this.f31810d2 = new RectF();
        this.f31812e2 = new RectF();
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.f31815f2 = materialShapeDrawable;
        this.f31819h2 = Collections.emptyList();
        this.f31824j2 = 0;
        this.f31826k2 = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.material.slider.c
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                this.f31862a.B0();
            }
        };
        Context context2 = getContext();
        this.f31804b = new Paint();
        this.f31807c = new Paint();
        Paint paint = new Paint(1);
        this.f31809d = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint2 = new Paint(1);
        this.f31811e = paint2;
        paint2.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint();
        this.f31813f = paint3;
        paint3.setStyle(Paint.Style.STROKE);
        paint3.setStrokeCap(Paint.Cap.ROUND);
        Paint paint4 = new Paint();
        this.f31816g = paint4;
        paint4.setStyle(Paint.Style.STROKE);
        paint4.setStrokeCap(Paint.Cap.ROUND);
        Paint paint5 = new Paint();
        this.f31818h = paint5;
        paint5.setStyle(Paint.Style.FILL);
        paint5.setStrokeCap(Paint.Cap.ROUND);
        Y(context2.getResources());
        n0(context2, attributeSet, i10);
        setFocusable(true);
        setClickable(true);
        materialShapeDrawable.y0(2);
        this.f31839s = ViewConfiguration.get(context2).getScaledTouchSlop();
        e eVar = new e(this);
        this.f31820i = eVar;
        ViewCompat.setAccessibilityDelegate(this, eVar);
        this.f31823j = (AccessibilityManager) getContext().getSystemService("accessibility");
    }

    void setValues(@NonNull List<Float> list) {
        s0(new ArrayList<>(list));
    }

    void setCustomThumbDrawablesForValues(@NonNull Drawable... drawableArr) {
        this.f31817g2 = null;
        this.f31819h2 = new ArrayList();
        for (Drawable drawable : drawableArr) {
            this.f31819h2.add(P(drawable));
        }
        postInvalidate();
    }
}
