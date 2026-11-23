package com.mob;

import android.content.pm.PackageInfo;
import android.location.Location;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.telephony.CellInfo;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.ServiceState;
import android.telephony.SubscriptionInfo;
import cn.fly.FlyCustomController;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a extends FlyCustomController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MobCustomController f75456a;

    private a(MobCustomController mobCustomController) {
        this.f75456a = mobCustomController;
    }

    public static a a(MobCustomController mobCustomController) {
        if (mobCustomController == null) {
            return null;
        }
        return new a(mobCustomController);
    }

    @Override // cn.fly.FlyCustomController
    public int getActiveSubscriptionInfoCount() {
        return this.f75456a.getActiveSubscriptionInfoCount();
    }

    @Override // cn.fly.FlyCustomController
    public List<SubscriptionInfo> getActiveSubscriptionInfoList() {
        return this.f75456a.getActiveSubscriptionInfoList();
    }

    @Override // cn.fly.FlyCustomController
    public String getAdvertisingId() {
        return this.f75456a.getAdvertisingId();
    }

    @Override // cn.fly.FlyCustomController
    public List<CellInfo> getAllCellInfo() {
        return this.f75456a.getAllCellInfo();
    }

    @Override // cn.fly.FlyCustomController
    public String getCellIpv4() {
        return this.f75456a.getCellIpv4();
    }

    @Override // cn.fly.FlyCustomController
    public String getCellIpv6() {
        return this.f75456a.getCellIpv6();
    }

    @Override // cn.fly.FlyCustomController
    public CellLocation getCellLocation() {
        return this.f75456a.getCellLocation();
    }

    @Override // cn.fly.FlyCustomController
    public WifiInfo getConnectionInfo() {
        return this.f75456a.getConnectionInfo();
    }

    @Override // cn.fly.FlyCustomController
    public String getIpAddress() {
        return this.f75456a.getIpAddress();
    }

    @Override // cn.fly.FlyCustomController
    public Location getLocation() {
        return this.f75456a.getLocation();
    }

    @Override // cn.fly.FlyCustomController
    public List<NeighboringCellInfo> getNeighboringCellInfo() {
        return this.f75456a.getNeighboringCellInfo();
    }

    @Override // cn.fly.FlyCustomController
    @Deprecated
    public int getNetworkType() {
        return this.f75456a.getNetworkType();
    }

    @Override // cn.fly.FlyCustomController
    public String getOaid() {
        return this.f75456a.getOaid();
    }

    @Override // cn.fly.FlyCustomController
    public List<PackageInfo> getPackageInfos() {
        return this.f75456a.getPackageInfos();
    }

    @Override // cn.fly.FlyCustomController
    @Deprecated
    public ServiceState getServiceState() {
        return this.f75456a.getServiceState();
    }

    @Override // cn.fly.FlyCustomController
    public String getSimOperator() {
        return this.f75456a.getSimOperator();
    }

    @Override // cn.fly.FlyCustomController
    public String getSimOperatorName() {
        return this.f75456a.getSimOperatorName();
    }

    @Override // cn.fly.FlyCustomController
    public List<ScanResult> getWifiScanResults() {
        return this.f75456a.getWifiScanResults();
    }

    @Override // cn.fly.FlyCustomController
    public boolean isAdvertisingIdEnable() {
        return this.f75456a.isAdvertisingIdEnable();
    }

    @Override // cn.fly.FlyCustomController
    public boolean isAndroidIdEnable() {
        return this.f75456a.isAndroidIdEnable();
    }

    @Override // cn.fly.FlyCustomController
    public boolean isAppListDataEnable() {
        return this.f75456a.isAppListDataEnable();
    }

    @Override // cn.fly.FlyCustomController
    public boolean isCellLocationDataEnable() {
        return this.f75456a.isCellLocationDataEnable();
    }

    @Override // cn.fly.FlyCustomController
    public boolean isConfigEnable() {
        return this.f75456a.isConfigEnable();
    }

    @Override // cn.fly.FlyCustomController
    public boolean isDREnable() {
        return this.f75456a.isDREnable();
    }

    @Override // cn.fly.FlyCustomController
    public boolean isIpAddressEnable() {
        return this.f75456a.isIpAddressEnable();
    }

    @Override // cn.fly.FlyCustomController
    public boolean isLocationDataEnable() {
        return this.f75456a.isLocationDataEnable();
    }

    @Override // cn.fly.FlyCustomController
    public boolean isOaidEnable() {
        return this.f75456a.isOaidEnable();
    }

    @Override // cn.fly.FlyCustomController
    public boolean isPhoneStateDataEnable() {
        return this.f75456a.isPhoneStateDataEnable();
    }

    @Override // cn.fly.FlyCustomController
    public boolean isSocietyPlatformDataEnable() {
        return this.f75456a.isSocietyPlatformDataEnable();
    }

    @Override // cn.fly.FlyCustomController
    public boolean isWifiDataEnable() {
        return this.f75456a.isWifiDataEnable();
    }
}
