package com.sdk.base.framework.bean;

import com.sdk.k.a;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class PInfo {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f78462c;
    private ArrayList<String> imei;
    private String mac;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f78463n;
    private String os;

    public String getC() {
        return this.f78462c;
    }

    public ArrayList<String> getImei() {
        return this.imei;
    }

    public String getMac() {
        return this.mac;
    }

    public String getN() {
        return this.f78463n;
    }

    public String getOs() {
        return this.os;
    }

    public void setC(String str) {
        this.f78462c = str;
    }

    public void setImei(ArrayList<String> arrayList) {
        this.imei = arrayList;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public void setN(String str) {
        this.f78463n = str;
    }

    public void setOs(String str) {
        this.os = str;
    }

    public String toString() {
        return a.a(this);
    }
}
