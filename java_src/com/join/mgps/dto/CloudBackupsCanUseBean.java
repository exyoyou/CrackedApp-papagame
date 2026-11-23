package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class CloudBackupsCanUseBean implements Serializable {
    private String add_time;
    private String brand_name;
    private String rid;

    public String getAdd_time() {
        return this.add_time;
    }

    public String getBrand_name() {
        return this.brand_name;
    }

    public String getRid() {
        return this.rid;
    }

    public void setAdd_time(String add_time) {
        this.add_time = add_time;
    }

    public void setBrand_name(String brand_name) {
        this.brand_name = brand_name;
    }

    public void setRid(String rid) {
        this.rid = rid;
    }
}
