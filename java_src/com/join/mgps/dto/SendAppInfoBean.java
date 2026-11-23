package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class SendAppInfoBean {
    private String appname;
    private String apppackage;
    private long times;

    public SendAppInfoBean() {
    }

    public String getAppname() {
        return this.appname;
    }

    public String getApppackage() {
        return this.apppackage;
    }

    public long getTimes() {
        return this.times;
    }

    public void setAppname(String appname) {
        this.appname = appname;
    }

    public void setApppackage(String apppackage) {
        this.apppackage = apppackage;
    }

    public void setTimes(long times) {
        this.times = times;
    }

    public SendAppInfoBean(String appname, String apppackage, long times) {
        this.appname = appname;
        this.apppackage = apppackage;
        this.times = times;
    }
}
