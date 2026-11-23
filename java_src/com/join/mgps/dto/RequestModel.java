package com.join.mgps.dto;

import android.content.Context;
import com.join.android.app.common.utils.q;
import com.join.android.app.mgsim.wufun.b;
import com.join.mgps.Util.k2;
import com.papa.sim.statistic.m;

/* JADX INFO: loaded from: classes3.dex */
public class RequestModel<E> {
    private String androidId;
    private E args;
    private String channelNum;
    private String deviceId;
    private String sign;
    private Long uid;
    private String userToken;
    private String version;
    private String platform = "wufun";
    private String package_type = "wufun";
    private String package_name = "com.join.android.app.mgsim.wufun";
    private int target_version = b.f35541n.intValue();

    public RequestModel() {
    }

    public String getAndroidId() {
        return this.androidId;
    }

    public E getArgs() {
        return this.args;
    }

    public String getChannelNum() {
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

    public Long getUid() {
        return this.uid;
    }

    public String getUserToken() {
        return this.userToken;
    }

    public String getVersion() {
        return this.version;
    }

    public RequestModel<E> makeSign() {
        this.sign = k2.h(this);
        return this;
    }

    public void setAndroidId(String androidId) {
        this.androidId = androidId;
    }

    public void setArgs(E args) {
        this.args = args;
    }

    public void setChannelNum(String channelNum) {
        this.channelNum = channelNum;
    }

    public RequestModel setDefault(Context context) {
        try {
            this.platform = "wufun";
            this.channelNum = m.a(context);
            this.version = q.n(context).z() + "_" + q.n(context).A();
            this.deviceId = "";
            this.androidId = "";
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return this;
    }

    public void setDeviceId(String deviceId) {
        this.deviceId = deviceId;
    }

    public void setPackage_name(String package_name) {
        this.package_name = package_name;
    }

    public void setPackage_type(String package_type) {
        this.package_type = package_type;
    }

    public void setPlatform(String platform) {
        this.platform = platform;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setTarget_version(int target_version) {
        this.target_version = target_version;
    }

    public void setUid(Long uid) {
        this.uid = uid;
    }

    public void setUserToken(String userToken) {
        this.userToken = userToken;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public RequestModel(Context context) {
        setDefault(context);
    }
}
