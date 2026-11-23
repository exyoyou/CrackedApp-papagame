package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class SubAppDataBean {
    private String crc_link_type_val;
    private SubAppGameInfoBean game_info;
    private String is_more;
    private String jump_type;
    private String link_type;
    private String link_type_val;
    private String tpl_type;

    public SubAppDataBean() {
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public SubAppGameInfoBean getGame_info() {
        return this.game_info;
    }

    public String getIs_more() {
        return this.is_more;
    }

    public String getJump_type() {
        return this.jump_type;
    }

    public String getLink_type() {
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

    public void setGame_info(SubAppGameInfoBean game_info) {
        this.game_info = game_info;
    }

    public void setIs_more(String is_more) {
        this.is_more = is_more;
    }

    public void setJump_type(String jump_type) {
        this.jump_type = jump_type;
    }

    public void setLink_type(String link_type) {
        this.link_type = link_type;
    }

    public void setLink_type_val(String link_type_val) {
        this.link_type_val = link_type_val;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }

    public SubAppDataBean(String link_type, String link_type_val, String crc_link_type_val, String jump_type, String is_more, SubAppGameInfoBean game_info, String tpl_type) {
        this.link_type = link_type;
        this.link_type_val = link_type_val;
        this.crc_link_type_val = crc_link_type_val;
        this.jump_type = jump_type;
        this.is_more = is_more;
        this.game_info = game_info;
        this.tpl_type = tpl_type;
    }
}
