package com.join.mgps.Util;

import com.kwad.sdk.collector.AppStatusRules;
import java.io.File;
import java.io.FileInputStream;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class i1 {
    public static String a(byte[] bytes) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(bytes);
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

    public static Map<String, String> b(File file, boolean listChild) {
        if (!file.isDirectory()) {
            return null;
        }
        HashMap map = new HashMap();
        for (File file2 : file.listFiles()) {
            if (file2.isDirectory() && listChild) {
                map.putAll(b(file2, listChild));
            } else {
                String strC = c(file2);
                if (strC != null) {
                    map.put(file2.getPath(), strC);
                }
            }
        }
        return map;
    }

    public static String c(File file) {
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

    public static String d(String string) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(string.getBytes("UTF-8"));
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
