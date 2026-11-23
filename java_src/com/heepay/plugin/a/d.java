package com.heepay.plugin.a;

import com.sigmob.sdk.archives.tar.e;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateFactory;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.DESedeKeySpec;
import javax.crypto.spec.IvParameterSpec;

/* JADX INFO: loaded from: classes5.dex */
public class d {
    public static byte a(char c10) {
        int i10;
        if (c10 < '0' || c10 > '9') {
            char c11 = 'a';
            if (c10 < 'a' || c10 > 'f') {
                c11 = 'A';
                if (c10 < 'A' || c10 > 'F') {
                    return (byte) 0;
                }
            }
            i10 = (c10 - c11) + 10;
        } else {
            i10 = c10 - '0';
        }
        return (byte) i10;
    }

    public static byte[] b(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = (byte) ((a(str.charAt(i11)) << 4) + a(str.charAt(i11 + 1)));
        }
        return bArr;
    }

    public static PublicKey c(String str) {
        try {
            return CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(b(str))).getPublicKey();
        } catch (Exception unused) {
            com.heepay.plugin.c.c.e("WebService", "数据分析出错");
            return null;
        }
    }

    private static char a(byte b10) {
        byte b11 = (byte) (b10 & 15);
        return (char) (b11 < 10 ? b11 + e.H : (b11 + 65) - 10);
    }

    public static byte[] b(byte[] bArr, String str, String str2, byte[] bArr2) throws NoSuchPaddingException, InvalidKeySpecException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        Cipher cipher = Cipher.getInstance(str2);
        SecretKey secretKeyGenerateSecret = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(str.getBytes("UTF-8")));
        if (str2.contains("/CBC/")) {
            cipher.init(1, secretKeyGenerateSecret, new IvParameterSpec(bArr2));
        } else {
            cipher.init(1, secretKeyGenerateSecret);
        }
        return cipher.doFinal(bArr);
    }

    public static String a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b10 : bArrDigest) {
                String hexString = Integer.toHexString(b10 & 255);
                int length = hexString.length();
                if (length == 0) {
                    hexString = e.V;
                } else if (length == 1) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(hexString);
            }
            return stringBuffer.toString().toLowerCase();
        } catch (NoSuchAlgorithmException e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static String a(String str, String str2, String str3) throws NoSuchPaddingException, InvalidKeySpecException, NoSuchAlgorithmException, InvalidKeyException, UnsupportedEncodingException, InvalidAlgorithmParameterException {
        String strSubstring = str2.substring(0, 8);
        String strSubstring2 = str2.substring(8, 16);
        String strSubstring3 = str2.substring(16, 24);
        boolean zEqualsIgnoreCase = "ToHex16".equalsIgnoreCase(str3);
        byte[] bytes = str.getBytes("UTF-8");
        int length = (bytes.length + 8) & (-8);
        if (length != bytes.length) {
            byte[] bArr = new byte[length];
            for (int i10 = 0; i10 < bytes.length; i10++) {
                bArr[i10] = bytes[i10];
            }
            for (int length2 = bytes.length; length2 < length; length2++) {
                bArr[length2] = (byte) (length - bytes.length);
            }
            bytes = bArr;
        }
        byte[] bArr2 = new byte[bytes.length];
        byte[] bytes2 = new byte[8];
        int i11 = 0;
        while (true) {
            int i12 = i11 + 8;
            if (i12 > bytes.length) {
                break;
            }
            byte[] bArr3 = new byte[8];
            for (int i13 = 0; i13 < 8; i13++) {
                bArr3[i13] = bytes[i11 + i13];
            }
            if (i11 == 0) {
                bytes2 = strSubstring.getBytes("UTF-8");
            } else {
                for (int i14 = 0; i14 < 8; i14++) {
                    bytes2[i14] = bArr2[(i11 + i14) - 8];
                }
            }
            byte[] bArrB = b(a(b(bArr3, strSubstring, "DES/ECB/NoPadding", bytes2), strSubstring2, "DES/ECB/NoPadding", null), strSubstring3, "DES/ECB/NoPadding", null);
            for (int i15 = 0; i15 < 8; i15++) {
                bArr2[i11 + i15] = bArrB[i15];
            }
            i11 = i12;
        }
        return zEqualsIgnoreCase ? a(bArr2) : c.a(bArr2);
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b10 : bArr) {
            stringBuffer.append(a((byte) ((b10 & 240) >> 4)));
            stringBuffer.append(a((byte) (b10 & 15)));
        }
        return stringBuffer.toString();
    }

    public static byte[] a(PublicKey publicKey, String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, publicKey);
        return cipher.doFinal(str.getBytes("UTF-8"));
    }

    public static byte[] a(byte[] bArr, String str, String str2, byte[] bArr2) throws NoSuchPaddingException, InvalidKeySpecException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        Cipher cipher = Cipher.getInstance(str2);
        SecretKey secretKeyGenerateSecret = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(str.getBytes("UTF-8")));
        if (!str2.contains("/CBC/") || bArr2 == null) {
            cipher.init(2, secretKeyGenerateSecret);
        } else {
            cipher.init(2, secretKeyGenerateSecret, new IvParameterSpec(bArr2));
        }
        return cipher.doFinal(bArr);
    }

    public static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3) throws InvalidKeySpecException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        SecretKey secretKeyGenerateSecret = SecretKeyFactory.getInstance("desede").generateSecret(new DESedeKeySpec(bArr));
        Cipher cipher = Cipher.getInstance("desede/CBC/PKCS5Padding");
        cipher.init(1, secretKeyGenerateSecret, new IvParameterSpec(bArr2));
        return cipher.doFinal(bArr3);
    }
}
