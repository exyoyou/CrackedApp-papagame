package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class JpInfoBean implements Serializable {
    private String crc_link_type_val;
    private Integer is_more;
    private Integer jump_type;
    private Integer link_type;
    private String link_type_val;
    private String tpl_type;

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public Integer getIs_more() {
        return this.is_more;
    }

    public Integer getJump_type() {
        return this.jump_type;
    }

    public Integer getLink_type() {
        return this.link_type;
    }

    public String getLink_type_val() {
        return this.link_type_val;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public boolean isGame() {
        return this.link_type.intValue() == 1;
    }

    public void setCrc_link_type_val(String crc_link_type_val) {
        this.crc_link_type_val = crc_link_type_val;
    }

    public void setIs_more(Integer is_more) {
        this.is_more = is_more;
    }

    public void setJump_type(Integer jump_type) {
        this.jump_type = jump_type;
    }

    public void setLink_type(Integer link_type) {
        this.link_type = link_type;
    }

    public void setLink_type_val(String link_type_val) {
        this.link_type_val = link_type_val;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }
}
