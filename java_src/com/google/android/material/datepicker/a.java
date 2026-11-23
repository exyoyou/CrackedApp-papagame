package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;

/* JADX INFO: loaded from: classes5.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final Rect f30513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ColorStateList f30514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ColorStateList f30515c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ColorStateList f30516d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f30517e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.google.android.material.shape.n f30518f;

    private a(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i10, com.google.android.material.shape.n nVar, @NonNull Rect rect) {
        Preconditions.checkArgumentNonnegative(rect.left);
        Preconditions.checkArgumentNonnegative(rect.top);
        Preconditions.checkArgumentNonnegative(rect.right);
        Preconditions.checkArgumentNonnegative(rect.bottom);
        this.f30513a = rect;
        this.f30514b = colorStateList2;
        this.f30515c = colorStateList;
        this.f30516d = colorStateList3;
        this.f30517e = i10;
        this.f30518f = nVar;
    }

    @NonNull
    static a a(@NonNull Context context, @StyleRes int i10) {
        Preconditions.checkArgument(i10 != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, R.styleable.MaterialCalendarItem);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetLeft, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetTop, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetRight, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetBottom, 0));
        ColorStateList colorStateListA = com.google.android.material.resources.d.a(context, typedArrayObtainStyledAttributes, R.styleable.MaterialCalendarItem_itemFillColor);
        ColorStateList colorStateListA2 = com.google.android.material.resources.d.a(context, typedArrayObtainStyledAttributes, R.styleable.MaterialCalendarItem_itemTextColor);
        ColorStateList colorStateListA3 = com.google.android.material.resources.d.a(context, typedArrayObtainStyledAttributes, R.styleable.MaterialCalendarItem_itemStrokeColor);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MaterialCalendarItem_itemStrokeWidth, 0);
        com.google.android.material.shape.n nVarM = com.google.android.material.shape.n.b(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendarItem_itemShapeAppearance, 0), typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendarItem_itemShapeAppearanceOverlay, 0)).m();
        typedArrayObtainStyledAttributes.recycle();
        return new a(colorStateListA, colorStateListA2, colorStateListA3, dimensionPixelSize, nVarM, rect);
    }

    int b() {
        return this.f30513a.bottom;
    }

    int c() {
        return this.f30513a.left;
    }

    int d() {
        return this.f30513a.right;
    }

    int e() {
        return this.f30513a.top;
    }

    void f(@NonNull TextView textView) {
        g(textView, null, null);
    }

    void g(@NonNull TextView textView, @Nullable ColorStateList colorStateList, @Nullable ColorStateList colorStateList2) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable();
        materialShapeDrawable.setShapeAppearanceModel(this.f30518f);
        materialShapeDrawable2.setShapeAppearanceModel(this.f30518f);
        if (colorStateList == null) {
            colorStateList = this.f30515c;
        }
        materialShapeDrawable.p0(colorStateList);
        materialShapeDrawable.F0(this.f30517e, this.f30516d);
        if (colorStateList2 == null) {
            colorStateList2 = this.f30514b;
        }
        textView.setTextColor(colorStateList2);
        RippleDrawable rippleDrawable = new RippleDrawable(this.f30514b.withAlpha(30), materialShapeDrawable, materialShapeDrawable2);
        Rect rect = this.f30513a;
        ViewCompat.setBackground(textView, new InsetDrawable((Drawable) rippleDrawable, rect.left, rect.top, rect.right, rect.bottom));
    }
}
