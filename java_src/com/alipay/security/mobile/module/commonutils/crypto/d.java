package com.alipay.security.mobile.module.commonutils.crypto;

import java.security.MessageDigest;

/* JADX INFO: loaded from: classes7.dex */
public final class d {
    public static String a(String str) {
        try {
            if (c0.a.b(str)) {
                return null;
            }
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes("UTF-8"));
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                sb2.append(String.format("%02x", Byte.valueOf(b10)));
            }
            return sb2.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    private static String b(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            messageDigest.update(bArr);
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                sb2.append(String.format("%02x", Byte.valueOf(b10)));
            }
            return sb2.toString();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    private static byte[] c(String str) {
        try {
            if (c0.a.b(str)) {
                return null;
            }
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes("UTF-8"));
            return messageDigest.digest();
        } catch (Exception unused) {
            return null;
        }
    }

    private static String d(String str) {
        try {
            if (c0.a.b(str)) {
                return null;
            }
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes("UTF-8"));
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < 16; i10++) {
                sb2.append(String.format("%02x", Byte.valueOf(bArrDigest[i10])));
            }
            return sb2.toString();
        } catch (Exception unused) {
            return null;
        }
    }
}
