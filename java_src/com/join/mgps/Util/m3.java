package com.join.mgps.Util;

import android.util.SparseArray;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public class m3 {
    public static <T extends View> T a(View view, int i10) {
        SparseArray sparseArray = (SparseArray) view.getTag();
        if (sparseArray == null) {
            sparseArray = new SparseArray();
            view.setTag(sparseArray);
        }
        T t10 = (T) sparseArray.get(i10);
        if (t10 != null) {
            return t10;
        }
        T t11 = (T) view.findViewById(i10);
        sparseArray.put(i10, t11);
        return t11;
    }
}
