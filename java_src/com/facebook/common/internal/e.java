package com.facebook.common.internal;

import com.facebook.infer.annotation.Nullsafe;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class e {
    private e() {
    }

    static byte[] a(InputStream in2, long expectedSize) throws IOException {
        if (expectedSize <= 2147483647L) {
            return expectedSize == 0 ? b.d(in2) : b.e(in2, (int) expectedSize);
        }
        throw new OutOfMemoryError("file is too large to fit in a byte array: " + expectedSize + " bytes");
    }

    public static byte[] b(File file) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                byte[] bArrA = a(fileInputStream2, fileInputStream2.getChannel().size());
                fileInputStream2.close();
                return bArrA;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
