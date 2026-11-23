package com.google.android.material.divider;

import a5.a;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.internal.g0;
import com.google.android.material.resources.d;
import com.google.android.material.shape.MaterialShapeDrawable;

/* JADX INFO: loaded from: classes5.dex */
public class MaterialDivider extends View {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f30588g = R.style.Widget_MaterialComponents_MaterialDivider;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final MaterialShapeDrawable f30589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f30590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ColorInt
    private int f30591d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f30592e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f30593f;

    public MaterialDivider(@NonNull Context context) {
        this(context, null);
    }

    public int getDividerColor() {
        return this.f30591d;
    }

    @Px
    public int getDividerInsetEnd() {
        return this.f30593f;
    }

    @Px
    public int getDividerInsetStart() {
        return this.f30592e;
    }

    public int getDividerThickness() {
        return this.f30590c;
    }

    @Override // android.view.View
    protected void onDraw(@NonNull Canvas canvas) {
        int width;
        int i10;
        super.onDraw(canvas);
        boolean z10 = ViewCompat.getLayoutDirection(this) == 1;
        int i11 = z10 ? this.f30593f : this.f30592e;
        if (z10) {
            width = getWidth();
            i10 = this.f30592e;
        } else {
            width = getWidth();
            i10 = this.f30593f;
        }
        this.f30589b.setBounds(i11, 0, width - i10, getBottom() - getTop());
        this.f30589b.draw(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i11);
        int measuredHeight = getMeasuredHeight();
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int i12 = this.f30590c;
            if (i12 > 0 && measuredHeight != i12) {
                measuredHeight = i12;
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
    }

    public void setDividerColor(@ColorInt int i10) {
        if (this.f30591d != i10) {
            this.f30591d = i10;
            this.f30589b.p0(ColorStateList.valueOf(i10));
            invalidate();
        }
    }

    public void setDividerColorResource(@ColorRes int i10) {
        setDividerColor(ContextCompat.getColor(getContext(), i10));
    }

    public void setDividerInsetEnd(@Px int i10) {
        this.f30593f = i10;
    }

    public void setDividerInsetEndResource(@DimenRes int i10) {
        setDividerInsetEnd(getContext().getResources().getDimensionPixelOffset(i10));
    }

    public void setDividerInsetStart(@Px int i10) {
        this.f30592e = i10;
    }

    public void setDividerInsetStartResource(@DimenRes int i10) {
        setDividerInsetStart(getContext().getResources().getDimensionPixelOffset(i10));
    }

    public void setDividerThickness(@Px int i10) {
        if (this.f30590c != i10) {
            this.f30590c = i10;
            requestLayout();
        }
    }

    public void setDividerThicknessResource(@DimenRes int i10) {
        setDividerThickness(getContext().getResources().getDimensionPixelSize(i10));
    }

    public MaterialDivider(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialDividerStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialDivider(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f30588g;
        super(a.c(context, attributeSet, i10, i11), attributeSet, i10);
        Context context2 = getContext();
        this.f30589b = new MaterialShapeDrawable();
        TypedArray typedArrayK = g0.k(context2, attributeSet, R.styleable.MaterialDivider, i10, i11, new int[0]);
        this.f30590c = typedArrayK.getDimensionPixelSize(R.styleable.MaterialDivider_dividerThickness, getResources().getDimensionPixelSize(R.dimen.material_divider_thickness));
        this.f30592e = typedArrayK.getDimensionPixelOffset(R.styleable.MaterialDivider_dividerInsetStart, 0);
        this.f30593f = typedArrayK.getDimensionPixelOffset(R.styleable.MaterialDivider_dividerInsetEnd, 0);
        setDividerColor(d.a(context2, typedArrayK, R.styleable.MaterialDivider_dividerColor).getDefaultColor());
        typedArrayK.recycle();
    }
}
