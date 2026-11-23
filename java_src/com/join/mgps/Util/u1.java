package com.join.mgps.Util;

/* JADX INFO: loaded from: classes4.dex */
public class u1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String[] f50035a = {"零", "一", "二", "三", "四", "五", "六", "七", "八", "九"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static char[] f50036b = {38646, 19968, 20108, 19977, 22235, 20116, 20845, 19971, 20843, 20061};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String[] f50037c = {"", "万", "亿", "万亿"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String[] f50038d = {"", "十", "百", "千"};

    public static String a(int num) {
        String str;
        if (num == 0) {
            return "零";
        }
        String str2 = new String();
        String str3 = new String();
        new String();
        boolean z10 = false;
        int i10 = 0;
        while (num > 0) {
            int i11 = num % 10000;
            if (z10) {
                str2 = f50035a[0] + str2;
            }
            String strB = b(i11, str3);
            if (i11 != 0) {
                str = strB + f50037c[i10];
            } else {
                str = f50037c[0] + strB;
            }
            str2 = str + str2;
            z10 = i11 < 1000 && i11 > 0;
            num /= 10000;
            i10++;
            str3 = "";
        }
        return str2;
    }

    public static String b(int section, String chineseNum) {
        new String();
        int i10 = 0;
        boolean z10 = true;
        while (section > 0) {
            int i11 = section % 10;
            if (i11 != 0) {
                chineseNum = (f50035a[i11] + f50038d[i10]) + chineseNum;
                z10 = false;
            } else if (!z10) {
                chineseNum = f50035a[0] + chineseNum;
                z10 = true;
            }
            i10++;
            section /= 10;
        }
        return chineseNum;
    }
}
