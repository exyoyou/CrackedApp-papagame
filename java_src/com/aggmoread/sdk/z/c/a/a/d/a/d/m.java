package com.aggmoread.sdk.z.c.a.a.d.a.d;

import android.util.Pair;
import com.aggmoread.sdk.client.AMConst;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class m {
    public void a(Map<String, Object> map, int i10, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        if (map != null) {
            Pair<Integer, Integer> pairA = com.aggmoread.sdk.z.c.a.a.e.p.a(i10, fVar);
            int iIntValue = ((Integer) pairA.first).intValue();
            com.aggmoread.sdk.z.c.a.a.e.e.a("add extras  e " + i10 + ", r  " + pairA);
            map.put(AMConst.ExtrasKey.AD_PRICE, String.valueOf(iIntValue));
            map.put("ext.AD_TIME", pairA.second);
        }
    }
}
