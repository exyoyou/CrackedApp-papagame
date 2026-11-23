package com.haima.hmcp.utils;

import android.util.Base64;
import android.util.Log;
import com.haima.hmcp.countly.CountlyUtil;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes5.dex */
public class CryptoUtils {
    private static final String AES = "AES";
    private static final String AES_CBC = "AES/CBC/PKCS5Padding";
    private static final int DEFAULT_AES_KEYSIZE = 128;
    private static final int DEFAULT_HMACSHA1_KEYSIZE = 160;
    private static final int DEFAULT_IVSIZE = 16;
    private static final String HMACSHA1 = "HmacSHA1";
    private static SecureRandom random = new SecureRandom();
    private static final String secretKey = "";

    private static byte[] aes(byte[] bArr, byte[] bArr2, int i10) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, AES);
            Cipher cipher = Cipher.getInstance(AES);
            cipher.init(i10, secretKeySpec);
            return cipher.doFinal(bArr);
        } catch (GeneralSecurityException e10) {
            LogUtils.e(AES, "aes : " + Log.getStackTraceString(e10));
            CountlyUtil.recordErrorEvent("CryptoUtils::aes1::" + Log.getStackTraceString(e10));
            return null;
        }
    }

    public static String aesDecrypt(byte[] bArr, byte[] bArr2) {
        byte[] bArrAes = aes(bArr, bArr2, 2);
        if (bArrAes == null) {
            return null;
        }
        return new String(bArrAes);
    }

    public static byte[] aesEncrypt(byte[] bArr, byte[] bArr2) {
        return aes(bArr, bArr2, 1);
    }

    public static String byteToHexString(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b10 : bArr) {
            String hexString = Integer.toHexString(b10);
            if (hexString.length() > 3) {
                stringBuffer.append(hexString.substring(6));
            } else if (hexString.length() < 2) {
                stringBuffer.append("0" + hexString);
            } else {
                stringBuffer.append(hexString);
            }
        }
        return stringBuffer.toString();
    }

    private static byte[] digest(byte[] bArr, String str, byte[] bArr2, int i10) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            if (bArr2 != null) {
                messageDigest.update(bArr2);
            }
            byte[] bArrDigest = messageDigest.digest(bArr);
            for (int i11 = 1; i11 < i10; i11++) {
                messageDigest.reset();
                bArrDigest = messageDigest.digest(bArrDigest);
            }
            return bArrDigest;
        } catch (GeneralSecurityException e10) {
            CountlyUtil.recordErrorEvent("CryptoUtils::digest::" + Log.getStackTraceString(e10));
            LogUtils.e(AES, "digest ：" + Log.getStackTraceString(e10));
            return null;
        }
    }

    public static byte[] generateAesKey() {
        return generateAesKey(128);
    }

    public static String generateCToken(String str, String str2, String str3, String str4, String str5, String str6) {
        try {
            return byteToHexString(sha1(aesEncrypt((str2 + str3 + str + str4 + str5).getBytes(), hexStringToByte(str6))));
        } catch (Exception e10) {
            CountlyUtil.recordErrorEvent("CryptoUtils::generateCToken::" + Log.getStackTraceString(e10));
            LogUtils.e(AES, "generateCToken : " + Log.getStackTraceString(e10));
            return null;
        }
    }

    public static byte[] generateHmacSha1Key() {
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("HmacSHA1");
            keyGenerator.init(160);
            return keyGenerator.generateKey().getEncoded();
        } catch (GeneralSecurityException e10) {
            LogUtils.e(AES, "generateHmacSha1Key : " + Log.getStackTraceString(e10));
            CountlyUtil.recordErrorEvent("CryptoUtils::generateHmacSha1Key::" + Log.getStackTraceString(e10));
            return null;
        }
    }

    public static byte[] generateIV() {
        byte[] bArr = new byte[16];
        random.nextBytes(bArr);
        return bArr;
    }

    public static String getRandomString(int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i11 = 0; i11 < i10; i11++) {
            stringBuffer.append("abcdefghijklmnopqrstuvwxyz0123456789".charAt(random.nextInt(36)));
        }
        return stringBuffer.toString();
    }

    public static byte[] hexStringToByte(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            try {
                bArr[i10] = (byte) (Integer.parseInt(str.substring(i11, i11 + 2), 16) & 255);
            } catch (Exception e10) {
                LogUtils.e(AES, "hexStringToByte : " + Log.getStackTraceString(e10));
                CountlyUtil.recordErrorEvent("CryptoUtils::hexStringToByte::" + Log.getStackTraceString(e10));
                e10.printStackTrace();
            }
        }
        return bArr;
    }

    public static byte[] hmacSha1(byte[] bArr, byte[] bArr2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "HmacSHA1");
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(secretKeySpec);
            return mac.doFinal(bArr);
        } catch (GeneralSecurityException e10) {
            LogUtils.e(AES, "hmacSha1 : " + Log.getStackTraceString(e10));
            CountlyUtil.recordErrorEvent("CryptoUtils::hmacSha1::" + Log.getStackTraceString(e10));
            return null;
        }
    }

    public static boolean isMacValid(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return Arrays.equals(bArr, hmacSha1(bArr2, bArr3));
    }

    public static final String md5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                String hexString = Integer.toHexString(b10 & 255);
                while (hexString.length() < 2) {
                    hexString = "0" + hexString;
                }
                sb2.append(hexString);
            }
            return sb2.toString();
        } catch (NoSuchAlgorithmException e10) {
            CountlyUtil.recordErrorEvent("CryptoUtils::md5::" + Log.getStackTraceString(e10));
            e10.printStackTrace();
            return str;
        }
    }

    public static byte[] sha1(byte[] bArr) {
        return digest(bArr, "SHA-1", null, 1);
    }

    public static String aesEncrypt(String str, String str2) {
        return Base64.encodeToString(aesEncrypt(str.getBytes(), str2.getBytes()), 2);
    }

    public static byte[] generateAesKey(int i10) {
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance(AES);
            keyGenerator.init(i10);
            return keyGenerator.generateKey().getEncoded();
        } catch (GeneralSecurityException e10) {
            LogUtils.e(AES, "generateAesKey : " + Log.getStackTraceString(e10));
            CountlyUtil.recordErrorEvent("CryptoUtils::generateAesKey::" + Log.getStackTraceString(e10));
            return null;
        }
    }

    public static String aesDecrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return new String(aes(bArr, bArr2, bArr3, 2));
    }

    public static byte[] aesEncrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return aes(bArr, bArr2, bArr3, 1);
    }

    private static byte[] aes(byte[] bArr, byte[] bArr2, byte[] bArr3, int i10) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, AES);
            IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr3);
            Cipher cipher = Cipher.getInstance(AES_CBC);
            cipher.init(i10, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (GeneralSecurityException e10) {
            LogUtils.e(AES, "aes : " + Log.getStackTraceString(e10));
            CountlyUtil.recordErrorEvent("CryptoUtils::aes2::" + Log.getStackTraceString(e10));
            return null;
        }
    }

    public static String generateCToken(String str, String str2) {
        try {
            return byteToHexString(sha1(aesEncrypt(str.getBytes(), hexStringToByte(str2))));
        } catch (Exception e10) {
            CountlyUtil.recordErrorEvent("CryptoUtils::generateCToken::" + Log.getStackTraceString(e10));
            LogUtils.e(AES, "generateCToken : " + Log.getStackTraceString(e10));
            return null;
        }
    }
}
