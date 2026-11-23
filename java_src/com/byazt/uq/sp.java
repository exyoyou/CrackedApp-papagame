package com.byazt.uq;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1759, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f20947c = null;
    public static String tt = null;
    public static int ve = 8192;

    public static void c(String str) {
        c(new File(str));
    }

    public static String tt(Context context) {
        File parentFile;
        if (tt == null && (parentFile = context.getCacheDir().getParentFile()) != null) {
            try {
                tt = parentFile.getCanonicalPath();
            } catch (IOException e10) {
                com.byazt.bog.a.c(e10);
            }
        }
        return tt;
    }

    public static void c(File file) {
        File[] fileArrListFiles;
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                c(file2);
            }
        }
        file.delete();
    }

    public static void tt(String str, String str2) throws Exception {
        ZipInputStream zipInputStream;
        BufferedOutputStream bufferedOutputStream = null;
        try {
            zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(str)));
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry != null) {
                        String name = nextEntry.getName();
                        if (!name.contains("..")) {
                            if (nextEntry.isDirectory()) {
                                new File(str2 + File.separator + name).mkdirs();
                            } else {
                                File file = new File(str2 + File.separator + name);
                                if (file.exists()) {
                                    file.delete();
                                } else {
                                    file.getParentFile().mkdirs();
                                }
                                file.createNewFile();
                                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file));
                                try {
                                    byte[] bArr = new byte[2048];
                                    while (true) {
                                        int i10 = zipInputStream.read(bArr);
                                        if (i10 == -1) {
                                            break;
                                        } else {
                                            bufferedOutputStream2.write(bArr, 0, i10);
                                        }
                                    }
                                    bufferedOutputStream2.flush();
                                    bufferedOutputStream2.close();
                                    bufferedOutputStream = bufferedOutputStream2;
                                } catch (Exception e10) {
                                    e = e10;
                                    bufferedOutputStream = bufferedOutputStream2;
                                }
                            }
                        }
                    } else {
                        zipInputStream.close();
                        return;
                    }
                } catch (Exception e11) {
                    e = e11;
                }
                c(bufferedOutputStream);
                c(zipInputStream);
                throw e;
            }
        } catch (Exception e12) {
            e = e12;
            zipInputStream = null;
        }
    }

    public static void c(InputStream inputStream, OutputStream outputStream) throws IOException {
        c(inputStream, outputStream, 0L, 1048576);
    }

    private static void c(InputStream inputStream, OutputStream outputStream, long j10, int i10) throws IOException {
        if (inputStream == null || outputStream == null) {
            return;
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
        try {
            byte[] bArr = new byte[i10];
            int i11 = 0;
            while (true) {
                int i12 = bufferedInputStream.read(bArr);
                if (i12 == -1) {
                    break;
                }
                bufferedOutputStream.write(bArr, 0, i12);
                i11 += i12;
            }
            bufferedOutputStream.flush();
            if (j10 > 0 && i11 != j10) {
                throw new IOException("copy is not completed");
            }
        } finally {
            bufferedInputStream.close();
            bufferedOutputStream.close();
        }
    }

    public static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void c(ZipFile zipFile) {
        if (zipFile != null) {
            try {
                zipFile.close();
            } catch (IOException unused) {
            }
        }
    }

    public static String c(Context context) {
        File parentFile;
        if (f20947c == null && (parentFile = context.getCacheDir().getParentFile()) != null) {
            f20947c = parentFile.getAbsolutePath();
        }
        return f20947c;
    }

    public static void c(String str, String str2) throws Exception {
        File file = new File(str);
        File file2 = new File(str2);
        if (file.exists()) {
            if (file.isDirectory()) {
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                if (file2.isDirectory()) {
                    File[] fileArrListFiles = file.listFiles();
                    if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                        return;
                    }
                    for (File file3 : fileArrListFiles) {
                        String str3 = file2 + File.separator + file3.getName();
                        if (file3.isDirectory()) {
                            c(file3.getAbsolutePath(), str3);
                        } else if (!new File(str3).exists()) {
                            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file3));
                            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str3));
                            byte[] bArr = new byte[ve];
                            while (true) {
                                int i10 = bufferedInputStream.read(bArr);
                                if (i10 == -1) {
                                    break;
                                } else {
                                    bufferedOutputStream.write(bArr, 0, i10);
                                }
                            }
                            bufferedOutputStream.close();
                            bufferedInputStream.close();
                        }
                    }
                    return;
                }
                throw new Exception("目标文件夹不是目录");
            }
            throw new Exception("源文件夹不是目录");
        }
        throw new Exception("文件夹不存在");
    }

    public static boolean tt(File file) {
        FileInputStream fileInputStream = null;
        if (file == null) {
            c((Closeable) null);
            return false;
        }
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                byte[] bArr = new byte[6];
                if (fileInputStream2.read(bArr) != 6) {
                    c(fileInputStream2);
                    return false;
                }
                byte[] bArr2 = {80, 75, 3, 4};
                for (int i10 = 0; i10 < 4; i10++) {
                    if (bArr2[i10] != bArr[i10]) {
                        c(fileInputStream2);
                        return false;
                    }
                }
                byte b10 = bArr[4];
                if (b10 == 0 && bArr[5] == 0) {
                    c(fileInputStream2);
                    return false;
                }
                if (b10 == 20 && bArr[5] == 3) {
                    c(fileInputStream2);
                    return true;
                }
                c(fileInputStream2);
                return false;
            } catch (Throwable unused) {
                fileInputStream = fileInputStream2;
                c(fileInputStream);
                return false;
            }
        } catch (Throwable unused2) {
        }
    }

    public static void c(RandomAccessFile randomAccessFile, RandomAccessFile randomAccessFile2, long j10, long j11, String str) throws IOException {
        byte[] bArr;
        long j12 = 0;
        if (j10 < 0 || j11 < 0 || j10 > j11) {
            throw new IOException("invalid offsets  ".concat(String.valueOf(str)));
        }
        if (j10 == j11) {
            return;
        }
        randomAccessFile.seek(j10);
        long j13 = j11 - j10;
        int i10 = ve;
        if (j13 < i10) {
            bArr = new byte[(int) j13];
        } else {
            bArr = new byte[i10];
        }
        while (true) {
            int i11 = randomAccessFile.read(bArr);
            if (i11 == -1) {
                return;
            }
            randomAccessFile2.write(bArr, 0, i11);
            j12 += (long) i11;
            if (j12 == j13) {
                return;
            }
            if (((long) bArr.length) + j12 > j13) {
                bArr = new byte[(int) (j13 - j12)];
            }
        }
    }
}
