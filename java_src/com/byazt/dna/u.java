package com.byazt.dna;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public interface u {
    String getActiveSimOperatorStr();

    String getAndroidId();

    String getAsyncWifiMac();

    String getBoot();

    String getBuildSerial();

    String getCarrierName();

    String getCompilingTime();

    String getDeviceModel();

    String getDeviceName();

    int getDeviceType(boolean z10);

    int getDisplayDpi();

    String getEmuiInfo();

    String getImei(Boolean bool);

    String getImsi(Boolean bool);

    Map<String, String> getIpInfoMap(boolean z10);

    String getLanguage();

    String getLocalLanguage();

    com.byazt.fn.c getLocation(boolean z10);

    String getMacAddress(Boolean bool);

    String getMcc();

    String getMcc2();

    String getMnc();

    String getMnc2();

    String getNetworkSignalType(int i10);

    String[] getNewIpAddrs(boolean z10);

    int getOs();

    String getOsVersion();

    int getRealNetworkType(long j10);

    String getRom();

    String getRomInfo();

    String getSSID(Boolean bool);

    float getScreenBright();

    int getScreenHeight();

    int getScreenWidth();

    String getSimOperator();

    String getSimOperatorCode();

    String getTimeZone();

    int getTimeZoneInt();

    long getUnlockTime();

    String getUserAgent();

    String getVendor();

    String getWebViewUA(boolean z10);

    String getWifiMac(Boolean bool);

    boolean isScreenOn();

    void registerNetworkMonitor(com.byazt.fn.ve veVar);

    void removeNetworkMonitor(com.byazt.fn.ve veVar);
}
