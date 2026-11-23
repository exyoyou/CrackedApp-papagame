package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class MustPlayAdSub {
    private String crc_link_type_val;
    private String game_count;
    private String is_more;
    private String jump_type;
    private String link_type;
    private String link_type_val;
    private String tpl_type;

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public String getGame_count() {
        return this.game_count;
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

    public void setGame_count(String game_count) {
        this.game_count = game_count;
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

    public String toString() {
        return "MustPlayAdSub{link_type='" + this.link_type + "', link_type_val='" + this.link_type_val + "', crc_link_type_val='" + this.crc_link_type_val + "', jump_type='" + this.jump_type + "', is_more='" + this.is_more + "', tpl_type='" + this.tpl_type + "', game_count='" + this.game_count + "'}";
    }
}
