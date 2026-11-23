package com.windmill.sdk.models;

import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.strategy.a;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class A1bC2d {
    public int eF3gH4;
    public long iJ5kL6;
    public int mN7oP8;
    public int pTaOB9;
    public String qR9sT0;

    public A1bC2d(int eF3gH4, long iJ5kL6, int mN7oP8, int pTaOB9, String qR9sT0) {
        this.eF3gH4 = eF3gH4;
        this.iJ5kL6 = iJ5kL6;
        this.mN7oP8 = mN7oP8;
        this.qR9sT0 = qR9sT0;
        this.pTaOB9 = pTaOB9;
    }

    public static void addEvent(int eventId, WindMillAdRequest adRequest, a adStrategy, Map initMap) {
        try {
            adStrategy.aJ();
        } catch (Exception unused) {
        }
    }
}
