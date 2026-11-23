package com.ta.utdid2.android.utils;

import android.content.Context;
import android.telephony.TelephonyManager;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class g {
    public static String a(Context context) {
        String deviceId = null;
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    deviceId = telephonyManager.getDeviceId();
                }
            } catch (Exception unused) {
            }
        }
        return i.c(deviceId) ? c() : deviceId;
    }

    public static String b(Context context) {
        String subscriberId = null;
        if (context != null) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    subscriberId = telephonyManager.getSubscriberId();
                }
            } catch (Exception unused) {
            }
        }
        return i.c(subscriberId) ? c() : subscriberId;
    }

    public static final String c() {
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        int iNanoTime = (int) System.nanoTime();
        int iNextInt = new Random().nextInt();
        int iNextInt2 = new Random().nextInt();
        byte[] bArrA = e.a(iCurrentTimeMillis);
        byte[] bArrA2 = e.a(iNanoTime);
        byte[] bArrA3 = e.a(iNextInt);
        byte[] bArrA4 = e.a(iNextInt2);
        byte[] bArr = new byte[16];
        System.arraycopy(bArrA, 0, bArr, 0, 4);
        System.arraycopy(bArrA2, 0, bArr, 4, 4);
        System.arraycopy(bArrA3, 0, bArr, 8, 4);
        System.arraycopy(bArrA4, 0, bArr, 12, 4);
        return b.f(bArr, 2);
    }
}
