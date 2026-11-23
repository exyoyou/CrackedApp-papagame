package com.join.mgps.Util;

import com.papa91.pay.core.PapaCore;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes4.dex */
public class AESUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f49369a = "AESUtils";

    public static String a(byte[] src) {
        StringBuilder sb2 = new StringBuilder("");
        if (src == null || src.length <= 0) {
            return null;
        }
        for (byte b10 : src) {
            String hexString = Integer.toHexString(b10 & 255);
            if (hexString.length() < 2) {
                sb2.append(0);
            }
            sb2.append(hexString);
        }
        return sb2.toString();
    }

    private static byte b(char c10) {
        return (byte) net.lingala.zip4j.crypto.PBKDF2.a.f94571a.indexOf(c10);
    }

    public static String c(String data) {
        try {
            byte[] bArrG = g(data.toLowerCase());
            Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding");
            SecretKeySpec secretKeySpec = new SecretKeySpec("625202f9149e061d".getBytes(), "AES");
            new IvParameterSpec("5efd3f6060e20330".getBytes());
            cipher.init(2, secretKeySpec);
            return new String(cipher.doFinal(bArrG));
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String d(String data) {
        try {
            Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding");
            int blockSize = cipher.getBlockSize();
            byte[] bytes = data.getBytes();
            int length = bytes.length;
            if (length % blockSize != 0) {
                length += blockSize - (length % blockSize);
            }
            byte[] bArr = new byte[length];
            System.arraycopy(bytes, 0, bArr, 0, bytes.length);
            SecretKeySpec secretKeySpec = new SecretKeySpec("625202f9149e061d".getBytes(), "AES");
            new IvParameterSpec("5efd3f6060e20330".getBytes());
            cipher.init(1, secretKeySpec);
            return a(cipher.doFinal(bArr));
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static String decrypt(String encrypted) {
        if (t2.h(encrypted)) {
            return "";
        }
        g1.d("appcrypt5", encrypted);
        if (!encrypted.contains("#isEncrypted#")) {
            return encrypted;
        }
        try {
            byte[] bArrNativeDecrypt = PapaCore.nativeDecrypt(p.a(encrypted.replace("#isEncrypted#", "")));
            g1.d("appcrypt7", new String(bArrNativeDecrypt));
            return new String(p.a(new String(bArrNativeDecrypt)));
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static byte[] decryptBuf(String encrypted) {
        if (t2.h(encrypted)) {
            return new byte[0];
        }
        g1.d("appcrypt5", encrypted);
        if (!encrypted.contains("#isEncrypted#")) {
            return new byte[0];
        }
        try {
            byte[] bArrNativeDecrypt = PapaCore.nativeDecrypt(p.a(encrypted.replace("#isEncrypted#", "")));
            g1.d("appcrypt7", new String(bArrNativeDecrypt));
            return p.a(new String(bArrNativeDecrypt));
        } catch (Exception e10) {
            e10.printStackTrace();
            return new byte[0];
        }
    }

    public static String e(byte[] clearText) {
        String str;
        String strB = "";
        if (clearText == null || clearText.length == 0) {
            return "";
        }
        try {
            strB = p.b(PapaCore.nativeEncrypt(p.b(clearText).getBytes()));
            str = strB + "#isEncrypted#";
        } catch (Exception e10) {
            e10.printStackTrace();
            str = strB;
        }
        g1.d("appcrypt4", str);
        return str;
    }

    public static String encrypt(String clearText) {
        return t2.h(clearText) ? "" : e(clearText.getBytes());
    }

    public static String f(String data) {
        try {
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS7Padding");
            cipher.init(1, new SecretKeySpec("625202f9149e061d".getBytes(), "AES"));
            return a(cipher.doFinal(data.getBytes())).toUpperCase();
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static byte[] g(String hexString) {
        if (hexString == null || hexString.equals("")) {
            return null;
        }
        String upperCase = hexString.toUpperCase();
        int length = upperCase.length() / 2;
        char[] charArray = upperCase.toCharArray();
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = (byte) (b(charArray[i11 + 1]) | (b(charArray[i11]) << 4));
        }
        return bArr;
    }
}
