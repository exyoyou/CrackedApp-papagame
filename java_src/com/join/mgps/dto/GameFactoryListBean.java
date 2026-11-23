package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameFactoryListBean {
    private List<AppBean> game_list;
    private String head_ad_pic;
    private LogoInfo logo_info;

    public static class LogoInfo {
        private String introduce;
        private String logo_pic;
        private String title;

        public String getIntroduce() {
            return this.introduce;
        }

        public String getLogo_pic() {
            return this.logo_pic;
        }

        public String getTitle() {
            return this.title;
        }

        public void setIntroduce(String introduce) {
            this.introduce = introduce;
        }

        public void setLogo_pic(String logo_pic) {
            this.logo_pic = logo_pic;
        }

        public void setTitle(String title) {
            this.title = title;
        }
    }

    public List<AppBean> getGame_list() {
        return this.game_list;
    }

    public String getHead_ad_pic() {
        return this.head_ad_pic;
    }

    public LogoInfo getLogo_info() {
        return this.logo_info;
    }

    public void setGame_list(List<AppBean> game_list) {
        this.game_list = game_list;
    }

    public void setHead_ad_pic(String head_ad_pic) {
        this.head_ad_pic = head_ad_pic;
    }

    public void setLogo_info(LogoInfo logo_info) {
        this.logo_info = logo_info;
    }
}
