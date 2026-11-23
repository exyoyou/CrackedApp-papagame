package com.byazt.bj;

import com.android.dx.io.Opcodes;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, Opcodes.SHL_INT_LIT8, 42})
public class i {
    public static long c(float f10, float f11) {
        return ((long) Float.floatToRawIntBits(f11)) | (((long) Float.floatToRawIntBits(f10)) << 32);
    }

    public static long c(int i10, int i11) {
        return c(i10, i11);
    }
}
