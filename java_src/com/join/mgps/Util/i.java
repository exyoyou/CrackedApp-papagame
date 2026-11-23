package com.join.mgps.Util;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import com.efs.sdk.base.core.util.NetworkUtil;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f49758a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f49759b = "";

    class a extends WifiManager.LocalOnlyHotspotCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Handler f49760a;

        a(final Handler val$mHandler) {
            this.f49760a = val$mHandler;
        }

        @Override // android.net.wifi.WifiManager.LocalOnlyHotspotCallback
        public void onFailed(int reason) {
            super.onFailed(reason);
        }

        @Override // android.net.wifi.WifiManager.LocalOnlyHotspotCallback
        @TargetApi(26)
        public void onStarted(WifiManager.LocalOnlyHotspotReservation reservation) {
            super.onStarted(reservation);
            WifiConfiguration wifiConfiguration = reservation.getWifiConfiguration();
            i.f49758a = wifiConfiguration.SSID;
            i.f49759b = wifiConfiguration.preSharedKey;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ssid=");
            sb2.append(wifiConfiguration.SSID);
            sb2.append(" pwd=");
            sb2.append(wifiConfiguration.preSharedKey);
            this.f49760a.obtainMessage(2018, wifiConfiguration).sendToTarget();
        }

        @Override // android.net.wifi.WifiManager.LocalOnlyHotspotCallback
        public void onStopped() {
            super.onStopped();
        }
    }

    public static boolean a(Context context) {
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        try {
            if (f(context)) {
                wifiManager.setWifiEnabled(false);
                d(context);
            }
            Method method = wifiManager.getClass().getMethod("setWifiApEnabled", WifiConfiguration.class, Boolean.TYPE);
            Object[] objArr = new Object[2];
            objArr[0] = null;
            objArr[1] = Boolean.valueOf(!f(context));
            method.invoke(wifiManager, objArr);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean b(Context context, String apName, String pwd) {
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        try {
            WifiConfiguration wifiConfiguration = new WifiConfiguration();
            wifiConfiguration.SSID = apName;
            wifiConfiguration.preSharedKey = pwd;
            f49758a = apName;
            f49759b = pwd;
            if (f(context)) {
                wifiManager.setWifiEnabled(false);
                d(context);
            }
            Method method = wifiManager.getClass().getMethod("setWifiApEnabled", WifiConfiguration.class, Boolean.TYPE);
            Object[] objArr = new Object[2];
            objArr[0] = wifiConfiguration;
            objArr[1] = Boolean.valueOf(!f(context));
            method.invoke(wifiManager, objArr);
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    @TargetApi(26)
    public static void c(Context context, final Handler mHandler) {
        try {
            WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
            if (f(context)) {
                wifiManager.setWifiEnabled(false);
                d(context);
            }
            if (f(context)) {
                return;
            }
            wifiManager.startLocalOnlyHotspot(new a(mHandler), mHandler);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void d(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            e(context);
            return;
        }
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        try {
            wifiManager.getClass().getMethod("setWifiApEnabled", WifiConfiguration.class, Boolean.TYPE).invoke(wifiManager, null, Boolean.FALSE);
        } catch (Throwable unused) {
        }
    }

    @TargetApi(26)
    private static void e(Context context) {
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        try {
            wifiManager.getClass().getMethod("cancelLocalOnlyHotspotRequest", new Class[0]).invoke(wifiManager, new Object[0]);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static boolean f(Context context) {
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        try {
            Method declaredMethod = wifiManager.getClass().getDeclaredMethod("isWifiApEnabled", new Class[0]);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(wifiManager, new Object[0])).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }
}
