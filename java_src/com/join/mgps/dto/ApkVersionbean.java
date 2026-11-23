package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class ApkVersionbean {
    private String apk_name;
    private int down_type;
    private String down_url;
    private String head_pic;
    private String launch_name;
    private String logo;
    private String package_name;
    private ApkVersionRemarkBean plugin_md5;
    private String release_date;
    private String size;
    private String tag_id;
    private String team_info;
    private String tow_tpl_back_ground_pic;
    private int tpl_type;
    private String ver;
    private String ver_compatible;
    private String ver_info;

    public ApkVersionbean() {
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

    public String getHead_pic() {
        return this.head_pic;
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

    public ApkVersionRemarkBean getPlugin_md5() {
        return this.plugin_md5;
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

    public String getTow_tpl_back_ground_pic() {
        return this.tow_tpl_back_ground_pic;
    }

    public int getTpl_type() {
        return this.tpl_type;
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

    public void setApk_name(String apk_name) {
        this.apk_name = apk_name;
    }

    public void setDown_type(int down_type) {
        this.down_type = down_type;
    }

    public void setDown_url(String down_url) {
        this.down_url = down_url;
    }

    public void setHead_pic(String head_pic) {
        this.head_pic = head_pic;
    }

    public void setLaunch_name(String launch_name) {
        this.launch_name = launch_name;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public void setPackage_name(String package_name) {
        this.package_name = package_name;
    }

    public void setPlugin_md5(ApkVersionRemarkBean plugin_md5) {
        this.plugin_md5 = plugin_md5;
    }

    public void setRelease_date(String release_date) {
        this.release_date = release_date;
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

    public void setTow_tpl_back_ground_pic(String tow_tpl_back_ground_pic) {
        this.tow_tpl_back_ground_pic = tow_tpl_back_ground_pic;
    }

    public void setTpl_type(int tpl_type) {
        this.tpl_type = tpl_type;
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

    public ApkVersionbean(String apk_name, String logo, String package_name, String launch_name, String team_info, String ver_info, String down_url, String size, String release_date, String ver, String ver_compatible, String tag_id) {
        this.apk_name = apk_name;
        this.logo = logo;
        this.package_name = package_name;
        this.launch_name = launch_name;
        this.team_info = team_info;
        this.ver_info = ver_info;
        this.down_url = down_url;
        this.size = size;
        this.release_date = release_date;
        this.ver = ver;
        this.ver_compatible = ver_compatible;
        this.tag_id = tag_id;
    }
}
