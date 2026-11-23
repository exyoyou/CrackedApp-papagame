package com.byazt.vx;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 962, 115})
public class rh {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Map<Integer, Integer> f21411c = new ConcurrentHashMap();

    public static Integer c(int i10) {
        Integer num = f21411c.get(Integer.valueOf(i10));
        if (num != null) {
            return num;
        }
        Integer numValueOf = Integer.valueOf(i10);
        f21411c.put(Integer.valueOf(i10), numValueOf);
        return numValueOf;
    }
}
