package com.beizi.ad.lance.a;

import java.util.Random;

/* JADX INFO: loaded from: classes6.dex */
public class p {
    public static boolean a(int i10) {
        float fNextInt = new Random().nextInt(100);
        n.c("BeiZisAd", "ratio = " + fNextInt + ",ratioCheckNum = " + i10);
        return fNextInt < ((float) i10);
    }
}
