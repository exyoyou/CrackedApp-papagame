package com.join.mgps.dto;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ConfigData {
    boolean anti_addiction_switch;
    boolean b_side;
    private CloudBannerBean banner;
    String client_ip;
    private CloudGameConfigBean cloud_gaming;
    boolean download_game_switch;
    private ExcludeSimulatorType exclude_simulator_type;
    FirstScreenAdInteractionBean first_screen_ad_interaction;
    private FoundGameTabBean found_game_tab;
    boolean home_page_video_switch;
    boolean launch_game_switch;
    private int net_game_count_down;
    boolean non_online_user_switch;
    private PdAdCfgBean pd_ad_cfg;
    List<String> real_name_black_list;
    private boolean sdk_init;
    private ArrayList<TopTypeEntranceBean> top_type_entrance;
    boolean unknown_source_state;
    private WebDiskCfg web_disk_cfg;
    private WebDiskPositionBean web_disk_position;
    String wx_open_appid;
    private boolean w_channel_info_switch = true;
    private boolean sch_feed_back_switch = true;

    public CloudBannerBean getBanner() {
        return this.banner;
    }

    public String getClient_ip() {
        return this.client_ip;
    }

    public CloudGameConfigBean getCloud_gaming() {
        return this.cloud_gaming;
    }

    public ExcludeSimulatorType getExclude_simulator_type() {
        return this.exclude_simulator_type;
    }

    public FirstScreenAdInteractionBean getFirst_screen_ad_interaction() {
        return this.first_screen_ad_interaction;
    }

    public FoundGameTabBean getFound_game_tab() {
        return this.found_game_tab;
    }

    public int getNet_game_count_down() {
        return this.net_game_count_down;
    }

    public PdAdCfgBean getPd_ad_cfg() {
        return this.pd_ad_cfg;
    }

    public List<String> getReal_name_black_list() {
        return this.real_name_black_list;
    }

    public ArrayList<TopTypeEntranceBean> getTop_type_entrance() {
        return this.top_type_entrance;
    }

    public WebDiskCfg getWeb_disk_cfg() {
        return this.web_disk_cfg;
    }

    public WebDiskPositionBean getWeb_disk_position() {
        return this.web_disk_position;
    }

    public String getWx_open_appid() {
        return this.wx_open_appid;
    }

    public boolean isAnti_addiction_switch() {
        return this.anti_addiction_switch;
    }

    public boolean isB_side() {
        return this.b_side;
    }

    public boolean isDownload_game_switch() {
        return this.download_game_switch;
    }

    public boolean isHome_page_video_switch() {
        return this.home_page_video_switch;
    }

    public boolean isLaunch_game_switch() {
        return this.launch_game_switch;
    }

    public boolean isNon_online_user_switch() {
        return this.non_online_user_switch;
    }

    public boolean isSch_feed_back_switch() {
        return this.sch_feed_back_switch;
    }

    public boolean isSdk_init() {
        return this.sdk_init;
    }

    public boolean isUnknown_source_state() {
        return this.unknown_source_state;
    }

    public boolean isW_channel_info_switch() {
        return this.w_channel_info_switch;
    }

    public void setAnti_addiction_switch(boolean anti_addiction_switch) {
        this.anti_addiction_switch = anti_addiction_switch;
    }

    public void setB_side(boolean b_side) {
        this.b_side = b_side;
    }

    public void setBanner(CloudBannerBean banner) {
        this.banner = banner;
    }

    public void setClient_ip(String client_ip) {
        this.client_ip = client_ip;
    }

    public void setCloud_gaming(CloudGameConfigBean cloud_gaming) {
        this.cloud_gaming = cloud_gaming;
    }

    public void setDownload_game_switch(boolean download_game_switch) {
        this.download_game_switch = download_game_switch;
    }

    public void setExclude_simulator_type(ExcludeSimulatorType exclude_simulator_type) {
        this.exclude_simulator_type = exclude_simulator_type;
    }

    public void setFirst_screen_ad_interaction(FirstScreenAdInteractionBean first_screen_ad_interaction) {
        this.first_screen_ad_interaction = first_screen_ad_interaction;
    }

    public void setFound_game_tab(FoundGameTabBean found_game_tab) {
        this.found_game_tab = found_game_tab;
    }

    public void setHome_page_video_switch(boolean home_page_video_switch) {
        this.home_page_video_switch = home_page_video_switch;
    }

    public void setLaunch_game_switch(boolean launch_game_switch) {
        this.launch_game_switch = launch_game_switch;
    }

    public void setNet_game_count_down(int net_game_count_down) {
        this.net_game_count_down = net_game_count_down;
    }

    public void setNon_online_user_switch(boolean non_online_user_switch) {
        this.non_online_user_switch = non_online_user_switch;
    }

    public void setPd_ad_cfg(PdAdCfgBean pd_ad_cfg) {
        this.pd_ad_cfg = pd_ad_cfg;
    }

    public void setReal_name_black_list(List<String> real_name_black_list) {
        this.real_name_black_list = real_name_black_list;
    }

    public void setSch_feed_back_switch(boolean sch_feed_back_switch) {
        this.sch_feed_back_switch = sch_feed_back_switch;
    }

    public void setSdk_init(boolean sdk_init) {
        this.sdk_init = sdk_init;
    }

    public void setTop_type_entrance(ArrayList<TopTypeEntranceBean> top_type_entrance) {
        this.top_type_entrance = top_type_entrance;
    }

    public void setUnknown_source_state(boolean unknown_source_state) {
        this.unknown_source_state = unknown_source_state;
    }

    public void setW_channel_info_switch(boolean w_channel_info_switch) {
        this.w_channel_info_switch = w_channel_info_switch;
    }

    public void setWeb_disk_cfg(WebDiskCfg web_disk_cfg) {
        this.web_disk_cfg = web_disk_cfg;
    }

    public void setWeb_disk_position(WebDiskPositionBean web_disk_position) {
        this.web_disk_position = web_disk_position;
    }

    public void setWx_open_appid(String wx_open_appid) {
        this.wx_open_appid = wx_open_appid;
    }
}
