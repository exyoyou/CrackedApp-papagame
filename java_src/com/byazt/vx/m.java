package com.byazt.vx;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 962, 130})
public class m {
    public static String c(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < iArr.length; i10++) {
            sb2.append(iArr[i10]);
            if (i10 != iArr.length - 1) {
                sb2.append(",");
            }
        }
        return sb2.toString();
    }
}
