package com.join.mgps.dto;

import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.t2;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class BannerBean implements Serializable {
    private int ad_switch;
    private String crc_link_type_val;
    private String game_info_tpl_type;
    private int jump_type;
    private String label;
    private int link_type;
    private String link_type_val;
    private String pic_remote;
    private String sub_title;
    private String title;
    private String tpl_type;

    public BannerBean() {
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 == null || getClass() != o10.getClass()) {
            return false;
        }
        BannerBean bannerBean = (BannerBean) o10;
        if (this.link_type == bannerBean.link_type && this.jump_type == bannerBean.jump_type && t2.g(this.title).equals(t2.g(bannerBean.title)) && t2.g(this.pic_remote).equals(t2.g(bannerBean.pic_remote)) && t2.g(this.link_type_val).equals(t2.g(bannerBean.link_type_val)) && t2.g(this.tpl_type).equals(t2.g(bannerBean.tpl_type)) && t2.g(this.crc_link_type_val).equals(t2.g(bannerBean.crc_link_type_val))) {
            return t2.g(this.game_info_tpl_type).equals(t2.g(bannerBean.game_info_tpl_type));
        }
        return false;
    }

    public int getAd_switch() {
        return this.ad_switch;
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public String getGame_info_tpl_type() {
        return this.game_info_tpl_type;
    }

    public IntentDateBean getIntentDataBean() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setJump_type(this.jump_type);
        intentDateBean.setLink_type(this.link_type);
        intentDateBean.setLink_type_val(this.link_type_val);
        if (this.link_type == 1) {
            intentDateBean.setTpl_type(this.game_info_tpl_type);
        } else {
            intentDateBean.setTpl_type(this.tpl_type);
        }
        intentDateBean.setCrc_link_type_val(this.crc_link_type_val);
        if (t2.i(this.title)) {
            intentDateBean.setObject(this.title);
        }
        if (t2.h(this.title) && t2.i(this.sub_title)) {
            intentDateBean.setObject(this.sub_title);
        }
        return intentDateBean;
    }

    public int getJump_type() {
        return this.jump_type;
    }

    public String getLabel() {
        return this.label;
    }

    public int getLink_type() {
        return this.link_type;
    }

    public String getLink_type_val() {
        return this.link_type_val;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public String getSub_title() {
        return this.sub_title;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public int hashCode() {
        return (((((((((((((this.title.hashCode() * 31) + this.pic_remote.hashCode()) * 31) + this.link_type) * 31) + this.jump_type) * 31) + this.link_type_val.hashCode()) * 31) + this.tpl_type.hashCode()) * 31) + this.crc_link_type_val.hashCode()) * 31) + this.game_info_tpl_type.hashCode();
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

    public void setJump_type(int jump_type) {
        this.jump_type = jump_type;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public void setLink_type(int link_type) {
        this.link_type = link_type;
    }

    public void setLink_type_val(String link_type_val) {
        this.link_type_val = link_type_val;
    }

    public void setPic_remote(String pic_remote) {
        this.pic_remote = pic_remote;
    }

    public void setSub_title(String sub_title) {
        this.sub_title = sub_title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }

    public BannerBean(String title, String pic_remote, int link_type, int jump_type, String link_type_val, String tpl_type, String crc_link_type_val, String game_info_tpl_type) {
        this.title = title;
        this.pic_remote = pic_remote;
        this.link_type = link_type;
        this.jump_type = jump_type;
        this.link_type_val = link_type_val;
        this.tpl_type = tpl_type;
        this.crc_link_type_val = crc_link_type_val;
        this.game_info_tpl_type = game_info_tpl_type;
    }
}
