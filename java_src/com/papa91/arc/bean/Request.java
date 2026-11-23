package com.papa91.arc.bean;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.papa91.arc.http.utils.MetaUtils;

/* JADX INFO: loaded from: classes2.dex */
public class Request<T> {
    private T args;
    private int channelNum;
    private String package_name;
    private String package_type;
    private String platform;
    private String sign;
    private int target_version;
    private String version;
    private boolean wf;
    private String androidId = "";
    private String deviceId = "";

    public Request(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            this.version = packageInfo.versionCode + "_" + packageInfo.versionName;
            this.target_version = context.getApplicationInfo().targetSdkVersion;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
        }
        String ad2 = MetaUtils.getAd(context);
        if (TextUtils.isEmpty(ad2)) {
            this.channelNum = 0;
            return;
        }
        try {
            this.channelNum = Integer.parseInt(ad2);
        } catch (Exception unused) {
            this.channelNum = 0;
        }
    }

    public static <T> Request<T> getRequest(Context context, T t10) {
        Request<T> request = new Request<>(context);
        request.setArgs(t10);
        return request;
    }

    public String getAndroidId() {
        return this.androidId;
    }

    public T getArgs() {
        return this.args;
    }

    public int getChannelNum() {
        return this.channelNum;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getPackage_name() {
        return this.package_name;
    }

    public String getPackage_type() {
        return this.package_type;
    }

    public String getPlatform() {
        return this.platform;
    }

    public String getSign() {
        return this.sign;
    }

    public int getTarget_version() {
        return this.target_version;
    }

    public String getVersion() {
        return this.version;
    }

    public boolean isWf() {
        return this.wf;
    }

    public void setAndroidId(String str) {
        this.androidId = str;
    }

    public void setArgs(T t10) {
        this.args = t10;
    }

    public void setChannelNum(int i10) {
        this.channelNum = i10;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public void setPackage_name(String str) {
        this.package_name = str;
    }

    public void setPackage_type(String str) {
        this.package_type = str;
    }

    public void setPlatform(String str) {
        this.platform = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setTarget_version(int i10) {
        this.target_version = i10;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public void setWf(boolean z10) {
        this.wf = z10;
    }
}
