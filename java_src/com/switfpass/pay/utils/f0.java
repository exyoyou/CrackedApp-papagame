package com.switfpass.pay.utils;

import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes2.dex */
public class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f82790a = "SHA1WithRSA";

    public static boolean a(String str, String str2, String str3) {
        try {
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(c.c(str3)));
            Signature signature = Signature.getInstance(f82790a);
            signature.initVerify(publicKeyGeneratePublic);
            signature.update(str.getBytes("utf-8"));
            new StringBuilder("content :   ").append(str);
            new StringBuilder("sign:   ").append(str2);
            boolean zVerify = signature.verify(c.c(str2));
            new StringBuilder("bverify = ").append(zVerify);
            return zVerify;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static String b(String str, String str2) {
        try {
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(c.c(str2)));
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, publicKeyGeneratePublic);
            return new String(c.d(cipher.doFinal(str.getBytes("UTF-8"))));
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String c(String str) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            char[] cArr2 = new char[32];
            int i10 = 0;
            for (int i11 = 0; i11 < 16; i11++) {
                byte b10 = bArrDigest[i11];
                int i12 = i10 + 1;
                cArr2[i10] = cArr[(b10 >>> 4) & 15];
                i10 = i12 + 1;
                cArr2[i12] = cArr[b10 & 15];
            }
            return new String(cArr2);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String d(String str, String str2) {
        try {
            PrivateKey privateKeyGeneratePrivate = KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(c.c(str2)));
            Signature signature = Signature.getInstance(f82790a);
            signature.initSign(privateKeyGeneratePrivate);
            signature.update(str.getBytes("UTF-8"));
            return c.d(signature.sign());
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
