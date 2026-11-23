package com.haima.hmcp.utils;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public class SerialNumberManager {
    private static final String TAG = "SerialNumberManager";
    private static final AtomicInteger serialNumber = new AtomicInteger(1);

    private SerialNumberManager() {
    }

    public static long getCurrentTimestampMicros() {
        return System.currentTimeMillis() * 1000;
    }

    public static int getNextSerialNumber() {
        AtomicInteger atomicInteger;
        int i10;
        do {
            atomicInteger = serialNumber;
            i10 = atomicInteger.get();
        } while (!atomicInteger.compareAndSet(i10, i10 == Integer.MAX_VALUE ? 1 : i10 + 1));
        return i10;
    }

    public static void reset() {
        serialNumber.set(1);
    }
}
