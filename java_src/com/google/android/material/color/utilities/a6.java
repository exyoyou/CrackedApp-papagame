package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class a6 implements y5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Map<Integer, Integer> f30191a;

    @Override // com.google.android.material.color.utilities.y5
    public b6 a(int[] iArr, int i10) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i11 : iArr) {
            Integer num = (Integer) linkedHashMap.get(Integer.valueOf(i11));
            int iIntValue = 1;
            if (num != null) {
                iIntValue = 1 + num.intValue();
            }
            linkedHashMap.put(Integer.valueOf(i11), Integer.valueOf(iIntValue));
        }
        this.f30191a = linkedHashMap;
        return new b6(linkedHashMap);
    }

    public Map<Integer, Integer> b() {
        return this.f30191a;
    }
}
