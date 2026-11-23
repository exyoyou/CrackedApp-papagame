package com.facebook.common.internal;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class g {
    private g() {
    }

    public static int a(int... array) {
        i.d(Boolean.valueOf(array.length > 0));
        int i10 = array[0];
        for (int i11 = 1; i11 < array.length; i11++) {
            int i12 = array[i11];
            if (i12 > i10) {
                i10 = i12;
            }
        }
        return i10;
    }
}
