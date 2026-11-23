package com.byazt.ws;

import com.join.mgps.Util.o0;
import com.kuaishou.weapon.p0.bg;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 2290, 20})
public class c {
    public static String c(byte[] bArr, int i10) {
        StringBuilder sb2 = new StringBuilder(o0.f49827a);
        for (int i11 = 0; i11 < bArr.length; i11++) {
            sb2.append(String.format("%02X", Byte.valueOf(bArr[i11])));
            if (i11 > 0 && i11 % i10 == 0 && i11 != bArr.length - 1) {
                sb2.append(bg.f74501j);
            }
        }
        return sb2.toString();
    }

    public static byte[] c(String str) {
        String strReplaceAll = str.replaceAll(e.F0, "").replaceAll("\\.", "");
        int length = strReplaceAll.length();
        byte[] bArr = new byte[length / 2];
        for (int i10 = 0; i10 < length; i10 += 2) {
            bArr[i10 / 2] = (byte) ((Character.digit(strReplaceAll.charAt(i10), 16) << 4) + Character.digit(strReplaceAll.charAt(i10 + 1), 16));
        }
        return bArr;
    }
}
