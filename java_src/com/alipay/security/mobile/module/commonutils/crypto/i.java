package com.alipay.security.mobile.module.commonutils.crypto;

import android.annotation.SuppressLint;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes7.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f7286a = "SecurityUtils";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f7287b = new String("idnjfhncnsfuobcnt847y929o449u474w7j3h22aoddc98euk#%&&)*&^%#");

    public static String a() {
        String str = new String();
        for (int i10 = 0; i10 < f7287b.length() - 1; i10 += 4) {
            str = str + f7287b.charAt(i10);
        }
        return str;
    }

    private static String b(String str) {
        return g(str.getBytes());
    }

    public static String c(String str, String str2) {
        byte[] bArrDoFinal;
        try {
            byte[] bArrD = d(str.getBytes());
            byte[] bytes = str2.getBytes();
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArrD, "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, secretKeySpec, new IvParameterSpec(new byte[cipher.getBlockSize()]));
            bArrDoFinal = cipher.doFinal(bytes);
        } catch (Exception unused) {
            bArrDoFinal = null;
        }
        return g(bArrDoFinal);
    }

    @SuppressLint({"TrulyRandom"})
    private static byte[] d(byte[] bArr) throws NoSuchAlgorithmException, NoSuchProviderException {
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
        SecureRandom secureRandom = SecureRandom.getInstance("SHA1PRNG", "Crypto");
        h.a(secureRandom, h.b(new String(a.b("c2VlZA==")), SecureRandom.class, bArr.getClass()), new Object[]{bArr});
        keyGenerator.init(128, secureRandom);
        return keyGenerator.generateKey().getEncoded();
    }

    private static String e(String str) {
        return new String(h(str));
    }

    public static String f(String str, String str2) {
        try {
            byte[] bArrD = d(str.getBytes());
            byte[] bArrH = h(str2);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArrD, "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, secretKeySpec, new IvParameterSpec(new byte[cipher.getBlockSize()]));
            return new String(cipher.doFinal(bArrH));
        } catch (Exception unused) {
            return null;
        }
    }

    private static String g(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b10 : bArr) {
            stringBuffer.append(net.lingala.zip4j.crypto.PBKDF2.a.f94571a.charAt((b10 >> 4) & 15));
            stringBuffer.append(net.lingala.zip4j.crypto.PBKDF2.a.f94571a.charAt(b10 & 15));
        }
        return stringBuffer.toString();
    }

    private static byte[] h(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = Integer.valueOf(str.substring(i11, i11 + 2), 16).byteValue();
        }
        return bArr;
    }
}
