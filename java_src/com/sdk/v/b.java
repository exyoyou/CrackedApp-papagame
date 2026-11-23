package com.sdk.v;

import org.bouncycastle.crypto.digests.SM3Digest;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static c f78617a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static d f78618b = new d();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static e f78619c = new e();

    public static byte[] a(byte[] bArr) throws f {
        f78618b.getClass();
        if (bArr == null) {
            throw new f(a.E10400);
        }
        if (bArr.length <= 0) {
            throw new f(a.E10415);
        }
        byte[] bArr2 = new byte[32];
        SM3Digest sM3Digest = new SM3Digest();
        sM3Digest.update(bArr, 0, bArr.length);
        sM3Digest.doFinal(bArr2, 0);
        sM3Digest.reset();
        return bArr2;
    }

    public static byte[] b(byte[] bArr, byte[] bArr2, byte[] bArr3, int i10) {
        if (i10 == 1) {
            return f78619c.a(bArr2, bArr, 1);
        }
        if (i10 == 2) {
            return f78619c.a(bArr2, bArr3, bArr, 1);
        }
        if (i10 == 3) {
            return f78619c.a(bArr2, bArr3, bArr, 1);
        }
        if (i10 != 4) {
            return i10 != 5 ? f78619c.a(bArr2, bArr3, bArr, 1) : f78619c.a(bArr2, bArr3, bArr, 1);
        }
        return f78619c.a(bArr2, bArr3, bArr, 1);
    }

    public static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3, int i10) {
        if (i10 == 1) {
            return f78619c.a(bArr2, bArr, 2);
        }
        if (i10 == 2) {
            return f78619c.a(bArr2, bArr3, bArr, 2);
        }
        if (i10 == 3) {
            return f78619c.a(bArr2, bArr3, bArr, 2);
        }
        if (i10 != 4) {
            return i10 != 5 ? f78619c.a(bArr2, bArr3, bArr, 2) : f78619c.a(bArr2, bArr3, bArr, 2);
        }
        return f78619c.a(bArr2, bArr3, bArr, 2);
    }
}
