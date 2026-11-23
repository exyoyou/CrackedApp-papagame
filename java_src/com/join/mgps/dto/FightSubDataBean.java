package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class FightSubDataBean implements Serializable {
    private String crc_link_type_val;
    private FightSubGameInfoDataBean game_info;
    private int jump_type;
    private int link_type;
    private String link_type_val;
    private String tpl_type;

    public FightSubDataBean() {
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public FightSubGameInfoDataBean getGame_info() {
        return this.game_info;
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

    public void setGame_info(FightSubGameInfoDataBean game_info) {
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

    public FightSubDataBean(int link_type, String crc_link_type_val, String link_type_val, int jump_type, String tpl_type, FightSubGameInfoDataBean game_info) {
        this.link_type = link_type;
        this.crc_link_type_val = crc_link_type_val;
        this.link_type_val = link_type_val;
        this.jump_type = jump_type;
        this.tpl_type = tpl_type;
        this.game_info = game_info;
    }
}
