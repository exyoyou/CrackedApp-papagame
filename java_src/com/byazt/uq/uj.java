package com.byazt.uq;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1759, 15})
public class uj {
    public static <T> boolean c(@Nullable T[] tArr) {
        return tArr == null || tArr.length == 0;
    }

    public static <T> int tt(@Nullable T[] tArr, T t10) {
        if (tArr == null) {
            return -1;
        }
        for (int i10 = 0; i10 < tArr.length; i10++) {
            T t11 = tArr[i10];
            if (t11 == t10 || (t11 != null && t11.equals(t10))) {
                return i10;
            }
        }
        return -1;
    }

    public static <T> boolean c(@Nullable T[] tArr, T t10) {
        return tt(tArr, t10) != -1;
    }

    public static <T> boolean c(@Nullable T[] tArr, T[] tArr2) {
        if (tArr2 == null) {
            return true;
        }
        for (T t10 : tArr2) {
            if (!c(tArr, t10)) {
                return false;
            }
        }
        return true;
    }
}
