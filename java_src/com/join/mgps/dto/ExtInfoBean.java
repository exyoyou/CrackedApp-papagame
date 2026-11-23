package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class ExtInfoBean implements Serializable {
    private String faq_url;
    private GameCfgBean game_cfg;
    private String help_des;
    private String help_url;
    private ShareInfoBean share_info;

    public String getFaq_url() {
        return this.faq_url;
    }

    public GameCfgBean getGame_cfg() {
        return this.game_cfg;
    }

    public String getHelp_des() {
        return this.help_des;
    }

    public String getHelp_url() {
        return this.help_url;
    }

    public ShareInfoBean getShare_info() {
        return this.share_info;
    }

    public void setFaq_url(String faq_url) {
        this.faq_url = faq_url;
    }

    public void setGame_cfg(GameCfgBean game_cfg) {
        this.game_cfg = game_cfg;
    }

    public void setHelp_des(String help_des) {
        this.help_des = help_des;
    }

    public void setHelp_url(String help_url) {
        this.help_url = help_url;
    }

    public void setShare_info(ShareInfoBean share_info) {
        this.share_info = share_info;
    }
}
