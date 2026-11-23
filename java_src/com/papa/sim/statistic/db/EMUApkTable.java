package com.papa.sim.statistic.db;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class EMUApkTable implements Serializable {
    private String apkPath;
    private String apk_name;
    private String down_url;
    private int downloadFinish;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f77206id;
    private String launch_name;
    private String logo;
    private String package_name;
    private String release_date;
    private String size;
    private String tag_id;
    private String team_info;
    private String ver;
    private String ver_compatible;
    private String ver_info;

    public String getApkPath() {
        return this.apkPath;
    }

    public String getApk_name() {
        return this.apk_name;
    }

    public String getDown_url() {
        return this.down_url;
    }

    public int getDownloadFinish() {
        return this.downloadFinish;
    }

    public int getId() {
        return this.f77206id;
    }

    public String getLaunch_name() {
        return this.launch_name;
    }

    public String getLogo() {
        return this.logo;
    }

    public String getPackage_name() {
        return this.package_name;
    }

    public String getRelease_date() {
        return this.release_date;
    }

    public String getSize() {
        return this.size;
    }

    public String getTag_id() {
        return this.tag_id;
    }

    public String getTeam_info() {
        return this.team_info;
    }

    public String getVer() {
        return this.ver;
    }

    public String getVer_compatible() {
        return this.ver_compatible;
    }

    public String getVer_info() {
        return this.ver_info;
    }

    public void setApkPath(String str) {
        this.apkPath = str;
    }

    public void setApk_name(String str) {
        this.apk_name = str;
    }

    public void setDown_url(String str) {
        this.down_url = str;
    }

    public void setDownloadFinish(int i10) {
        this.downloadFinish = i10;
    }

    public void setId(int i10) {
        this.f77206id = i10;
    }

    public void setLaunch_name(String str) {
        this.launch_name = str;
    }

    public void setLogo(String str) {
        this.logo = str;
    }

    public void setPackage_name(String str) {
        this.package_name = str;
    }

    public void setRelease_date(String str) {
        this.release_date = str;
    }

    public void setSize(String str) {
        this.size = str;
    }

    public void setTag_id(String str) {
        this.tag_id = str;
    }

    public void setTeam_info(String str) {
        this.team_info = str;
    }

    public void setVer(String str) {
        this.ver = str;
    }

    public void setVer_compatible(String str) {
        this.ver_compatible = str;
    }

    public void setVer_info(String str) {
        this.ver_info = str;
    }

    public String toString() {
        return "EMUApkTable{id=" + this.f77206id + ", apk_name='" + this.apk_name + "', logo='" + this.logo + "', package_name='" + this.package_name + "', launch_name='" + this.launch_name + "', team_info='" + this.team_info + "', ver_info='" + this.ver_info + "', down_url='" + this.down_url + "', size='" + this.size + "', release_date='" + this.release_date + "', ver='" + this.ver + "', ver_compatible='" + this.ver_compatible + "', tag_id='" + this.tag_id + "', apkPath='" + this.apkPath + "', downloadFinish=" + this.downloadFinish + '}';
    }
}
