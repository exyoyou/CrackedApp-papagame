package com.aggmoread.sdk.z.a.j;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes7.dex */
public class g {
    public static String a(String str) {
        byte[] bArrB;
        if (str == null || (bArrB = b(str)) == null) {
            return null;
        }
        return b(bArrB);
    }

    private static String b(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b10 : bArr) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(b10)));
        }
        return stringBuffer.toString();
    }

    public static byte[] a(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        try {
            byte[] bArr = new byte[1024];
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            while (true) {
                int i10 = inputStream.read(bArr);
                if (i10 == -1) {
                    return messageDigest.digest();
                }
                messageDigest.update(bArr, 0, i10);
            }
        } catch (Throwable th) {
            com.aggmoread.sdk.z.a.d.a("data", th);
            th.printStackTrace();
            return null;
        }
    }

    public static byte[] b(String str) {
        if (str == null) {
            return null;
        }
        try {
            return a(str.getBytes("utf-8"));
        } catch (Throwable th) {
            com.aggmoread.sdk.z.a.d.a("data", th);
            th.printStackTrace();
            return null;
        }
    }

    public static byte[] a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return a(bArr, 0, bArr.length);
    }

    public static byte[] a(byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            return null;
        }
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, i10, i11);
            byte[] bArrA = a(byteArrayInputStream);
            byteArrayInputStream.close();
            return bArrA;
        } catch (Throwable th) {
            com.aggmoread.sdk.z.a.d.a("data", th);
            th.printStackTrace();
            return null;
        }
    }
}
