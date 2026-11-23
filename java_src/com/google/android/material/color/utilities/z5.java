package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class z5 {
    private z5() {
    }

    public static Map<Integer, Integer> a(int[] iArr, int i10) {
        Set<Integer> setKeySet = new QuantizerWu().a(iArr, i10).f30207a.keySet();
        int[] iArr2 = new int[setKeySet.size()];
        Iterator<Integer> it2 = setKeySet.iterator();
        int i11 = 0;
        while (it2.hasNext()) {
            iArr2[i11] = it2.next().intValue();
            i11++;
        }
        return c6.a(iArr, iArr2, i10);
    }
}
