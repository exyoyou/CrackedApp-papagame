package r;

import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
public final class a {
    public static String a(Map<String, Integer> map, String str, String str2) {
        if (str2 == null || str2.length() <= 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2 + ":");
        if (str == null || str.length() <= 0) {
            return sb2.toString();
        }
        String[] strArrSplit = str.split(",");
        if (strArrSplit == null || strArrSplit.length <= 0) {
            return sb2.toString();
        }
        if (map == null || map.size() <= 0) {
            return sb2.toString();
        }
        Set<String> setKeySet = map.keySet();
        if (setKeySet == null || setKeySet.size() <= 0) {
            return sb2.toString();
        }
        try {
            int length = (strArrSplit.length / 8) + 1;
            byte[] bArr = new byte[length];
            for (int i10 = 0; i10 < length; i10++) {
                bArr[i10] = 0;
            }
            int i11 = 0;
            for (String str3 : strArrSplit) {
                int i12 = bArr[i11 / 8];
                if (setKeySet.contains(str3)) {
                    i12 |= 128 >> (i11 % 8);
                }
                bArr[i11 / 8] = (byte) (i12 & 255);
                i11++;
            }
            sb2.append(com.alipay.security.mobile.module.commonutils.crypto.a.a(bArr));
        } catch (Throwable unused) {
        }
        return sb2.toString();
    }
}
