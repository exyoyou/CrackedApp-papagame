package com.byazt.vx;

import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 962, 195})
public class gt {
    public static final MessageDigest tt = c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Charset f21407c = Charset.forName("UTF-8");
    public static final char[] ve = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private gt() {
    }

    private static MessageDigest c() {
        try {
            return MessageDigest.getInstance(TKDownloadReason.KSAD_TK_MD5);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public static String c(String str) {
        byte[] bArrDigest;
        MessageDigest messageDigest = tt;
        if (str == null) {
            return "";
        }
        byte[] bytes = str.getBytes(f21407c);
        synchronized (gt.class) {
            bArrDigest = messageDigest.digest(bytes);
        }
        return c(bArrDigest);
    }

    public static String c(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[bArr.length << 1];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            char[] cArr2 = ve;
            cArr[i10] = cArr2[(b10 & 240) >> 4];
            i10 = i11 + 1;
            cArr[i11] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }
}
