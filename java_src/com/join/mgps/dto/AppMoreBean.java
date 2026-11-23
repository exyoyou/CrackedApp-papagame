package com.join.mgps.dto;

import com.join.mgps.Util.IntentDateBean;

/* JADX INFO: loaded from: classes3.dex */
public class AppMoreBean {
    private String crc_link_type_val;
    private int is_more;
    private int jump_type;
    private int link_type;
    private String link_type_val;
    private String tpl_type;

    public AppMoreBean() {
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public IntentDateBean getIntentDataBean() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setJump_type(this.jump_type);
        intentDateBean.setLink_type(this.link_type);
        intentDateBean.setLink_type_val(this.link_type_val);
        intentDateBean.setTpl_type(this.tpl_type);
        intentDateBean.setCrc_link_type_val(this.crc_link_type_val);
        return intentDateBean;
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

    public AppMoreBean(int link_type, String link_type_val, String tpl_type, String crc_link_type_val, int jump_type, int is_more) {
        this.link_type = link_type;
        this.link_type_val = link_type_val;
        this.tpl_type = tpl_type;
        this.crc_link_type_val = crc_link_type_val;
        this.jump_type = jump_type;
        this.is_more = is_more;
    }

    public AppMoreBean(int link_type, String link_type_val, int jump_type) {
        this.link_type = link_type;
        this.link_type_val = link_type_val;
        this.jump_type = jump_type;
    }
}
