package com.byazt.biq;

import android.content.Context;
import com.byazt.aas.pf;
import com.byazt.dna.u;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 12, 13})
public final class tt {
    public static float[] c(Context context, float f10, int i10) {
        float fMin;
        float fMax;
        float[] fArr = new float[2];
        float fUj = pf.uj(context, pf.x(context));
        float fUj2 = pf.uj(context, pf.i(context));
        if (i10 == 2) {
            fMin = Math.max(fUj, fUj2);
            fMax = Math.min(fUj, fUj2);
        } else {
            fMin = Math.min(fUj, fUj2);
            fMax = Math.max(fUj, fUj2);
        }
        int iUj = pf.uj(context, pf.da(context));
        if (pf.tt() || f10 != 100.0f) {
            if (i10 != 2) {
                fMax -= iUj;
            } else {
                if ("SM-A207F".equals(((u) com.byazt.ut.uj.getService("device_info_new")).getDeviceModel())) {
                    iUj *= 2;
                }
                fMin -= iUj;
            }
        }
        fArr[0] = fMin;
        fArr[1] = fMax;
        return fArr;
    }

    public static int[] c(Context context, float f10, float f11, int i10) {
        int iMax;
        float[] fArrC = c(context, f10, i10);
        float f12 = fArrC[0];
        float f13 = fArrC[1];
        int[] iArr = new int[4];
        int iMin = (int) (Math.min(f12, f13) * f11);
        if (i10 != 2) {
            float f14 = iMin;
            iMax = (int) Math.max((f13 - (((f12 - f14) - f14) / f10)) / 2.0f, 0.0f);
        } else {
            float f15 = iMin;
            iMin = (int) Math.max((f12 - (((f13 - f15) - f15) * f10)) / 2.0f, 0.0f);
            iMax = iMin;
        }
        iArr[0] = iMin;
        iArr[1] = iMax;
        iArr[2] = iMin;
        iArr[3] = iMax;
        return iArr;
    }
}
