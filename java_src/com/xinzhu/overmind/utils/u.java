package com.xinzhu.overmind.utils;

/* JADX INFO: loaded from: classes8.dex */
public class u {
    public static int a(Object obj) {
        if (obj instanceof Long) {
            return ((Long) obj).intValue();
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        throw new RuntimeException("Get neither Long nor Integer input.");
    }

    public static long b(Object obj) {
        if (obj instanceof Long) {
            return ((Long) obj).longValue();
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).longValue();
        }
        throw new RuntimeException("Get neither Long nor Integer input.");
    }
}
