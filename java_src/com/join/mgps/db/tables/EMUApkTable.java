package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.dto.ApkVersionbean;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class EMUApkTable implements Serializable {

    @DatabaseField
    private String apkPath;

    @DatabaseField
    private String apk_name;
    private boolean canUpdate;

    @DatabaseField
    private int down_type;

    @DatabaseField
    private String down_url;

    @DatabaseField
    private int downloadFinish;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67246id;
    private boolean isArena;

    @DatabaseField
    private String launch_name;

    @DatabaseField
    private String logo;

    @DatabaseField
    private int notUpdateversion;

    @DatabaseField
    private String package_name;

    @DatabaseField
    private String release_date;

    @DatabaseField
    private String remark;

    @DatabaseField
    private String size;

    @DatabaseField
    private String tag_id;

    @DatabaseField
    private String team_info;

    @DatabaseField
    private String ver;

    @DatabaseField
    private String ver_compatible;

    @DatabaseField
    private String ver_info;

    public EMUApkTable() {
    }

    public String getApkPath() {
        return this.apkPath;
    }

    public String getApk_name() {
        return this.apk_name;
    }

    public int getDown_type() {
        return this.down_type;
    }

    public String getDown_url() {
        return this.down_url;
    }

    public int getDownloadFinish() {
        return this.downloadFinish;
    }

    public int getId() {
        return this.f67246id;
    }

    public String getLaunch_name() {
        return this.launch_name;
    }

    public String getLogo() {
        return this.logo;
    }

    public int getNotUpdateversion() {
        return this.notUpdateversion;
    }

    public String getPackage_name() {
        return this.package_name;
    }

    public String getRelease_date() {
        return this.release_date;
    }

    public String getRemark() {
        return this.remark;
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

    public int getVerCode() {
        String str = this.ver;
        if (str != null && !str.equals("")) {
            String[] strArrSplit = this.ver.split("_");
            if (strArrSplit.length > 0) {
                return Integer.parseInt(strArrSplit[0]);
            }
        }
        return 0;
    }

    public String getVerName() {
        String str = this.ver;
        if (str != null && !str.equals("")) {
            String[] strArrSplit = this.ver.split("_");
            if (strArrSplit.length > 1) {
                return strArrSplit[1];
            }
        }
        return "";
    }

    public String getVer_compatible() {
        return this.ver_compatible;
    }

    public String getVer_info() {
        return this.ver_info;
    }

    public boolean isArena() {
        return this.isArena;
    }

    public boolean isCanUpdate() {
        return this.canUpdate;
    }

    public void setApkPath(String apkPath) {
        this.apkPath = apkPath;
    }

    public void setApk_name(String apk_name) {
        this.apk_name = apk_name;
    }

    public void setArena(boolean arena) {
        this.isArena = arena;
    }

    public void setCanUpdate(boolean canUpdate) {
        this.canUpdate = canUpdate;
    }

    public void setDown_type(int down_type) {
        this.down_type = down_type;
    }

    public void setDown_url(String down_url) {
        this.down_url = down_url;
    }

    public void setDownloadFinish(int downloadFinish) {
        this.downloadFinish = downloadFinish;
    }

    public void setId(int id2) {
        this.f67246id = id2;
    }

    public void setLaunch_name(String launch_name) {
        this.launch_name = launch_name;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public void setNotUpdateversion(int notUpdateversion) {
        this.notUpdateversion = notUpdateversion;
    }

    public void setPackage_name(String package_name) {
        this.package_name = package_name;
    }

    public void setRelease_date(String release_date) {
        this.release_date = release_date;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public void setTag_id(String tag_id) {
        this.tag_id = tag_id;
    }

    public void setTeam_info(String team_info) {
        this.team_info = team_info;
    }

    public void setVer(String ver) {
        this.ver = ver;
    }

    public void setVer_compatible(String ver_compatible) {
        this.ver_compatible = ver_compatible;
    }

    public void setVer_info(String ver_info) {
        this.ver_info = ver_info;
    }

    public EMUApkTable(ApkVersionbean versionbean) {
        setApk_name(versionbean.getApk_name());
        setDown_url(versionbean.getDown_url());
        setLaunch_name(versionbean.getLaunch_name());
        setLogo(versionbean.getLogo());
        setPackage_name(versionbean.getPackage_name());
        setRelease_date(versionbean.getRelease_date());
        setSize(versionbean.getSize());
        setTag_id(versionbean.getTag_id());
        setTeam_info(versionbean.getTeam_info());
        setVer(versionbean.getVer());
        setVer_compatible(versionbean.getVer_compatible());
        setVer_info(versionbean.getVer_info());
        setDown_type(versionbean.getDown_type());
        setRemark(JsonMapper.toJsonString(versionbean.getPlugin_md5()));
    }
}
