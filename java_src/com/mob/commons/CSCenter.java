package com.mob.commons;

import android.content.pm.PackageInfo;
import android.location.Location;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.telephony.CellInfo;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.ServiceState;
import android.telephony.SubscriptionInfo;
import com.mob.MobCustomController;
import com.mob.tools.proguard.PublicMemberKeeper;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CSCenter implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile CSCenter f75457a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final cn.fly.commons.CSCenter f75458b = cn.fly.commons.CSCenter.getInstance();

    private CSCenter() {
    }

    public static CSCenter getInstance() {
        if (f75457a == null) {
            synchronized (CSCenter.class) {
                if (f75457a == null) {
                    f75457a = new CSCenter();
                }
            }
        }
        return f75457a;
    }

    public int getActiveSubscriptionInfoCount() {
        return this.f75458b.getActiveSubscriptionInfoCount();
    }

    public List<SubscriptionInfo> getActiveSubscriptionInfoList() {
        return this.f75458b.getActiveSubscriptionInfoList();
    }

    public String getAdvertisingId() {
        return this.f75458b.getAdvertisingId();
    }

    public List<CellInfo> getAllCellInfo() {
        return this.f75458b.getAllCellInfo();
    }

    public String getCellIpv4() {
        return this.f75458b.getCellIpv4();
    }

    public String getCellIpv6() {
        return this.f75458b.getCellIpv6();
    }

    public CellLocation getCellLocation() {
        return this.f75458b.getCellLocation();
    }

    public WifiInfo getConnectionInfo() {
        return this.f75458b.getConnectionInfo();
    }

    public String getIpAddress() {
        return this.f75458b.getIpAddress();
    }

    public Location getLocation() {
        return this.f75458b.getLocation();
    }

    public List<NeighboringCellInfo> getNeighboringCellInfo() {
        return this.f75458b.getNeighboringCellInfo();
    }

    public int getNetworkType() {
        return this.f75458b.getNetworkType();
    }

    public String getOaid() {
        return this.f75458b.getOaid();
    }

    public List<PackageInfo> getPackageInfos() {
        return this.f75458b.getPackageInfos();
    }

    public ServiceState getServiceState() {
        return this.f75458b.getServiceState();
    }

    public String getSimOperator() {
        return this.f75458b.getSimOperator();
    }

    public String getSimOperatorName() {
        return this.f75458b.getSimOperatorName();
    }

    public List<ScanResult> getWifiScanResults() {
        return this.f75458b.getWifiScanResults();
    }

    public boolean isAdvertisingIdEnable() {
        return this.f75458b.isAdvertisingIdEnable();
    }

    public boolean isAndroidIdEnable() {
        return this.f75458b.isAndroidIdEnable();
    }

    public boolean isAppListDataEnable() {
        return this.f75458b.isAppListDataEnable();
    }

    public boolean isCellLocationDataEnable() {
        return this.f75458b.isCellLocationDataEnable();
    }

    public boolean isConfigEnable() {
        return this.f75458b.isConfigEnable();
    }

    public boolean isCusControllerNotNull() {
        return this.f75458b.isCusControllerNotNull();
    }

    public boolean isDREnable() {
        return this.f75458b.isDREnable();
    }

    public boolean isIpAddressEnable() {
        return this.f75458b.isIpAddressEnable();
    }

    public boolean isLocationDataEnable() {
        return this.f75458b.isLocationDataEnable();
    }

    public boolean isOaidEnable() {
        return this.f75458b.isOaidEnable();
    }

    public boolean isPhoneStateDataEnable() {
        return this.f75458b.isPhoneStateDataEnable();
    }

    public boolean isSocietyPlatformDataEnable() {
        return this.f75458b.isSocietyPlatformDataEnable();
    }

    public boolean isWifiDataEnable() {
        return this.f75458b.isWifiDataEnable();
    }

    public void updateCustomController(MobCustomController mobCustomController) {
        this.f75458b.updateCustomController(com.mob.a.a(mobCustomController));
    }
}
