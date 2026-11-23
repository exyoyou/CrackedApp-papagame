package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class AccountVoucherAdBean {
    private String crc_link_type_val;
    private int jump_type;
    private int link_type;
    private String link_type_val;
    private String object;
    private String tpl_type;

    public AccountVoucherAdBean() {
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
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

    public String getObject() {
        return this.object;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setCrc_link_type_val(String crc_link_type_val) {
        this.crc_link_type_val = crc_link_type_val;
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

    public void setObject(String object) {
        this.object = object;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }

    public String toString() {
        return "AccountVoucherAdBean{link_type=" + this.link_type + ", jump_type=" + this.jump_type + ", link_type_val='" + this.link_type_val + "', crc_link_type_val='" + this.crc_link_type_val + "', tpl_type='" + this.tpl_type + "', object='" + this.object + "'}";
    }

    public AccountVoucherAdBean(int link_type, int jump_type, String link_type_val, String crc_link_type_val, String tpl_type, String object) {
        this.link_type = link_type;
        this.jump_type = jump_type;
        this.link_type_val = link_type_val;
        this.crc_link_type_val = crc_link_type_val;
        this.tpl_type = tpl_type;
        this.object = object;
    }
}
