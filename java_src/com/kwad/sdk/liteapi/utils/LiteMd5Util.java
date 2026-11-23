package com.kwad.sdk.liteapi.utils;

import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.kwad.sdk.liteapi.LiteApiLogger;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.RandomAccessFile;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class LiteMd5Util {
    static final char[] HEX_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String getFileMD5Digest(File file) throws Throwable {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        if (file == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            fileInputStream = new FileInputStream(file);
            try {
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i10 = fileInputStream.read(bArr);
                        if (i10 == -1) {
                            String hexString = toHexString(messageDigest.digest());
                            LiteCloseableUtil.closeQuietly(fileInputStream);
                            return hexString;
                        }
                        messageDigest.update(bArr, 0, i10);
                        th = th;
                        fileInputStream2 = fileInputStream;
                        LiteCloseableUtil.closeQuietly(fileInputStream2);
                        throw th;
                    }
                } catch (Exception e10) {
                    e = e10;
                    LiteApiLogger.printStackTraceOnly(e);
                    LiteCloseableUtil.closeQuietly(fileInputStream);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
            }
        } catch (Exception e11) {
            e = e11;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0024  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [long] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v2 */
    public static String getPartOfFileMD5Digest(String str, long j10, long j11) throws Throwable {
        RandomAccessFile randomAccessFile;
        int i10;
        File file = new File(str);
        ?? length = file.length();
        try {
            if (length > 0) {
                try {
                    randomAccessFile = new RandomAccessFile(file, "r");
                    if (j10 >= 0) {
                        try {
                            if (j10 >= file.length()) {
                                j10 = 0;
                            }
                        } catch (Exception e10) {
                            e = e10;
                            LiteApiLogger.printStackTrace(e);
                            LiteCloseableUtil.closeQuietly(randomAccessFile);
                            return null;
                        }
                    } else {
                        j10 = 0;
                    }
                    randomAccessFile.seek(j10);
                    byte[] bArr = new byte[4096];
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    int i11 = 0;
                    while (true) {
                        long j12 = i11;
                        if (j12 >= j11 || (i10 = randomAccessFile.read(bArr)) == -1) {
                            break;
                        }
                        if (i10 <= 0 || i11 + i10 <= j11) {
                            messageDigest.update(bArr, 0, i10);
                            i11 += i10;
                        } else {
                            int i12 = (int) (j11 - j12);
                            messageDigest.update(bArr, 0, i12);
                            i11 += i12;
                        }
                    }
                    String hexString = toHexString(messageDigest.digest());
                    LiteCloseableUtil.closeQuietly(randomAccessFile);
                    return hexString;
                } catch (Exception e11) {
                    e = e11;
                    randomAccessFile = null;
                } catch (Throwable th) {
                    length = 0;
                    th = th;
                    LiteCloseableUtil.closeQuietly((Closeable) length);
                    throw th;
                }
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @NonNull
    public static String md5(String str) {
        return TextUtils.isEmpty(str) ? "" : md5ForByte(str.getBytes());
    }

    public static String md5ForByte(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb2 = new StringBuilder();
            int length = bArrDigest.length;
            for (int i10 = 0; i10 < length; i10++) {
                int i11 = bArrDigest[i10];
                if (i11 < 0) {
                    i11 += 256;
                }
                if (i11 < 16) {
                    sb2.append("0");
                }
                sb2.append(Integer.toHexString(i11));
            }
            return sb2.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String sha1(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            return toHexString(bArrDigest, 0, bArrDigest.length);
        } catch (Exception e10) {
            LiteApiLogger.printStackTrace(e10);
            return "";
        }
    }

    public static String toHexString(byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            return null;
        }
        if (i10 < 0 || i10 + i11 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i12 = i11 * 2;
        char[] cArr = new char[i12];
        int i13 = 0;
        for (int i14 = 0; i14 < i11; i14++) {
            int i15 = bArr[i14 + i10] & 255;
            int i16 = i13 + 1;
            char[] cArr2 = HEX_CHARS;
            cArr[i13] = cArr2[i15 >> 4];
            i13 = i16 + 1;
            cArr[i16] = cArr2[i15 & 15];
        }
        return new String(cArr, 0, i12);
    }

    public static String toHexString(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b10 : bArr) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(b10)));
        }
        return stringBuffer.toString();
    }

    public static String getFileMD5Digest(String str) {
        return getFileMD5Digest(new File(str));
    }
}
