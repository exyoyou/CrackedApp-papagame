package com.beizi.ad.internal.e;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes6.dex */
public class f {
    public static String a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return a(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            return "";
        }
    }

    private static String a(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            int i10 = (b10 >>> 4) & 15;
            int i11 = 0;
            while (true) {
                sb2.append((char) ((i10 < 0 || i10 > 9) ? (i10 - 10) + 97 : i10 + 48));
                i10 = b10 & 15;
                int i12 = i11 + 1;
                if (i11 >= 1) {
                    break;
                }
                i11 = i12;
            }
        }
        return sb2.toString();
    }
}
