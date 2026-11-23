package com.join.mgps.activity.login;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes9.dex */
public class LoginBase {
    private String deviceId;
    private String mac;
    private String sign;
    private String version;

    public void getData(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            this.version = packageInfo.versionCode + "_" + packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
        }
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getMac() {
        return this.mac;
    }

    public String getSign() {
        return this.sign;
    }

    public String getVersion() {
        return this.version;
    }

    public void setDeviceId(String deviceId) {
        this.deviceId = deviceId;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setVersion(String version) {
        this.version = version;
    }
}
