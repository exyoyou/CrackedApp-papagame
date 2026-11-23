package com.byazt.vnu;

import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 699, 158})
public class sl {
    public static byte[] c(int i10) {
        return new byte[]{(byte) (i10 >> 0), (byte) (i10 >> 8), (byte) (i10 >> 16), (byte) (i10 >> 24)};
    }

    public static int c(sp spVar) {
        return (int) spVar.f21300c.c().tt();
    }

    public static int c(byte[] bArr, int i10, int i11, x xVar) {
        if (i10 < 2130706432) {
            return i10;
        }
        int iC = xVar.c(i10);
        byte[] bArrC = c(iC);
        bArr[i11] = bArrC[0];
        bArr[i11 + 1] = bArrC[1];
        bArr[i11 + 2] = bArrC[2];
        bArr[i11 + 3] = bArrC[3];
        return iC;
    }

    public static void c(byte[] bArr, x xVar) throws IOException {
        tt ttVar = new tt(bArr, xVar);
        ttVar.tt(new ByteArrayInputStream(bArr));
        while (ttVar.ve() != 1) {
        }
    }

    public static void c(String str, byte[] bArr, x xVar) throws Throwable {
        if (!TextUtils.isEmpty(str) && xVar.c(str)) {
            if (str.equals("AndroidManifest.xml")) {
                c(bArr, xVar);
                return;
            }
            if ((str.endsWith(".xml") && str.startsWith("res/")) || TextUtils.equals(str, "AndroidManifest.xml")) {
                c(bArr, xVar);
            } else if (str.equals("resources.arsc")) {
                new c(bArr, xVar).c();
            }
        }
    }

    public static void c(int i10, byte[] bArr, int[] iArr, int i11, HashMap<Integer, Integer> map) {
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        int i12 = -1;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i13 * 5;
            int i15 = iArr[i14 + 1];
            if (map.containsKey(Integer.valueOf(i15))) {
                if (i12 == -1) {
                    i12 = i13;
                }
                int i16 = (i14 * 4) + i10;
                map2.put(Integer.valueOf(i13), Arrays.copyOfRange(bArr, i16, i16 + 20));
                map3.put(Integer.valueOf(map.get(Integer.valueOf(i15)).intValue()), Integer.valueOf(i13));
            }
        }
        ArrayList arrayList = new ArrayList(map3.keySet());
        Collections.sort(arrayList);
        Iterator it2 = arrayList.iterator();
        int i17 = 0;
        while (it2.hasNext()) {
            byte[] bArr2 = (byte[]) map2.get(Integer.valueOf(((Integer) map3.get((Integer) it2.next())).intValue()));
            System.arraycopy(bArr2, 0, bArr, ((i17 + i12) * 5 * 4) + i10, bArr2.length);
            i17++;
        }
    }
}
