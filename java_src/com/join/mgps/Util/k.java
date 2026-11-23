package com.join.mgps.Util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import com.efs.sdk.base.core.util.NetworkUtil;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public class k {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f49770h = "k";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static k f49771i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f49772j = 10;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static int f49773k = 11;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static int f49774l = 12;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f49775m = 13;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static int f49776n = 14;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f49777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    WifiManager f49778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ConnectivityManager f49779c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f49780d = new Handler();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WifiManager.LocalOnlyHotspotReservation f49781e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f49782f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f49783g;

    class a extends WifiManager.LocalOnlyHotspotCallback {
        a() {
        }

        @Override // android.net.wifi.WifiManager.LocalOnlyHotspotCallback
        public void onFailed(int reason) {
            super.onFailed(reason);
        }

        @Override // android.net.wifi.WifiManager.LocalOnlyHotspotCallback
        public void onStarted(WifiManager.LocalOnlyHotspotReservation reservation) {
            super.onStarted(reservation);
            k.this.f49781e = reservation;
            WifiConfiguration wifiConfiguration = reservation.getWifiConfiguration();
            k.this.f49782f = wifiConfiguration.SSID;
            k.this.f49783g = wifiConfiguration.preSharedKey;
            k.this.f49780d.obtainMessage(2018, wifiConfiguration).sendToTarget();
        }

        @Override // android.net.wifi.WifiManager.LocalOnlyHotspotCallback
        public void onStopped() {
            super.onStopped();
        }
    }

    public k(Context context) {
        this.f49777a = context;
        this.f49778b = (WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        this.f49779c = (ConnectivityManager) this.f49777a.getSystemService("connectivity");
    }

    public static k i(Context context) {
        if (f49771i == null) {
            synchronized (k.class) {
                if (f49771i == null) {
                    f49771i = new k(context);
                }
            }
        }
        return f49771i;
    }

    public static boolean m(Context context) {
        WifiManager wifiManager = (WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
        try {
            Method declaredMethod = wifiManager.getClass().getDeclaredMethod("isWifiApEnabled", new Class[0]);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(wifiManager, new Object[0])).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean a(String networkSSID, String password) {
        try {
            WifiConfiguration wifiConfiguration = new WifiConfiguration();
            wifiConfiguration.SSID = x.a.f97579g + networkSSID + x.a.f97579g;
            wifiConfiguration.preSharedKey = x.a.f97579g + password + x.a.f97579g;
            wifiConfiguration.status = 2;
            wifiConfiguration.allowedProtocols.set(1);
            wifiConfiguration.allowedProtocols.set(0);
            wifiConfiguration.allowedGroupCiphers.set(2);
            wifiConfiguration.allowedGroupCiphers.set(3);
            wifiConfiguration.allowedKeyManagement.set(1);
            wifiConfiguration.allowedPairwiseCiphers.set(1);
            wifiConfiguration.allowedPairwiseCiphers.set(2);
            int iAddNetwork = this.f49778b.addNetwork(wifiConfiguration);
            for (WifiConfiguration wifiConfiguration2 : this.f49778b.getConfiguredNetworks()) {
                String str = wifiConfiguration2.SSID;
                if (str != null) {
                    if (str.equals(x.a.f97579g + networkSSID + x.a.f97579g)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(wifiConfiguration2.SSID);
                        sb2.append(" ");
                        sb2.append(wifiConfiguration.preSharedKey);
                        sb2.append(":::::添加的Id:::");
                        sb2.append(iAddNetwork);
                        this.f49778b.disconnect();
                        this.f49778b.enableNetwork(wifiConfiguration2.networkId, true);
                        this.f49778b.reconnect();
                        break;
                    }
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public void f() {
        if (Build.VERSION.SDK_INT >= 26) {
            WifiManager.LocalOnlyHotspotReservation localOnlyHotspotReservation = this.f49781e;
            if (localOnlyHotspotReservation != null) {
                localOnlyHotspotReservation.close();
                return;
            }
            return;
        }
        if (l() != f49773k) {
            try {
                Method method = this.f49778b.getClass().getMethod("getWifiApConfiguration", new Class[0]);
                method.setAccessible(true);
                this.f49778b.getClass().getMethod("setWifiApEnabled", WifiConfiguration.class, Boolean.TYPE).invoke(this.f49778b, (WifiConfiguration) method.invoke(this.f49778b, new Object[0]), Boolean.FALSE);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (IllegalArgumentException e11) {
                e11.printStackTrace();
            } catch (NoSuchMethodException e12) {
                e12.printStackTrace();
            } catch (InvocationTargetException e13) {
                e13.printStackTrace();
            }
        }
    }

    public void g(String mSSID, String mPasswd) {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                this.f49778b.startLocalOnlyHotspot(new a(), this.f49780d);
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        try {
            WifiConfiguration wifiConfiguration = new WifiConfiguration();
            wifiConfiguration.SSID = mSSID;
            wifiConfiguration.preSharedKey = mPasswd;
            wifiConfiguration.allowedAuthAlgorithms.set(0);
            wifiConfiguration.allowedProtocols.set(1);
            wifiConfiguration.allowedProtocols.set(0);
            wifiConfiguration.allowedKeyManagement.set(1);
            wifiConfiguration.allowedPairwiseCiphers.set(2);
            wifiConfiguration.allowedPairwiseCiphers.set(1);
            wifiConfiguration.allowedGroupCiphers.set(3);
            wifiConfiguration.allowedGroupCiphers.set(2);
            this.f49778b.getClass().getMethod("setWifiApEnabled", WifiConfiguration.class, Boolean.TYPE).invoke(this.f49778b, wifiConfiguration, Boolean.TRUE);
            this.f49782f = mSSID;
            this.f49783g = mPasswd;
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
        } catch (IllegalArgumentException e12) {
            e12.printStackTrace();
        } catch (NoSuchMethodException e13) {
            e13.printStackTrace();
        } catch (SecurityException e14) {
            e14.printStackTrace();
        } catch (InvocationTargetException e15) {
            e15.printStackTrace();
        }
    }

    public void h() {
        NetworkInfo activeNetworkInfo = this.f49779c.getActiveNetworkInfo();
        WifiInfo connectionInfo = this.f49778b.getConnectionInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return;
        }
        this.f49778b.disableNetwork(connectionInfo.getNetworkId());
        this.f49778b.saveConfiguration();
    }

    public String j() {
        return this.f49783g;
    }

    public String k() {
        return this.f49782f;
    }

    public int l() {
        try {
            return ((Integer) this.f49778b.getClass().getMethod("getWifiApState", new Class[0]).invoke(this.f49778b, new Object[0])).intValue();
        } catch (Exception e10) {
            e10.getMessage();
            return -1;
        }
    }

    public boolean n() {
        return m(this.f49777a);
    }
}
