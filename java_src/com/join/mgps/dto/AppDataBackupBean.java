package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class AppDataBackupBean {
    private String[] compare_val;
    private int type;

    public AppDataBackupBean() {
        this.type = 1;
    }

    public String[] getCompare_val() {
        return this.compare_val;
    }

    public int getType() {
        return this.type;
    }

    public void setCompare_val(String[] compare_val) {
        this.compare_val = compare_val;
    }

    public void setType(int type) {
        this.type = type;
    }

    public AppDataBackupBean(String[] compare_val, int type) {
        this.compare_val = compare_val;
        this.type = type;
    }
}
