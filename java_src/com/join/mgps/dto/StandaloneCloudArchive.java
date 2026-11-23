package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class StandaloneCloudArchive implements Serializable {
    private long last_enter_main_page_time;
    private Integer location_at;
    private List<ModGameArchiveTagBean> tag_list;

    public long getLast_enter_main_page_time() {
        return this.last_enter_main_page_time;
    }

    public Integer getLocation_at() {
        return this.location_at;
    }

    public List<ModGameArchiveTagBean> getTag_list() {
        return this.tag_list;
    }

    public void setLast_enter_main_page_time(long last_enter_main_page_time) {
        this.last_enter_main_page_time = last_enter_main_page_time;
    }

    public void setLocation_at(Integer location_at) {
        this.location_at = location_at;
    }

    public void setTag_list(List<ModGameArchiveTagBean> tag_list) {
        this.tag_list = tag_list;
    }
}
