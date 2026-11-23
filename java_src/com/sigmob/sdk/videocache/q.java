package com.sigmob.sdk.videocache;

import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.czhj.sdk.logger.SigmobLog;
import java.io.Closeable;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f81976a = 8192;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final int f81977b = 16;

    static String a(String url) {
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(url);
        if (TextUtils.isEmpty(fileExtensionFromUrl)) {
            return null;
        }
        return singleton.getMimeTypeFromExtension(fileExtensionFromUrl);
    }

    static String b(String url) {
        try {
            return URLEncoder.encode(url, "utf-8");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("Error encoding url", e10);
        }
    }

    static String c(String url) {
        try {
            return URLDecoder.decode(url, "utf-8");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("Error decoding url", e10);
        }
    }

    public static String d(String string) {
        try {
            return a(MessageDigest.getInstance("MD5").digest(string.getBytes()));
        } catch (NoSuchAlgorithmException e10) {
            throw new IllegalStateException(e10);
        }
    }

    private static String a(byte[] bytes) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b10 : bytes) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(b10)));
        }
        return stringBuffer.toString();
    }

    static String a(byte[] data, int length) {
        int iMin = Math.min(16, Math.max(length, 0));
        String string = Arrays.toString(Arrays.copyOfRange(data, 0, iMin));
        if (iMin >= length) {
            return string;
        }
        return string.substring(0, string.length() - 1) + ", ...]";
    }

    static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e10) {
                SigmobLog.e("Error closing resource", e10);
            }
        }
    }

    static void a(byte[] buffer, long offset, int length) {
        n.a(buffer, "Buffer must be not null!");
        n.a(offset >= 0, "Data offset must be positive!");
        n.a(length >= 0 && length <= buffer.length, "Length must be in range [0..buffer.length]");
    }
}
