package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ApkVersionRemarkBean implements Serializable {
    private List<CheckFileBean> check_files;
    private int so_file_count;
    private String zip_md;

    public List<CheckFileBean> getCheck_files() {
        return this.check_files;
    }

    public int getSo_file_count() {
        return this.so_file_count;
    }

    public String getZip_md() {
        return this.zip_md;
    }

    public void setCheck_files(List<CheckFileBean> check_files) {
        this.check_files = check_files;
    }

    public void setSo_file_count(int so_file_count) {
        this.so_file_count = so_file_count;
    }

    public void setZip_md(String zip_md) {
        this.zip_md = zip_md;
    }
}
