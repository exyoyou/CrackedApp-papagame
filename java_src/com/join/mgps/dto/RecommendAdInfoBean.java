package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class RecommendAdInfoBean implements Serializable {
    private String crc_link_type_val;
    private RecommendGameBean game_info;
    private int is_more;
    private int jump_type;
    private int link_type;
    private String link_type_val;
    private String tpl_type;

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public RecommendGameBean getGame_info() {
        return this.game_info;
    }

    public int getIs_more() {
        return this.is_more;
    }

    public int getJump_type() {
        return this.jump_type;
    }

    public int getLink_type() {
        return this.link_type;
    }

    public String getLink_type_val() {
        return this.link_type_val;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setCrc_link_type_val(String crc_link_type_val) {
        this.crc_link_type_val = crc_link_type_val;
    }

    public void setGame_info(RecommendGameBean game_info) {
        this.game_info = game_info;
    }

    public void setIs_more(int is_more) {
        this.is_more = is_more;
    }

    public void setJump_type(int jump_type) {
        this.jump_type = jump_type;
    }

    public void setLink_type(int link_type) {
        this.link_type = link_type;
    }

    public void setLink_type_val(String link_type_val) {
        this.link_type_val = link_type_val;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }
}
