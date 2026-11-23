package cn.fly.tools.utils;

import cn.fly.commons.C1293r;
import cn.fly.tools.proguard.PublicMemberKeeper;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.math.BigInteger;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes7.dex */
public class FlyRSA implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2223a;

    public FlyRSA(int i10) {
        this.f2223a = i10;
    }

    private byte[] a(byte[] bArr, int i10, int i11, BigInteger bigInteger, BigInteger bigInteger2, int i12) throws Throwable {
        if (bArr.length != i11 || i10 != 0) {
            byte[] bArr2 = new byte[i11];
            System.arraycopy(bArr, i10, bArr2, 0, i11);
            bArr = bArr2;
        }
        BigInteger bigInteger3 = new BigInteger(a(bArr, i12));
        if (bigInteger3.compareTo(bigInteger2) <= 0) {
            return bigInteger3.modPow(bigInteger, bigInteger2).toByteArray();
        }
        throw new Throwable("the message must be smaller than the modulue");
    }

    public byte[] encode(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) throws Throwable {
        int i10 = this.f2223a / 8;
        int i11 = i10 - 11;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = null;
        try {
            DataOutputStream dataOutputStream2 = new DataOutputStream(byteArrayOutputStream);
            int i12 = 0;
            while (bArr.length > i12) {
                try {
                    int iMin = Math.min(bArr.length - i12, i11);
                    byte[] bArrA = a(bArr, i12, iMin, bigInteger, bigInteger2, i10);
                    dataOutputStream2.writeInt(bArrA.length);
                    dataOutputStream2.write(bArrA);
                    i12 += iMin;
                } catch (Throwable th) {
                    th = th;
                    dataOutputStream = dataOutputStream2;
                    C1293r.a(dataOutputStream, byteArrayOutputStream);
                    throw th;
                }
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            C1293r.a(dataOutputStream2, byteArrayOutputStream);
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private byte[] a(byte[] bArr, int i10) throws Throwable {
        if (bArr.length <= i10 - 1) {
            byte[] bArr2 = new byte[i10];
            bArr2[0] = 1;
            int length = bArr.length;
            bArr2[1] = (byte) (length >> 24);
            bArr2[2] = (byte) (length >> 16);
            bArr2[3] = (byte) (length >> 8);
            bArr2[4] = (byte) length;
            SecureRandom secureRandom = new SecureRandom();
            int i11 = 5;
            while (true) {
                int i12 = i10 - length;
                if (i11 < i12) {
                    bArr2[i11] = (byte) (secureRandom.nextInt(256) - 128);
                    i11++;
                } else {
                    System.arraycopy(bArr, 0, bArr2, i12, length);
                    return bArr2;
                }
            }
        } else {
            throw new Throwable("Message too large");
        }
    }
}
