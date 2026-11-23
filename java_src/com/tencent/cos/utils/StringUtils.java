package com.tencent.cos.utils;

/* JADX INFO: loaded from: classes2.dex */
public class StringUtils {
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final String sfEmptyString = "";

    public static String bytesToAscii(byte[] bArr, int i10) {
        if (bArr == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < i10; i11++) {
            try {
                sb2.append((char) ((bArr[i11] + 256) % 256));
            } catch (Exception unused) {
                return null;
            }
        }
        return sb2.toString();
    }

    public static String getEmptyString(String str) {
        return str == null ? "" : str;
    }

    public static boolean isIpv4String(String str) {
        int i10;
        int i11;
        int i12;
        if (str == null) {
            return false;
        }
        String[] strArrSplit = str.split("\\.");
        if (strArrSplit.length != 4) {
            return false;
        }
        try {
            int i13 = Integer.parseInt(strArrSplit[0]);
            return i13 > 0 && i13 <= 255 && (i10 = Integer.parseInt(strArrSplit[1])) >= 0 && i10 <= 255 && (i11 = Integer.parseInt(strArrSplit[2])) >= 0 && i11 <= 255 && (i12 = Integer.parseInt(strArrSplit[3])) >= 0 && i12 <= 255;
        } catch (NumberFormatException unused) {
        }
    }

    public static boolean objEqual(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static String toHexString(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (int i10 = 0; i10 < bArr.length; i10++) {
            char[] cArr = HEX_DIGITS;
            sb2.append(cArr[(bArr[i10] & 240) >>> 4]);
            sb2.append(cArr[bArr[i10] & 15]);
        }
        return sb2.toString();
    }
}
