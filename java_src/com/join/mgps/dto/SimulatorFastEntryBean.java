package com.join.mgps.dto;

import com.join.mgps.Util.IntentDateBean;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SimulatorFastEntryBean implements Serializable {
    private List<ChangeGame> change_game;
    private List<FastEntryBean> fast_entry;
    private List<GameInfo> nostalgia;
    private String search_bar_hint;
    private List<TagGameBean> tag_game;
    private List<GameInfo> the_new;
    private WillPlay will_play;

    public static class ChangeGame implements Serializable {
        private int ad_switch;
        private String big_pic;
        private ExtBean extBean;
        private JpInfo jp_info;
        private int quit_switch;
        private String sub_title;
        private String title;
        private String v_url;

        public int getAd_switch() {
            return this.ad_switch;
        }

        public String getBig_pic() {
            return this.big_pic;
        }

        public ExtBean getExtBean() {
            return this.extBean;
        }

        public IntentDateBean getIntentDataBean() {
            IntentDateBean intentDateBean = new IntentDateBean();
            JpInfo jpInfo = this.jp_info;
            if (jpInfo != null) {
                intentDateBean.setJump_type(jpInfo.getJump_type());
                intentDateBean.setLink_type(this.jp_info.getLink_type());
                intentDateBean.setLink_type_val(this.jp_info.getLink_type_val());
                intentDateBean.setTpl_type(String.valueOf(this.jp_info.getTpl_type()));
                intentDateBean.setCrc_link_type_val(this.jp_info.getCrc_link_type_val());
            }
            if (intentDateBean.getExtBean() == null) {
                intentDateBean.setExtBean(new ExtBean());
            }
            return intentDateBean;
        }

        public JpInfo getJp_info() {
            return this.jp_info;
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

        public String getV_url() {
            return this.v_url;
        }

        public void setAd_switch(int ad_switch) {
            this.ad_switch = ad_switch;
        }

        public void setBig_pic(String big_pic) {
            this.big_pic = big_pic;
        }

        public void setExtBean(ExtBean extBean) {
            this.extBean = extBean;
        }

        public void setJp_info(JpInfo jp_info) {
            this.jp_info = jp_info;
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

        public void setV_url(String v_url) {
            this.v_url = v_url;
        }
    }

    public static class FastEntryBean implements Serializable {
        private ExtBean extBean;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private int f68114id;
        private String pic;
        private String title;

        public ExtBean getExtBean() {
            return this.extBean;
        }

        public int getId() {
            return this.f68114id;
        }

        public String getPic() {
            return this.pic;
        }

        public String getTitle() {
            return this.title;
        }

        public void setExtBean(ExtBean extBean) {
            this.extBean = extBean;
        }

        public void setId(int id2) {
            this.f68114id = id2;
        }

        public void setPic(String pic) {
            this.pic = pic;
        }

        public void setTitle(String title) {
            this.title = title;
        }
    }

    public static class GameInfo implements Serializable {
        private ExtBean extBean;
        private String game;
        private String ico;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68115id;

        public ExtBean getExtBean() {
            return this.extBean;
        }

        public String getGame() {
            return this.game;
        }

        public String getIco() {
            return this.ico;
        }

        public String getId() {
            return this.f68115id;
        }

        public void setExtBean(ExtBean extBean) {
            this.extBean = extBean;
        }

        public void setGame(String game) {
            this.game = game;
        }

        public void setIco(String ico) {
            this.ico = ico;
        }

        public void setId(String id2) {
            this.f68115id = id2;
        }
    }

    public static class JpInfo implements Serializable {
        private String crc_link_type_val;
        private int is_more;
        private int jump_type;
        private int link_type;
        private String link_type_val;
        private int third_type;
        private int tpl_type;

        public String getCrc_link_type_val() {
            return this.crc_link_type_val;
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

        public int getThird_type() {
            return this.third_type;
        }

        public int getTpl_type() {
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

        public void setThird_type(int third_type) {
            this.third_type = third_type;
        }

        public void setTpl_type(int tpl_type) {
            this.tpl_type = tpl_type;
        }
    }

    public static class TagGameBean implements Serializable {
        private ExtBean extBean;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68116id;
        private List<GameInfo> list;
        private String title;

        public ExtBean getExtBean() {
            return this.extBean;
        }

        public String getId() {
            return this.f68116id;
        }

        public List<GameInfo> getList() {
            return this.list;
        }

        public String getTitle() {
            return this.title;
        }

        public void setExtBean(ExtBean extBean) {
            this.extBean = extBean;
        }

        public void setId(String id2) {
            this.f68116id = id2;
        }

        public void setList(List<GameInfo> list) {
            this.list = list;
        }

        public void setTitle(String title) {
            this.title = title;
        }
    }

    public static class WillPlay implements Serializable {
        private String coll_id;
        private List<GameInfo> games;

        public String getColl_id() {
            return this.coll_id;
        }

        public List<GameInfo> getGames() {
            return this.games;
        }

        public void setColl_id(String coll_id) {
            this.coll_id = coll_id;
        }

        public void setGames(List<GameInfo> games) {
            this.games = games;
        }
    }

    public List<ChangeGame> getChange_game() {
        return this.change_game;
    }

    public List<FastEntryBean> getFast_entry() {
        return this.fast_entry;
    }

    public List<GameInfo> getNostalgia() {
        return this.nostalgia;
    }

    public String getSearch_bar_hint() {
        return this.search_bar_hint;
    }

    public List<TagGameBean> getTag_game() {
        return this.tag_game;
    }

    public List<GameInfo> getThe_new() {
        return this.the_new;
    }

    public WillPlay getWill_play() {
        return this.will_play;
    }

    public void setChange_game(List<ChangeGame> change_game) {
        this.change_game = change_game;
    }

    public void setFast_entry(List<FastEntryBean> fast_entry) {
        this.fast_entry = fast_entry;
    }

    public void setNostalgia(List<GameInfo> nostalgia) {
        this.nostalgia = nostalgia;
    }

    public void setSearch_bar_hint(String search_bar_hint) {
        this.search_bar_hint = search_bar_hint;
    }

    public void setTag_game(List<TagGameBean> tag_game) {
        this.tag_game = tag_game;
    }

    public void setThe_new(List<GameInfo> the_new) {
        this.the_new = the_new;
    }

    public void setWill_play(WillPlay will_play) {
        this.will_play = will_play;
    }
}
