package com.google.android.material.carousel;

import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
interface m {
    @NonNull
    RectF getMaskRectF();

    @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
    @Deprecated
    float getMaskXPercentage();

    void setMaskRectF(@NonNull RectF rectF);

    @Deprecated
    void setMaskXPercentage(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10);

    void setOnMaskChangedListener(@Nullable q qVar);
}
