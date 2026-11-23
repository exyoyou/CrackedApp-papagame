package com.kwad.sdk.lib.ad.desigin;

import androidx.annotation.FloatRange;
import androidx.annotation.Keep;
import com.google.android.material.color.utilities.d;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public interface CustomReboundOffsetCallback {
    public static final int REBOUND_TYPE_FLING = 2;
    public static final int REBOUND_TYPE_TOUCH = 1;

    void rebound(int i10, @FloatRange(from = 0.0d, to = d.f30216a) float f10, int i11);
}
