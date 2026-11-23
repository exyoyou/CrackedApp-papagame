package com.bytedance.sdk.openadsdk.mediation.ad;

import com.byazt.zqa.c;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 80, 81, 82, 83, 686, 1991})
public class MediationNativeAdAppInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f23520a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f23521c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    private String f23522da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Map<String, Object> f23523i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Map<String, String> f23524n;
    private String sp;
    private String tt;
    private String uj;
    private long ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f23525x;

    public Map<String, Object> getAppInfoExtra() {
        return this.f23523i;
    }

    public String getAppName() {
        return this.f23521c;
    }

    public String getAuthorName() {
        return this.tt;
    }

    public String getFunctionDescUrl() {
        return this.f23525x;
    }

    public long getPackageSizeBytes() {
        return this.ve;
    }

    public Map<String, String> getPermissionsMap() {
        return this.f23524n;
    }

    public String getPermissionsUrl() {
        return this.uj;
    }

    public String getPrivacyAgreement() {
        return this.f23520a;
    }

    public String getRegUrl() {
        return this.f23522da;
    }

    public String getVersionName() {
        return this.sp;
    }

    public void setAppInfoExtra(Map<String, Object> map) {
        this.f23523i = map;
    }

    public void setAppName(String str) {
        this.f23521c = str;
    }

    public void setAuthorName(String str) {
        this.tt = str;
    }

    public void setFunctionDescUrl(String str) {
        this.f23525x = str;
    }

    public void setPackageSizeBytes(long j10) {
        this.ve = j10;
    }

    public void setPermissionsMap(Map<String, String> map) {
        this.f23524n = map;
    }

    public void setPermissionsUrl(String str) {
        this.uj = str;
    }

    public void setPrivacyAgreement(String str) {
        this.f23520a = str;
    }

    public void setRegUrl(String str) {
        this.f23522da = str;
    }

    public void setVersionName(String str) {
        this.sp = str;
    }
}
