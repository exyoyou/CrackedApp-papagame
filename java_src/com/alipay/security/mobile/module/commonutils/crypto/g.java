package com.alipay.security.mobile.module.commonutils.crypto;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes7.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f7282a = e.d("7B726A5DDD72CBF8D1700FB6EB278AFD7559C40A3761E5A71614D0AC9461ED8EE9F6AAEB443CD648");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f7283b = e.d("C9582A82777392CAA65AD7F5228150E3F966C09D6A00288B5C6E0CFB441E111B713B4E0822A8C830");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f7284c = 8;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f7285d = 20;

    private g() {
    }

    private static byte[] a(byte[] bArr) throws NoSuchAlgorithmException, InvalidKeyException {
        byte[] bArr2 = new byte[20];
        if (!b.a(bArr2)) {
            throw new IllegalStateException("failed to init hash1.");
        }
        byte[] bArr3 = new byte[20];
        if (!b.a(bArr3)) {
            throw new IllegalStateException("failed to init hash2.");
        }
        byte[] bArrB = c.b(bArr, f7282a);
        System.arraycopy(bArrB, 0, bArr2, 0, bArrB.length);
        byte[] bArrB2 = c.b(bArr, f7283b);
        System.arraycopy(bArrB2, 0, bArr3, 0, bArrB2.length);
        int i10 = bArr2[19] & 15;
        int i11 = bArr3[19] & 15;
        return new byte[]{(byte) (bArr2[i10 + 3] & 255), (byte) (bArr2[i10 + 2] & 255), (byte) (bArr2[i10 + 1] & 255), (byte) (bArr2[i10] & ByteCompanionObject.MAX_VALUE), (byte) (bArr3[i11] & ByteCompanionObject.MAX_VALUE), (byte) (bArr3[i11 + 1] & 255), (byte) (bArr3[i11 + 2] & 255), (byte) (bArr3[i11 + 3] & 255)};
    }

    private static byte[] b(byte[] bArr, int i10) throws NoSuchAlgorithmException, InvalidKeyException {
        byte[] bArr2 = new byte[20];
        if (!b.a(bArr2)) {
            throw new IllegalStateException("failed to init hash1.");
        }
        byte[] bArr3 = new byte[20];
        if (!b.a(bArr3)) {
            throw new IllegalStateException("failed to init hash2.");
        }
        byte[] bArrB = c.b(bArr, f7282a);
        System.arraycopy(bArrB, 0, bArr2, 0, bArrB.length);
        byte[] bArrB2 = c.b(bArr, f7283b);
        System.arraycopy(bArrB2, 0, bArr3, 0, bArrB2.length);
        int i11 = bArr2[19] & 15;
        int i12 = bArr3[19] & 15;
        byte[] bArr4 = {(byte) (bArr2[i11 + 3] & 255), (byte) (bArr2[i11 + 2] & 255), (byte) (bArr2[i11 + 1] & 255), (byte) (bArr2[i11] & ByteCompanionObject.MAX_VALUE), (byte) (bArr3[i12] & ByteCompanionObject.MAX_VALUE), (byte) (bArr3[i12 + 1] & 255), (byte) (bArr3[i12 + 2] & 255), (byte) (bArr3[i12 + 3] & 255)};
        if (i10 <= 0) {
            return null;
        }
        if (i10 >= 8) {
            return bArr4;
        }
        byte[] bArr5 = new byte[i10];
        for (int i13 = 0; i13 < i10; i13++) {
            bArr5[i13] = bArr4[i13];
        }
        return bArr5;
    }
}
