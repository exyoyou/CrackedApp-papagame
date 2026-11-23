package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class CfgInfoRequestArgs {
    private Long client_time;
    private int uid;
    private String unknown_source_cfg;

    public Long getClient_time() {
        return this.client_time;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUnknown_source_cfg() {
        return this.unknown_source_cfg;
    }

    public void setClient_time(Long client_time) {
        this.client_time = client_time;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setUnknown_source_cfg(String unknown_source_cfg) {
        this.unknown_source_cfg = unknown_source_cfg;
    }
}
