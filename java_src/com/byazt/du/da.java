package com.byazt.du;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 441, 72})
public class da {
    public static float c(float f10) {
        return (float) Math.ceil((f10 * 16.0f) / 16.0f);
    }

    public static List<tt.c> c(float f10, List<tt.c> list) {
        ArrayList<tt.c> arrayList = new ArrayList();
        Iterator<tt.c> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add((tt.c) it2.next().clone());
        }
        boolean z10 = true;
        int i10 = 0;
        int i11 = 0;
        for (tt.c cVar : arrayList) {
            if (cVar.tt) {
                i10 = (int) (i10 + cVar.f13187c);
            } else {
                i11 = (int) (i11 + cVar.f13187c);
                z10 = false;
            }
        }
        if (z10 && f10 > i10) {
            return arrayList;
        }
        float f11 = i10;
        float f12 = f10 < f11 ? f10 / f11 : 1.0f;
        float f13 = f10 > f11 ? (f10 - f11) / i11 : 0.0f;
        if (f13 > 1.0f) {
            ArrayList arrayList2 = new ArrayList();
            boolean z11 = false;
            for (tt.c cVar2 : arrayList) {
                if (!cVar2.tt) {
                    float f14 = cVar2.ve;
                    if (f14 != 0.0f && cVar2.f13187c * f13 > f14) {
                        cVar2.f13187c = f14;
                        cVar2.tt = true;
                        z11 = true;
                    }
                }
                arrayList2.add(cVar2);
            }
            if (z11) {
                return c(f10, arrayList2);
            }
        }
        int i12 = 0;
        for (tt.c cVar3 : arrayList) {
            if (cVar3.tt) {
                cVar3.f13187c = c(cVar3.f13187c * f12);
            } else {
                cVar3.f13187c = c(cVar3.f13187c * f13);
            }
            i12 = (int) (i12 + cVar3.f13187c);
        }
        float f15 = i12;
        if (f15 < f10) {
            float f16 = f10 - f15;
            for (int size = 0; size < arrayList.size() && f16 > 0.0f; size = (size + 1) % arrayList.size()) {
                tt.c cVar4 = (tt.c) arrayList.get(size);
                if ((f10 < f11 && cVar4.tt) || (f10 > f11 && !cVar4.tt)) {
                    cVar4.f13187c += 0.0625f;
                    f16 -= 0.0625f;
                }
            }
        }
        return arrayList;
    }
}
