package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
import com.google.android.material.internal.g0;

/* JADX INFO: loaded from: classes5.dex */
public final class CircularProgressIndicatorSpec extends b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Px
    public int f31218h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Px
    public int f31219i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f31220j;

    public CircularProgressIndicatorSpec(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.circularProgressIndicatorStyle);
    }

    int f() {
        int i10 = this.f31232g;
        if (i10 == 0) {
            return 0;
        }
        return (int) Math.round(360.0d / ((((double) ((this.f31218h - (this.f31219i * 2)) - this.f31226a)) * 3.141592653589793d) / ((double) (i10 + this.f31227b))));
    }

    public CircularProgressIndicatorSpec(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10) {
        this(context, attributeSet, i10, CircularProgressIndicator.A);
    }

    public CircularProgressIndicatorSpec(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        super(context, attributeSet, i10, i11);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_circular_size_medium);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_circular_inset_medium);
        TypedArray typedArrayK = g0.k(context, attributeSet, R.styleable.CircularProgressIndicator, i10, i11, new int[0]);
        this.f31218h = Math.max(com.google.android.material.resources.d.d(context, typedArrayK, R.styleable.CircularProgressIndicator_indicatorSize, dimensionPixelSize), this.f31226a * 2);
        this.f31219i = com.google.android.material.resources.d.d(context, typedArrayK, R.styleable.CircularProgressIndicator_indicatorInset, dimensionPixelSize2);
        this.f31220j = typedArrayK.getInt(R.styleable.CircularProgressIndicator_indicatorDirectionCircular, 0);
        typedArrayK.recycle();
        e();
    }
}
