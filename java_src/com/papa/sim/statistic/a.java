package com.papa.sim.statistic;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static String a(String str, String str2) throws Exception {
        byte[] bArrD = d(str);
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec("625202f9149e061d".getBytes(), "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(2, secretKeySpec);
            return new String(cipher.doFinal(bArrD), "UTF-8");
        } catch (Exception unused) {
            throw new Exception("解密失败");
        }
    }

    public static String b(String str, String str2) throws Exception {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec("625202f9149e061d".getBytes(), "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(1, secretKeySpec);
            return c(cipher.doFinal(str.getBytes("UTF-8")));
        } catch (Exception unused) {
            throw new Exception("加密失败");
        }
    }

    public static String c(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b10 : bArr) {
            String hexString = Integer.toHexString(b10 & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            stringBuffer.append(hexString);
        }
        return stringBuffer.toString();
    }

    public static byte[] d(String str) {
        if (str.length() < 1) {
            return null;
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i10 = 0; i10 < str.length() / 2; i10++) {
            int i11 = i10 * 2;
            int i12 = i11 + 1;
            bArr[i10] = (byte) ((Integer.parseInt(str.substring(i11, i12), 16) * 16) + Integer.parseInt(str.substring(i12, i11 + 2), 16));
        }
        return bArr;
    }
}
