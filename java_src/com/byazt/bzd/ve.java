package com.byazt.bzd;

import com.byakv.z.TTEncryptUtils;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 724, 54})
public class ve {
    public static byte[] c(byte[] bArr, int i10) {
        if (bArr != null && i10 > 0) {
            try {
                if (bArr.length == i10) {
                    return TTEncryptUtils.c(bArr, i10);
                }
            } catch (Throwable th) {
                m.c(th);
            }
        }
        return null;
    }
}
