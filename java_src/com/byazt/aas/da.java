package com.byazt.aas;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 72})
public class da {
    public static byte[] c(byte[] bArr) {
        byte[] byteArray = null;
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            byte[] bArr2 = new byte[4096];
            while (true) {
                int i10 = byteArrayInputStream.read(bArr2, 0, 4096);
                if (i10 <= 0) {
                    gZIPOutputStream.close();
                    byteArrayInputStream.close();
                    byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return byteArray;
                }
                gZIPOutputStream.write(bArr2, 0, i10);
            }
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
            return byteArray;
        }
    }

    public static String tt(byte[] bArr) {
        GZIPInputStream gZIPInputStream;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            try {
                byte[] bArr2 = new byte[4096];
                while (true) {
                    int i10 = gZIPInputStream.read(bArr2);
                    if (i10 < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr2, 0, i10);
                }
                String str = new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8);
                try {
                    byteArrayInputStream.close();
                    byteArrayOutputStream.close();
                    gZIPInputStream.close();
                } catch (Throwable th) {
                    com.byazt.nr.m.c(th);
                }
                return str;
            } catch (Throwable th2) {
                th = th2;
                try {
                    com.byazt.nr.m.uj("gzip compress error.", th.getMessage());
                    try {
                    } catch (Throwable th3) {
                        return null;
                    }
                } finally {
                    try {
                        byteArrayInputStream.close();
                        byteArrayOutputStream.close();
                        if (gZIPInputStream != null) {
                            gZIPInputStream.close();
                        }
                    } catch (Throwable th4) {
                        com.byazt.nr.m.c(th4);
                    }
                }
            }
        } catch (Throwable th5) {
            th = th5;
            gZIPInputStream = null;
        }
    }
}
