package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CloudList implements Serializable {
    private List<CloudRecord> backup_list;

    public List<CloudRecord> getBackup_list() {
        return this.backup_list;
    }

    public void setBackup_list(List<CloudRecord> backup_list) {
        this.backup_list = backup_list;
    }
}
