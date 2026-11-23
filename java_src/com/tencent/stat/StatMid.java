package com.tencent.stat;

import android.content.Context;
import com.tencent.stat.common.StatLogger;

/* JADX INFO: loaded from: classes2.dex */
public class StatMid {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static StatLogger f83796a = com.tencent.stat.common.k.b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static DeviceInfo f83797b = null;

    static synchronized DeviceInfo a(Context context) {
        try {
            a aVarA = a.a(context);
            DeviceInfo deviceInfoA = a(aVarA.d(DeviceInfo.TAG_FLAG, null));
            f83796a.d("get device info from internal storage:" + deviceInfoA);
            DeviceInfo deviceInfoA2 = a(aVarA.f(DeviceInfo.TAG_FLAG, null));
            f83796a.d("get device info from setting.system:" + deviceInfoA2);
            DeviceInfo deviceInfoA3 = a(aVarA.b(DeviceInfo.TAG_FLAG, null));
            f83796a.d("get device info from SharedPreference:" + deviceInfoA3);
            DeviceInfo deviceInfoA4 = a(deviceInfoA3, deviceInfoA2, deviceInfoA);
            f83797b = deviceInfoA4;
            if (deviceInfoA4 == null) {
                f83797b = new DeviceInfo();
            }
            DeviceInfo deviceInfoB = n.a(context).b(context);
            if (deviceInfoB != null) {
                f83797b.d(deviceInfoB.getImei());
                f83797b.e(deviceInfoB.getMac());
                f83797b.b(deviceInfoB.getUserType());
            }
        } catch (Throwable th) {
            f83796a.e(th);
        }
        return f83797b;
    }

    public static DeviceInfo getDeviceInfo(Context context) {
        if (context == null) {
            f83796a.error("Context for StatConfig.getDeviceInfo is null.");
            return null;
        }
        if (f83797b == null) {
            a(context);
        }
        return f83797b;
    }

    public static String getMid(Context context) {
        if (f83797b == null) {
            getDeviceInfo(context);
        }
        return f83797b.getMid();
    }

    public static void updateDeviceInfo(Context context, String str) {
        try {
            getDeviceInfo(context);
            f83797b.c(str);
            DeviceInfo deviceInfo = f83797b;
            deviceInfo.a(deviceInfo.a() + 1);
            f83797b.a(System.currentTimeMillis());
            String string = f83797b.c().toString();
            f83796a.d("save DeviceInfo:" + string);
            String strReplace = com.tencent.stat.common.k.c(string).replace("\n", "");
            a aVarA = a.a(context);
            aVarA.c(DeviceInfo.TAG_FLAG, strReplace);
            aVarA.e(DeviceInfo.TAG_FLAG, strReplace);
            aVarA.a(DeviceInfo.TAG_FLAG, strReplace);
        } catch (Throwable th) {
            f83796a.e(th);
        }
    }

    static DeviceInfo a(DeviceInfo deviceInfo, DeviceInfo deviceInfo2) {
        if (deviceInfo != null && deviceInfo2 != null) {
            return deviceInfo.a(deviceInfo2) >= 0 ? deviceInfo : deviceInfo2;
        }
        if (deviceInfo != null) {
            return deviceInfo;
        }
        if (deviceInfo2 != null) {
            return deviceInfo2;
        }
        return null;
    }

    static DeviceInfo a(DeviceInfo deviceInfo, DeviceInfo deviceInfo2, DeviceInfo deviceInfo3) {
        return a(a(deviceInfo, deviceInfo2), a(deviceInfo2, deviceInfo3));
    }

    private static DeviceInfo a(String str) {
        if (str != null) {
            return DeviceInfo.a(com.tencent.stat.common.k.d(str));
        }
        return null;
    }
}
