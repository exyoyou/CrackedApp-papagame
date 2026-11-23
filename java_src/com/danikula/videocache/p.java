package com.danikula.videocache;

import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.io.Closeable;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f26098a = 8192;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final int f26099b = 16;

    static void a(byte[] bArr, long j10, int i10) {
        n.e(bArr, "Buffer must be not null!");
        n.c(j10 >= 0, "Data offset must be positive!");
        n.c(i10 >= 0 && i10 <= bArr.length, "Length must be in range [0..buffer.length]");
    }

    private static String b(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b10 : bArr) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(b10)));
        }
        return stringBuffer.toString();
    }

    static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e10) {
                h.f("Error closing resource", e10);
            }
        }
    }

    public static String d(String str) {
        try {
            return b(MessageDigest.getInstance("MD5").digest(str.getBytes()));
        } catch (NoSuchAlgorithmException e10) {
            throw new IllegalStateException(e10);
        }
    }

    static String e(String str) {
        try {
            return URLDecoder.decode(str, "utf-8");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("Error decoding url", e10);
        }
    }

    static String f(String str) {
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("Error encoding url", e10);
        }
    }

    static String g(String str) {
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if (TextUtils.isEmpty(fileExtensionFromUrl)) {
            return null;
        }
        return singleton.getMimeTypeFromExtension(fileExtensionFromUrl);
    }

    static String h(byte[] bArr, int i10) {
        int iMin = Math.min(16, Math.max(i10, 0));
        String string = Arrays.toString(Arrays.copyOfRange(bArr, 0, iMin));
        if (iMin >= i10) {
            return string;
        }
        return string.substring(0, string.length() - 1) + ", ...]";
    }
}
