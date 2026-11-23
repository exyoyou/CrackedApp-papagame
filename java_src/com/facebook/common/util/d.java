package com.facebook.common.util;

import android.util.Base64;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final byte[] f26945a = {com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.I, com.sigmob.sdk.archives.tar.e.J, com.sigmob.sdk.archives.tar.e.K, com.sigmob.sdk.archives.tar.e.L, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.N, com.sigmob.sdk.archives.tar.e.O, 56, 57, 97, 98, 99, 100, 101, 102};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f26946b = 4096;

    public static String a(byte[] raw) throws UnsupportedEncodingException {
        StringBuilder sb2 = new StringBuilder(raw.length);
        for (byte b10 : raw) {
            int i10 = b10 & 255;
            byte[] bArr = f26945a;
            sb2.append((char) bArr[i10 >>> 4]);
            sb2.append((char) bArr[i10 & 15]);
        }
        return sb2.toString();
    }

    private static String b(InputStream stream, String algorithm) throws IOException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
            byte[] bArr = new byte[4096];
            while (true) {
                int i10 = stream.read(bArr);
                if (i10 <= 0) {
                    return a(messageDigest.digest());
                }
                messageDigest.update(bArr, 0, i10);
            }
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new RuntimeException(e11);
        }
    }

    private static String c(byte[] bytes, String algorithm) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
            messageDigest.update(bytes, 0, bytes.length);
            return a(messageDigest.digest());
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new RuntimeException(e11);
        }
    }

    public static String d(InputStream stream) throws IOException {
        return b(stream, "MD5");
    }

    public static String e(String text) {
        try {
            return f(text.getBytes("utf-8"));
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static String f(byte[] bytes) {
        return c(bytes, "MD5");
    }

    public static String g(String text) {
        try {
            return h(text.getBytes("utf-8"));
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static String h(byte[] bytes) {
        return c(bytes, "SHA-1");
    }

    public static String i(byte[] bytes) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(bytes, 0, bytes.length);
            return Base64.encodeToString(messageDigest.digest(), 11);
        } catch (NoSuchAlgorithmException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static String j(byte[] bytes) {
        return c(bytes, "SHA-256");
    }
}
