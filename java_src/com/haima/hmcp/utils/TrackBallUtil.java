package com.haima.hmcp.utils;

/* JADX INFO: loaded from: classes5.dex */
public class TrackBallUtil {
    public static boolean distencePC(float f10, float f11) {
        return Math.hypot((double) f10, (double) f11) <= 1.0d;
    }

    public static String[] getPCdistence(float f10, float f11) {
        float f12;
        String[] strArr = new String[2];
        float f13 = 0.0f;
        int i10 = f10 >= 0.0f ? 1 : -1;
        int i11 = f11 >= 0.0f ? 1 : -1;
        if (f10 == 0.0f && f11 == 0.0f) {
            f12 = 0.0f;
        } else if (f10 == 0.0f || f11 == 0.0f) {
            if (Math.abs(f10) > 1.0f) {
                f10 = i10;
            }
            if (Math.abs(f11) > 1.0f) {
                f11 = i11;
            }
            f13 = f10;
            f12 = f11;
        } else {
            float fAbs = Math.abs(f10) / Math.abs(f11);
            float fSqrt = (float) Math.sqrt(1.0f / ((fAbs * fAbs) + 1.0f));
            f13 = i10 * fAbs * fSqrt;
            f12 = i11 * fSqrt;
        }
        strArr[0] = f13 + "";
        strArr[1] = f12 + "";
        LogUtils.d("ButtonMapp", "==getPCdistence = " + f13 + "   " + f12);
        return strArr;
    }
}
