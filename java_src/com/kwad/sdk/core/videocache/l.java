package com.kwad.sdk.core.videocache;

import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.kwad.sdk.utils.az;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

/* JADX INFO: loaded from: classes2.dex */
public final class l {
    static void b(byte[] bArr, long j10, int i10) {
        az.g(bArr, "Buffer must be not null!");
        az.checkArgument(j10 >= 0, "Data offset must be positive!");
        az.checkArgument(i10 >= 0 && i10 <= bArr.length, "Length must be in range [0..buffer.length]");
    }

    static String decode(String str) {
        try {
            return URLDecoder.decode(str, "utf-8");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("Error decoding url", e10);
        }
    }

    static String encode(String str) {
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("Error encoding url", e10);
        }
    }

    static String fE(String str) {
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if (TextUtils.isEmpty(fileExtensionFromUrl)) {
            return null;
        }
        return singleton.getMimeTypeFromExtension(fileExtensionFromUrl);
    }
}
