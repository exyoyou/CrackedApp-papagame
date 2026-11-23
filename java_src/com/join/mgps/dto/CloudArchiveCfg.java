package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class CloudArchiveCfg implements Serializable {
    private long last_enter_main_page_time;
    private int location_at;

    public long getLast_enter_main_page_time() {
        return this.last_enter_main_page_time;
    }

    public int getLocation_at() {
        return this.location_at;
    }

    public void setLast_enter_main_page_time(long last_enter_main_page_time) {
        this.last_enter_main_page_time = last_enter_main_page_time;
    }

    public void setLocation_at(int location_at) {
        this.location_at = location_at;
    }
}
