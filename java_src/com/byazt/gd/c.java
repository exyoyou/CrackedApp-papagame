package com.byazt.gd;

import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import com.byazt.aq.sp;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2180, 20})
public class c {
    public static int c(sp spVar) {
        if (spVar == null) {
            return 0;
        }
        String strNb = spVar.nb();
        String strGr = spVar.gr();
        if (TextUtils.isEmpty(strGr) || TextUtils.isEmpty(strNb) || !strGr.equals("creative")) {
            return 0;
        }
        if (strNb.equals("shake")) {
            return 2;
        }
        if (strNb.equals("twist")) {
            return 3;
        }
        return strNb.equals("slide") ? 1 : 0;
    }

    public static boolean tt(View view) {
        if (view == null) {
            return false;
        }
        try {
            Pair pair = (Pair) view.getTag(2097610707);
            if (pair == null) {
                return false;
            }
            return (TextUtils.isEmpty((CharSequence) pair.first) || TextUtils.equals("0", (CharSequence) pair.first)) && ((((Long) pair.second).longValue() > 0L ? 1 : (((Long) pair.second).longValue() == 0L ? 0 : -1)) <= 0);
        } catch (Exception e10) {
            e10.getMessage();
            return false;
        }
    }

    public static boolean c(View view) {
        if (view == null) {
            return false;
        }
        try {
            Object tag = view.getTag(2097610708);
            return tag != null && ((Integer) tag).intValue() == 1;
        } catch (Exception unused) {
        }
    }

    public static boolean c(View view, float f10, float f11, float f12, float f13) {
        if (view == null) {
            return false;
        }
        try {
            Pair pair = (Pair) view.getTag(2097610707);
            if (pair != null && !TextUtils.isEmpty((CharSequence) pair.first) && ((Long) pair.second).longValue() > 0) {
                String str = (String) pair.first;
                long jLongValue = ((Long) pair.second).longValue();
                if (str.equals("0")) {
                    return ((float) Math.sqrt(Math.pow((double) (f10 - f12), 2.0d) + Math.pow((double) (f11 - f13), 2.0d))) >= ((float) jLongValue);
                }
                if (str.equals("1")) {
                    float f14 = f11 - f13;
                    return f14 < 0.0f && Math.abs(f14) >= ((float) jLongValue);
                }
                if (str.equals("2")) {
                    float f15 = f10 - f12;
                    return f15 > 0.0f && Math.abs(f15) >= ((float) jLongValue);
                }
                if (str.equals("3")) {
                    float f16 = f10 - f12;
                    return f16 < 0.0f && Math.abs(f16) >= ((float) jLongValue);
                }
                if (str.equals("4")) {
                    float f17 = f11 - f13;
                    if (f17 > 0.0f && Math.abs(f17) >= jLongValue) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
