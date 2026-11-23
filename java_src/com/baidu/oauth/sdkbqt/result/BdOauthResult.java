package com.baidu.oauth.sdkbqt.result;

import com.baidu.oauth.sdkbqt.a.e;

/* JADX INFO: loaded from: classes6.dex */
public class BdOauthResult extends OauthResult implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f8256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f8257b;

    public String getCode() {
        return this.f8256a;
    }

    public String getState() {
        return this.f8257b;
    }

    public void setCode(String str) {
        this.f8256a = str;
    }

    public void setState(String str) {
        this.f8257b = str;
    }

    public String toString() {
        return "BdOauthResult: , code=" + this.f8256a + ", state = " + this.f8257b + ", isDegrade = " + this.isDegrade + ", isVisibleAuth = " + this.isVisibleAuth + ", isInstallBdApp = " + this.isInstallBdApp + ", isPassNewVersion = " + this.isPassNewVersion + ", retCode = " + getResultCode() + ", retMsg = " + getResultMsg() + ", retSubCode = " + this.resultSubCode + ", retSubMsg = " + this.resultSubMsg + ", appVersion = " + this.appVersion + ", passSdkVersion = " + this.passSdkVersion + ", allowLaunchAuthApp = " + this.allowLaunchAuthApp + ", loginStateBeforeAuth = " + this.loginStateBeforeAuth + ", loginStateAfterAuth = " + this.loginStateAfterAuth;
    }
}
