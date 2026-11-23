package com.join.mgps.Util;

import java.math.BigDecimal;

/* JADX INFO: loaded from: classes4.dex */
public class m1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f49801a = "m1";

    public static int a(long size) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("byte2K: size");
        sb2.append(size);
        return (int) (size / 1024);
    }

    public static float b(long size) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("byte2M: size");
        sb2.append(size);
        return new BigDecimal((float) ((size / 1024.0d) / 1024.0d)).setScale(2, 4).floatValue();
    }
}
