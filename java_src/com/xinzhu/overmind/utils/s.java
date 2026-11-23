package com.xinzhu.overmind.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes8.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f90135a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private static String a(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        int i10 = 0;
        for (byte b10 : bArr) {
            int i11 = i10 + 1;
            char[] cArr2 = f90135a;
            cArr[i10] = cArr2[(b10 >>> 4) & 15];
            i10 = i11 + 1;
            cArr[i11] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    public static String b(File file) {
        try {
            if (!file.isFile()) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            String strC = c(fileInputStream);
            fileInputStream.close();
            return strC;
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return null;
        } catch (IOException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static String c(InputStream inputStream) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bArr = new byte[1024];
            while (true) {
                int i10 = inputStream.read(bArr);
                if (i10 == -1) {
                    inputStream.close();
                    return a(messageDigest.digest());
                }
                messageDigest.update(bArr, 0, i10);
            }
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
            return null;
        } catch (IOException e11) {
            e11.printStackTrace();
            return null;
        } catch (NoSuchAlgorithmException e12) {
            e12.printStackTrace();
            return null;
        }
    }

    public static String d(String str) {
        if (str == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes("utf-8"));
            return a(messageDigest.digest());
        } catch (Exception unused) {
            return null;
        }
    }
}
