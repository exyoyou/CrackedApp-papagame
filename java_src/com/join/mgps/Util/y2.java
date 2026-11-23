package com.join.mgps.Util;

import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class y2 {
    public static int a(String string) {
        int i10 = 0;
        int i11 = 0;
        for (char c10 : string.toCharArray()) {
            if (((char) ((byte) c10)) != c10) {
                i10++;
            } else {
                i11++;
            }
        }
        return (i10 * 2) + i11;
    }

    public static String b(int NumLen) {
        Random random = new Random(System.currentTimeMillis());
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < NumLen; i10++) {
            stringBuffer.append(random.nextInt(10));
        }
        return stringBuffer.toString();
    }
}
