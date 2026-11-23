package com.android.dex.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public final class FileUtils {
    private FileUtils() {
    }

    public static boolean hasArchiveSuffix(String str) {
        return str.endsWith(".zip") || str.endsWith(".jar") || str.endsWith(".apk");
    }

    public static byte[] readFile(String str) {
        return readFile(new File(str));
    }

    public static byte[] readFile(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                if (file.canRead()) {
                    long length = file.length();
                    int i10 = (int) length;
                    if (i10 == length) {
                        byte[] bArr = new byte[i10];
                        try {
                            FileInputStream fileInputStream = new FileInputStream(file);
                            int i11 = 0;
                            while (i10 > 0) {
                                int i12 = fileInputStream.read(bArr, i11, i10);
                                if (i12 == -1) {
                                    throw new RuntimeException(file + ": unexpected EOF");
                                }
                                i11 += i12;
                                i10 -= i12;
                            }
                            fileInputStream.close();
                            return bArr;
                        } catch (IOException e10) {
                            throw new RuntimeException(file + ": trouble reading", e10);
                        }
                    }
                    throw new RuntimeException(file + ": file too long");
                }
                throw new RuntimeException(file + ": file not readable");
            }
            throw new RuntimeException(file + ": not a file");
        }
        throw new RuntimeException(file + ": file not found");
    }
}
