package com.tencent.cos.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public class FileUtils {
    public static void closeFileStream(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public static void delete(String str) {
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            file.delete();
        }
    }

    public static String getFileContent(String str) throws Exception {
        return getFileContent(str, 0L, Long.valueOf(getFileLength(str)).intValue());
    }

    public static byte[] getFileContentByte(InputStream inputStream, long j10, int i10) throws Exception {
        if (j10 < 0 || i10 < 0) {
            throw new Exception("getFileContent param error");
        }
        byte[] bArr = new byte[i10];
        inputStream.skip(j10);
        int i11 = inputStream.read(bArr);
        if (i11 < 0) {
            return new byte[0];
        }
        if (i11 >= i10) {
            return bArr;
        }
        byte[] bArr2 = new byte[i11];
        System.arraycopy(bArr, 0, bArr2, 0, i11);
        return bArr2;
    }

    public static FileInputStream getFileInputStream(String str) throws Exception {
        return new FileInputStream(str);
    }

    public static long getFileLength(String str) throws Exception {
        if (isLegalFile(str)) {
            return new File(str).length();
        }
        throw new IllegalArgumentException("文件不存在、或不可读、或者是一个目录");
    }

    public static String getFileName(String str) {
        File file = new File(str);
        if (file.exists() && !file.isDirectory() && file.canRead()) {
            return file.getName();
        }
        return null;
    }

    public static boolean isLegalFile(String str) {
        File file = new File(str);
        return file.exists() && !file.isDirectory() && file.canRead();
    }

    public static String getFileContent(String str, long j10, int i10) throws Exception {
        FileInputStream fileInputStream;
        try {
            fileInputStream = getFileInputStream(str);
            try {
                String fileContent = getFileContent(fileInputStream, j10, i10);
                closeFileStream(fileInputStream);
                return fileContent;
            } catch (Throwable th) {
                th = th;
                closeFileStream(fileInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
    }

    public static String getFileContent(InputStream inputStream, long j10, int i10) throws Exception {
        return new String(getFileContentByte(inputStream, j10, i10), Charset.forName("ISO-8859-1"));
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x004b: MOVE (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:38:0x004b */
    public static byte[] getFileContentByte(String str, long j10, int i10) throws Throwable {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2;
        RandomAccessFile randomAccessFile3 = null;
        bArr = null;
        byte[] bArr = null;
        try {
            try {
                try {
                    byte[] bArr2 = new byte[i10];
                    randomAccessFile2 = new RandomAccessFile(str, "r");
                    try {
                        randomAccessFile2.seek(j10);
                        int i11 = randomAccessFile2.read(bArr2, 0, i10);
                        if (i11 == i10) {
                            bArr = bArr2;
                        } else if (i11 < i10 && i11 > 0) {
                            byte[] bArr3 = new byte[i11];
                            System.arraycopy(bArr2, 0, bArr3, 0, i11);
                            bArr = bArr3;
                        }
                        try {
                            randomAccessFile2.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                        return bArr;
                    } catch (FileNotFoundException e11) {
                        e = e11;
                        e.printStackTrace();
                        if (randomAccessFile2 != null) {
                            randomAccessFile2.close();
                        }
                        return null;
                    } catch (IOException e12) {
                        e = e12;
                        e.printStackTrace();
                        if (randomAccessFile2 != null) {
                            randomAccessFile2.close();
                        }
                        return null;
                    }
                } catch (IOException e13) {
                    e13.printStackTrace();
                    return null;
                }
            } catch (FileNotFoundException e14) {
                e = e14;
                randomAccessFile2 = null;
            } catch (IOException e15) {
                e = e15;
                randomAccessFile2 = null;
            } catch (Throwable th) {
                th = th;
                if (randomAccessFile3 != null) {
                    try {
                        randomAccessFile3.close();
                    } catch (IOException e16) {
                        e16.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile3 = randomAccessFile;
        }
    }
}
