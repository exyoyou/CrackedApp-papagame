package com.join.mgps.dto;

import com.join.mgps.Util.IntentDateBean;

/* JADX INFO: loaded from: classes3.dex */
public class CompanySubBean {
    private String crc_link_type_val;
    private String game_count;
    private AppBean game_info;
    private int jump_type;
    private int link_type;
    private String link_type_val;
    private String tpl_type;

    public CompanySubBean() {
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public String getGame_count() {
        return this.game_count;
    }

    public AppBean getGame_info() {
        return this.game_info;
    }

    public IntentDateBean getIntentDataBean() {
        AppBean appBean;
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setJump_type(this.jump_type);
        intentDateBean.setLink_type(this.link_type);
        intentDateBean.setLink_type_val(this.link_type_val);
        if (this.link_type != 1 || (appBean = this.game_info) == null) {
            intentDateBean.setTpl_type(this.tpl_type);
        } else {
            intentDateBean.setTpl_type(appBean.getGame_info_tpl_type());
        }
        intentDateBean.setCrc_link_type_val(this.crc_link_type_val);
        return intentDateBean;
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

    public void setGame_count(String game_count) {
        this.game_count = game_count;
    }

    public void setGame_info(AppBean game_info) {
        this.game_info = game_info;
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

    public CompanySubBean(int link_type, String link_type_val, String crc_link_type_val, int jump_type, String game_count, String tpl_type) {
        this.link_type = link_type;
        this.link_type_val = link_type_val;
        this.crc_link_type_val = crc_link_type_val;
        this.jump_type = jump_type;
        this.game_count = game_count;
        this.tpl_type = tpl_type;
    }
}
