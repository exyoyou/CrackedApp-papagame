package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class ClockFaceView extends RadialViewGroup implements ClockHandView.c {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final float f32293x = 0.001f;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f32294y = 12;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final String f32295z = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ClockHandView f32296i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Rect f32297j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final RectF f32298k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Rect f32299l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final SparseArray<TextView> f32300m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final AccessibilityDelegateCompat f32301n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int[] f32302o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final float[] f32303p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f32304q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f32305r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f32306s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int f32307t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String[] f32308u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f32309v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final ColorStateList f32310w;

    class a implements ViewTreeObserver.OnPreDrawListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (!ClockFaceView.this.isShown()) {
                return true;
            }
            ClockFaceView.this.getViewTreeObserver().removeOnPreDrawListener(this);
            ClockFaceView.this.j(((ClockFaceView.this.getHeight() / 2) - ClockFaceView.this.f32296i.j()) - ClockFaceView.this.f32304q);
            return true;
        }
    }

    class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            int iIntValue = ((Integer) view.getTag(R.id.material_value_index)).intValue();
            if (iIntValue > 0) {
                accessibilityNodeInfoCompat.setTraversalAfter((View) ClockFaceView.this.f32300m.get(iIntValue - 1));
            }
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, iIntValue, 1, false, view.isSelected()));
            accessibilityNodeInfoCompat.setClickable(true);
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
            if (i10 != 16) {
                return super.performAccessibilityAction(view, i10, bundle);
            }
            long jUptimeMillis = SystemClock.uptimeMillis();
            view.getHitRect(ClockFaceView.this.f32297j);
            float fCenterX = ClockFaceView.this.f32297j.centerX();
            float fCenterY = ClockFaceView.this.f32297j.centerY();
            ClockFaceView.this.f32296i.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, fCenterX, fCenterY, 0));
            ClockFaceView.this.f32296i.onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 1, fCenterX, fCenterY, 0));
            return true;
        }
    }

    public ClockFaceView(@NonNull Context context) {
        this(context, null);
    }

    private void r() {
        RectF rectFF = this.f32296i.f();
        TextView textViewU = u(rectFF);
        for (int i10 = 0; i10 < this.f32300m.size(); i10++) {
            TextView textView = this.f32300m.get(i10);
            if (textView != null) {
                textView.setSelected(textView == textViewU);
                textView.getPaint().setShader(t(rectFF, textView));
                textView.invalidate();
            }
        }
    }

    @Nullable
    private RadialGradient t(RectF rectF, TextView textView) {
        textView.getHitRect(this.f32297j);
        this.f32298k.set(this.f32297j);
        textView.getLineBounds(0, this.f32299l);
        RectF rectF2 = this.f32298k;
        Rect rect = this.f32299l;
        rectF2.inset(rect.left, rect.top);
        if (RectF.intersects(rectF, this.f32298k)) {
            return new RadialGradient(rectF.centerX() - this.f32298k.left, rectF.centerY() - this.f32298k.top, rectF.width() * 0.5f, this.f32302o, this.f32303p, Shader.TileMode.CLAMP);
        }
        return null;
    }

    @Nullable
    private TextView u(RectF rectF) {
        float f10 = Float.MAX_VALUE;
        TextView textView = null;
        for (int i10 = 0; i10 < this.f32300m.size(); i10++) {
            TextView textView2 = this.f32300m.get(i10);
            if (textView2 != null) {
                textView2.getHitRect(this.f32297j);
                this.f32298k.set(this.f32297j);
                this.f32298k.union(rectF);
                float fWidth = this.f32298k.width() * this.f32298k.height();
                if (fWidth < f10) {
                    textView = textView2;
                    f10 = fWidth;
                }
            }
        }
        return textView;
    }

    private static float v(float f10, float f11, float f12) {
        return Math.max(Math.max(f10, f11), f12);
    }

    private void x(@StringRes int i10) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int size = this.f32300m.size();
        boolean z10 = false;
        for (int i11 = 0; i11 < Math.max(this.f32308u.length, size); i11++) {
            TextView textView = this.f32300m.get(i11);
            if (i11 >= this.f32308u.length) {
                removeView(textView);
                this.f32300m.remove(i11);
            } else {
                if (textView == null) {
                    textView = (TextView) layoutInflaterFrom.inflate(R.layout.material_clockface_textview, (ViewGroup) this, false);
                    this.f32300m.put(i11, textView);
                    addView(textView);
                }
                textView.setText(this.f32308u[i11]);
                textView.setTag(R.id.material_value_index, Integer.valueOf(i11));
                int i12 = (i11 / 12) + 1;
                textView.setTag(R.id.material_clock_level, Integer.valueOf(i12));
                if (i12 > 1) {
                    z10 = true;
                }
                ViewCompat.setAccessibilityDelegate(textView, this.f32301n);
                textView.setTextColor(this.f32310w);
                if (i10 != 0) {
                    textView.setContentDescription(getResources().getString(i10, this.f32308u[i11]));
                }
            }
        }
        this.f32296i.t(z10);
    }

    public void c(String[] strArr, @StringRes int i10) {
        this.f32308u = strArr;
        x(i10);
    }

    public void d(@FloatRange(from = 0.0d, to = 360.0d) float f10) {
        this.f32296i.q(f10);
        r();
    }

    @Override // com.google.android.material.timepicker.ClockHandView.c
    public void e(float f10, boolean z10) {
        if (Math.abs(this.f32309v - f10) > 0.001f) {
            this.f32309v = f10;
            r();
        }
    }

    @Override // com.google.android.material.timepicker.RadialViewGroup
    public void j(int i10) {
        if (i10 != i()) {
            super.j(i10);
            this.f32296i.o(i());
        }
    }

    @Override // com.google.android.material.timepicker.RadialViewGroup
    protected void l() {
        super.l();
        for (int i10 = 0; i10 < this.f32300m.size(); i10++) {
            this.f32300m.get(i10).setVisibility(0);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.f32308u.length, false, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        r();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iV = (int) (this.f32307t / v(this.f32305r / displayMetrics.heightPixels, this.f32306s / displayMetrics.widthPixels, 1.0f));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iV, 1073741824);
        setMeasuredDimension(iV, iV);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
    }

    int s() {
        return this.f32296i.e();
    }

    void w(int i10) {
        this.f32296i.p(i10);
    }

    public ClockFaceView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public ClockFaceView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f32297j = new Rect();
        this.f32298k = new RectF();
        this.f32299l = new Rect();
        this.f32300m = new SparseArray<>();
        this.f32303p = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClockFaceView, i10, R.style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList colorStateListA = com.google.android.material.resources.d.a(context, typedArrayObtainStyledAttributes, R.styleable.ClockFaceView_clockNumberTextColor);
        this.f32310w = colorStateListA;
        LayoutInflater.from(context).inflate(R.layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R.id.material_clock_hand);
        this.f32296i = clockHandView;
        this.f32304q = resources.getDimensionPixelSize(R.dimen.material_clock_hand_padding);
        int colorForState = colorStateListA.getColorForState(new int[]{android.R.attr.state_selected}, colorStateListA.getDefaultColor());
        this.f32302o = new int[]{colorForState, colorForState, colorStateListA.getDefaultColor()};
        clockHandView.b(this);
        int defaultColor = AppCompatResources.getColorStateList(context, R.color.material_timepicker_clockface).getDefaultColor();
        ColorStateList colorStateListA2 = com.google.android.material.resources.d.a(context, typedArrayObtainStyledAttributes, R.styleable.ClockFaceView_clockFaceBackgroundColor);
        setBackgroundColor(colorStateListA2 != null ? colorStateListA2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new a());
        setFocusable(true);
        typedArrayObtainStyledAttributes.recycle();
        this.f32301n = new b();
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        c(strArr, 0);
        this.f32305r = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_height);
        this.f32306s = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_width);
        this.f32307t = resources.getDimensionPixelSize(R.dimen.material_clock_size);
    }
}
