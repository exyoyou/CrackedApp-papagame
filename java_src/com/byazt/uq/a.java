package com.byazt.uq;

import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1759, 34})
public final class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final char[] f20944c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static String c(String str) {
        return c(str.getBytes());
    }

    private static String tt(byte[] bArr) {
        int length;
        if (bArr == null || (length = bArr.length) <= 0) {
            return null;
        }
        char[] cArr = new char[length << 1];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            char[] cArr2 = f20944c;
            cArr[i10] = cArr2[(b10 >>> 4) & 15];
            i10 = i11 + 1;
            cArr[i11] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    public static String c(byte[] bArr) {
        if (bArr != null && bArr.length > 0) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(bArr);
                return tt(messageDigest.digest());
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static String c(File file) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[8192];
            while (true) {
                int i10 = fileInputStream.read(bArr, 0, 8192);
                if (i10 > 0) {
                    messageDigest.update(bArr, 0, i10);
                } else {
                    fileInputStream.close();
                    return tt(messageDigest.digest());
                }
            }
        } catch (Exception unused) {
            return null;
        }
    }
}
