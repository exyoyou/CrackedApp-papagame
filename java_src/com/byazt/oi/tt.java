package com.byazt.oi;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1933, 13})
public class tt {
    public static void c(List<Integer> list) {
        if (list == null) {
            return;
        }
        while (list.contains(null)) {
            list.remove((Object) null);
        }
        if (list.size() <= 1) {
            return;
        }
        int size = list.size();
        int[] iArr = new int[size];
        for (int i10 = 0; i10 < size; i10++) {
            iArr[i10] = list.get(i10).intValue();
        }
        for (int i11 = 1; i11 < size; i11++) {
            int i12 = iArr[i11];
            int i13 = i11;
            while (i13 > 0) {
                int i14 = iArr[i13 - 1];
                if (i14 <= i12) {
                    break;
                }
                iArr[i13] = i14;
                i13--;
            }
            iArr[i13] = i12;
        }
        list.clear();
        for (int i15 = 0; i15 < size; i15++) {
            try {
                list.add(Integer.valueOf(iArr[i15]));
            } catch (RuntimeException unused) {
                return;
            }
        }
    }
}
