package com.czhj.sdk.common.utils;

import com.czhj.sdk.logger.SigmobLog;
import java.io.FileInputStream;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
public class ImageTypeUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final HashMap<String, String> f25654a;

    static {
        HashMap<String, String> map = new HashMap<>();
        f25654a = map;
        map.put("FFD8", "jpg");
        map.put("8950", "png");
        map.put("4749", "gif");
        map.put("4949", "tif");
        map.put("424D", "bmp");
        map.put("5745", "webp");
    }

    private static String a(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            String upperCase = Integer.toHexString(b10 & 255).toUpperCase();
            if (upperCase.length() < 2) {
                sb2.append(0);
            }
            sb2.append(upperCase);
        }
        return sb2.toString();
    }

    public static String getFileHeader(String str) {
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(str);
            try {
                byte[] bArr = new byte[2];
                fileInputStream2.read(bArr, 0, 2);
                String strA = a(bArr);
                if (strA != null && strA.equals("5249")) {
                    fileInputStream2.skip(6L);
                    fileInputStream2.read(bArr, 0, 2);
                    strA = a(bArr);
                }
                try {
                    fileInputStream2.close();
                    return strA;
                } catch (Throwable unused) {
                    return strA;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                try {
                    SigmobLog.e(th.getMessage());
                    return null;
                } finally {
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable unused2) {
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String getFileType(String str) {
        return f25654a.get(getFileHeader(str));
    }
}
