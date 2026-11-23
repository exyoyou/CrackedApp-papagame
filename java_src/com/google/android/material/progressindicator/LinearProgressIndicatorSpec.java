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
public final class LinearProgressIndicatorSpec extends b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f31221h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f31222i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f31223j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Px
    public int f31224k;

    public LinearProgressIndicatorSpec(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.linearProgressIndicatorStyle);
    }

    @Override // com.google.android.material.progressindicator.b
    void e() {
        super.e();
        if (this.f31224k < 0) {
            throw new IllegalArgumentException("Stop indicator size must be >= 0.");
        }
        if (this.f31221h == 0) {
            if (this.f31227b > 0 && this.f31232g == 0) {
                throw new IllegalArgumentException("Rounded corners without gap are not supported in contiguous indeterminate animation.");
            }
            if (this.f31228c.length < 3) {
                throw new IllegalArgumentException("Contiguous indeterminate animation must be used with 3 or more indicator colors.");
            }
        }
    }

    public LinearProgressIndicatorSpec(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10) {
        this(context, attributeSet, i10, LinearProgressIndicator.A);
    }

    public LinearProgressIndicatorSpec(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        super(context, attributeSet, i10, i11);
        TypedArray typedArrayK = g0.k(context, attributeSet, R.styleable.LinearProgressIndicator, R.attr.linearProgressIndicatorStyle, LinearProgressIndicator.A, new int[0]);
        this.f31221h = typedArrayK.getInt(R.styleable.LinearProgressIndicator_indeterminateAnimationType, 1);
        this.f31222i = typedArrayK.getInt(R.styleable.LinearProgressIndicator_indicatorDirectionLinear, 0);
        this.f31224k = Math.min(typedArrayK.getDimensionPixelSize(R.styleable.LinearProgressIndicator_trackStopIndicatorSize, 0), this.f31226a);
        typedArrayK.recycle();
        e();
        this.f31223j = this.f31222i == 1;
    }
}
