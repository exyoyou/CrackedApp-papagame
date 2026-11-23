package com.join.mgps.dto;

import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.t2;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class VipPopData implements Serializable {
    private int ad_switch;
    private String crc_link_type_val;
    private String game_info_tpl_type;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f68128id;
    private String jump_type;
    private String link_type;
    private String link_type_val;
    private String pic_remote;
    private String plugin_num = "";
    private String sync_memory;
    private String title;
    private String tpl_type;
    private String type;

    public int getAd_switch() {
        return this.ad_switch;
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public String getGame_info_tpl_type() {
        return this.game_info_tpl_type;
    }

    public int getId() {
        return this.f68128id;
    }

    public IntentDateBean getIntentDataBean() {
        IntentDateBean intentDateBean = new IntentDateBean();
        if (t2.i(this.jump_type)) {
            intentDateBean.setJump_type(Integer.parseInt(this.jump_type));
        }
        if (t2.i(this.link_type)) {
            intentDateBean.setLink_type(Integer.parseInt(this.link_type));
        }
        intentDateBean.setLink_type_val(this.link_type_val);
        intentDateBean.setTpl_type(this.tpl_type);
        intentDateBean.setCrc_link_type_val(this.crc_link_type_val);
        return intentDateBean;
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

    public String getPic_remote() {
        return this.pic_remote;
    }

    public String getPlugin_num() {
        return this.plugin_num;
    }

    public String getSync_memory() {
        return this.sync_memory;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public String getType() {
        return this.type;
    }

    public void setAd_switch(int ad_switch) {
        this.ad_switch = ad_switch;
    }

    public void setCrc_link_type_val(String crc_link_type_val) {
        this.crc_link_type_val = crc_link_type_val;
    }

    public void setGame_info_tpl_type(String game_info_tpl_type) {
        this.game_info_tpl_type = game_info_tpl_type;
    }

    public void setId(int id2) {
        this.f68128id = id2;
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

    public void setPic_remote(String pic_remote) {
        this.pic_remote = pic_remote;
    }

    public void setPlugin_num(String plugin_num) {
        this.plugin_num = plugin_num;
    }

    public void setSync_memory(String sync_memory) {
        this.sync_memory = sync_memory;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
