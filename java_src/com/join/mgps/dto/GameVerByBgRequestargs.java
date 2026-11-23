package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameVerByBgRequestargs {
    private String package_name;
    private String version_code;
    private int version_name;

    public GameVerByBgRequestargs() {
    }

    public String getPackage_name() {
        return this.package_name;
    }

    public String getVersion_code() {
        return this.version_code;
    }

    public int getVersion_name() {
        return this.version_name;
    }

    public void setPackage_name(String package_name) {
        this.package_name = package_name;
    }

    public void setVersion_code(String version_code) {
        this.version_code = version_code;
    }

    public void setVersion_name(int version_name) {
        this.version_name = version_name;
    }

    public GameVerByBgRequestargs(String pkg, int versionCode, String versionName) {
        this.package_name = pkg;
        this.version_name = versionCode;
        this.version_code = versionName;
    }
}
