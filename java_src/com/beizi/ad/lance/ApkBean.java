package com.beizi.ad.lance;

import com.beizi.ad.model.c;
import java.io.Serializable;

/* JADX INFO: loaded from: classes6.dex */
public class ApkBean implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f9171a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f9172b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f9173c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f9174d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f9175e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f9176f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f9177g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f9178h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f9179i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f9180j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f9181k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f9182l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f9183m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f9184n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f9185o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f9186p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private c.b.C0229b f9187q;

    public ApkBean() {
        this.f9171a = "";
        this.f9172b = "";
        this.f9173c = "";
        this.f9175e = "";
        this.f9176f = "";
        this.f9177g = "";
        this.f9178h = "";
        this.f9179i = "";
        this.f9180j = "";
        this.f9181k = "";
        this.f9182l = "";
        this.f9183m = "";
        this.f9186p = "";
    }

    public String getApkDesc() {
        return this.f9176f;
    }

    public String getApkName() {
        return this.f9172b;
    }

    public String getApkTittleName() {
        return this.f9175e;
    }

    public String getApkUrl() {
        return this.f9171a;
    }

    public String getAppDeveloper() {
        return this.f9178h;
    }

    public String getAppIconURL() {
        return this.f9182l;
    }

    public String getAppPermissionsDesc() {
        return this.f9179i;
    }

    public String getAppPermissionsUrl() {
        return this.f9180j;
    }

    public String getAppPrivacyUrl() {
        return this.f9181k;
    }

    public String getAppVersion() {
        return this.f9177g;
    }

    public String getAppintro() {
        return this.f9183m;
    }

    public String getAuthorities() {
        return this.f9186p;
    }

    public String getDownloadPath() {
        return this.f9174d;
    }

    public String getFileMD5() {
        return this.f9184n;
    }

    public String getPkgName() {
        return this.f9173c;
    }

    public c.b.C0229b getmFollowTrackExt() {
        return this.f9187q;
    }

    public boolean isSendLocalBroadcast() {
        return this.f9185o;
    }

    public void setApkDesc(String str) {
        this.f9176f = str;
    }

    public void setApkName(String str) {
        this.f9172b = str;
    }

    public void setApkTittleName(String str) {
        this.f9175e = str;
    }

    public void setApkUrl(String str) {
        this.f9171a = str;
    }

    public void setAppDeveloper(String str) {
        this.f9178h = str;
    }

    public void setAppIconURL(String str) {
        this.f9182l = str;
    }

    public void setAppPermissionsDesc(String str) {
        this.f9179i = str;
    }

    public void setAppPermissionsUrl(String str) {
        this.f9180j = str;
    }

    public void setAppPrivacyUrl(String str) {
        this.f9181k = str;
    }

    public void setAppVersion(String str) {
        this.f9177g = str;
    }

    public void setAppintro(String str) {
        this.f9183m = str;
    }

    public void setAuthorities(String str) {
        this.f9186p = str;
    }

    public void setDownloadPath(String str) {
        this.f9174d = str;
    }

    public void setFileMD5(String str) {
        this.f9184n = str;
    }

    public void setPkgName(String str) {
        this.f9173c = str;
    }

    public void setSendLocalBroadcast(boolean z10) {
        this.f9185o = z10;
    }

    public void setmFollowTrackExt(c.b.C0229b c0229b) {
        this.f9187q = c0229b;
    }

    public ApkBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, c.b.C0229b c0229b, String str8, String str9, String str10, String str11, String str12, String str13, String str14) {
        this.f9171a = str;
        this.f9172b = str2;
        this.f9173c = str3;
        this.f9174d = str4;
        this.f9175e = str5;
        this.f9176f = str6;
        this.f9186p = str7;
        this.f9187q = c0229b;
        this.f9177g = str8;
        this.f9178h = str9;
        this.f9179i = str10;
        this.f9180j = str11;
        this.f9181k = str12;
        this.f9182l = str13;
        this.f9183m = str14;
    }
}
