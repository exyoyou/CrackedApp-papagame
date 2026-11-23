package com.join.kotlin.utils.extention;

import kotlin.Metadata;
import kotlin.math.MathKt__MathJVMKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, d2 = {"round", "", "decimal", "", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class FloatKt {
    public static final float round(float f10, int i10) {
        float fPow = (float) Math.pow(10.0f, i10);
        return MathKt__MathJVMKt.roundToInt(f10 * fPow) / fPow;
    }

    public static /* synthetic */ float round$default(float f10, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 2;
        }
        return round(f10, i10);
    }
}
