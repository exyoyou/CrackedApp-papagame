package com.byazt.cc;

import android.animation.TypeEvaluator;
import com.xinzhu.overmind.utils.l;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, l.f90098b, 72})
public class da implements TypeEvaluator {
    @Override // android.animation.TypeEvaluator
    public Object evaluate(float f10, Object obj, Object obj2) {
        int iIntValue = ((Integer) obj).intValue();
        int i10 = (iIntValue >> 24) & 255;
        int i11 = (iIntValue >> 16) & 255;
        int i12 = (iIntValue >> 8) & 255;
        int i13 = iIntValue & 255;
        int iIntValue2 = ((Integer) obj2).intValue();
        return Integer.valueOf(((i10 + ((int) ((((iIntValue2 >> 24) & 255) - i10) * f10))) << 24) | ((i11 + ((int) ((((iIntValue2 >> 16) & 255) - i11) * f10))) << 16) | ((i12 + ((int) ((((iIntValue2 >> 8) & 255) - i12) * f10))) << 8) | (i13 + ((int) (f10 * ((iIntValue2 & 255) - i13)))));
    }
}
