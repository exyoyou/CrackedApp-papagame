package com.join.mgps.dto;

import com.join.mgps.Util.IntentDateBean;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameHeadAd implements Serializable {
    private GameMain main;
    private List<SubInfo> sub;

    public static class GameMain implements Serializable {
        private int ad_switch;
        private String color;
        private String ico_remote;
        private String label;
        private String margin;
        private int model_type;
        private String pic_remote;
        private int quit_switch;
        private String sub_title;
        private String title;
        private int title_type;
        private String vedio_url;

        public int getAd_switch() {
            return this.ad_switch;
        }

        public String getColor() {
            return this.color;
        }

        public String getIco_remote() {
            return this.ico_remote;
        }

        public String getLabel() {
            return this.label;
        }

        public String getMargin() {
            return this.margin;
        }

        public int getModel_type() {
            return this.model_type;
        }

        public String getPic_remote() {
            return this.pic_remote;
        }

        public int getQuit_switch() {
            return this.quit_switch;
        }

        public String getSub_title() {
            return this.sub_title;
        }

        public String getTitle() {
            return this.title;
        }

        public int getTitle_type() {
            return this.title_type;
        }

        public String getVedio_url() {
            return this.vedio_url;
        }

        public void setAd_switch(int ad_switch) {
            this.ad_switch = ad_switch;
        }

        public void setColor(String color) {
            this.color = color;
        }

        public void setIco_remote(String ico_remote) {
            this.ico_remote = ico_remote;
        }

        public void setLabel(String label) {
            this.label = label;
        }

        public void setMargin(String margin) {
            this.margin = margin;
        }

        public void setModel_type(int model_type) {
            this.model_type = model_type;
        }

        public void setPic_remote(String pic_remote) {
            this.pic_remote = pic_remote;
        }

        public void setQuit_switch(int quit_switch) {
            this.quit_switch = quit_switch;
        }

        public void setSub_title(String sub_title) {
            this.sub_title = sub_title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public void setTitle_type(int title_type) {
            this.title_type = title_type;
        }

        public void setVedio_url(String vedio_url) {
            this.vedio_url = vedio_url;
        }
    }

    public static class SubInfo implements Serializable {
        private String crc_link_type_val;
        private AppBean game_info;
        private int is_more;
        private int jump_type;
        private int link_type;
        private String link_type_val;
        private String tpl_type;

        public String getCrc_link_type_val() {
            return this.crc_link_type_val;
        }

        public AppBean getGame_info() {
            return this.game_info;
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

        public void setGame_info(AppBean game_info) {
            this.game_info = game_info;
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
    }

    public GameMain getMain() {
        return this.main;
    }

    public List<SubInfo> getSub() {
        return this.sub;
    }

    public void setMain(GameMain main) {
        this.main = main;
    }

    public void setSub(List<SubInfo> sub) {
        this.sub = sub;
    }
}
