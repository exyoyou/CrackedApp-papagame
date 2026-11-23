package com.join.mgps.Util;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.efs.sdk.base.core.util.NetworkUtil;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class q3 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f49977f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f49978g = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f49979h = 3;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f49980i = 4;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static q3 f49981j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f49982a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WifiManager f49983b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    List<ScanResult> f49984c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    List<WifiConfiguration> f49985d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    WifiInfo f49986e;

    private q3(Context context) {
        this.f49982a = context;
        this.f49983b = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
    }

    public static WifiConfiguration c(String ssid, String password, int type) {
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.allowedAuthAlgorithms.clear();
        wifiConfiguration.allowedGroupCiphers.clear();
        wifiConfiguration.allowedKeyManagement.clear();
        wifiConfiguration.allowedPairwiseCiphers.clear();
        wifiConfiguration.allowedProtocols.clear();
        wifiConfiguration.SSID = x.a.f97579g + ssid + x.a.f97579g;
        if (type == 1) {
            wifiConfiguration.allowedKeyManagement.set(0);
        } else if (type == 2) {
            wifiConfiguration.hiddenSSID = true;
            wifiConfiguration.wepKeys[0] = x.a.f97579g + password + x.a.f97579g;
            wifiConfiguration.allowedAuthAlgorithms.set(1);
            wifiConfiguration.allowedGroupCiphers.set(3);
            wifiConfiguration.allowedGroupCiphers.set(2);
            wifiConfiguration.allowedGroupCiphers.set(0);
            wifiConfiguration.allowedGroupCiphers.set(1);
            wifiConfiguration.allowedKeyManagement.set(0);
            wifiConfiguration.wepTxKeyIndex = 0;
        } else if (type == 3) {
            wifiConfiguration.preSharedKey = x.a.f97579g + password + x.a.f97579g;
            wifiConfiguration.hiddenSSID = true;
            wifiConfiguration.allowedAuthAlgorithms.set(0);
            wifiConfiguration.allowedGroupCiphers.set(2);
            wifiConfiguration.allowedKeyManagement.set(1);
            wifiConfiguration.allowedPairwiseCiphers.set(1);
            wifiConfiguration.allowedProtocols.set(0);
            wifiConfiguration.status = 2;
        } else if (type == 4) {
            wifiConfiguration.preSharedKey = x.a.f97579g + password + x.a.f97579g;
            wifiConfiguration.hiddenSSID = true;
            wifiConfiguration.allowedAuthAlgorithms.set(0);
            wifiConfiguration.allowedGroupCiphers.set(2);
            wifiConfiguration.allowedGroupCiphers.set(3);
            wifiConfiguration.allowedKeyManagement.set(1);
            wifiConfiguration.allowedPairwiseCiphers.set(1);
            wifiConfiguration.allowedPairwiseCiphers.set(2);
            wifiConfiguration.allowedProtocols.set(1);
            wifiConfiguration.allowedProtocols.set(0);
            wifiConfiguration.status = 2;
        }
        return wifiConfiguration;
    }

    public static q3 h(Context context) {
        if (f49981j == null) {
            synchronized (q3.class) {
                if (f49981j == null) {
                    f49981j = new q3(context);
                }
            }
        }
        return f49981j;
    }

    public boolean a(WifiConfiguration wf) {
        e();
        return this.f49983b.enableNetwork(this.f49983b.addNetwork(wf), true);
    }

    public void b() {
        if (this.f49983b.isWifiEnabled()) {
            this.f49983b.setWifiEnabled(false);
        }
    }

    public void d() {
        WifiManager wifiManager = this.f49983b;
        if (wifiManager != null) {
            wifiManager.setWifiEnabled(false);
        }
    }

    public boolean e() {
        WifiManager wifiManager = this.f49983b;
        if (wifiManager == null || !wifiManager.isWifiEnabled()) {
            return false;
        }
        this.f49983b.disableNetwork(this.f49983b.getConnectionInfo().getNetworkId());
        return this.f49983b.disconnect();
    }

    public String f() {
        int i10 = this.f49983b.getDhcpInfo().ipAddress;
        return (i10 & 255) + o0.f49827a + ((i10 >> 8) & 255) + o0.f49827a + ((i10 >> 16) & 255) + o0.f49827a + ((i10 >> 24) & 255);
    }

    public String g() {
        int i10 = this.f49983b.getDhcpInfo().serverAddress;
        return (i10 & 255) + o0.f49827a + ((i10 >> 8) & 255) + o0.f49827a + ((i10 >> 16) & 255) + o0.f49827a + ((i10 >> 24) & 255);
    }

    public String i() {
        int i10 = this.f49983b.getDhcpInfo().gateway;
        return (i10 & 255) + o0.f49827a + ((i10 >> 8) & 255) + o0.f49827a + ((i10 >> 16) & 255) + o0.f49827a + ((i10 >> 24) & 255);
    }

    public List<ScanResult> j() {
        return this.f49984c;
    }

    public List<WifiConfiguration> k() {
        return this.f49985d;
    }

    public WifiInfo l() {
        WifiInfo connectionInfo = this.f49983b.getConnectionInfo();
        this.f49986e = connectionInfo;
        return connectionInfo;
    }

    public boolean m() {
        WifiManager wifiManager = this.f49983b;
        if (wifiManager == null) {
            return false;
        }
        return wifiManager.isWifiEnabled();
    }

    public void n() {
        if (this.f49983b.isWifiEnabled()) {
            return;
        }
        this.f49983b.setWifiEnabled(true);
    }

    public void o() {
        this.f49983b.startScan();
        this.f49984c = this.f49983b.getScanResults();
        this.f49985d = this.f49983b.getConfiguredNetworks();
    }
}
