package com.kwad.sdk.utils.a;

import java.io.Closeable;
import java.io.File;
import java.io.RandomAccessFile;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.SecureRandom;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
final class h {

    static class a {
        static final SecureRandom bsF = new SecureRandom();
        static final char[] bsG = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    }

    static String XE() {
        byte[] bArr = new byte[16];
        a.bsF.nextBytes(bArr);
        char[] cArr = new char[32];
        for (int i10 = 0; i10 < 16; i10++) {
            byte b10 = bArr[i10];
            int i11 = i10 << 1;
            char[] cArr2 = a.bsG;
            cArr[i11] = cArr2[(b10 >> 4) & 15];
            cArr[i11 + 1] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    static int XF() {
        try {
            Field declaredField = Unsafe.class.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            Method declaredMethod = Unsafe.class.getDeclaredMethod("pageSize", new Class[0]);
            declaredMethod.setAccessible(true);
            return ((Integer) declaredMethod.invoke(declaredField.get(null), new Object[0])).intValue();
        } catch (Throwable unused) {
            return 4096;
        }
    }

    static void a(File file, byte[] bArr, int i10) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, net.lingala.zip4j.util.e.f94694e0);
        int i11 = 0;
        while (i11 < i10) {
            try {
                int i12 = randomAccessFile.read(bArr, i11, i10 - i11);
                if (i12 < 0) {
                    break;
                } else {
                    i11 += i12;
                }
            } finally {
                closeQuietly(randomAccessFile);
            }
        }
    }

    static boolean ag(File file) {
        if (file.isFile()) {
            return true;
        }
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            return (parentFile.isDirectory() || parentFile.mkdirs()) && file.createNewFile();
        }
        return false;
    }

    static byte[] ah(File file) {
        if (!file.isFile()) {
            return null;
        }
        long length = file.length();
        if ((length >> 32) != 0) {
            throw new IllegalArgumentException("file too large, path:" + file.getPath());
        }
        int i10 = (int) length;
        byte[] bArr = new byte[i10];
        a(file, bArr, i10);
        return bArr;
    }

    private static void ai(File file) {
        File[] fileArrListFiles;
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                ai(file2);
            }
        }
        file.delete();
    }

    static int binarySearch(int[] iArr, int i10) {
        int length = (iArr.length >> 1) - 1;
        int i11 = 0;
        while (i11 <= length) {
            int i12 = (i11 + length) >>> 1;
            int i13 = iArr[i12 << 1];
            if (i13 < i10) {
                i11 = i12 + 1;
            } else {
                if (i13 <= i10) {
                    return i12;
                }
                length = i12 - 1;
            }
        }
        return length;
    }

    static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    static void h(File file) {
        try {
            if (file.exists()) {
                ai(file);
            }
        } catch (Exception unused) {
        }
    }

    static boolean a(File file, byte[] bArr) {
        try {
            File file2 = new File(file.getParent(), file.getName() + ".tmp");
            if (!ag(file2)) {
                return false;
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(file2, net.lingala.zip4j.util.e.f94694e0);
            try {
                randomAccessFile.setLength(bArr.length);
                randomAccessFile.write(bArr);
                closeQuietly(randomAccessFile);
                if (!file.exists() || file.delete()) {
                    return file2.renameTo(file);
                }
            } catch (Throwable th) {
                closeQuietly(randomAccessFile);
                throw th;
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
