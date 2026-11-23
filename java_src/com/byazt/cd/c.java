package com.byazt.cd;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 43, 20})
public class c {

    /* JADX INFO: renamed from: com.byazt.cd.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 43, 44})
    public static class C0282c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public GradientDrawable.Orientation f12378c;
        public int[] tt;
        public float[] ve;
    }

    public static int c(String str) {
        return c(str, -16777216);
    }

    public static C0282c tt(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String strSubstring = str.substring(str.indexOf("(") + 1, str.lastIndexOf(")"));
            if (TextUtils.isEmpty(strSubstring)) {
                return null;
            }
            int iC = c(strSubstring, '%');
            int iIndexOf = strSubstring.indexOf(",");
            String strSubstring2 = strSubstring.substring(0, iIndexOf);
            C0282c c0282c = new C0282c();
            c0282c.f12378c = uj(strSubstring2);
            String strSubstring3 = strSubstring.substring(iIndexOf + 1);
            int[] iArr = new int[iC];
            float[] fArr = new float[iC];
            for (int i10 = 0; i10 < iC; i10++) {
                int iIndexOf2 = strSubstring3.indexOf("%");
                String strTrim = strSubstring3.substring(0, iIndexOf2 + 1).trim();
                int iIndexOf3 = (strTrim.contains("rgba") ? strTrim.indexOf(")") : strTrim.indexOf(" ")) + 1;
                iArr[i10] = c(strTrim.substring(0, iIndexOf3).trim());
                fArr[i10] = ve.c(strTrim.substring(iIndexOf3, strTrim.indexOf("%")).trim(), 0.0f) / 100.0f;
                int i11 = iIndexOf2 + 2;
                if (strSubstring3.length() <= i11) {
                    break;
                }
                strSubstring3 = strSubstring3.substring(i11);
            }
            if (iC < 2) {
                return null;
            }
            c0282c.tt = iArr;
            c0282c.ve = fArr;
            return c0282c;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static GradientDrawable.Orientation uj(String str) {
        try {
            int i10 = str.contains("deg") ? Integer.parseInt(str.substring(0, str.length() - 3).trim()) : Integer.parseInt(str);
            if (i10 == 90) {
                return GradientDrawable.Orientation.LEFT_RIGHT;
            }
            if (i10 == 180) {
                return GradientDrawable.Orientation.TOP_BOTTOM;
            }
            if (i10 == 270) {
                return GradientDrawable.Orientation.RIGHT_LEFT;
            }
            if (i10 == 135) {
                return GradientDrawable.Orientation.TL_BR;
            }
            return i10 == 45 ? GradientDrawable.Orientation.BL_TR : GradientDrawable.Orientation.BOTTOM_TOP;
        } catch (Exception unused) {
            return GradientDrawable.Orientation.LEFT_RIGHT;
        }
    }

    public static boolean ve(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("linear-gradient");
    }

    public static int c(String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return i10;
        }
        if (str.equals("transparent")) {
            return 0;
        }
        if (str.charAt(0) == '#' && str.length() == 4) {
            StringBuilder sb2 = new StringBuilder("#");
            char[] charArray = str.toCharArray();
            for (int i11 = 1; i11 < charArray.length; i11++) {
                sb2.append(charArray[i11]);
                sb2.append(charArray[i11]);
            }
            return Color.parseColor(sb2.toString());
        }
        if (str.charAt(0) == '#' && str.length() == 7) {
            return Color.parseColor(str);
        }
        if (str.charAt(0) == '#' && str.length() == 9) {
            return Color.parseColor(str);
        }
        if (!str.startsWith("rgba")) {
            return -16777216;
        }
        String[] strArrSplit = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",");
        if (strArrSplit == null || strArrSplit.length != 4) {
            return i10;
        }
        return (((int) ((Float.parseFloat(strArrSplit[3]) * 255.0f) + 0.5f)) << 24) | (((int) Float.parseFloat(strArrSplit[0])) << 16) | (((int) Float.parseFloat(strArrSplit[1])) << 8) | ((int) Float.parseFloat(strArrSplit[2])) | 0;
    }

    public static int c(String str, char c10) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < str.length(); i11++) {
            if (str.charAt(i11) == c10) {
                i10++;
            }
        }
        return i10;
    }

    public static int c(int i10, int i11) {
        if (i11 < 0 || i11 > 255) {
            m.uj("ColorUtils", "alpha must be between 0 and 255. ");
            i11 = 255;
        }
        return (i10 & 16777215) | (i11 << 24);
    }
}
