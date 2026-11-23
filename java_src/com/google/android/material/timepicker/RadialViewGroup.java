package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
class RadialViewGroup extends ConstraintLayout {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f32336e = "skip";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final int f32337f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final int f32338g = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final float f32339h = 0.66f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Runnable f32340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f32341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MaterialShapeDrawable f32342d;

    public RadialViewGroup(@NonNull Context context) {
        this(context, null);
    }

    private void f(List<View> list, ConstraintSet constraintSet, int i10) {
        Iterator<View> it2 = list.iterator();
        float size = 0.0f;
        while (it2.hasNext()) {
            constraintSet.constrainCircle(it2.next().getId(), R.id.circle_center, i10, size);
            size += 360.0f / list.size();
        }
    }

    private Drawable g() {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.f32342d = materialShapeDrawable;
        materialShapeDrawable.m0(new com.google.android.material.shape.l(0.5f));
        this.f32342d.p0(ColorStateList.valueOf(-1));
        return this.f32342d;
    }

    private static boolean k(View view) {
        return "skip".equals(view.getTag());
    }

    private void m() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.f32340b);
            handler.post(this.f32340b);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
        if (view.getId() == -1) {
            view.setId(ViewCompat.generateViewId());
        }
        m();
    }

    @Dimension
    int h(int i10) {
        return i10 == 2 ? Math.round(this.f32341c * f32339h) : this.f32341c;
    }

    @Dimension
    public int i() {
        return this.f32341c;
    }

    public void j(@Dimension int i10) {
        this.f32341c = i10;
        l();
    }

    protected void l() {
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(this);
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getId() != R.id.circle_center && !k(childAt)) {
                int i11 = (Integer) childAt.getTag(R.id.material_clock_level);
                if (i11 == null) {
                    i11 = 1;
                }
                if (!map.containsKey(i11)) {
                    map.put(i11, new ArrayList());
                }
                ((List) map.get(i11)).add(childAt);
            }
        }
        for (Map.Entry entry : map.entrySet()) {
            f((List) entry.getValue(), constraintSet, h(((Integer) entry.getKey()).intValue()));
        }
        constraintSet.applyTo(this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        l();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        m();
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i10) {
        this.f32342d.p0(ColorStateList.valueOf(i10));
    }

    public RadialViewGroup(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RadialViewGroup(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        LayoutInflater.from(context).inflate(R.layout.material_radial_view_group, this);
        ViewCompat.setBackground(this, g());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RadialViewGroup, i10, 0);
        this.f32341c = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.RadialViewGroup_materialCircleRadius, 0);
        this.f32340b = new Runnable() { // from class: com.google.android.material.timepicker.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f32406b.l();
            }
        };
        typedArrayObtainStyledAttributes.recycle();
    }
}
