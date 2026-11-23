package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.CallSuper;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
import com.google.android.material.color.s;
import com.google.android.material.internal.g0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Px
    public int f31226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Px
    public int f31227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public int[] f31228c = new int[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ColorInt
    public int f31229d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f31230e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f31231f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Px
    public int f31232g;

    protected b(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_track_thickness);
        TypedArray typedArrayK = g0.k(context, attributeSet, R.styleable.BaseProgressIndicator, i10, i11, new int[0]);
        this.f31226a = com.google.android.material.resources.d.d(context, typedArrayK, R.styleable.BaseProgressIndicator_trackThickness, dimensionPixelSize);
        this.f31227b = Math.min(com.google.android.material.resources.d.d(context, typedArrayK, R.styleable.BaseProgressIndicator_trackCornerRadius, 0), this.f31226a / 2);
        this.f31230e = typedArrayK.getInt(R.styleable.BaseProgressIndicator_showAnimationBehavior, 0);
        this.f31231f = typedArrayK.getInt(R.styleable.BaseProgressIndicator_hideAnimationBehavior, 0);
        this.f31232g = typedArrayK.getDimensionPixelSize(R.styleable.BaseProgressIndicator_indicatorTrackGapSize, 0);
        c(context, typedArrayK);
        d(context, typedArrayK);
        typedArrayK.recycle();
    }

    private void c(@NonNull Context context, @NonNull TypedArray typedArray) {
        int i10 = R.styleable.BaseProgressIndicator_indicatorColor;
        if (!typedArray.hasValue(i10)) {
            this.f31228c = new int[]{s.b(context, R.attr.colorPrimary, -1)};
            return;
        }
        if (typedArray.peekValue(i10).type != 1) {
            this.f31228c = new int[]{typedArray.getColor(i10, -1)};
            return;
        }
        int[] intArray = context.getResources().getIntArray(typedArray.getResourceId(i10, -1));
        this.f31228c = intArray;
        if (intArray.length == 0) {
            throw new IllegalArgumentException("indicatorColors cannot be empty when indicatorColor is not used.");
        }
    }

    private void d(@NonNull Context context, @NonNull TypedArray typedArray) {
        int i10 = R.styleable.BaseProgressIndicator_trackColor;
        if (typedArray.hasValue(i10)) {
            this.f31229d = typedArray.getColor(i10, -1);
            return;
        }
        this.f31229d = this.f31228c[0];
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{android.R.attr.disabledAlpha});
        float f10 = typedArrayObtainStyledAttributes.getFloat(0, 0.2f);
        typedArrayObtainStyledAttributes.recycle();
        this.f31229d = s.a(this.f31229d, (int) (f10 * 255.0f));
    }

    public boolean a() {
        return this.f31231f != 0;
    }

    public boolean b() {
        return this.f31230e != 0;
    }

    @CallSuper
    void e() {
        if (this.f31232g < 0) {
            throw new IllegalArgumentException("indicatorTrackGapSize must be >= 0.");
        }
    }
}
