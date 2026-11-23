package com.join.mgps.dto;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentToDetialBean;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.gamedetail.GamedetailViewbean;
import com.join.mgps.activity.screenshot.ScreenshotGamedetialBean;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class GamedetialModleFourBean extends DownloadPointBase {
    private List<BTActivityBean> activities;
    private GamedetialBottomEntry activity_entry;
    private long actual_size;
    private CommonGameInfoBean ad_info;
    private String allow_start_up_ad;
    private String appSize;
    private GameDetialAuxiliaryBean auxiliary_tool;
    private String background_color;
    private List<BannerBean> banner;
    private String bbs_strategy_contribute_url;
    private int bbs_strategy_switch;
    private String bespeak_count;
    private int bespeak_switch;
    private int bt_game_coupon_count;
    private List<RecommendGameBean> bt_game_recommend;
    private int bt_game_switch;
    private int cdn_down_switch;
    private String cfg_down_url;
    private String cfg_lowest_ver;
    private String cfg_ver;
    private String cfg_ver_name;
    private String comment_count;
    private String comment_score_switch;
    private int comment_switch;
    private List<CommentBaseBean> commitDataBeanList;
    private List<GameCommitListBean.GameCommitList> commitListData;
    private int community_entrance_switch;
    private String community_entrance_tag;
    private String company_name;
    private List<RecommendGameBean> company_recommend;
    private int cpu_type;
    private String crc_sign_id;
    private List<TipBean> custom_tag_info;
    private int del_tag;
    private String dev_info;
    private DiscoverBean discover;
    private List<RecommendGameBean> down_and_down;
    private int down_count;
    private int down_count_manual;
    private int down_status;
    private String down_url_remote;
    private int down_weight;
    private int download_close;
    private String download_original_switch;
    private String download_outside_url;
    private String download_source_switch_v1;
    private String download_source_switch_v2;
    private String download_source_url;
    private String edit_recommend;
    private ExtInfoBean ext_info;
    private List<BannerBean> fast_entry_no4;
    private String feedback_issue_url;
    private String fight_funv2;
    private String fight_screenshot_pic;
    private int fight_type;
    private String follow_background_img;
    private int formula_weight;
    private long forum_id;
    private int forum_switch;
    private int game_book;
    private List<GameDetialBookTag> game_book_tag;
    private List<TipBean> game_bt_tag;
    private String game_btn_text;
    private String game_buy_rebate;
    private String game_comment_count;
    private String game_company_id;
    private List<BTGameCouponBean> game_coupon_for_bt_game;
    private List<GameVoucherBean> game_coupon_list;
    private String game_describe_second;
    private GamedetialMoreBean game_detailed;
    private String game_exclusive_benefits;
    private String game_exclusive_benefits_qq;
    private List<GameFromPopoWinBean.DataBean> game_favorites_top5;
    private int game_follow;
    private List<GiftPackageDataInfoBean> game_gift_package;
    private RecomDatabean game_handle_entrance;
    private String game_ico_remote;
    private String game_id;
    private String game_info;
    private String game_info_top_pic;
    private String game_info_top_video_url;
    private String game_info_tpl_type;
    private String game_name;
    private int game_open_switch;
    private long game_open_time;
    private List<GamePromptBean> game_prompt;
    private GameDetailRankingTag game_ranking_pos;
    private GameScore game_score;
    private List<ScreenshotGamedetialBean> game_screen_shot;
    private List<ServiceState> game_server_state;
    private int game_server_switch;
    private GameDetialStrategy game_strategy;
    private String game_upgrade_info;
    private int game_upgrade_info_switch;
    private int game_upgrade_state;
    private BtGameWelfare game_welfare;
    private String gif_slide_pic;
    private int gift_package_switch;
    private boolean has_more_activities;
    private String ico_remote;
    private String info;
    private int is_fight;
    private int is_network;
    private int is_started;
    private int is_world;
    private int last_week_down_count;
    private int lock_sp;
    private int max_an_compatible_ver;
    private int max_battle_count;
    private int max_battle_view_count;
    private int min_an_compatible_ver;
    private DomainInfoBean mini_program;
    private ModInfoBean mod_info;
    private int other_down_switch;
    private String packageName;
    private PanelSwitch panel_switch;
    private String papa_explain;
    PayTagInfo pay_tag_info;
    private List<DetialShowImageBean> pic_info;
    private int pic_position;
    private String player_qq;
    private String plugin_lowest_ver;
    private String plugin_lowest_ver_name;
    private int plugin_screenshot;
    private String qq_qun;
    private RankingInfoBean ranking_info;
    private int ranking_weight;
    private int recommend_adinfo_switch;
    private List<RecommendGameBean> recommend_game;
    private String recommend_game_big_gif;
    private String recommend_game_big_pic;
    private int recommend_game_switch;
    private List<RecommendInfomationBean> recommend_information;
    private int recommend_information_switch;
    private long residual_time;
    private String rom_lowest_ver;
    private GameDetailRoomCfgInfo room_cfg_info;
    private String score;
    private String score_count;
    private String score_count_manual;
    private String screenshot_pic;
    private String sdk_active_id;
    private CommentAllListBean.SelfCommentBean self_comment;
    private String server_qq;
    private DetialShareData share_config;
    private String share_url;
    private String sharer;
    private List<CollectionBeanSub> similar_games_recommend;
    private List<CollectionBeanSub> similar_games_recommend_pc;
    private SingleGameModInfoBean single_game_mod_info;
    private String size;
    private String slide_position;
    private String source_down_url;
    private String source_lowest_ver;
    private String source_ver;
    private String source_ver_name;
    private TipNew sp_tag_info;
    private int sp_tpl_two_banner_switch;
    private int sp_tpl_two_position;
    private StandaloneCloudArchive standalone_cloud_archive;
    private int start_count;
    private String sync_memory;
    private ArrayList<TipBean> tag_info;
    private long times;
    private List<DownloadUrlBean> tp_down_url;
    private String unzip_size;
    private String vedio_cover_pic;
    private String vedio_url;
    private String ver;
    private String ver_name;
    private GamedetailViewbean video_and_cover;
    private WebDiskInfo web_disk_info;
    private int world_area;
    private int world_shop;
    private String plugin_num = "";
    private int downType = 0;
    private int handle_support = 0;

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.GInfo
    @Nullable
    public DownloadTask buildDownloadTask() {
        return getDownloadtaskDown();
    }

    public List<BTActivityBean> getActivities() {
        return this.activities;
    }

    public GamedetialBottomEntry getActivity_entry() {
        return this.activity_entry;
    }

    public long getActual_size() {
        return this.actual_size;
    }

    public CommonGameInfoBean getAd_info() {
        return this.ad_info;
    }

    public String getAllow_start_up_ad() {
        return this.allow_start_up_ad;
    }

    public String getAppSize() {
        return this.appSize;
    }

    public GameDetialAuxiliaryBean getAuxiliary_tool() {
        return this.auxiliary_tool;
    }

    public String getBackground_color() {
        return this.background_color;
    }

    public List<BannerBean> getBanner() {
        return this.banner;
    }

    public String getBbs_strategy_contribute_url() {
        return this.bbs_strategy_contribute_url;
    }

    public int getBbs_strategy_switch() {
        return this.bbs_strategy_switch;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public int getBespeakSwitch() {
        return this.bespeak_switch;
    }

    public String getBespeak_count() {
        return this.bespeak_count;
    }

    public int getBespeak_switch() {
        return this.bespeak_switch;
    }

    public int getBt_game_coupon_count() {
        return this.bt_game_coupon_count;
    }

    public List<RecommendGameBean> getBt_game_recommend() {
        return this.bt_game_recommend;
    }

    public int getBt_game_switch() {
        return this.bt_game_switch;
    }

    public int getCdn_down_switch() {
        return this.cdn_down_switch;
    }

    public String getCfg_down_url() {
        return this.cfg_down_url;
    }

    public String getCfg_lowest_ver() {
        return this.cfg_lowest_ver;
    }

    public String getCfg_ver() {
        return this.cfg_ver;
    }

    public String getCfg_ver_name() {
        return this.cfg_ver_name;
    }

    public String getComment_count() {
        return this.comment_count;
    }

    public String getComment_score_switch() {
        return this.comment_score_switch;
    }

    public int getComment_switch() {
        return this.comment_switch;
    }

    public List<CommentBaseBean> getCommitDataBeanList() {
        return this.commitDataBeanList;
    }

    public List<GameCommitListBean.GameCommitList> getCommitListData() {
        return this.commitListData;
    }

    public int getCommunity_entrance_switch() {
        return this.community_entrance_switch;
    }

    public String getCommunity_entrance_tag() {
        return this.community_entrance_tag;
    }

    public String getCompany_name() {
        return this.company_name;
    }

    public List<RecommendGameBean> getCompany_recommend() {
        return this.company_recommend;
    }

    public int getCpu_type() {
        return this.cpu_type;
    }

    public String getCrc_sign_id() {
        return this.crc_sign_id;
    }

    public List<TipBean> getCustom_tag_info() {
        return this.custom_tag_info;
    }

    public int getDel_tag() {
        return this.del_tag;
    }

    public String getDev_info() {
        return this.dev_info;
    }

    public DiscoverBean getDiscover() {
        return this.discover;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public int getDownStatus() {
        int i10 = this.down_status;
        if (i10 != 2 || this.bespeak_switch != 1) {
            return i10;
        }
        this.down_status = 6;
        return 6;
    }

    public int getDownType() {
        return this.downType;
    }

    public List<RecommendGameBean> getDown_and_down() {
        return this.down_and_down;
    }

    public int getDown_count() {
        return this.down_count;
    }

    public int getDown_count_manual() {
        return this.down_count_manual;
    }

    public int getDown_status() {
        int i10 = this.down_status;
        if (i10 == 2 && this.bespeak_switch == 1) {
            return 6;
        }
        return i10;
    }

    public String getDown_url_remote() {
        return this.down_url_remote;
    }

    public int getDown_weight() {
        return this.down_weight;
    }

    public int getDownload_close() {
        return this.download_close;
    }

    public String getDownload_original_switch() {
        return this.download_original_switch;
    }

    public String getDownload_outside_url() {
        return this.download_outside_url;
    }

    public String getDownload_source_switch_v1() {
        return this.download_source_switch_v1;
    }

    public String getDownload_source_switch_v2() {
        return this.download_source_switch_v2;
    }

    public String getDownload_source_url() {
        return this.download_source_url;
    }

    public DownloadTask getDownloadtaskDown() {
        DownloadTask downloadTask = new DownloadTask();
        int i10 = this.down_status;
        if (i10 == 2 && this.bespeak_switch == 1) {
            downloadTask.setDown_status(6);
        } else {
            downloadTask.setDown_status(i10);
        }
        downloadTask.setPackageName(this.packageName);
        downloadTask.setPortraitURL(this.ico_remote);
        downloadTask.setShowName(this.game_name);
        downloadTask.setUrl(this.down_url_remote);
        downloadTask.setTipBeans(this.tag_info);
        downloadTask.setCrc_link_type_val(this.crc_sign_id);
        downloadTask.setVer(this.ver);
        downloadTask.setVer_name(this.ver_name);
        downloadTask.setRomType(this.plugin_num);
        downloadTask.setStatus(0);
        downloadTask.setDescribe(this.info);
        downloadTask.setShowSize(this.size);
        downloadTask.setCfg_ver(this.cfg_ver);
        downloadTask.setCfg_ver_name(this.cfg_ver_name);
        downloadTask.setCfg_down_url(this.cfg_down_url);
        downloadTask.setDownloadType(0);
        downloadTask.setScreenshot_pic(this.screenshot_pic);
        downloadTask.setPlugin_num(this.plugin_num);
        downloadTask.setIs_world(this.is_world);
        downloadTask.setIs_network(this.is_network);
        downloadTask.setSource_ver(this.source_ver);
        downloadTask.setSource_ver_name(this.source_ver_name);
        downloadTask.setSource_down_url(this.source_down_url);
        downloadTask.setPlugin_screenshot(this.plugin_screenshot);
        downloadTask.setPlugin_area(this.forum_switch);
        downloadTask.setPlugin_area_val(this.forum_id);
        downloadTask.setWorld_shop(this.world_shop);
        downloadTask.setWorld_area(this.world_area);
        downloadTask.setIs_fight(this.is_fight);
        downloadTask.setFight_type(this.fight_type);
        downloadTask.setFight_fun(this.fight_funv2);
        downloadTask.setGame_info_tpl_type(this.game_info_tpl_type);
        downloadTask.setLock_sp(this.lock_sp);
        downloadTask.setUnzip_size(this.unzip_size);
        downloadTask.setSync_memory(this.sync_memory);
        downloadTask.setGift_package_switch(this.gift_package_switch);
        downloadTask.setActual_size(this.actual_size);
        downloadTask.setGame_info_top_pic(this.game_info_top_pic);
        downloadTask.setDown_count(this.down_count);
        downloadTask.setSp_tpl_two_position(this.sp_tpl_two_position);
        downloadTask.setSp_tag_info(this.sp_tag_info);
        downloadTask.setScore(this.score);
        PayTagInfo payTagInfo = this.pay_tag_info;
        downloadTask.setPay_game_amount(payTagInfo != null ? payTagInfo.getPay_game_amount() : 0);
        downloadTask.setDownload_source_url(this.download_source_url);
        downloadTask.setDownload_outside_url(this.download_outside_url);
        downloadTask.setDownload_original_switch(this.download_original_switch);
        downloadTask.setDownload_source_switch_v1(this.download_source_switch_v1);
        downloadTask.setDownload_source_switch_v2(this.download_source_switch_v2);
        downloadTask.setAllow_start_up_ad(this.allow_start_up_ad);
        downloadTask.set_from(get_from());
        downloadTask.set_from_type(get_from_type());
        downloadTask.setMin_an_compatible_ver(this.min_an_compatible_ver);
        downloadTask.setMax_an_compatible_ver(this.max_an_compatible_ver);
        downloadTask.setCpu_type(this.cpu_type);
        if (t2.i(this.cfg_down_url)) {
            downloadTask.setResource_url_remote(this.cfg_down_url);
        }
        ModInfoBean modInfoBean = this.mod_info;
        if (modInfoBean != null) {
            if (modInfoBean.getMod_game_id().equals(this.crc_sign_id)) {
                downloadTask.setResource_url_remote(this.mod_info.getDown_url());
                downloadTask.setRef_crc_sign_id(this.mod_info.getMain_game_id());
            } else {
                downloadTask.setRef_crc_sign_id(this.mod_info.getMod_game_id());
            }
            downloadTask.setMod_info(JsonMapper.toJsonString(this.mod_info));
        }
        SingleGameModInfoBean singleGameModInfoBean = this.single_game_mod_info;
        if (singleGameModInfoBean != null) {
            downloadTask.setResource_url_remote(singleGameModInfoBean.getDownUrl());
            downloadTask.setSingle_game_mod_info(JsonMapper.toJsonString(this.single_game_mod_info));
        }
        ExtBean extBean = new ExtBean();
        extBean.setFrom(get_from() + "");
        extBean.set_from_type(get_from_type());
        extBean.setRecPosition(getRecPosition());
        extBean.setNodeId(getNodeId());
        extBean.setVolcanoOther(getPosition_path() != null ? JsonMapper.toJsonString(getPosition_path()) : "");
        extBean.setReMarks(getReMarks());
        extBean.setWhere(getWhere());
        downloadTask.setExt(JsonMapper.toJsonString(extBean));
        return downloadTask;
    }

    public String getEdit_recommend() {
        return this.edit_recommend;
    }

    public ExtInfoBean getExt_info() {
        return this.ext_info;
    }

    public List<BannerBean> getFast_entry_no4() {
        return this.fast_entry_no4;
    }

    public String getFeedback_issue_url() {
        return this.feedback_issue_url;
    }

    public String getFight_funv2() {
        return this.fight_funv2;
    }

    public String getFight_screenshot_pic() {
        return this.fight_screenshot_pic;
    }

    public int getFight_type() {
        return this.fight_type;
    }

    public String getFollow_background_img() {
        return this.follow_background_img;
    }

    public int getFormula_weight() {
        return this.formula_weight;
    }

    public long getForum_id() {
        return this.forum_id;
    }

    public int getForum_switch() {
        return this.forum_switch;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public int getGameBook() {
        return this.game_book;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public String getGameId() {
        return getGame_id();
    }

    public int getGame_book() {
        return this.game_book;
    }

    public List<GameDetialBookTag> getGame_book_tag() {
        return this.game_book_tag;
    }

    public List<TipBean> getGame_bt_tag() {
        return this.game_bt_tag;
    }

    public String getGame_btn_text() {
        return this.game_btn_text;
    }

    public String getGame_buy_rebate() {
        return this.game_buy_rebate;
    }

    public String getGame_comment_count() {
        return this.game_comment_count;
    }

    public String getGame_company_id() {
        return this.game_company_id;
    }

    public List<BTGameCouponBean> getGame_coupon_for_bt_game() {
        return this.game_coupon_for_bt_game;
    }

    public List<GameVoucherBean> getGame_coupon_list() {
        return this.game_coupon_list;
    }

    public String getGame_describe_second() {
        return this.game_describe_second;
    }

    public GamedetialMoreBean getGame_detailed() {
        return this.game_detailed;
    }

    public String getGame_exclusive_benefits() {
        return this.game_exclusive_benefits;
    }

    public String getGame_exclusive_benefits_qq() {
        return this.game_exclusive_benefits_qq;
    }

    public List<GameFromPopoWinBean.DataBean> getGame_favorites_top5() {
        return this.game_favorites_top5;
    }

    public int getGame_follow() {
        return this.game_follow;
    }

    public List<GiftPackageDataInfoBean> getGame_gift_package() {
        return this.game_gift_package;
    }

    public RecomDatabean getGame_handle_entrance() {
        return this.game_handle_entrance;
    }

    public String getGame_ico_remote() {
        return this.game_ico_remote;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getGame_info() {
        return this.game_info;
    }

    public String getGame_info_top_pic() {
        return this.game_info_top_pic;
    }

    public String getGame_info_top_video_url() {
        return this.game_info_top_video_url;
    }

    public String getGame_info_tpl_type() {
        return this.game_info_tpl_type;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public int getGame_open_switch() {
        return this.game_open_switch;
    }

    public long getGame_open_time() {
        return this.game_open_time;
    }

    public List<GamePromptBean> getGame_prompt() {
        return this.game_prompt;
    }

    public GameDetailRankingTag getGame_ranking_pos() {
        return this.game_ranking_pos;
    }

    public GameScore getGame_score() {
        return this.game_score;
    }

    public List<ScreenshotGamedetialBean> getGame_screen_shot() {
        return this.game_screen_shot;
    }

    public List<ServiceState> getGame_server_state() {
        return this.game_server_state;
    }

    public int getGame_server_switch() {
        return this.game_server_switch;
    }

    public GameDetialStrategy getGame_strategy() {
        return this.game_strategy;
    }

    public String getGame_upgrade_info() {
        return this.game_upgrade_info;
    }

    public int getGame_upgrade_info_switch() {
        return this.game_upgrade_info_switch;
    }

    public int getGame_upgrade_state() {
        return this.game_upgrade_state;
    }

    public BtGameWelfare getGame_welfare() {
        return this.game_welfare;
    }

    public String getGif_slide_pic() {
        return this.gif_slide_pic;
    }

    public int getGift_package_switch() {
        return this.gift_package_switch;
    }

    public int getHandle_support() {
        return this.handle_support;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public String getIcon() {
        return this.ico_remote;
    }

    public String getInfo() {
        return this.info;
    }

    @Override // com.join.kotlin.base.impl.IIntent, com.join.kotlin.base.impl.GInfo
    public IntentDateBean getIntentDataBean() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setTpl_type(this.game_info_tpl_type);
        if (t2.i(getGameId())) {
            intentDateBean.setCrc_link_type_val(getGameId());
        } else {
            intentDateBean.setCrc_link_type_val(this.crc_sign_id);
        }
        intentDateBean.setJump_type(this.sp_tpl_two_position);
        getExtBean().set_from_type(get_from_type()).setRecPosition(getRecPosition()).setReMarks(getReMarks()).setVolcanoOther(getPosition_path() != null ? JsonMapper.toJsonString(getPosition_path()) : "").setOnlineGame(UtilsMy.t2(this.tag_info));
        intentDateBean.setExtBean(getExtBean());
        IntentToDetialBean intentToDetialBean = new IntentToDetialBean();
        intentToDetialBean.setAppId(getGameId());
        intentToDetialBean.setAppName(this.game_name);
        intentToDetialBean.setIconUrl(this.ico_remote);
        intentToDetialBean.setDetialType(0);
        intentDateBean.setObject(intentToDetialBean);
        return intentDateBean;
    }

    public int getIs_fight() {
        return this.is_fight;
    }

    public int getIs_network() {
        return this.is_network;
    }

    public int getIs_started() {
        return this.is_started;
    }

    public int getIs_world() {
        return this.is_world;
    }

    public int getLast_week_down_count() {
        return this.last_week_down_count;
    }

    public int getLock_sp() {
        return this.lock_sp;
    }

    public int getMax_an_compatible_ver() {
        return this.max_an_compatible_ver;
    }

    public int getMax_battle_count() {
        return this.max_battle_count;
    }

    public int getMax_battle_view_count() {
        return this.max_battle_view_count;
    }

    public int getMin_an_compatible_ver() {
        return this.min_an_compatible_ver;
    }

    public DomainInfoBean getMini_program() {
        return this.mini_program;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public String getModGameId() {
        ModInfoBean modInfoBean = this.mod_info;
        return modInfoBean != null ? modInfoBean.getMod_game_id() : "";
    }

    public ModInfoBean getMod_info() {
        return this.mod_info;
    }

    public int getOther_down_switch() {
        return this.other_down_switch;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public String getPackageName() {
        return this.packageName;
    }

    public PanelSwitch getPanel_switch() {
        return this.panel_switch;
    }

    public String getPapa_explain() {
        return this.papa_explain;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public PayTagInfo getPayTagInfo() {
        return this.pay_tag_info;
    }

    public PayTagInfo getPay_tag_info() {
        return this.pay_tag_info;
    }

    public List<DetialShowImageBean> getPic_info() {
        return this.pic_info;
    }

    public int getPic_position() {
        return this.pic_position;
    }

    public String getPlayer_qq() {
        return this.player_qq;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @NonNull
    public String getPluginNum() {
        return this.plugin_num;
    }

    public String getPlugin_lowest_ver() {
        return this.plugin_lowest_ver;
    }

    public String getPlugin_lowest_ver_name() {
        return this.plugin_lowest_ver_name;
    }

    public String getPlugin_num() {
        return this.plugin_num;
    }

    public int getPlugin_screenshot() {
        return this.plugin_screenshot;
    }

    public String getQq_qun() {
        return this.qq_qun;
    }

    public RankingInfoBean getRanking_info() {
        return this.ranking_info;
    }

    public int getRanking_weight() {
        return this.ranking_weight;
    }

    public int getRecommend_adinfo_switch() {
        return this.recommend_adinfo_switch;
    }

    public List<RecommendGameBean> getRecommend_game() {
        return this.recommend_game;
    }

    public String getRecommend_game_big_gif() {
        return this.recommend_game_big_gif;
    }

    public String getRecommend_game_big_pic() {
        return this.recommend_game_big_pic;
    }

    public int getRecommend_game_switch() {
        return this.recommend_game_switch;
    }

    public List<RecommendInfomationBean> getRecommend_information() {
        return this.recommend_information;
    }

    public int getRecommend_information_switch() {
        return this.recommend_information_switch;
    }

    public long getResidual_time() {
        return this.residual_time;
    }

    public String getRom_lowest_ver() {
        return this.rom_lowest_ver;
    }

    public GameDetailRoomCfgInfo getRoom_cfg_info() {
        return this.room_cfg_info;
    }

    public String getScore() {
        return this.score;
    }

    public String getScore_count() {
        return this.score_count;
    }

    public String getScore_count_manual() {
        return this.score_count_manual;
    }

    public String getScreenshot_pic() {
        return this.screenshot_pic;
    }

    public String getSdk_active_id() {
        return this.sdk_active_id;
    }

    public CommentAllListBean.SelfCommentBean getSelf_comment() {
        return this.self_comment;
    }

    public String getServer_qq() {
        return this.server_qq;
    }

    public DetialShareData getShare_config() {
        return this.share_config;
    }

    public String getShare_url() {
        return this.share_url;
    }

    public String getSharer() {
        return this.sharer;
    }

    public List<CollectionBeanSub> getSimilar_games_recommend() {
        return this.similar_games_recommend;
    }

    public List<CollectionBeanSub> getSimilar_games_recommend_pc() {
        return this.similar_games_recommend_pc;
    }

    public SingleGameModInfoBean getSingle_game_mod_info() {
        return this.single_game_mod_info;
    }

    public String getSize() {
        return this.size;
    }

    public String getSlide_position() {
        return this.slide_position;
    }

    public String getSource_down_url() {
        return this.source_down_url;
    }

    public String getSource_lowest_ver() {
        return this.source_lowest_ver;
    }

    public String getSource_ver() {
        return this.source_ver;
    }

    public String getSource_ver_name() {
        return this.source_ver_name;
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.GInfo
    @Nullable
    public TipNew getSpTagInfo() {
        return this.sp_tag_info;
    }

    public TipNew getSp_tag_info() {
        return this.sp_tag_info;
    }

    public int getSp_tpl_two_banner_switch() {
        return this.sp_tpl_two_banner_switch;
    }

    public int getSp_tpl_two_position() {
        return this.sp_tpl_two_position;
    }

    public StandaloneCloudArchive getStandalone_cloud_archive() {
        return this.standalone_cloud_archive;
    }

    public int getStart_count() {
        return this.start_count;
    }

    public String getSync_memory() {
        return this.sync_memory;
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.GInfo
    @Nullable
    public List<TipBean> getTagInfo() {
        return this.tag_info;
    }

    public ArrayList<TipBean> getTag_info() {
        return this.tag_info;
    }

    public long getTimes() {
        return this.times;
    }

    public List<DownloadUrlBean> getTp_down_url() {
        return this.tp_down_url;
    }

    public String getUnzip_size() {
        return this.unzip_size;
    }

    public String getVedio_cover_pic() {
        return this.vedio_cover_pic;
    }

    public String getVedio_url() {
        return this.vedio_url;
    }

    public String getVer() {
        return this.ver;
    }

    public String getVer_name() {
        return this.ver_name;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public int getVersionCode() {
        if (!t2.i(getVer())) {
            return 0;
        }
        try {
            return Integer.valueOf(getVer()).intValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public GamedetailViewbean getVideo_and_cover() {
        return this.video_and_cover;
    }

    public WebDiskInfo getWeb_disk_info() {
        return this.web_disk_info;
    }

    public int getWorld_area() {
        return this.world_area;
    }

    public int getWorld_shop() {
        return this.world_shop;
    }

    public int hashCode() {
        return Objects.hash(this.game_name, getGame_info_top_video_url(), this.game_id);
    }

    public boolean isCloudGame() {
        ArrayList<TipBean> arrayList = this.tag_info;
        if (arrayList == null || arrayList.isEmpty()) {
            return false;
        }
        for (TipBean tipBean : this.tag_info) {
            if ("269".equals(tipBean.getId()) || "271".equals(tipBean.getId()) || "272".equals(tipBean.getId())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isCpsGame() {
        return this.download_close == 0;
    }

    public boolean isHas_more_activities() {
        return this.has_more_activities;
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isModGameVm() {
        return super.isModGameVm() || getMod_info() != null;
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isSingleGameVm() {
        return super.isSingleGameVm() || getSingle_game_mod_info() != null;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public boolean needPurchase() {
        return UtilsMy.x0(getPay_tag_info(), getGameId()) > 0;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public boolean needUpdate(int vCode) {
        return vCode < getVersionCode();
    }

    public void setActivities(List<BTActivityBean> activities) {
        this.activities = activities;
    }

    public void setActivity_entry(GamedetialBottomEntry activity_entry) {
        this.activity_entry = activity_entry;
    }

    public void setActual_size(long actual_size) {
        this.actual_size = actual_size;
    }

    public void setAd_info(CommonGameInfoBean ad_info) {
        this.ad_info = ad_info;
    }

    public void setAllow_start_up_ad(String allow_start_up_ad) {
        this.allow_start_up_ad = allow_start_up_ad;
    }

    public void setAppSize(String appSize) {
        this.appSize = appSize;
    }

    public void setAuxiliary_tool(GameDetialAuxiliaryBean auxiliary_tool) {
        this.auxiliary_tool = auxiliary_tool;
    }

    public void setBackground_color(String background_color) {
        this.background_color = background_color;
    }

    public void setBanner(List<BannerBean> banner) {
        this.banner = banner;
    }

    public void setBbs_strategy_contribute_url(String bbs_strategy_contribute_url) {
        this.bbs_strategy_contribute_url = bbs_strategy_contribute_url;
    }

    public void setBbs_strategy_switch(int bbs_strategy_switch) {
        this.bbs_strategy_switch = bbs_strategy_switch;
    }

    public void setBespeak_count(String bespeak_count) {
        this.bespeak_count = bespeak_count;
    }

    public void setBespeak_switch(int bespeak_switch) {
        this.bespeak_switch = bespeak_switch;
    }

    public void setBt_game_coupon_count(int bt_game_coupon_count) {
        this.bt_game_coupon_count = bt_game_coupon_count;
    }

    public void setBt_game_recommend(List<RecommendGameBean> bt_game_recommend) {
        this.bt_game_recommend = bt_game_recommend;
    }

    public void setBt_game_switch(int bt_game_switch) {
        this.bt_game_switch = bt_game_switch;
    }

    public void setCdn_down_switch(int cdn_down_switch) {
        this.cdn_down_switch = cdn_down_switch;
    }

    public void setCfg_down_url(String cfg_down_url) {
        this.cfg_down_url = cfg_down_url;
    }

    public void setCfg_lowest_ver(String cfg_lowest_ver) {
        this.cfg_lowest_ver = cfg_lowest_ver;
    }

    public void setCfg_ver(String cfg_ver) {
        this.cfg_ver = cfg_ver;
    }

    public void setCfg_ver_name(String cfg_ver_name) {
        this.cfg_ver_name = cfg_ver_name;
    }

    public void setComment_count(String comment_count) {
        this.comment_count = comment_count;
    }

    public void setComment_score_switch(String comment_score_switch) {
        this.comment_score_switch = comment_score_switch;
    }

    public void setComment_switch(int comment_switch) {
        this.comment_switch = comment_switch;
    }

    public void setCommitDataBeanList(List<CommentBaseBean> commitDataBeanList) {
        this.commitDataBeanList = commitDataBeanList;
    }

    public void setCommitListData(List<GameCommitListBean.GameCommitList> commitListData) {
        this.commitListData = commitListData;
    }

    public void setCommunity_entrance_switch(int community_entrance_switch) {
        this.community_entrance_switch = community_entrance_switch;
    }

    public void setCommunity_entrance_tag(String community_entrance_tag) {
        this.community_entrance_tag = community_entrance_tag;
    }

    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }

    public void setCompany_recommend(List<RecommendGameBean> company_recommend) {
        this.company_recommend = company_recommend;
    }

    public void setCpu_type(int cpu_type) {
        this.cpu_type = cpu_type;
    }

    public void setCrc_sign_id(String crc_sign_id) {
        this.crc_sign_id = crc_sign_id;
    }

    public void setCustom_tag_info(List<TipBean> custom_tag_info) {
        this.custom_tag_info = custom_tag_info;
    }

    public void setDel_tag(int del_tag) {
        this.del_tag = del_tag;
    }

    public void setDev_info(String dev_info) {
        this.dev_info = dev_info;
    }

    public void setDiscover(DiscoverBean discover) {
        this.discover = discover;
    }

    public void setDownType(int downType) {
        this.downType = downType;
    }

    public void setDown_and_down(List<RecommendGameBean> down_and_down) {
        this.down_and_down = down_and_down;
    }

    public void setDown_count(int down_count) {
        this.down_count = down_count;
    }

    public void setDown_count_manual(int down_count_manual) {
        this.down_count_manual = down_count_manual;
    }

    public void setDown_status(int down_status) {
        this.down_status = down_status;
    }

    public void setDown_url_remote(String down_url_remote) {
        this.down_url_remote = down_url_remote;
    }

    public void setDown_weight(int down_weight) {
        this.down_weight = down_weight;
    }

    public void setDownload_close(int download_close) {
        this.download_close = download_close;
    }

    public void setDownload_original_switch(String download_original_switch) {
        this.download_original_switch = download_original_switch;
    }

    public void setDownload_outside_url(String download_outside_url) {
        this.download_outside_url = download_outside_url;
    }

    public void setDownload_source_switch_v1(String download_source_switch_v1) {
        this.download_source_switch_v1 = download_source_switch_v1;
    }

    public void setDownload_source_switch_v2(String download_source_switch_v2) {
        this.download_source_switch_v2 = download_source_switch_v2;
    }

    public void setDownload_source_url(String download_source_url) {
        this.download_source_url = download_source_url;
    }

    public void setEdit_recommend(String edit_recommend) {
        this.edit_recommend = edit_recommend;
    }

    public void setExt_info(ExtInfoBean ext_info) {
        this.ext_info = ext_info;
    }

    public void setFast_entry_no4(List<BannerBean> fast_entry_no4) {
        this.fast_entry_no4 = fast_entry_no4;
    }

    public void setFeedback_issue_url(String feedback_issue_url) {
        this.feedback_issue_url = feedback_issue_url;
    }

    public void setFight_funv2(String fight_funv2) {
        this.fight_funv2 = fight_funv2;
    }

    public void setFight_screenshot_pic(String fight_screenshot_pic) {
        this.fight_screenshot_pic = fight_screenshot_pic;
    }

    public void setFight_type(int fight_type) {
        this.fight_type = fight_type;
    }

    public void setFollow_background_img(String follow_background_img) {
        this.follow_background_img = follow_background_img;
    }

    public void setFormula_weight(int formula_weight) {
        this.formula_weight = formula_weight;
    }

    public void setForum_id(long forum_id) {
        this.forum_id = forum_id;
    }

    public void setForum_switch(int forum_switch) {
        this.forum_switch = forum_switch;
    }

    public void setGame_book(int game_book) {
        this.game_book = game_book;
    }

    public void setGame_book_tag(List<GameDetialBookTag> game_book_tag) {
        this.game_book_tag = game_book_tag;
    }

    public void setGame_bt_tag(List<TipBean> game_bt_tag) {
        this.game_bt_tag = game_bt_tag;
    }

    public void setGame_btn_text(String game_btn_text) {
        this.game_btn_text = game_btn_text;
    }

    public void setGame_buy_rebate(String game_buy_rebate) {
        this.game_buy_rebate = game_buy_rebate;
    }

    public void setGame_comment_count(String game_comment_count) {
        this.game_comment_count = game_comment_count;
    }

    public void setGame_company_id(String game_company_id) {
        this.game_company_id = game_company_id;
    }

    public void setGame_coupon_for_bt_game(List<BTGameCouponBean> game_coupon_for_bt_game) {
        this.game_coupon_for_bt_game = game_coupon_for_bt_game;
    }

    public void setGame_coupon_list(List<GameVoucherBean> game_coupon_list) {
        this.game_coupon_list = game_coupon_list;
    }

    public void setGame_describe_second(String game_describe_second) {
        this.game_describe_second = game_describe_second;
    }

    public void setGame_detailed(GamedetialMoreBean game_detailed) {
        this.game_detailed = game_detailed;
    }

    public void setGame_exclusive_benefits(String game_exclusive_benefits) {
        this.game_exclusive_benefits = game_exclusive_benefits;
    }

    public void setGame_exclusive_benefits_qq(String game_exclusive_benefits_qq) {
        this.game_exclusive_benefits_qq = game_exclusive_benefits_qq;
    }

    public void setGame_favorites_top5(List<GameFromPopoWinBean.DataBean> game_favorites_top5) {
        this.game_favorites_top5 = game_favorites_top5;
    }

    public void setGame_follow(int game_follow) {
        this.game_follow = game_follow;
    }

    public void setGame_gift_package(List<GiftPackageDataInfoBean> game_gift_package) {
        this.game_gift_package = game_gift_package;
    }

    public void setGame_handle_entrance(RecomDatabean game_handle_entrance) {
        this.game_handle_entrance = game_handle_entrance;
    }

    public void setGame_ico_remote(String game_ico_remote) {
        this.game_ico_remote = game_ico_remote;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setGame_info(String game_info) {
        this.game_info = game_info;
    }

    public void setGame_info_top_pic(String game_info_top_pic) {
        this.game_info_top_pic = game_info_top_pic;
    }

    public void setGame_info_top_video_url(String game_info_top_video_url) {
        this.game_info_top_video_url = game_info_top_video_url;
    }

    public void setGame_info_tpl_type(String game_info_tpl_type) {
        this.game_info_tpl_type = game_info_tpl_type;
    }

    public void setGame_name(String game_name) {
        this.game_name = game_name;
    }

    public void setGame_open_switch(int game_open_switch) {
        this.game_open_switch = game_open_switch;
    }

    public void setGame_open_time(long game_open_time) {
        this.game_open_time = game_open_time;
    }

    public void setGame_prompt(List<GamePromptBean> game_prompt) {
        this.game_prompt = game_prompt;
    }

    public void setGame_ranking_pos(GameDetailRankingTag game_ranking_pos) {
        this.game_ranking_pos = game_ranking_pos;
    }

    public void setGame_score(GameScore game_score) {
        this.game_score = game_score;
    }

    public void setGame_screen_shot(List<ScreenshotGamedetialBean> game_screen_shot) {
        this.game_screen_shot = game_screen_shot;
    }

    public void setGame_server_state(List<ServiceState> game_server_state) {
        this.game_server_state = game_server_state;
    }

    public void setGame_server_switch(int game_server_switch) {
        this.game_server_switch = game_server_switch;
    }

    public void setGame_strategy(GameDetialStrategy game_strategy) {
        this.game_strategy = game_strategy;
    }

    public void setGame_upgrade_info(String game_upgrade_info) {
        this.game_upgrade_info = game_upgrade_info;
    }

    public void setGame_upgrade_info_switch(int game_upgrade_info_switch) {
        this.game_upgrade_info_switch = game_upgrade_info_switch;
    }

    public void setGame_upgrade_state(int game_upgrade_state) {
        this.game_upgrade_state = game_upgrade_state;
    }

    public void setGame_welfare(BtGameWelfare game_welfare) {
        this.game_welfare = game_welfare;
    }

    public void setGif_slide_pic(String gif_slide_pic) {
        this.gif_slide_pic = gif_slide_pic;
    }

    public void setGift_package_switch(int gift_package_switch) {
        this.gift_package_switch = gift_package_switch;
    }

    public void setHandle_support(int handle_support) {
        this.handle_support = handle_support;
    }

    public void setHas_more_activities(boolean has_more_activities) {
        this.has_more_activities = has_more_activities;
    }

    public void setIco_remote(String ico_remote) {
        this.ico_remote = ico_remote;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public void setIs_fight(int is_fight) {
        this.is_fight = is_fight;
    }

    public void setIs_network(int is_network) {
        this.is_network = is_network;
    }

    public void setIs_started(int is_started) {
        this.is_started = is_started;
    }

    public void setIs_world(int is_world) {
        this.is_world = is_world;
    }

    public void setLast_week_down_count(int last_week_down_count) {
        this.last_week_down_count = last_week_down_count;
    }

    public void setLock_sp(int lock_sp) {
        this.lock_sp = lock_sp;
    }

    public void setMax_an_compatible_ver(int max_an_compatible_ver) {
        this.max_an_compatible_ver = max_an_compatible_ver;
    }

    public void setMax_battle_count(int max_battle_count) {
        this.max_battle_count = max_battle_count;
    }

    public void setMax_battle_view_count(int max_battle_view_count) {
        this.max_battle_view_count = max_battle_view_count;
    }

    public void setMin_an_compatible_ver(int min_an_compatible_ver) {
        this.min_an_compatible_ver = min_an_compatible_ver;
    }

    public void setMini_program(DomainInfoBean mini_program) {
        this.mini_program = mini_program;
    }

    public void setMod_info(ModInfoBean mod_info) {
        this.mod_info = mod_info;
    }

    public void setOther_down_switch(int other_down_switch) {
        this.other_down_switch = other_down_switch;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public void setPanel_switch(PanelSwitch panel_switch) {
        this.panel_switch = panel_switch;
    }

    public void setPapa_explain(String papa_explain) {
        this.papa_explain = papa_explain;
    }

    public void setPay_tag_info(PayTagInfo pay_tag_info) {
        this.pay_tag_info = pay_tag_info;
    }

    public void setPic_info(List<DetialShowImageBean> pic_info) {
        this.pic_info = pic_info;
    }

    public void setPic_position(int pic_position) {
        this.pic_position = pic_position;
    }

    public void setPlayer_qq(String player_qq) {
        this.player_qq = player_qq;
    }

    public void setPlugin_lowest_ver(String plugin_lowest_ver) {
        this.plugin_lowest_ver = plugin_lowest_ver;
    }

    public void setPlugin_lowest_ver_name(String plugin_lowest_ver_name) {
        this.plugin_lowest_ver_name = plugin_lowest_ver_name;
    }

    public void setPlugin_num(String plugin_num) {
        this.plugin_num = plugin_num;
    }

    public void setPlugin_screenshot(int plugin_screenshot) {
        this.plugin_screenshot = plugin_screenshot;
    }

    public void setQq_qun(String qq_qun) {
        this.qq_qun = qq_qun;
    }

    public void setRanking_info(RankingInfoBean ranking_info) {
        this.ranking_info = ranking_info;
    }

    public void setRanking_weight(int ranking_weight) {
        this.ranking_weight = ranking_weight;
    }

    public void setRecommend_adinfo_switch(int recommend_adinfo_switch) {
        this.recommend_adinfo_switch = recommend_adinfo_switch;
    }

    public void setRecommend_game(List<RecommendGameBean> recommend_game) {
        this.recommend_game = recommend_game;
    }

    public void setRecommend_game_big_gif(String recommend_game_big_gif) {
        this.recommend_game_big_gif = recommend_game_big_gif;
    }

    public void setRecommend_game_big_pic(String recommend_game_big_pic) {
        this.recommend_game_big_pic = recommend_game_big_pic;
    }

    public void setRecommend_game_switch(int recommend_game_switch) {
        this.recommend_game_switch = recommend_game_switch;
    }

    public void setRecommend_information(List<RecommendInfomationBean> recommend_information) {
        this.recommend_information = recommend_information;
    }

    public void setRecommend_information_switch(int recommend_information_switch) {
        this.recommend_information_switch = recommend_information_switch;
    }

    public void setResidual_time(long residual_time) {
        this.residual_time = residual_time;
    }

    public void setRom_lowest_ver(String rom_lowest_ver) {
        this.rom_lowest_ver = rom_lowest_ver;
    }

    public void setRoom_cfg_info(GameDetailRoomCfgInfo room_cfg_info) {
        this.room_cfg_info = room_cfg_info;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public void setScore_count(String score_count) {
        this.score_count = score_count;
    }

    public void setScore_count_manual(String score_count_manual) {
        this.score_count_manual = score_count_manual;
    }

    public void setScreenshot_pic(String screenshot_pic) {
        this.screenshot_pic = screenshot_pic;
    }

    public void setSdk_active_id(String sdk_active_id) {
        this.sdk_active_id = sdk_active_id;
    }

    public void setSelf_comment(CommentAllListBean.SelfCommentBean self_comment) {
        this.self_comment = self_comment;
    }

    public void setServer_qq(String server_qq) {
        this.server_qq = server_qq;
    }

    public void setShare_config(DetialShareData share_config) {
        this.share_config = share_config;
    }

    public void setShare_url(String share_url) {
        this.share_url = share_url;
    }

    public void setSharer(String sharer) {
        this.sharer = sharer;
    }

    public void setSimilar_games_recommend(List<CollectionBeanSub> similar_games_recommend) {
        this.similar_games_recommend = similar_games_recommend;
    }

    public void setSimilar_games_recommend_pc(List<CollectionBeanSub> similar_games_recommend_pc) {
        this.similar_games_recommend_pc = similar_games_recommend_pc;
    }

    public void setSingle_game_mod_info(SingleGameModInfoBean single_game_mod_info2) {
        this.single_game_mod_info = single_game_mod_info2;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public void setSlide_position(String slide_position) {
        this.slide_position = slide_position;
    }

    public void setSource_down_url(String source_down_url) {
        this.source_down_url = source_down_url;
    }

    public void setSource_lowest_ver(String source_lowest_ver) {
        this.source_lowest_ver = source_lowest_ver;
    }

    public void setSource_ver(String source_ver) {
        this.source_ver = source_ver;
    }

    public void setSource_ver_name(String source_ver_name) {
        this.source_ver_name = source_ver_name;
    }

    public void setSp_tag_info(TipNew sp_tag_info) {
        this.sp_tag_info = sp_tag_info;
    }

    public void setSp_tpl_two_banner_switch(int sp_tpl_two_banner_switch) {
        this.sp_tpl_two_banner_switch = sp_tpl_two_banner_switch;
    }

    public void setSp_tpl_two_position(int sp_tpl_two_position) {
        this.sp_tpl_two_position = sp_tpl_two_position;
    }

    public void setStandalone_cloud_archive(StandaloneCloudArchive standalone_cloud_archive) {
        this.standalone_cloud_archive = standalone_cloud_archive;
    }

    public void setStart_count(int start_count) {
        this.start_count = start_count;
    }

    public void setSync_memory(String sync_memory) {
        this.sync_memory = sync_memory;
    }

    public void setTag_info(ArrayList<TipBean> tag_info) {
        this.tag_info = tag_info;
    }

    public void setTimes(long times) {
        this.times = times;
    }

    public void setTp_down_url(List<DownloadUrlBean> tp_down_url) {
        this.tp_down_url = tp_down_url;
    }

    public void setUnzip_size(String unzip_size) {
        this.unzip_size = unzip_size;
    }

    public void setVedio_cover_pic(String vedio_cover_pic) {
        this.vedio_cover_pic = vedio_cover_pic;
    }

    public void setVedio_url(String vedio_url) {
        this.vedio_url = vedio_url;
    }

    public void setVer(String ver) {
        this.ver = ver;
    }

    public void setVer_name(String ver_name) {
        this.ver_name = ver_name;
    }

    public void setVideo_and_cover(GamedetailViewbean video_and_cover) {
        this.video_and_cover = video_and_cover;
    }

    public void setWeb_disk_info(WebDiskInfo web_disk_info) {
        this.web_disk_info = web_disk_info;
    }

    public void setWorld_area(int world_area) {
        this.world_area = world_area;
    }

    public void setWorld_shop(int world_shop) {
        this.world_shop = world_shop;
    }
}
