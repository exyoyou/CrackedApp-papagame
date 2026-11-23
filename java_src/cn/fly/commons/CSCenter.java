package cn.fly.commons;

import android.content.pm.PackageInfo;
import android.location.Location;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.os.Build;
import android.telephony.CellInfo;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.ServiceState;
import android.telephony.SubscriptionInfo;
import cn.fly.FlyCustomController;
import cn.fly.tools.FlyLog;
import cn.fly.tools.proguard.PublicMemberKeeper;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class CSCenter implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile CSCenter f909a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile FlyCustomController f910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f911c = new a();

    public class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f913b = false;

        public a() {
        }

        public boolean a() {
            return this.f913b;
        }
    }

    protected CSCenter() {
    }

    public static CSCenter getInstance() {
        if (f909a == null) {
            synchronized (CSCenter.class) {
                if (f909a == null) {
                    f909a = new CSCenter();
                }
            }
        }
        return f909a;
    }

    public int getActiveSubscriptionInfoCount() {
        if (this.f910b == null) {
            return -1;
        }
        try {
            return this.f910b.getActiveSubscriptionInfoCount();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return -1;
        }
    }

    public List<SubscriptionInfo> getActiveSubscriptionInfoList() {
        if (this.f910b == null) {
            return null;
        }
        try {
            return this.f910b.getActiveSubscriptionInfoList();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public String getAdvertisingId() {
        if (this.f910b == null) {
            return null;
        }
        try {
            return this.f910b.getAdvertisingId();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public List<CellInfo> getAllCellInfo() {
        if (this.f910b == null) {
            return null;
        }
        try {
            return this.f910b.getAllCellInfo();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public String getBrand() {
        if (this.f910b == null) {
            return "";
        }
        try {
            return this.f910b.getBrand();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return "";
        }
    }

    public String getCellIpv4() {
        if (this.f910b == null) {
            return null;
        }
        try {
            return this.f910b.getCellIpv4();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public String getCellIpv6() {
        if (this.f910b == null) {
            return null;
        }
        try {
            return this.f910b.getCellIpv6();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public CellLocation getCellLocation() {
        if (this.f910b == null) {
            return null;
        }
        try {
            return this.f910b.getCellLocation();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public WifiInfo getConnectionInfo() {
        if (this.f910b == null) {
            return null;
        }
        try {
            return this.f910b.getConnectionInfo();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public String getIpAddress() {
        if (this.f910b == null) {
            return null;
        }
        try {
            return this.f910b.getIpAddress();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public Location getLocation() {
        if (this.f910b == null) {
            return null;
        }
        try {
            return this.f910b.getLocation();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public String getManufacturer() {
        if (this.f910b == null) {
            return "";
        }
        try {
            return this.f910b.getManufacturer();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return "";
        }
    }

    public String getModel() {
        if (this.f910b == null) {
            return "";
        }
        try {
            return this.f910b.getModel();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return "";
        }
    }

    public List<NeighboringCellInfo> getNeighboringCellInfo() {
        if (this.f910b == null) {
            return null;
        }
        try {
            return this.f910b.getNeighboringCellInfo();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public int getNetworkType() {
        if (this.f910b == null) {
            return -1;
        }
        try {
            return this.f910b.getNetworkType();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return -1;
        }
    }

    public String getOaid() {
        if (this.f910b == null) {
            return null;
        }
        try {
            this.f911c.f913b = true;
            return this.f910b.getOaid();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public List<PackageInfo> getPackageInfos() {
        if (this.f910b == null) {
            return null;
        }
        try {
            return this.f910b.getPackageInfos();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public String getROMName() {
        if (this.f910b == null) {
            return "";
        }
        try {
            return this.f910b.getROMName();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return "";
        }
    }

    public String getROMVersion() {
        if (this.f910b == null) {
            return "";
        }
        try {
            return this.f910b.getROMVersion();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return "";
        }
    }

    public int[] getScreenSize() {
        if (this.f910b != null) {
            try {
                return this.f910b.getScreenSize();
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return new int[]{0, 0};
    }

    public ServiceState getServiceState() {
        if (this.f910b == null) {
            return null;
        }
        try {
            return this.f910b.getServiceState();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public String getSimOperator() {
        if (this.f910b == null) {
            return null;
        }
        try {
            return this.f910b.getSimOperator();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public String getSimOperatorName() {
        if (this.f910b == null) {
            return null;
        }
        try {
            return this.f910b.getSimOperatorName();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public int getSystemVersionCode() {
        if (this.f910b != null) {
            try {
                return this.f910b.getSystemVersionCode();
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return Build.VERSION.SDK_INT;
    }

    public String getSystemVersionName() {
        if (this.f910b != null) {
            try {
                return this.f910b.getSystemVersionName();
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return Build.VERSION.RELEASE;
    }

    public List<ScanResult> getWifiScanResults() {
        if (this.f910b == null) {
            return null;
        }
        try {
            return this.f910b.getWifiScanResults();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public a invocationRecord() {
        return this.f911c;
    }

    public boolean isAdvertisingIdEnable() {
        if (this.f910b == null) {
            return true;
        }
        try {
            return this.f910b.isAdvertisingIdEnable();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return true;
        }
    }

    public boolean isAndroidIdEnable() {
        if (this.f910b == null) {
            return true;
        }
        try {
            return this.f910b.isAndroidIdEnable();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return true;
        }
    }

    public boolean isAppListDataEnable() {
        if (this.f910b == null) {
            return true;
        }
        try {
            return this.f910b.isAppListDataEnable();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return true;
        }
    }

    public boolean isCellLocationDataEnable() {
        if (this.f910b == null) {
            return true;
        }
        try {
            return this.f910b.isCellLocationDataEnable();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return true;
        }
    }

    public boolean isConfigEnable() {
        if (this.f910b == null) {
            return true;
        }
        try {
            return this.f910b.isConfigEnable();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return true;
        }
    }

    public boolean isCusControllerNotNull() {
        return this.f910b != null;
    }

    public boolean isDREnable() {
        if (this.f910b == null) {
            return true;
        }
        try {
            return this.f910b.isDREnable();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return true;
        }
    }

    public boolean isIpAddressEnable() {
        if (this.f910b == null) {
            return true;
        }
        try {
            return this.f910b.isIpAddressEnable();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return true;
        }
    }

    public boolean isLocationDataEnable() {
        if (this.f910b == null) {
            return true;
        }
        try {
            return this.f910b.isLocationDataEnable();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return true;
        }
    }

    public boolean isManufacturerAvailable() {
        if (this.f910b == null) {
            return true;
        }
        try {
            return this.f910b.isManufacturerAvailable();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return true;
        }
    }

    public boolean isModelAvailable() {
        if (this.f910b == null) {
            return true;
        }
        try {
            return this.f910b.isModelAvailable();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return true;
        }
    }

    public boolean isOaidEnable() {
        if (this.f910b == null) {
            return true;
        }
        try {
            return this.f910b.isOaidEnable();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return true;
        }
    }

    public boolean isPhoneStateDataEnable() {
        if (this.f910b == null) {
            return true;
        }
        try {
            return this.f910b.isPhoneStateDataEnable();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return true;
        }
    }

    public boolean isScreenInfoAvailable() {
        if (this.f910b == null) {
            return true;
        }
        try {
            return this.f910b.isScreenInfoAvailable();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return true;
        }
    }

    public boolean isSocietyPlatformDataEnable() {
        if (this.f910b == null) {
            return true;
        }
        try {
            return this.f910b.isSocietyPlatformDataEnable();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return true;
        }
    }

    public boolean isSystemInfoAvailable() {
        if (this.f910b == null) {
            return true;
        }
        try {
            return this.f910b.isSystemInfoAvailable();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return true;
        }
    }

    public boolean isWifiDataEnable() {
        if (this.f910b == null) {
            return true;
        }
        try {
            return this.f910b.isWifiDataEnable();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return true;
        }
    }

    public void updateCustomController(FlyCustomController flyCustomController) {
        FlyLog.getInstance().d("W reg mcc. pre: " + this.f910b + " cur: " + flyCustomController, new Object[0]);
        this.f910b = flyCustomController;
    }
}
