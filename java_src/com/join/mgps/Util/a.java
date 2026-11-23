package com.join.mgps.Util;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    public static String a(String content, String keyWord) throws Exception {
        byte[] bArrH = h(content);
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec("625202f9149e061d".getBytes(), "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(2, secretKeySpec);
            return new String(cipher.doFinal(bArrH), "UTF-8");
        } catch (Exception unused) {
            throw new Exception("解密失败");
        }
    }

    public static String b(String content) throws Exception {
        return c(content, "625202f9149e061d");
    }

    public static String c(String content, String keyWord) throws Exception {
        try {
            byte[] bArrH = h(content);
            SecretKeySpec secretKeySpec = new SecretKeySpec(keyWord.getBytes(), "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(2, secretKeySpec);
            return new String(cipher.doFinal(bArrH), "UTF-8");
        } catch (Exception unused) {
            throw new Exception("解密失败");
        }
    }

    public static String d(String content, String keyWord) throws Exception {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec("625202f9149e061d".getBytes(), "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(1, secretKeySpec);
            return g(cipher.doFinal(content.getBytes("UTF-8")));
        } catch (Exception unused) {
            throw new Exception("加密失败");
        }
    }

    public static String e(String content) throws Exception {
        return f(content, "625202f9149e061d");
    }

    public static String f(String content, String keyWord) throws Exception {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(keyWord.getBytes(), "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(1, secretKeySpec);
            return g(cipher.doFinal(content.getBytes("UTF-8")));
        } catch (Exception unused) {
            throw new Exception("加密失败");
        }
    }

    public static String g(byte[] buf) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b10 : buf) {
            String hexString = Integer.toHexString(b10 & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            stringBuffer.append(hexString);
        }
        return stringBuffer.toString();
    }

    public static byte[] h(String hexStr) {
        if (hexStr.length() < 1) {
            return null;
        }
        byte[] bArr = new byte[hexStr.length() / 2];
        for (int i10 = 0; i10 < hexStr.length() / 2; i10++) {
            int i11 = i10 * 2;
            int i12 = i11 + 1;
            bArr[i10] = (byte) ((Integer.parseInt(hexStr.substring(i11, i12), 16) * 16) + Integer.parseInt(hexStr.substring(i12, i11 + 2), 16));
        }
        return bArr;
    }
}
