package com.haima.hmcp.utils;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes5.dex */
public class FileUtil {
    public static String S_DEFAULT_STORAGE_PATH;

    public static byte[] fileToByteArray(File file) {
        LogUtils.d(FileUtil.class.getSimpleName(), "internalUploadX86->fileToByteArray");
        if (file == null) {
            LogUtils.d(FileUtil.class.getSimpleName(), "internalUploadX86->file is null");
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileChannel channel = fileInputStream.getChannel();
                try {
                    long size = channel.size();
                    if (size > 2147483647L) {
                        System.out.println("文件太大，无法转换为byte数组");
                        channel.close();
                        fileInputStream.close();
                        return null;
                    }
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate((int) size);
                    byteBufferAllocate.clear();
                    LogUtils.d(FileUtil.class.getSimpleName(), "internalUploadX86->fileSize=" + size);
                    while (channel.read(byteBufferAllocate) != -1) {
                        byteBufferAllocate.flip();
                    }
                    LogUtils.d(FileUtil.class.getSimpleName(), "internalUploadX86->buffer");
                    byte[] bArrArray = byteBufferAllocate.array();
                    channel.close();
                    fileInputStream.close();
                    return bArrArray;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        if (channel != null) {
                            try {
                                channel.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th6) {
                        th4.addSuppressed(th6);
                    }
                    throw th5;
                }
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String getFileMd5(File file) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            try {
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    if (file == null || !file.exists()) {
                        return "";
                    }
                    FileInputStream fileInputStream2 = new FileInputStream(file);
                    try {
                        byte[] bArr = new byte[10485760];
                        while (true) {
                            int i10 = fileInputStream2.read(bArr);
                            if (i10 <= 0) {
                                break;
                            }
                            messageDigest.update(bArr, 0, i10);
                        }
                        String string = new BigInteger(1, messageDigest.digest()).toString(16);
                        while (string.length() < 32) {
                            string = "0" + string;
                        }
                        try {
                            fileInputStream2.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                        return string;
                    } catch (FileNotFoundException e11) {
                        e = e11;
                        fileInputStream = fileInputStream2;
                    } catch (IOException e12) {
                        e = e12;
                        fileInputStream = fileInputStream2;
                        e.printStackTrace();
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        return "";
                    } catch (NoSuchAlgorithmException e13) {
                        e = e13;
                        fileInputStream = fileInputStream2;
                        e.printStackTrace();
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        return "";
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e14) {
                                e14.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e15) {
                    e15.printStackTrace();
                }
            } catch (FileNotFoundException e16) {
                e = e16;
            } catch (IOException e17) {
                e = e17;
            } catch (NoSuchAlgorithmException e18) {
                e = e18;
            }
            e.printStackTrace();
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            return "";
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String getStoragePath(Context context) {
        if (context == null) {
            return null;
        }
        File externalFilesDir = context.getExternalFilesDir(null);
        return (!"mounted".equals(Environment.getExternalStorageState()) || externalFilesDir == null) ? context.getFilesDir().getAbsolutePath() : externalFilesDir.getAbsolutePath();
    }

    public static String md5(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return toHexString(messageDigest.digest());
        } catch (NoSuchAlgorithmException e10) {
            throw new RuntimeException("MD5 algorithm not found", e10);
        }
    }

    public static String toHexString(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            String hexString = Integer.toHexString(b10 & 255);
            if (hexString.length() == 1) {
                sb2.append('0');
            }
            sb2.append(hexString);
        }
        return sb2.toString();
    }
}
