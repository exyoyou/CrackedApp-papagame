package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class RecommendGameBean implements Serializable {
    private String ico_remote;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f68088id;
    private int sp_tpl_two_position;
    private String title;
    private String tpl_type;

    public String getIco_remote() {
        return this.ico_remote;
    }

    public String getId() {
        return this.f68088id;
    }

    public int getSp_tpl_two_position() {
        return this.sp_tpl_two_position;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setIco_remote(String ico_remote) {
        this.ico_remote = ico_remote;
    }

    public void setId(String id2) {
        this.f68088id = id2;
    }

    public void setSp_tpl_two_position(int sp_tpl_two_position) {
        this.sp_tpl_two_position = sp_tpl_two_position;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }
}
