package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class FileInfo implements Serializable {
    public static final int FILE_TYPE_APK = 2;
    public static final int FILE_TYPE_UNKNOWN = 0;
    public static final int FILE_TYPE_ZIP = 3;
    public static final int FILE_TYPE_ZIP_APK = 1;
    private int fileType = 0;
    public String path;
    public String pkg;
    public long size;
    public long time;
    public String title;
    public int versionCode;
    public String versionName;

    public int getFileType() {
        return this.fileType;
    }

    public String getPath() {
        return this.path;
    }

    public String getPkg() {
        return this.pkg;
    }

    public long getSize() {
        return this.size;
    }

    public long getTime() {
        return this.time;
    }

    public String getTitle() {
        return this.title;
    }

    public int getVersionCode() {
        return this.versionCode;
    }

    public String getVersionName() {
        return this.versionName;
    }

    public void setFileType(int fileType) {
        this.fileType = fileType;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public void setPkg(String pkg) {
        this.pkg = pkg;
    }

    public void setSize(long size) {
        this.size = size;
    }

    public void setTime(long time) {
        this.time = time;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setVersionCode(int versionCode) {
        this.versionCode = versionCode;
    }

    public void setVersionName(String versionName) {
        this.versionName = versionName;
    }

    public String toString() {
        return "FileInfo{pkg='" + this.pkg + "', versionName='" + this.versionName + "', versionCode=" + this.versionCode + ", size=" + this.size + ", time=" + this.time + ", path='" + this.path + "', title='" + this.title + "'}";
    }
}
