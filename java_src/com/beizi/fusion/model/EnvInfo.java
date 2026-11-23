package com.beizi.fusion.model;

import android.content.Context;
import android.os.Debug;
import com.beizi.fusion.c.b;
import com.beizi.fusion.tool.au;
import com.beizi.fusion.tool.p;
import com.beizi.fusion.tool.r;
import com.beizi.fusion.tool.z;

/* JADX INFO: loaded from: classes6.dex */
public class EnvInfo {
    private String developerMode;
    private String isDebugApk;
    private String isDebugConnected;
    private String isLockScreen;
    private String isSimulator;
    private String isUsb;
    private String isVpn;
    private String isWifiProxy;
    private String isp;

    /* JADX INFO: renamed from: net, reason: collision with root package name */
    private String f10282net;
    private String userAgent;

    public EnvInfo(Context context) {
        this.userAgent = z.a().a(context);
        this.f10282net = String.valueOf(p.b(context));
        if (b.a().s()) {
            this.isp = String.valueOf(p.a(context));
        } else {
            this.isp = b.a().t();
        }
        this.developerMode = String.valueOf(au.g(context));
        this.isDebugApk = String.valueOf(au.f(context));
        this.isDebugConnected = String.valueOf(Debug.isDebuggerConnected());
        this.isWifiProxy = String.valueOf(au.h(context));
        this.isVpn = String.valueOf(au.b());
        this.isSimulator = String.valueOf(r.a().a(context));
    }

    public String getIsp() {
        return this.isp;
    }

    public String getNet() {
        return this.f10282net;
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    public String isDeveloperMode() {
        return this.developerMode;
    }

    public String isIsDebugApk() {
        return this.isDebugApk;
    }

    public String isIsDebugConnected() {
        return this.isDebugConnected;
    }

    public String isIsLockScreen() {
        return this.isLockScreen;
    }

    public String isIsSimulator() {
        return this.isSimulator;
    }

    public String isIsUsb() {
        return this.isUsb;
    }

    public String isIsVpn() {
        return this.isVpn;
    }

    public String isIsWifiProxy() {
        return this.isWifiProxy;
    }

    public void setDeveloperMode(String str) {
        this.developerMode = str;
    }

    public void setIsDebugApk(String str) {
        this.isDebugApk = str;
    }

    public void setIsDebugConnected(String str) {
        this.isDebugConnected = str;
    }

    public void setIsLockScreen(String str) {
        this.isLockScreen = str;
    }

    public void setIsSimulator(String str) {
        this.isSimulator = str;
    }

    public void setIsUsb(String str) {
        this.isUsb = str;
    }

    public void setIsVpn(String str) {
        this.isVpn = str;
    }

    public void setIsWifiProxy(String str) {
        this.isWifiProxy = str;
    }

    public void setIsp(String str) {
        this.isp = str;
    }

    public void setNet(String str) {
        this.f10282net = str;
    }

    public void setUserAgent(String str) {
        this.userAgent = str;
    }
}
