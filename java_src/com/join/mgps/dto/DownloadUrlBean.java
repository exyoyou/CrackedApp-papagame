package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class DownloadUrlBean implements Serializable {
    private String down_source_name;
    private String down_source_url;
    private int down_url_type;
    private int is_confirm;

    public String getDown_source_name() {
        return this.down_source_name;
    }

    public String getDown_source_url() {
        return this.down_source_url;
    }

    public int getDown_url_type() {
        return this.down_url_type;
    }

    public int getIs_confirm() {
        return this.is_confirm;
    }

    public void setDown_source_name(String down_source_name) {
        this.down_source_name = down_source_name;
    }

    public void setDown_source_url(String down_source_url) {
        this.down_source_url = down_source_url;
    }

    public void setDown_url_type(int down_url_type) {
        this.down_url_type = down_url_type;
    }

    public void setIs_confirm(int is_confirm) {
        this.is_confirm = is_confirm;
    }
}
