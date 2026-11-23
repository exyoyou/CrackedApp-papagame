package com.papa.sim.statistic;

import android.content.Context;
import android.telephony.TelephonyManager;

/* JADX INFO: loaded from: classes2.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f77305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static o f77306b;

    private o(Context context) {
        String deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        f77305a = deviceId;
        if (deviceId == null || deviceId.equals("")) {
            f77305a = u.f(context).g().replaceAll(":", "");
        }
    }

    public static String a() {
        return f77305a;
    }

    public static o b(Context context) {
        if (f77306b == null) {
            f77306b = new o(context);
        }
        return f77306b;
    }
}
