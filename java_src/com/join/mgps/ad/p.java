package com.join.mgps.ad;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class p {
    public static int a(List<Double> orignalRates) {
        if (orignalRates == null || orignalRates.isEmpty()) {
            return -1;
        }
        int size = orignalRates.size();
        Iterator<Double> it2 = orignalRates.iterator();
        double dDoubleValue = 0.0d;
        while (it2.hasNext()) {
            dDoubleValue += it2.next().doubleValue();
        }
        ArrayList arrayList = new ArrayList(size);
        Double dValueOf = Double.valueOf(0.0d);
        Iterator<Double> it3 = orignalRates.iterator();
        while (it3.hasNext()) {
            dValueOf = Double.valueOf(dValueOf.doubleValue() + it3.next().doubleValue());
            arrayList.add(Double.valueOf(dValueOf.doubleValue() / dDoubleValue));
        }
        double dRandom = Math.random();
        arrayList.add(Double.valueOf(dRandom));
        Collections.sort(arrayList);
        return arrayList.indexOf(Double.valueOf(dRandom));
    }

    public static int b(List<Double> orignalRates) {
        if (orignalRates == null || orignalRates.isEmpty()) {
            return -1;
        }
        int size = orignalRates.size();
        Iterator<Double> it2 = orignalRates.iterator();
        double dDoubleValue = 0.0d;
        while (it2.hasNext()) {
            dDoubleValue += it2.next().doubleValue();
        }
        ArrayList arrayList = new ArrayList(size);
        Double dValueOf = Double.valueOf(0.0d);
        Iterator<Double> it3 = orignalRates.iterator();
        while (it3.hasNext()) {
            dValueOf = Double.valueOf(dValueOf.doubleValue() + it3.next().doubleValue());
            arrayList.add(Double.valueOf(dValueOf.doubleValue() / dDoubleValue));
        }
        double dRandom = Math.random();
        arrayList.add(Double.valueOf(dRandom));
        Collections.sort(arrayList);
        return arrayList.indexOf(Double.valueOf(dRandom));
    }
}
