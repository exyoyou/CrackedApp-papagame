package com.join.mgps.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameMainV4DataBean {
    private GameMainachieve achieve;
    private String bbs_strategy_contribute_url;
    private boolean bbs_switch;
    private EndGameConfigBean endgame_config;
    private GameMaingameinfo gameInfo;
    private GameMasteryLevel gameMasteryLevel;
    private CommonGameInfoBean jp_info;
    private List<MemberFunBean> memberFun;
    private MemberInfoBean memberInfo;
    private GameMainNetBattle netBattle;
    private DomainInfoBean pd_info;
    private DomainInfoBean pd_info_popup;
    private PlayGameInfoBean playGameInfo;
    private List<RecommendAd> recommendAdList;
    private List<RecommendAd> recommendAdList2;
    private SimulatorCoreBean simulator_core;
    private Surface_bottom_ad surfaceBottomAd;

    public static class BoundaryBean implements Serializable {
        private int lower;
        private int upper;

        public int getLower() {
            return this.lower;
        }

        public int getUpper() {
            return this.upper;
        }

        public void setLower(int lower) {
            this.lower = lower;
        }

        public void setUpper(int upper) {
            this.upper = upper;
        }
    }

    public static class CreateEndgameHintBean implements Serializable {
        private String subTitle;
        private String title;

        public String getSubTitle() {
            return this.subTitle;
        }

        public String getTitle() {
            return this.title;
        }

        public void setSubTitle(String subTitle) {
            this.subTitle = subTitle;
        }

        public void setTitle(String title) {
            this.title = title;
        }
    }

    public static class EndGameConfigBean implements Serializable {
        private ArrayList<CreateEndgameHintBean> create_endgame_hint;
        private ArrayList<String> endgame_archive_hint;
        private boolean endgame_asset_switch;
        private int endgame_cards;
        private ArrayList<EndgameChallengeLevelBean> endgame_challenge_level;
        private boolean endgame_creation_switch;
        private String endgame_pic;
        private boolean endgame_switch;

        public ArrayList<CreateEndgameHintBean> getCreate_endgame_hint() {
            return this.create_endgame_hint;
        }

        public ArrayList<String> getEndgame_archive_hint() {
            return this.endgame_archive_hint;
        }

        public int getEndgame_cards() {
            return this.endgame_cards;
        }

        public ArrayList<EndgameChallengeLevelBean> getEndgame_challenge_level() {
            return this.endgame_challenge_level;
        }

        public String getEndgame_pic() {
            return this.endgame_pic;
        }

        public boolean isEndgame_asset_switch() {
            return this.endgame_asset_switch;
        }

        public boolean isEndgame_creation_switch() {
            return this.endgame_creation_switch;
        }

        public boolean isEndgame_switch() {
            return this.endgame_switch;
        }

        public void setCreate_endgame_hint(ArrayList<CreateEndgameHintBean> create_endgame_hint) {
            this.create_endgame_hint = create_endgame_hint;
        }

        public void setEndgame_archive_hint(ArrayList<String> endgame_archive_hint) {
            this.endgame_archive_hint = endgame_archive_hint;
        }

        public void setEndgame_asset_switch(boolean endgame_asset_switch) {
            this.endgame_asset_switch = endgame_asset_switch;
        }

        public void setEndgame_cards(int endgame_cards) {
            this.endgame_cards = endgame_cards;
        }

        public void setEndgame_challenge_level(ArrayList<EndgameChallengeLevelBean> endgame_challenge_level) {
            this.endgame_challenge_level = endgame_challenge_level;
        }

        public void setEndgame_creation_switch(boolean endgame_creation_switch) {
            this.endgame_creation_switch = endgame_creation_switch;
        }

        public void setEndgame_pic(String endgame_pic) {
            this.endgame_pic = endgame_pic;
        }

        public void setEndgame_switch(boolean endgame_switch) {
            this.endgame_switch = endgame_switch;
        }
    }

    public static class EndgameChallengeLevelBean implements Serializable {
        private BoundaryBean boundary;
        private String level;

        public BoundaryBean getBoundary() {
            return this.boundary;
        }

        public String getLevel() {
            return this.level;
        }

        public void setBoundary(BoundaryBean boundary) {
            this.boundary = boundary;
        }

        public void setLevel(String level) {
            this.level = level;
        }
    }

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
        private List<String> contents;
        private String pic;
        private String title;
        private int type;
        private String url;
        private List<UserInfoBean> users;

        public List<String> getContents() {
            return this.contents;
        }

        public String getPic() {
            return this.pic;
        }

        public String getTitle() {
            return this.title;
        }

        public int getType() {
            return this.type;
        }

        public String getUrl() {
            return this.url;
        }

        public List<UserInfoBean> getUsers() {
            return this.users;
        }

        public void setContents(List<String> contents) {
            this.contents = contents;
        }

        public void setPic(String pic) {
            this.pic = pic;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public void setType(int type) {
            this.type = type;
        }

        public void setUrl(String url) {
            this.url = url;
        }

        public void setUsers(List<UserInfoBean> users) {
            this.users = users;
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

    public static class SimulatorCoreBean {
        private String core;
        private String plugin_num;

        public String getCore() {
            return this.core;
        }

        public String getPlugin_num() {
            return this.plugin_num;
        }

        public void setCore(String core) {
            this.core = core;
        }

        public void setPlugin_num(String plugin_num) {
            this.plugin_num = plugin_num;
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

    public static class UserInfoBean {
        private String avatar;
        private String nickname;
        private String uid;

        public String getAvatar() {
            return this.avatar;
        }

        public String getNickname() {
            return this.nickname;
        }

        public String getUid() {
            return this.uid;
        }

        public void setAvatar(String avatar) {
            this.avatar = avatar;
        }

        public void setNickname(String nickname) {
            this.nickname = nickname;
        }

        public void setUid(String uid) {
            this.uid = uid;
        }
    }

    public GameMainachieve getAchieve() {
        return this.achieve;
    }

    public String getBbs_strategy_contribute_url() {
        return this.bbs_strategy_contribute_url;
    }

    public EndGameConfigBean getEndgame_config() {
        return this.endgame_config;
    }

    public GameMaingameinfo getGameInfo() {
        return this.gameInfo;
    }

    public GameMasteryLevel getGameMasteryLevel() {
        return this.gameMasteryLevel;
    }

    public CommonGameInfoBean getJp_info() {
        return this.jp_info;
    }

    public List<MemberFunBean> getMemberFun() {
        return this.memberFun;
    }

    public MemberInfoBean getMemberInfo() {
        return this.memberInfo;
    }

    public GameMainNetBattle getNetBattle() {
        return this.netBattle;
    }

    public DomainInfoBean getPd_info() {
        return this.pd_info;
    }

    public DomainInfoBean getPd_info_popup() {
        return this.pd_info_popup;
    }

    public PlayGameInfoBean getPlayGameInfo() {
        return this.playGameInfo;
    }

    public List<RecommendAd> getRecommendAdList() {
        return this.recommendAdList;
    }

    public List<RecommendAd> getRecommendAdList2() {
        return this.recommendAdList2;
    }

    public SimulatorCoreBean getSimulator_core() {
        return this.simulator_core;
    }

    public Surface_bottom_ad getSurfaceBottomAd() {
        return this.surfaceBottomAd;
    }

    public boolean isBbs_switch() {
        return this.bbs_switch;
    }

    public void setAchieve(GameMainachieve achieve) {
        this.achieve = achieve;
    }

    public void setBbs_strategy_contribute_url(String bbs_strategy_contribute_url) {
        this.bbs_strategy_contribute_url = bbs_strategy_contribute_url;
    }

    public void setBbs_switch(boolean bbs_switch) {
        this.bbs_switch = bbs_switch;
    }

    public void setEndgame_config(EndGameConfigBean endgame_config) {
        this.endgame_config = endgame_config;
    }

    public void setGameInfo(GameMaingameinfo gameInfo) {
        this.gameInfo = gameInfo;
    }

    public void setGameMasteryLevel(GameMasteryLevel gameMasteryLevel) {
        this.gameMasteryLevel = gameMasteryLevel;
    }

    public void setJp_info(CommonGameInfoBean jp_info) {
        this.jp_info = jp_info;
    }

    public void setMemberFun(List<MemberFunBean> memberFun) {
        this.memberFun = memberFun;
    }

    public void setMemberInfo(MemberInfoBean memberInfo) {
        this.memberInfo = memberInfo;
    }

    public void setNetBattle(GameMainNetBattle netBattle) {
        this.netBattle = netBattle;
    }

    public void setPd_info(DomainInfoBean pd_info) {
        this.pd_info = pd_info;
    }

    public void setPd_info_popup(DomainInfoBean pd_info_popup) {
        this.pd_info_popup = pd_info_popup;
    }

    public void setPlayGameInfo(PlayGameInfoBean playGameInfo) {
        this.playGameInfo = playGameInfo;
    }

    public void setRecommendAdList(List<RecommendAd> recommendAdList) {
        this.recommendAdList = recommendAdList;
    }

    public void setRecommendAdList2(List<RecommendAd> recommendAdList2) {
        this.recommendAdList2 = recommendAdList2;
    }

    public void setSimulator_core(SimulatorCoreBean simulator_core) {
        this.simulator_core = simulator_core;
    }

    public void setSurfaceBottomAd(Surface_bottom_ad surfaceBottomAd) {
        this.surfaceBottomAd = surfaceBottomAd;
    }
}
