package com.byazt.lt;

import android.text.TextUtils;
import com.byazt.nr.m;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.io.File;
import java.io.FileInputStream;
import java.nio.charset.Charset;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 438, 20})
public final class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final char[] f16773c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private c() {
    }

    private static MessageDigest c() {
        try {
            return MessageDigest.getInstance(TKDownloadReason.KSAD_TK_MD5);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public static boolean c(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.equalsIgnoreCase(str2);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x006a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static String c(File file) throws Throwable {
        Throwable th;
        DigestInputStream digestInputStream;
        try {
            digestInputStream = new DigestInputStream(new FileInputStream(file), c());
            try {
                try {
                    while (digestInputStream.read(new byte[8192]) != -1) {
                    }
                    byte[] bArrDigest = digestInputStream.getMessageDigest().digest();
                    StringBuilder sb2 = new StringBuilder();
                    for (byte b10 : bArrDigest) {
                        sb2.append(String.format("%02x", Byte.valueOf(b10)));
                    }
                    String string = sb2.toString();
                    try {
                        digestInputStream.close();
                    } catch (Exception e10) {
                        m.c(e10);
                    }
                    return string;
                } catch (Exception e11) {
                    e = e11;
                    e.getMessage();
                    if (digestInputStream != null) {
                        try {
                            digestInputStream.close();
                        } catch (Exception e12) {
                            m.c(e12);
                        }
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                if (digestInputStream != null) {
                    try {
                        digestInputStream.close();
                    } catch (Exception e13) {
                        m.c(e13);
                    }
                }
                throw th;
            }
        } catch (Exception e14) {
            e = e14;
            digestInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            digestInputStream = null;
            if (digestInputStream != null) {
                digestInputStream.close();
            }
            throw th;
        }
    }

    public static String c(String str) {
        byte[] bArrDigest;
        MessageDigest messageDigestC = c();
        if (messageDigestC == null || TextUtils.isEmpty(str)) {
            return "";
        }
        byte[] bytes = str.getBytes(Charset.forName("UTF-8"));
        synchronized (c.class) {
            bArrDigest = messageDigestC.digest(bytes);
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
            char[] cArr2 = f16773c;
            cArr[i10] = cArr2[(b10 & 240) >> 4];
            i10 = i11 + 1;
            cArr[i11] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }
}
