package com.czhj.devicehelper;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;

/* JADX INFO: loaded from: classes9.dex */
public final class DeviceHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f25238a = "getSimState";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f25239b = "getImei";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f25240c = "getLine1Number";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f25241d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f25242e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f25243f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f25244g = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static long f25245h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static long f25246i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static Handler f25247j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static Handler f25248k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static int f25249l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f25250m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static String f25251n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static String f25252o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static String f25253p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static Thread f25254q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static Thread f25255r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static boolean f25256s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static int f25257t;

    @SuppressLint({"MissingPermission", "HardwareIds"})
    public static String getIMEI(Context context) {
        String deviceId;
        try {
            SigmobLog.d("private :getIMEI");
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                return null;
            }
            if (Build.VERSION.SDK_INT >= 26) {
                deviceId = telephonyManager.getImei();
                if (TextUtils.isEmpty(deviceId)) {
                    try {
                        return telephonyManager.getDeviceId();
                    } catch (Throwable unused) {
                        return telephonyManager.getMeid();
                    }
                }
            } else {
                deviceId = telephonyManager.getDeviceId();
            }
            if (deviceId != null) {
                return deviceId;
            }
            return null;
        } catch (Exception unused2) {
        }
    }

    @SuppressLint({"MissingPermission", "HardwareIds"})
    public static String getIMSI(Context context) {
        return null;
    }

    public static String getMacAddress() {
        return "";
    }

    public static void getOAID(final Context context, final com.czhj.devicehelper.msaoaId.a.InterfaceC0544a interfaceC0544a) {
        if (!TextUtils.isEmpty(f25241d)) {
            if (interfaceC0544a != null) {
                interfaceC0544a.a(f25242e);
                return;
            }
            return;
        }
        if (f25257t > 10) {
            if (interfaceC0544a != null) {
                interfaceC0544a.a("");
                return;
            }
            return;
        }
        f25245h = System.currentTimeMillis();
        if (f25255r == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Thread create ,current thread num :");
            sb2.append(Thread.activeCount());
            Thread thread = new Thread(new Runnable() { // from class: com.czhj.devicehelper.DeviceHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    SigmobLog.d("private  getOAID");
                    com.czhj.devicehelper.msaoaId.a.a(context, new com.czhj.devicehelper.msaoaId.a.InterfaceC0544a() { // from class: com.czhj.devicehelper.DeviceHelper.1.1
                        @Override // com.czhj.devicehelper.msaoaId.a.InterfaceC0544a
                        public void a(String str) {
                            String unused = DeviceHelper.f25241d = str;
                            com.czhj.devicehelper.msaoaId.a.InterfaceC0544a interfaceC0544a2 = interfaceC0544a;
                            if (interfaceC0544a2 != null) {
                                interfaceC0544a2.a(str);
                            }
                            boolean unused2 = DeviceHelper.f25256s = false;
                            if (DeviceHelper.f25247j != null) {
                                DeviceHelper.f25247j.removeCallbacksAndMessages(null);
                                Handler unused3 = DeviceHelper.f25247j = null;
                            }
                        }
                    });
                }
            });
            f25255r = thread;
            thread.start();
            f25257t++;
            f25256s = true;
            Handler handler = new Handler(Looper.getMainLooper());
            f25247j = handler;
            handler.postDelayed(new Runnable() { // from class: com.czhj.devicehelper.DeviceHelper.2
                @Override // java.lang.Runnable
                public void run() {
                    if (DeviceHelper.f25255r != null) {
                        boolean unused = DeviceHelper.f25256s = false;
                        int unused2 = DeviceHelper.f25257t = 11;
                        com.czhj.devicehelper.msaoaId.a.InterfaceC0544a interfaceC0544a2 = interfaceC0544a;
                        if (interfaceC0544a2 != null) {
                            interfaceC0544a2.a("");
                        }
                        if (DeviceHelper.f25247j != null) {
                            DeviceHelper.f25247j.removeCallbacksAndMessages(null);
                            Handler unused3 = DeviceHelper.f25247j = null;
                        }
                    }
                }
            }, 10000L);
        }
    }

    public static String getVAID() {
        return f25243f;
    }

    @SuppressLint({"MissingPermission"})
    public static String getWifiName(Context context) {
        return f25251n;
    }

    @SuppressLint({"MissingPermission"})
    public static String getWifimac(Context context) {
        return "";
    }

    @SuppressLint({"MissingPermission"})
    public static String getIMEI(Context context, int i10) {
        String deviceId;
        try {
            SigmobLog.d("private :getIMEI " + i10);
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                return null;
            }
            if (Build.VERSION.SDK_INT >= 26) {
                deviceId = telephonyManager.getImei(i10);
                if (TextUtils.isEmpty(deviceId)) {
                    try {
                        return telephonyManager.getDeviceId(i10);
                    } catch (Throwable unused) {
                        return telephonyManager.getMeid(i10);
                    }
                }
            } else {
                deviceId = telephonyManager.getDeviceId();
            }
            if (deviceId != null) {
                return deviceId;
            }
            return null;
        } catch (Exception unused2) {
        }
    }
}
