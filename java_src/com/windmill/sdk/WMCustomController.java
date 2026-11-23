package com.windmill.sdk;

import android.content.pm.PackageInfo;
import android.location.Location;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public abstract class WMCustomController {
    public String getAndroidId() {
        return null;
    }

    public String getDevImei() {
        return null;
    }

    public String getDevOaid() {
        return null;
    }

    public List<PackageInfo> getInstalledPackages() {
        return null;
    }

    public Location getLocation() {
        return null;
    }

    public String getMacAddress() {
        return null;
    }

    public boolean isCanUseAndroidId() {
        return true;
    }

    public boolean isCanUseAppList() {
        return true;
    }

    public boolean isCanUseLocation() {
        return true;
    }

    public boolean isCanUseMacAddress() {
        return true;
    }

    public boolean isCanUseOaid() {
        return true;
    }

    public boolean isCanUsePermissionRecordAudio() {
        return true;
    }

    public boolean isCanUsePhoneState() {
        return true;
    }

    public boolean isCanUseWifiState() {
        return true;
    }

    public boolean isCanUseWriteExternal() {
        return true;
    }
}
