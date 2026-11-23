package com.papa91.arc.util;

import com.kwad.sdk.collector.AppStatusRules;
import java.io.File;
import java.io.FileInputStream;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class MD5Util {
    public static String byteToMD5(byte[] bArr) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(bArr);
            StringBuilder sb2 = new StringBuilder(bArrDigest.length * 2);
            for (byte b10 : bArrDigest) {
                int i10 = b10 & 255;
                if (i10 < 16) {
                    sb2.append("0");
                }
                sb2.append(Integer.toHexString(i10));
            }
            return sb2.toString();
        } catch (NoSuchAlgorithmException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static Map<String, String> getDirMD5(File file, boolean z10) {
        if (!file.isDirectory()) {
            return null;
        }
        HashMap map = new HashMap();
        for (File file2 : file.listFiles()) {
            if (file2.isDirectory() && z10) {
                map.putAll(getDirMD5(file2, z10));
            } else {
                String fileMD5 = getFileMD5(file2);
                if (fileMD5 != null) {
                    map.put(file2.getPath(), fileMD5);
                }
            }
        }
        return map;
    }

    public static String getFileMD5(File file) {
        if (!file.isFile()) {
            return "";
        }
        byte[] bArr = new byte[AppStatusRules.UploadConfig.DEFAULT_FILE_MAX_SIZE];
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                int i10 = fileInputStream.read(bArr, 0, AppStatusRules.UploadConfig.DEFAULT_FILE_MAX_SIZE);
                if (i10 == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, i10);
            }
            fileInputStream.close();
            String string = new BigInteger(1, messageDigest.digest()).toString(16);
            while (string.length() < 32) {
                string = "0" + string;
            }
            if (string.length() != 31) {
                return string;
            }
            return "0" + string;
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static String stringToMD5(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
            StringBuilder sb2 = new StringBuilder(bArrDigest.length * 2);
            for (byte b10 : bArrDigest) {
                int i10 = b10 & 255;
                if (i10 < 16) {
                    sb2.append("0");
                }
                sb2.append(Integer.toHexString(i10));
            }
            return sb2.toString();
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
            return null;
        } catch (NoSuchAlgorithmException e11) {
            e11.printStackTrace();
            return null;
        }
    }
}
