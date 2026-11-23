package com.papa91.arc.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DigestUtils {
    private static final char[] HEX_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final String MD5_ALGORITHM_NAME = "MD5";

    private static StringBuilder appendDigestAsHex(String str, byte[] bArr, StringBuilder sb2) {
        sb2.append(digestAsHexChars(str, bArr));
        return sb2;
    }

    public static StringBuilder appendMd5DigestAsHex(byte[] bArr, StringBuilder sb2) {
        return appendDigestAsHex("MD5", bArr, sb2);
    }

    private static byte[] digest(String str, byte[] bArr) {
        return getDigest(str).digest(bArr);
    }

    private static char[] digestAsHexChars(String str, byte[] bArr) {
        return encodeHex(digest(str, bArr));
    }

    private static String digestAsHexString(String str, byte[] bArr) {
        return new String(digestAsHexChars(str, bArr));
    }

    private static char[] encodeHex(byte[] bArr) {
        char[] cArr = new char[32];
        for (int i10 = 0; i10 < 32; i10 += 2) {
            byte b10 = bArr[i10 / 2];
            char[] cArr2 = HEX_CHARS;
            cArr[i10] = cArr2[(b10 >>> 4) & 15];
            cArr[i10 + 1] = cArr2[b10 & 15];
        }
        return cArr;
    }

    private static MessageDigest getDigest(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (NoSuchAlgorithmException e10) {
            throw new IllegalStateException("Could not find MessageDigest with algorithm \"" + str + x.a.f97579g, e10);
        }
    }

    public static byte[] md5Digest(byte[] bArr) {
        return digest("MD5", bArr);
    }

    public static String md5DigestAsHex(byte[] bArr) {
        return digestAsHexString("MD5", bArr);
    }
}
