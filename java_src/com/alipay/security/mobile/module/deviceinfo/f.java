package com.alipay.security.mobile.module.deviceinfo;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.util.Base64;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.haima.hmcp.Constants;
import com.join.mgps.activity.BuildQRCodeActivity_;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f7293a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f7295c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7296d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f7297e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f7298f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f7299g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f7300h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f7301i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f7302j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f7303k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    volatile int f7304l = 0;

    private f() {
    }

    private String A() {
        return this.f7303k;
    }

    /* JADX WARN: Code duplicated, block: B:60:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:61:0x00e1 A[Catch: all -> 0x00eb, TRY_LEAVE, TryCatch #9 {all -> 0x00eb, blocks: (B:58:0x00d8, B:61:0x00e1), top: B:108:0x00d8 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00f9 A[Catch: Exception -> 0x018f, TryCatch #0 {Exception -> 0x018f, blocks: (B:62:0x00eb, B:64:0x00f9, B:66:0x0116, B:67:0x013b, B:69:0x0143, B:71:0x0149, B:73:0x0151, B:75:0x0159, B:77:0x0161), top: B:90:0x00eb }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0116 A[Catch: Exception -> 0x018f, TryCatch #0 {Exception -> 0x018f, blocks: (B:62:0x00eb, B:64:0x00f9, B:66:0x0116, B:67:0x013b, B:69:0x0143, B:71:0x0149, B:73:0x0151, B:75:0x0159, B:77:0x0161), top: B:90:0x00eb }] */
    /* JADX WARN: Code duplicated, block: B:83:0x01bf A[Catch: Exception -> 0x01ec, TRY_LEAVE, TryCatch #2 {Exception -> 0x01ec, blocks: (B:81:0x0193, B:83:0x01bf), top: B:94:0x0193 }] */
    private static f a(Context context) {
        WifiManager wifiManager;
        LocationManager locationManager;
        CdmaCellLocation cdmaCellLocation;
        Location lastKnownLocation;
        TelephonyManager telephonyManager;
        Exception exc;
        String str;
        String strSubstring;
        String strValueOf;
        String strValueOf2;
        String strValueOf3;
        String strSubstring2;
        String strValueOf4;
        String strSubstring3;
        f fVar = new f();
        fVar.f7293a = context;
        boolean z10 = false;
        try {
            TelephonyManager telephonyManager2 = (TelephonyManager) context.getSystemService("phone");
            String strValueOf5 = "";
            if ((telephonyManager2.getPhoneType() == 2 ? (char) 2 : (char) 1) == 2) {
                try {
                    CdmaCellLocation cdmaCellLocation2 = (CdmaCellLocation) telephonyManager2.getCellLocation();
                    if (cdmaCellLocation2 != null) {
                        strValueOf2 = String.valueOf(cdmaCellLocation2.getNetworkId());
                        try {
                            String networkOperator = telephonyManager2.getNetworkOperator();
                            strSubstring3 = (networkOperator == null || networkOperator.equals("")) ? "" : networkOperator.substring(0, 3);
                            try {
                                strValueOf = String.valueOf(cdmaCellLocation2.getSystemId());
                                try {
                                    strValueOf5 = String.valueOf(cdmaCellLocation2.getBaseStationId());
                                } catch (Exception e10) {
                                    e = e10;
                                    e.fillInStackTrace();
                                }
                            } catch (Exception e11) {
                                e = e11;
                                strValueOf = "";
                            }
                        } catch (Exception e12) {
                            e = e12;
                            strSubstring3 = "";
                            strValueOf = strSubstring3;
                        }
                        str = strValueOf5;
                        strValueOf5 = strSubstring3;
                    } else {
                        str = "";
                        strValueOf2 = str;
                        strValueOf = strValueOf2;
                    }
                } catch (Exception e13) {
                    e = e13;
                    strSubstring3 = "";
                    strValueOf2 = strSubstring3;
                    strValueOf = strValueOf2;
                }
            } else {
                try {
                    GsmCellLocation gsmCellLocation = (GsmCellLocation) telephonyManager2.getCellLocation();
                    if (gsmCellLocation != null) {
                        String networkOperator2 = telephonyManager2.getNetworkOperator();
                        if (networkOperator2 == null || networkOperator2.equals("")) {
                            strSubstring2 = "";
                            strSubstring = strSubstring2;
                        } else {
                            strSubstring = telephonyManager2.getNetworkOperator().substring(0, 3);
                            try {
                                strSubstring2 = telephonyManager2.getNetworkOperator().substring(3, 5);
                            } catch (Exception e14) {
                                exc = e14;
                                str = "";
                                strValueOf = str;
                                exc.fillInStackTrace();
                                String str2 = strSubstring;
                                strValueOf2 = "";
                                strValueOf5 = str2;
                                fVar.f7300h = strValueOf5;
                                fVar.f7301i = strValueOf;
                                fVar.f7302j = str;
                                fVar.f7303k = strValueOf2;
                                telephonyManager = (TelephonyManager) context.getSystemService("phone");
                                if (telephonyManager == null) {
                                    telephonyManager.listen(new g(fVar, telephonyManager), 256);
                                }
                                locationManager = (LocationManager) context.getSystemService("location");
                                if (locationManager.isProviderEnabled("network")) {
                                    f0.a aVar = new f0.a();
                                    locationManager.requestLocationUpdates("network", e0.a.f90863b, 0.0f, aVar, Looper.getMainLooper());
                                    locationManager.removeUpdates(aVar);
                                    lastKnownLocation = locationManager.getLastKnownLocation("network");
                                    if (lastKnownLocation != null) {
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append(lastKnownLocation.getLatitude());
                                        fVar.f7295c = sb2.toString();
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append(lastKnownLocation.getLongitude());
                                        fVar.f7294b = sb3.toString();
                                        z10 = true;
                                    }
                                }
                                TelephonyManager telephonyManager3 = (TelephonyManager) context.getSystemService("phone");
                                if (!z10) {
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append(((double) cdmaCellLocation.getBaseStationLatitude()) / 14400.0d);
                                    fVar.f7295c = sb4.toString();
                                    StringBuilder sb5 = new StringBuilder();
                                    sb5.append(((double) cdmaCellLocation.getBaseStationLongitude()) / 14400.0d);
                                    fVar.f7294b = sb5.toString();
                                }
                                NetworkInfo networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(1);
                                StringBuilder sb6 = new StringBuilder();
                                sb6.append(networkInfo.isConnected());
                                fVar.f7298f = sb6.toString();
                                wifiManager = (WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
                                if (wifiManager.isWifiEnabled()) {
                                    WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                                    fVar.f7296d = connectionInfo.getBSSID();
                                    fVar.f7297e = Base64.encodeToString(connectionInfo.getSSID().getBytes(), 8);
                                    StringBuilder sb7 = new StringBuilder();
                                    sb7.append(connectionInfo.getRssi());
                                    fVar.f7299g = sb7.toString();
                                }
                                return fVar;
                            }
                        }
                        try {
                            strValueOf4 = String.valueOf(gsmCellLocation.getCid());
                            try {
                                strValueOf3 = String.valueOf(gsmCellLocation.getLac());
                                strValueOf5 = strSubstring;
                            } catch (Exception e15) {
                                exc = e15;
                                str = strValueOf4;
                                strValueOf = strSubstring2;
                                exc.fillInStackTrace();
                                String str3 = strSubstring;
                                strValueOf2 = "";
                                strValueOf5 = str3;
                            }
                        } catch (Exception e16) {
                            exc = e16;
                            strValueOf = strSubstring2;
                            str = "";
                        }
                    } else {
                        strValueOf3 = "";
                        strSubstring2 = strValueOf3;
                        strValueOf4 = strSubstring2;
                    }
                    strValueOf2 = strValueOf3;
                    str = strValueOf4;
                    strValueOf = strSubstring2;
                } catch (Exception e17) {
                    exc = e17;
                    str = "";
                    strSubstring = str;
                    strValueOf = strSubstring;
                }
            }
            fVar.f7300h = strValueOf5;
            fVar.f7301i = strValueOf;
            fVar.f7302j = str;
            fVar.f7303k = strValueOf2;
        } catch (Throwable unused) {
        }
        try {
            telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager == null) {
                telephonyManager.listen(new g(fVar, telephonyManager), 256);
            }
        } catch (Throwable unused2) {
        }
        try {
            locationManager = (LocationManager) context.getSystemService("location");
            if (locationManager.isProviderEnabled("network")) {
                f0.a aVar2 = new f0.a();
                locationManager.requestLocationUpdates("network", e0.a.f90863b, 0.0f, aVar2, Looper.getMainLooper());
                locationManager.removeUpdates(aVar2);
                lastKnownLocation = locationManager.getLastKnownLocation("network");
                if (lastKnownLocation != null) {
                    StringBuilder sb8 = new StringBuilder();
                    sb8.append(lastKnownLocation.getLatitude());
                    fVar.f7295c = sb8.toString();
                    StringBuilder sb9 = new StringBuilder();
                    sb9.append(lastKnownLocation.getLongitude());
                    fVar.f7294b = sb9.toString();
                    z10 = true;
                }
            }
            TelephonyManager telephonyManager4 = (TelephonyManager) context.getSystemService("phone");
            if (!z10 && telephonyManager4.getPhoneType() == 2 && (cdmaCellLocation = (CdmaCellLocation) telephonyManager4.getCellLocation()) != null && c0.a.b(fVar.f7295c) && c0.a.b(fVar.f7294b)) {
                StringBuilder sb10 = new StringBuilder();
                sb10.append(((double) cdmaCellLocation.getBaseStationLatitude()) / 14400.0d);
                fVar.f7295c = sb10.toString();
                StringBuilder sb11 = new StringBuilder();
                sb11.append(((double) cdmaCellLocation.getBaseStationLongitude()) / 14400.0d);
                fVar.f7294b = sb11.toString();
            }
        } catch (Exception e18) {
            e18.fillInStackTrace();
        }
        try {
            NetworkInfo networkInfo2 = ((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(1);
            StringBuilder sb12 = new StringBuilder();
            sb12.append(networkInfo2.isConnected());
            fVar.f7298f = sb12.toString();
            wifiManager = (WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
            if (wifiManager.isWifiEnabled()) {
                WifiInfo connectionInfo2 = wifiManager.getConnectionInfo();
                fVar.f7296d = connectionInfo2.getBSSID();
                fVar.f7297e = Base64.encodeToString(connectionInfo2.getSSID().getBytes(), 8);
                StringBuilder sb13 = new StringBuilder();
                sb13.append(connectionInfo2.getRssi());
                fVar.f7299g = sb13.toString();
            }
        } catch (Exception e19) {
            e19.fillInStackTrace();
        }
        return fVar;
    }

    private void b(int i10) {
        this.f7304l = i10;
    }

    private void c(String str) {
        this.f7294b = str;
    }

    private boolean d() {
        return this.f7304l != 0;
    }

    private double e() {
        return this.f7304l;
    }

    private void f(String str) {
        this.f7295c = str;
    }

    private List<Map<String, String>> g() {
        WifiManager wifiManager;
        List<ScanResult> scanResults;
        ArrayList arrayList = new ArrayList();
        Context context = this.f7293a;
        if (context == null || (wifiManager = (WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)) == null || (scanResults = wifiManager.getScanResults()) == null) {
            return arrayList;
        }
        for (ScanResult scanResult : scanResults) {
            HashMap map = new HashMap();
            String str = scanResult.BSSID;
            if (str == null) {
                str = "";
            }
            map.put("wifiMac", str);
            map.put(BuildQRCodeActivity_.SSID_EXTRA, scanResult.SSID);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(scanResult.level);
            map.put("rssi", sb2.toString());
            arrayList.add(map);
        }
        return arrayList;
    }

    private void h(String str) {
        this.f7296d = str;
    }

    private void i(String str) {
        this.f7297e = str;
    }

    private boolean j() {
        LocationManager locationManager;
        Context context = this.f7293a;
        if (context == null || (locationManager = (LocationManager) context.getSystemService("location")) == null) {
            return false;
        }
        return locationManager.isProviderEnabled(Constants.WS_MESSAGE_TYPE_GPS);
    }

    private void k(String str) {
        this.f7298f = str;
    }

    private boolean l() {
        WifiManager wifiManager;
        WifiInfo connectionInfo;
        WifiManager wifiManager2;
        List<WifiConfiguration> configuredNetworks;
        Context context = this.f7293a;
        if (context == null || (wifiManager = (WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)) == null || (connectionInfo = wifiManager.getConnectionInfo()) == null) {
            return false;
        }
        Context context2 = this.f7293a;
        String ssid = connectionInfo.getSSID();
        WifiConfiguration wifiConfiguration = null;
        if (context2 != null && ssid != null && (wifiManager2 = (WifiManager) context2.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)) != null && (configuredNetworks = wifiManager2.getConfiguredNetworks()) != null) {
            for (WifiConfiguration wifiConfiguration2 : configuredNetworks) {
                if (wifiConfiguration2.SSID.equals(ssid)) {
                    wifiConfiguration = wifiConfiguration2;
                    break;
                }
            }
        }
        if (wifiConfiguration == null) {
            return false;
        }
        char c10 = 2;
        if (!wifiConfiguration.allowedKeyManagement.get(1)) {
            c10 = 3;
            if (!wifiConfiguration.allowedKeyManagement.get(2) && !wifiConfiguration.allowedKeyManagement.get(3)) {
                c10 = wifiConfiguration.wepKeys[0] != null ? (char) 1 : (char) 0;
            }
        }
        return c10 != 0;
    }

    private String m() {
        return this.f7294b;
    }

    private void n(String str) {
        this.f7299g = str;
    }

    private String o() {
        return this.f7295c;
    }

    private void p(String str) {
        this.f7300h = str;
    }

    private String q() {
        return this.f7296d;
    }

    private void r(String str) {
        this.f7301i = str;
    }

    private String s() {
        return this.f7297e;
    }

    private void t(String str) {
        this.f7302j = str;
    }

    private String u() {
        return this.f7298f;
    }

    private void v(String str) {
        this.f7303k = str;
    }

    private String w() {
        return this.f7299g;
    }

    private String x() {
        return this.f7300h;
    }

    private String y() {
        return this.f7301i;
    }

    private String z() {
        return this.f7302j;
    }
}
