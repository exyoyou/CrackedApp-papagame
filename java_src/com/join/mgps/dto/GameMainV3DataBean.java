package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameMainV3DataBean {
    private GameMainachieve achieve;
    private GameMaingameinfo game_info;
    private List<GameRecommendInfoBean> game_recommend_info;
    private List<MemberFunBean> member_fun;
    private MemberInfoBean member_info;
    private GameMainNetBattle net_battle;
    private PlayGameInfoBean play_game_info;
    private Surface_bottom_ad surface_bottom_ad;

    public static class GameRecommendInfoBean {
        private String game_id;
        private String game_pic;
        private String game_title;

        public String getGame_id() {
            return this.game_id;
        }

        public String getGame_pic() {
            return this.game_pic;
        }

        public String getGame_title() {
            return this.game_title;
        }

        public void setGame_id(String game_id) {
            this.game_id = game_id;
        }

        public void setGame_pic(String game_pic) {
            this.game_pic = game_pic;
        }

        public void setGame_title(String game_title) {
            this.game_title = game_title;
        }
    }

    public static class MemberFunBean {
        private String pic;
        private String title;
        private String url;

        public String getPic() {
            return this.pic;
        }

        public String getTitle() {
            return this.title;
        }

        public String getUrl() {
            return this.url;
        }

        public void setPic(String pic) {
            this.pic = pic;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public void setUrl(String url) {
            this.url = url;
        }
    }

    public static class MemberInfoBean {
        private int ad_switch;
        private String crc_link_type_val;
        private int game_info_tpl_type;
        private String jump_type;
        private String link_type;
        private String link_type_val;
        private String pic_remote;
        private int plugin_num;
        private String sub_title;
        private int sync_memory;
        private String title;
        private String tpl_type;
        private String type;

        public int getAd_switch() {
            return this.ad_switch;
        }

        public String getCrc_link_type_val() {
            return this.crc_link_type_val;
        }

        public int getGame_info_tpl_type() {
            return this.game_info_tpl_type;
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

        public int getPlugin_num() {
            return this.plugin_num;
        }

        public String getSub_title() {
            return this.sub_title;
        }

        public int getSync_memory() {
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

        public void setGame_info_tpl_type(int game_info_tpl_type) {
            this.game_info_tpl_type = game_info_tpl_type;
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

        public void setPlugin_num(int plugin_num) {
            this.plugin_num = plugin_num;
        }

        public void setSub_title(String sub_title) {
            this.sub_title = sub_title;
        }

        public void setSync_memory(int sync_memory) {
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

    public static class PlayGameInfoBean {
        private int battle_room_count;
        private long current_play_time;
        private int file_save_count;
        private int file_save_switch;
        private long last_play_time;

        public int getBattle_room_count() {
            return this.battle_room_count;
        }

        public long getCurrent_play_time() {
            return this.current_play_time;
        }

        public int getFile_save_count() {
            return this.file_save_count;
        }

        public int getFile_save_switch() {
            return this.file_save_switch;
        }

        public long getLast_play_time() {
            return this.last_play_time;
        }

        public void setBattle_room_count(int battle_room_count) {
            this.battle_room_count = battle_room_count;
        }

        public void setCurrent_play_time(long current_play_time) {
            this.current_play_time = current_play_time;
        }

        public void setFile_save_count(int file_save_count) {
            this.file_save_count = file_save_count;
        }

        public void setFile_save_switch(int file_save_switch) {
            this.file_save_switch = file_save_switch;
        }

        public void setLast_play_time(long last_play_time) {
            this.last_play_time = last_play_time;
        }
    }

    public static class Surface_bottom_ad {
        private int ad_switch;
        private String crc_link_type_val;
        private int game_info_tpl_type;
        private String jump_type;
        private String label;
        private String link_type;
        private String link_type_val;
        private String pic_remote;
        private int plugin_num;
        private String sub_title;
        private int sync_memory;
        private String title;
        private String tpl_type;
        private String type;

        public int getAd_switch() {
            return this.ad_switch;
        }

        public String getCrc_link_type_val() {
            return this.crc_link_type_val;
        }

        public int getGame_info_tpl_type() {
            return this.game_info_tpl_type;
        }

        public String getJump_type() {
            return this.jump_type;
        }

        public String getLabel() {
            return this.label;
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

        public int getPlugin_num() {
            return this.plugin_num;
        }

        public String getSub_title() {
            return this.sub_title;
        }

        public int getSync_memory() {
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

        public void setGame_info_tpl_type(int game_info_tpl_type) {
            this.game_info_tpl_type = game_info_tpl_type;
        }

        public void setJump_type(String jump_type) {
            this.jump_type = jump_type;
        }

        public void setLabel(String label) {
            this.label = label;
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

        public void setPlugin_num(int plugin_num) {
            this.plugin_num = plugin_num;
        }

        public void setSub_title(String sub_title) {
            this.sub_title = sub_title;
        }

        public void setSync_memory(int sync_memory) {
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

    public GameMainachieve getAchieve() {
        return this.achieve;
    }

    public GameMaingameinfo getGame_info() {
        return this.game_info;
    }

    public List<GameRecommendInfoBean> getGame_recommend_info() {
        return this.game_recommend_info;
    }

    public List<MemberFunBean> getMember_fun() {
        return this.member_fun;
    }

    public MemberInfoBean getMember_info() {
        return this.member_info;
    }

    public GameMainNetBattle getNet_battle() {
        return this.net_battle;
    }

    public PlayGameInfoBean getPlay_game_info() {
        return this.play_game_info;
    }

    public Surface_bottom_ad getSurface_bottom_ad() {
        return this.surface_bottom_ad;
    }

    public void setAchieve(GameMainachieve achieve) {
        this.achieve = achieve;
    }

    public void setGame_info(GameMaingameinfo game_info) {
        this.game_info = game_info;
    }

    public void setGame_recommend_info(List<GameRecommendInfoBean> game_recommend_info) {
        this.game_recommend_info = game_recommend_info;
    }

    public void setMember_fun(List<MemberFunBean> member_fun) {
        this.member_fun = member_fun;
    }

    public void setMember_info(MemberInfoBean member_info) {
        this.member_info = member_info;
    }

    public void setNet_battle(GameMainNetBattle net_battle) {
        this.net_battle = net_battle;
    }

    public void setPlay_game_info(PlayGameInfoBean play_game_info) {
        this.play_game_info = play_game_info;
    }

    public void setSurface_bottom_ad(Surface_bottom_ad surface_bottom_ad) {
        this.surface_bottom_ad = surface_bottom_ad;
    }
}
