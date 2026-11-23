package com.sdk.v;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    public final byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3, int i10) throws f {
        if (bArr == null || bArr.length != 16) {
            throw new f(a.E10410);
        }
        if (bArr3 == null) {
            throw new f(a.E10400);
        }
        if (bArr2 == null) {
            throw new f(a.E10411);
        }
        int length = bArr3.length;
        if (i10 == 1) {
            if (length <= 0) {
                throw new f(a.E10408);
            }
        } else if (length <= 0 || bArr3.length % 16 != 0) {
            throw new f(a.E10409);
        }
        if (bArr2.length != 16) {
            throw new f(a.E10411);
        }
        new SecretKeySpec(bArr, "SM4");
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr2);
        try {
            Cipher cipher = Cipher.getInstance("SM4/CBC/PKCS5Padding", "BC");
            cipher.init(i10, new SecretKeySpec(bArr, "SM4"), ivParameterSpec);
            return cipher.doFinal(bArr3);
        } catch (Exception e10) {
            if (i10 == 1) {
                throw new f(a.E10204, e10);
            }
            throw new f(a.E10205, e10);
        }
    }

    public byte[] a(byte[] bArr, byte[] bArr2, int i10) throws f {
        if (bArr == null || bArr.length != 16) {
            throw new f(a.E10410);
        }
        if (bArr2 == null) {
            throw new f(a.E10400);
        }
        boolean z10 = false;
        if (i10 == 1) {
            z10 = bArr2.length > 0;
            a aVar = a.E10408;
            if (!z10) {
                throw new f(aVar);
            }
        } else {
            if (bArr2.length > 0 && bArr2.length % 16 == 0) {
                z10 = true;
            }
            a aVar2 = a.E10409;
            if (!z10) {
                throw new f(aVar2);
            }
        }
        try {
            Cipher cipher = Cipher.getInstance("SM4/ECB/PKCS5Padding", "BC");
            cipher.init(i10, new SecretKeySpec(bArr, "SM4"));
            return cipher.doFinal(bArr2);
        } catch (Exception e10) {
            if (i10 == 1) {
                throw new f(a.E10204, e10);
            }
            throw new f(a.E10205, e10);
        }
    }
}
