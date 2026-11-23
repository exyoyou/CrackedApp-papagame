package com.kwad.sdk.api.loader;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
final class y {
    private static final char[] HEX_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    static String getFileMD5(File file) throws Throwable {
        Throwable th;
        DigestInputStream digestInputStream;
        Exception e10;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            digestInputStream = new DigestInputStream(new FileInputStream(file), messageDigest);
            try {
                try {
                    byte[] bArr = new byte[1024];
                    for (int i10 = digestInputStream.read(bArr); i10 != -1; i10 = digestInputStream.read(bArr)) {
                    }
                    byte[] bArrDigest = messageDigest.digest();
                    StringBuilder sb2 = new StringBuilder(bArrDigest.length * 2);
                    for (byte b10 : bArrDigest) {
                        int i11 = b10 & 255;
                        if (i11 < 16) {
                            sb2.append("0");
                        }
                        sb2.append(Integer.toHexString(i11));
                    }
                    String string = sb2.toString();
                    b(digestInputStream);
                    return string;
                } catch (Exception e11) {
                    e10 = e11;
                    e10.printStackTrace();
                    b(digestInputStream);
                    return "";
                }
            } catch (Throwable th2) {
                th = th2;
                b(digestInputStream);
                throw th;
            }
        } catch (Exception e12) {
            e10 = e12;
            digestInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            digestInputStream = null;
            b(digestInputStream);
            throw th;
        }
    }
}
