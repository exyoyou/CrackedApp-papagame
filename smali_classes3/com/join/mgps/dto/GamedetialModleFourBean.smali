.class public Lcom/join/mgps/dto/GamedetialModleFourBean;
.super Lcom/join/mgps/dto/DownloadPointBase;
.source "SourceFile"


# instance fields
.field private activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BTActivityBean;",
            ">;"
        }
    .end annotation
.end field

.field private activity_entry:Lcom/join/mgps/dto/GamedetialBottomEntry;

.field private actual_size:J

.field private ad_info:Lcom/join/mgps/dto/CommonGameInfoBean;

.field private allow_start_up_ad:Ljava/lang/String;

.field private appSize:Ljava/lang/String;

.field private auxiliary_tool:Lcom/join/mgps/dto/GameDetialAuxiliaryBean;

.field private background_color:Ljava/lang/String;

.field private banner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private bbs_strategy_contribute_url:Ljava/lang/String;

.field private bbs_strategy_switch:I

.field private bespeak_count:Ljava/lang/String;

.field private bespeak_switch:I

.field private bt_game_coupon_count:I

.field private bt_game_recommend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;"
        }
    .end annotation
.end field

.field private bt_game_switch:I

.field private cdn_down_switch:I

.field private cfg_down_url:Ljava/lang/String;

.field private cfg_lowest_ver:Ljava/lang/String;

.field private cfg_ver:Ljava/lang/String;

.field private cfg_ver_name:Ljava/lang/String;

.field private comment_count:Ljava/lang/String;

.field private comment_score_switch:Ljava/lang/String;

.field private comment_switch:I

.field private commitDataBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;"
        }
    .end annotation
.end field

.field private commitListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;",
            ">;"
        }
    .end annotation
.end field

.field private community_entrance_switch:I

.field private community_entrance_tag:Ljava/lang/String;

.field private company_name:Ljava/lang/String;

.field private company_recommend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;"
        }
    .end annotation
.end field

.field private cpu_type:I

.field private crc_sign_id:Ljava/lang/String;

.field private custom_tag_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation
.end field

.field private del_tag:I

.field private dev_info:Ljava/lang/String;

.field private discover:Lcom/join/mgps/dto/DiscoverBean;

.field private downType:I

.field private down_and_down:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;"
        }
    .end annotation
.end field

.field private down_count:I

.field private down_count_manual:I

.field private down_status:I

.field private down_url_remote:Ljava/lang/String;

.field private down_weight:I

.field private download_close:I

.field private download_original_switch:Ljava/lang/String;

.field private download_outside_url:Ljava/lang/String;

.field private download_source_switch_v1:Ljava/lang/String;

.field private download_source_switch_v2:Ljava/lang/String;

.field private download_source_url:Ljava/lang/String;

.field private edit_recommend:Ljava/lang/String;

.field private ext_info:Lcom/join/mgps/dto/ExtInfoBean;

.field private fast_entry_no4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private feedback_issue_url:Ljava/lang/String;

.field private fight_funv2:Ljava/lang/String;

.field private fight_screenshot_pic:Ljava/lang/String;

.field private fight_type:I

.field private follow_background_img:Ljava/lang/String;

.field private formula_weight:I

.field private forum_id:J

.field private forum_switch:I

.field private game_book:I

.field private game_book_tag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialBookTag;",
            ">;"
        }
    .end annotation
.end field

.field private game_bt_tag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_btn_text:Ljava/lang/String;

.field private game_buy_rebate:Ljava/lang/String;

.field private game_comment_count:Ljava/lang/String;

.field private game_company_id:Ljava/lang/String;

.field private game_coupon_for_bt_game:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BTGameCouponBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_coupon_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameVoucherBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_describe_second:Ljava/lang/String;

.field private game_detailed:Lcom/join/mgps/dto/GamedetialMoreBean;

.field private game_exclusive_benefits:Ljava/lang/String;

.field private game_exclusive_benefits_qq:Ljava/lang/String;

.field private game_favorites_top5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_follow:I

.field private game_gift_package:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_handle_entrance:Lcom/join/mgps/dto/RecomDatabean;

.field private game_ico_remote:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private game_info:Ljava/lang/String;

.field private game_info_top_pic:Ljava/lang/String;

.field private game_info_top_video_url:Ljava/lang/String;

.field private game_info_tpl_type:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private game_open_switch:I

.field private game_open_time:J

.field private game_prompt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamePromptBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_ranking_pos:Lcom/join/mgps/dto/GameDetailRankingTag;

.field private game_score:Lcom/join/mgps/dto/GameScore;

.field private game_screen_shot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_server_state:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private game_server_switch:I

.field private game_strategy:Lcom/join/mgps/dto/GameDetialStrategy;

.field private game_upgrade_info:Ljava/lang/String;

.field private game_upgrade_info_switch:I

.field private game_upgrade_state:I

.field private game_welfare:Lcom/join/mgps/dto/BtGameWelfare;

.field private gif_slide_pic:Ljava/lang/String;

.field private gift_package_switch:I

.field private handle_support:I

.field private has_more_activities:Z

.field private ico_remote:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private is_fight:I

.field private is_network:I

.field private is_started:I

.field private is_world:I

.field private last_week_down_count:I

.field private lock_sp:I

.field private max_an_compatible_ver:I

.field private max_battle_count:I

.field private max_battle_view_count:I

.field private min_an_compatible_ver:I

.field private mini_program:Lcom/join/mgps/dto/DomainInfoBean;

.field private mod_info:Lcom/join/mgps/dto/ModInfoBean;

.field private other_down_switch:I

.field private packageName:Ljava/lang/String;

.field private panel_switch:Lcom/join/mgps/dto/PanelSwitch;

.field private papa_explain:Ljava/lang/String;

.field pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

.field private pic_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetialShowImageBean;",
            ">;"
        }
    .end annotation
.end field

.field private pic_position:I

.field private player_qq:Ljava/lang/String;

.field private plugin_lowest_ver:Ljava/lang/String;

.field private plugin_lowest_ver_name:Ljava/lang/String;

.field private plugin_num:Ljava/lang/String;

.field private plugin_screenshot:I

.field private qq_qun:Ljava/lang/String;

.field private ranking_info:Lcom/join/mgps/dto/RankingInfoBean;

.field private ranking_weight:I

.field private recommend_adinfo_switch:I

.field private recommend_game:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;"
        }
    .end annotation
.end field

.field private recommend_game_big_gif:Ljava/lang/String;

.field private recommend_game_big_pic:Ljava/lang/String;

.field private recommend_game_switch:I

.field private recommend_information:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendInfomationBean;",
            ">;"
        }
    .end annotation
.end field

.field private recommend_information_switch:I

.field private residual_time:J

.field private rom_lowest_ver:Ljava/lang/String;

.field private room_cfg_info:Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

.field private score:Ljava/lang/String;

.field private score_count:Ljava/lang/String;

.field private score_count_manual:Ljava/lang/String;

.field private screenshot_pic:Ljava/lang/String;

.field private sdk_active_id:Ljava/lang/String;

.field private self_comment:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

.field private server_qq:Ljava/lang/String;

.field private share_config:Lcom/join/mgps/dto/DetialShareData;

.field private share_url:Ljava/lang/String;

.field private sharer:Ljava/lang/String;

.field private similar_games_recommend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field private similar_games_recommend_pc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field private single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

.field private size:Ljava/lang/String;

.field private slide_position:Ljava/lang/String;

.field private source_down_url:Ljava/lang/String;

.field private source_lowest_ver:Ljava/lang/String;

.field private source_ver:Ljava/lang/String;

.field private source_ver_name:Ljava/lang/String;

.field private sp_tag_info:Lcom/join/mgps/dto/TipNew;

.field private sp_tpl_two_banner_switch:I

.field private sp_tpl_two_position:I

.field private standalone_cloud_archive:Lcom/join/mgps/dto/StandaloneCloudArchive;

.field private start_count:I

.field private sync_memory:Ljava/lang/String;

.field private tag_info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation
.end field

.field private times:J

.field private tp_down_url:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;"
        }
    .end annotation
.end field

.field private unzip_size:Ljava/lang/String;

.field private vedio_cover_pic:Ljava/lang/String;

.field private vedio_url:Ljava/lang/String;

.field private ver:Ljava/lang/String;

.field private ver_name:Ljava/lang/String;

.field private video_and_cover:Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;

.field private web_disk_info:Lcom/join/mgps/dto/WebDiskInfo;

.field private world_area:I

.field private world_shop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/DownloadPointBase;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->plugin_num:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->downType:I

    .line 10
    .line 11
    iput v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->handle_support:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public buildDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BTActivityBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->activities:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getActivity_entry()Lcom/join/mgps/dto/GamedetialBottomEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->activity_entry:Lcom/join/mgps/dto/GamedetialBottomEntry;

    .line 2
    .line 3
    return-object v0
.end method

.method public getActual_size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->actual_size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ad_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAllow_start_up_ad()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->allow_start_up_ad:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->appSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAuxiliary_tool()Lcom/join/mgps/dto/GameDetialAuxiliaryBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->auxiliary_tool:Lcom/join/mgps/dto/GameDetialAuxiliaryBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBackground_color()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->background_color:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBanner()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->banner:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBbs_strategy_contribute_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->bbs_strategy_contribute_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBbs_strategy_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->bbs_strategy_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getBespeakSwitch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->bespeak_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getBespeak_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->bespeak_count:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBespeak_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->bespeak_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getBt_game_coupon_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->bt_game_coupon_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getBt_game_recommend()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->bt_game_recommend:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBt_game_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->bt_game_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getCdn_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->cdn_down_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getCfg_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->cfg_down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->cfg_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->cfg_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->cfg_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getComment_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->comment_count:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getComment_score_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->comment_score_switch:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getComment_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->comment_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getCommitDataBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->commitDataBeanList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCommitListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->commitListData:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCommunity_entrance_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->community_entrance_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getCommunity_entrance_tag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->community_entrance_tag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCompany_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->company_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCompany_recommend()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->company_recommend:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCpu_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->cpu_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getCrc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->crc_sign_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCustom_tag_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->custom_tag_info:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDel_tag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->del_tag:I

    .line 2
    .line 3
    return v0
.end method

.method public getDev_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->dev_info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDiscover()Lcom/join/mgps/dto/DiscoverBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->discover:Lcom/join/mgps/dto/DiscoverBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownStatus()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->down_status:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->bespeak_switch:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x6

    .line 12
    iput v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->down_status:I

    .line 13
    .line 14
    :cond_0
    return v0
.end method

.method public getDownType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->downType:I

    .line 2
    .line 3
    return v0
.end method

.method public getDown_and_down()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->down_and_down:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDown_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->down_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getDown_count_manual()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->down_count_manual:I

    .line 2
    .line 3
    return v0
.end method

.method public getDown_status()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->down_status:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->bespeak_switch:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x6

    .line 12
    :cond_0
    return v0
.end method

.method public getDown_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->down_url_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDown_weight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->down_weight:I

    .line 2
    .line 3
    return v0
.end method

.method public getDownload_close()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->download_close:I

    .line 2
    .line 3
    return v0
.end method

.method public getDownload_original_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->download_original_switch:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_outside_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->download_outside_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_source_switch_v1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->download_source_switch_v1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_source_switch_v2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->download_source_switch_v2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_source_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->download_source_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 4

    .line 1
    new-instance v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->down_status:I

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    iget v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->bespeak_switch:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x6

    .line 17
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_status(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_status(I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ico_remote:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_name:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->down_url_remote:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->tag_info:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->crc_sign_id:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ver:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ver_name:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->plugin_num:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->info:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->size:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->cfg_ver:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->cfg_ver_name:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->cfg_down_url:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->screenshot_pic:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->plugin_num:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->is_world:I

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_world(I)V

    .line 114
    .line 115
    .line 116
    iget v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->is_network:I

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_network(I)V

    .line 119
    .line 120
    .line 121
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->source_ver:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->source_ver_name:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver_name(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->source_down_url:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_url(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->plugin_screenshot:I

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_screenshot(I)V

    .line 139
    .line 140
    .line 141
    iget v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->forum_switch:I

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area(I)V

    .line 144
    .line 145
    .line 146
    iget-wide v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->forum_id:J

    .line 147
    .line 148
    invoke-virtual {v0, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area_val(J)V

    .line 149
    .line 150
    .line 151
    iget v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->world_shop:I

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_shop(I)V

    .line 154
    .line 155
    .line 156
    iget v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->world_area:I

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_area(I)V

    .line 159
    .line 160
    .line 161
    iget v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->is_fight:I

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_fight(I)V

    .line 164
    .line 165
    .line 166
    iget v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->fight_type:I

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_type(I)V

    .line 169
    .line 170
    .line 171
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->fight_funv2:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_fun(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_info_tpl_type:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_info_tpl_type(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->lock_sp:I

    .line 182
    .line 183
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLock_sp(I)V

    .line 184
    .line 185
    .line 186
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->unzip_size:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUnzip_size(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->sync_memory:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSync_memory(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->gift_package_switch:I

    .line 197
    .line 198
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGift_package_switch(I)V

    .line 199
    .line 200
    .line 201
    iget-wide v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->actual_size:J

    .line 202
    .line 203
    invoke-virtual {v0, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setActual_size(J)V

    .line 204
    .line 205
    .line 206
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_info_top_pic:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_info_top_pic(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->down_count:I

    .line 212
    .line 213
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_count(I)V

    .line 214
    .line 215
    .line 216
    iget v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->sp_tpl_two_position:I

    .line 217
    .line 218
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tpl_two_position(I)V

    .line 219
    .line 220
    .line 221
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 222
    .line 223
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V

    .line 224
    .line 225
    .line 226
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->score:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScore(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    .line 232
    .line 233
    if-eqz v2, :cond_1

    .line 234
    .line 235
    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    :cond_1
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 240
    .line 241
    .line 242
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->download_source_url:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_url(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->download_outside_url:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_outside_url(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->download_original_switch:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_original_switch(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->download_source_switch_v1:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v1(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->download_source_switch_v2:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v2(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->allow_start_up_ad:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setAllow_start_up_ad(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 284
    .line 285
    .line 286
    iget v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->min_an_compatible_ver:I

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMin_an_compatible_ver(I)V

    .line 289
    .line 290
    .line 291
    iget v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->max_an_compatible_ver:I

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMax_an_compatible_ver(I)V

    .line 294
    .line 295
    .line 296
    iget v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->cpu_type:I

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCpu_type(I)V

    .line 299
    .line 300
    .line 301
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->cfg_down_url:Ljava/lang/String;

    .line 302
    .line 303
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-eqz v1, :cond_2

    .line 308
    .line 309
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->cfg_down_url:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 315
    .line 316
    if-eqz v1, :cond_4

    .line 317
    .line 318
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->crc_sign_id:Ljava/lang/String;

    .line 323
    .line 324
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-eqz v1, :cond_3

    .line 329
    .line 330
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 331
    .line 332
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 340
    .line 341
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRef_crc_sign_id(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    goto :goto_1

    .line 349
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 350
    .line 351
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRef_crc_sign_id(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 359
    .line 360
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 368
    .line 369
    if-eqz v1, :cond_5

    .line 370
    .line 371
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getDownUrl()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 379
    .line 380
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSingle_game_mod_info(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    :cond_5
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 388
    .line 389
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 390
    .line 391
    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v3, ""

    .line 405
    .line 406
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 414
    .line 415
    .line 416
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 421
    .line 422
    .line 423
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 428
    .line 429
    .line 430
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getNodeId()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setNodeId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 435
    .line 436
    .line 437
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/join/mgps/dto/VolcanoOther;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    if-eqz v2, :cond_6

    .line 442
    .line 443
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/join/mgps/dto/VolcanoOther;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    :cond_6
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ExtBean;->setVolcanoOther(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 452
    .line 453
    .line 454
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 459
    .line 460
    .line 461
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getWhere()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setWhere(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 466
    .line 467
    .line 468
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    return-object v0
.end method

.method public getEdit_recommend()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->edit_recommend:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt_info()Lcom/join/mgps/dto/ExtInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ext_info:Lcom/join/mgps/dto/ExtInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFast_entry_no4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->fast_entry_no4:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFeedback_issue_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->feedback_issue_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFight_funv2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->fight_funv2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFight_screenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->fight_screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFight_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->fight_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getFollow_background_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->follow_background_img:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFormula_weight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->formula_weight:I

    .line 2
    .line 3
    return v0
.end method

.method public getForum_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->forum_id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getForum_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->forum_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameBook()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_book:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_id()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getGame_book()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_book:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_book_tag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialBookTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_book_tag:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_bt_tag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_bt_tag:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_btn_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_btn_text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_buy_rebate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_buy_rebate:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_comment_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_comment_count:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_company_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_company_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_coupon_for_bt_game()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BTGameCouponBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_coupon_for_bt_game:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_coupon_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameVoucherBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_coupon_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_describe_second()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_describe_second:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_detailed()Lcom/join/mgps/dto/GamedetialMoreBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_detailed:Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_exclusive_benefits()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_exclusive_benefits:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_exclusive_benefits_qq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_exclusive_benefits_qq:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_favorites_top5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_favorites_top5:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_follow()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_follow:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_gift_package()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_gift_package:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_handle_entrance()Lcom/join/mgps/dto/RecomDatabean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_handle_entrance:Lcom/join/mgps/dto/RecomDatabean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_ico_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info_top_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_info_top_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info_top_video_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_info_top_video_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_info_tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_open_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_open_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_open_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_open_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGame_prompt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamePromptBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_prompt:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_ranking_pos()Lcom/join/mgps/dto/GameDetailRankingTag;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_ranking_pos:Lcom/join/mgps/dto/GameDetailRankingTag;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_score()Lcom/join/mgps/dto/GameScore;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_score:Lcom/join/mgps/dto/GameScore;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_screen_shot()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_screen_shot:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_server_state()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ServiceState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_server_state:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_server_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_server_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_strategy()Lcom/join/mgps/dto/GameDetialStrategy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_strategy:Lcom/join/mgps/dto/GameDetialStrategy;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_upgrade_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_upgrade_info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_upgrade_info_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_upgrade_info_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_upgrade_state()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_upgrade_state:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_welfare()Lcom/join/mgps/dto/BtGameWelfare;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_welfare:Lcom/join/mgps/dto/BtGameWelfare;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGif_slide_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->gif_slide_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGift_package_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->gift_package_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getHandle_support()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->handle_support:I

    .line 2
    .line 3
    return v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_info_tpl_type:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGameId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGameId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->crc_sign_id:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget v1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->sp_tpl_two_position:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getRecPosition()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setRecPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setReMarks(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/join/mgps/dto/VolcanoOther;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->getPosition_path()Lcom/join/mgps/dto/VolcanoOther;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const-string v2, ""

    .line 87
    .line 88
    :goto_1
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setVolcanoOther(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->tag_info:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->t2(Ljava/util/List;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setOnlineGame(Z)Lcom/join/mgps/dto/ExtBean;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 106
    .line 107
    .line 108
    new-instance v1, Lcom/join/mgps/Util/IntentToDetialBean;

    .line 109
    .line 110
    invoke-direct {v1}, Lcom/join/mgps/Util/IntentToDetialBean;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGameId()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->setAppId(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_name:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->setAppName(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ico_remote:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->setIconUrl(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const/4 v2, 0x0

    .line 131
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->setDetialType(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    return-object v0
.end method

.method public getIs_fight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->is_fight:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_network()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->is_network:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_started()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->is_started:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_world()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->is_world:I

    .line 2
    .line 3
    return v0
.end method

.method public getLast_week_down_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->last_week_down_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getLock_sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->lock_sp:I

    .line 2
    .line 3
    return v0
.end method

.method public getMax_an_compatible_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->max_an_compatible_ver:I

    .line 2
    .line 3
    return v0
.end method

.method public getMax_battle_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->max_battle_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getMax_battle_view_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->max_battle_view_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getMin_an_compatible_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->min_an_compatible_ver:I

    .line 2
    .line 3
    return v0
.end method

.method public getMini_program()Lcom/join/mgps/dto/DomainInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->mini_program:Lcom/join/mgps/dto/DomainInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getModGameId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getMod_info()Lcom/join/mgps/dto/ModInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOther_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->other_down_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPanel_switch()Lcom/join/mgps/dto/PanelSwitch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->panel_switch:Lcom/join/mgps/dto/PanelSwitch;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPapa_explain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->papa_explain:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayTagInfo()Lcom/join/mgps/dto/PayTagInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetialShowImageBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->pic_info:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->pic_position:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlayer_qq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->player_qq:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPluginNum()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->plugin_num:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->plugin_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_lowest_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->plugin_lowest_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->plugin_num:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_screenshot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->plugin_screenshot:I

    .line 2
    .line 3
    return v0
.end method

.method public getQq_qun()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->qq_qun:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRanking_info()Lcom/join/mgps/dto/RankingInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ranking_info:Lcom/join/mgps/dto/RankingInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRanking_weight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ranking_weight:I

    .line 2
    .line 3
    return v0
.end method

.method public getRecommend_adinfo_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->recommend_adinfo_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getRecommend_game()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->recommend_game:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecommend_game_big_gif()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->recommend_game_big_gif:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecommend_game_big_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->recommend_game_big_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecommend_game_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->recommend_game_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getRecommend_information()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendInfomationBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->recommend_information:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecommend_information_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->recommend_information_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getResidual_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->residual_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRom_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->rom_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRoom_cfg_info()Lcom/join/mgps/dto/GameDetailRoomCfgInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->room_cfg_info:Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->score:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScore_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->score_count:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScore_count_manual()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->score_count_manual:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScreenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdk_active_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->sdk_active_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelf_comment()Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->self_comment:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getServer_qq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->server_qq:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShare_config()Lcom/join/mgps/dto/DetialShareData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->share_config:Lcom/join/mgps/dto/DetialShareData;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShare_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->share_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSharer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->sharer:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSimilar_games_recommend()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->similar_games_recommend:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSimilar_games_recommend_pc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->similar_games_recommend_pc:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->size:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSlide_position()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->slide_position:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->source_down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->source_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->source_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->source_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSpTagInfo()Lcom/join/mgps/dto/TipNew;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSp_tag_info()Lcom/join/mgps/dto/TipNew;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSp_tpl_two_banner_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->sp_tpl_two_banner_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getSp_tpl_two_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->sp_tpl_two_position:I

    .line 2
    .line 3
    return v0
.end method

.method public getStandalone_cloud_archive()Lcom/join/mgps/dto/StandaloneCloudArchive;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->standalone_cloud_archive:Lcom/join/mgps/dto/StandaloneCloudArchive;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStart_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->start_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getSync_memory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->sync_memory:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTagInfo()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->tag_info:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag_info()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->tag_info:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->times:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTp_down_url()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->tp_down_url:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnzip_size()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->unzip_size:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVedio_cover_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->vedio_cover_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVedio_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->vedio_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersionCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVer()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    return v1
.end method

.method public getVideo_and_cover()Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->video_and_cover:Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWeb_disk_info()Lcom/join/mgps/dto/WebDiskInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->web_disk_info:Lcom/join/mgps/dto/WebDiskInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWorld_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->world_area:I

    .line 2
    .line 3
    return v0
.end method

.method public getWorld_shop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->world_shop:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_name:Ljava/lang/String;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_top_video_url()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    aput-object v2, v0, v1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    iget-object v2, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_id:Ljava/lang/String;

    .line 18
    .line 19
    aput-object v2, v0, v1

    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public isCloudGame()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->tag_info:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->tag_info:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/join/mgps/dto/TipBean;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "269"

    .line 36
    .line 37
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    const-string v3, "271"

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_2

    .line 54
    .line 55
    const-string v3, "272"

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    :cond_2
    const/4 v1, 0x1

    .line 68
    :cond_3
    :goto_0
    return v1
.end method

.method public isCpsGame()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->download_close:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public isHas_more_activities()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->has_more_activities:Z

    .line 2
    .line 3
    return v0
.end method

.method public isModGameVm()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/dto/DownloadPointBase;->isModGameVm()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public isSingleGameVm()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/dto/DownloadPointBase;->isSingleGameVm()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public needPurchase()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGameId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public needUpdate(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vCode"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getVersionCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public setActivities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activities"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BTActivityBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->activities:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setActivity_entry(Lcom/join/mgps/dto/GamedetialBottomEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity_entry"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->activity_entry:Lcom/join/mgps/dto/GamedetialBottomEntry;

    .line 2
    .line 3
    return-void
.end method

.method public setActual_size(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actual_size"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->actual_size:J

    .line 2
    .line 3
    return-void
.end method

.method public setAd_info(Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ad_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    return-void
.end method

.method public setAllow_start_up_ad(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allow_start_up_ad"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->allow_start_up_ad:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAppSize(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appSize"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->appSize:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAuxiliary_tool(Lcom/join/mgps/dto/GameDetialAuxiliaryBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auxiliary_tool"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->auxiliary_tool:Lcom/join/mgps/dto/GameDetialAuxiliaryBean;

    .line 2
    .line 3
    return-void
.end method

.method public setBackground_color(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "background_color"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->background_color:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBanner(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "banner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->banner:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setBbs_strategy_contribute_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bbs_strategy_contribute_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->bbs_strategy_contribute_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBbs_strategy_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bbs_strategy_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->bbs_strategy_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setBespeak_count(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bespeak_count"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->bespeak_count:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBespeak_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bespeak_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->bespeak_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setBt_game_coupon_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bt_game_coupon_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->bt_game_coupon_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setBt_game_recommend(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bt_game_recommend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->bt_game_recommend:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setBt_game_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bt_game_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->bt_game_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setCdn_down_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cdn_down_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->cdn_down_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setCfg_down_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg_down_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->cfg_down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCfg_lowest_ver(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg_lowest_ver"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->cfg_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCfg_ver(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg_ver"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->cfg_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCfg_ver_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg_ver_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->cfg_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setComment_count(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment_count"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->comment_count:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setComment_score_switch(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment_score_switch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->comment_score_switch:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setComment_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->comment_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setCommitDataBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commitDataBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->commitDataBeanList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setCommitListData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commitListData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->commitListData:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setCommunity_entrance_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "community_entrance_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->community_entrance_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setCommunity_entrance_tag(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "community_entrance_tag"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->community_entrance_tag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCompany_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "company_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->company_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCompany_recommend(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "company_recommend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->company_recommend:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setCpu_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cpu_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->cpu_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setCrc_sign_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crc_sign_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->crc_sign_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCustom_tag_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "custom_tag_info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->custom_tag_info:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setDel_tag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "del_tag"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->del_tag:I

    .line 2
    .line 3
    return-void
.end method

.method public setDev_info(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dev_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->dev_info:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDiscover(Lcom/join/mgps/dto/DiscoverBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "discover"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->discover:Lcom/join/mgps/dto/DiscoverBean;

    .line 2
    .line 3
    return-void
.end method

.method public setDownType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->downType:I

    .line 2
    .line 3
    return-void
.end method

.method public setDown_and_down(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down_and_down"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->down_and_down:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setDown_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->down_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setDown_count_manual(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down_count_manual"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->down_count_manual:I

    .line 2
    .line 3
    return-void
.end method

.method public setDown_status(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down_status"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->down_status:I

    .line 2
    .line 3
    return-void
.end method

.method public setDown_url_remote(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down_url_remote"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->down_url_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDown_weight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down_weight"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->down_weight:I

    .line 2
    .line 3
    return-void
.end method

.method public setDownload_close(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "download_close"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->download_close:I

    .line 2
    .line 3
    return-void
.end method

.method public setDownload_original_switch(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "download_original_switch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->download_original_switch:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDownload_outside_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "download_outside_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->download_outside_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDownload_source_switch_v1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "download_source_switch_v1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->download_source_switch_v1:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDownload_source_switch_v2(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "download_source_switch_v2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->download_source_switch_v2:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDownload_source_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "download_source_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->download_source_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEdit_recommend(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edit_recommend"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->edit_recommend:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExt_info(Lcom/join/mgps/dto/ExtInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ext_info:Lcom/join/mgps/dto/ExtInfoBean;

    .line 2
    .line 3
    return-void
.end method

.method public setFast_entry_no4(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fast_entry_no4"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->fast_entry_no4:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setFeedback_issue_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "feedback_issue_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->feedback_issue_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFight_funv2(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fight_funv2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->fight_funv2:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFight_screenshot_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fight_screenshot_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->fight_screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFight_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fight_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->fight_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setFollow_background_img(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "follow_background_img"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->follow_background_img:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFormula_weight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "formula_weight"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->formula_weight:I

    .line 2
    .line 3
    return-void
.end method

.method public setForum_id(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forum_id"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->forum_id:J

    .line 2
    .line 3
    return-void
.end method

.method public setForum_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forum_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->forum_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setGame_book(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_book"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_book:I

    .line 2
    .line 3
    return-void
.end method

.method public setGame_book_tag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_book_tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialBookTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_book_tag:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_bt_tag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_bt_tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_bt_tag:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_btn_text(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_btn_text"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_btn_text:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_buy_rebate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_buy_rebate"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_buy_rebate:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_comment_count(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_comment_count"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_comment_count:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_company_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_company_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_company_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_coupon_for_bt_game(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_coupon_for_bt_game"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BTGameCouponBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_coupon_for_bt_game:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_coupon_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_coupon_list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameVoucherBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_coupon_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_describe_second(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_describe_second"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_describe_second:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_detailed(Lcom/join/mgps/dto/GamedetialMoreBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_detailed"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_detailed:Lcom/join/mgps/dto/GamedetialMoreBean;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_exclusive_benefits(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_exclusive_benefits"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_exclusive_benefits:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_exclusive_benefits_qq(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_exclusive_benefits_qq"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_exclusive_benefits_qq:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_favorites_top5(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_favorites_top5"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_favorites_top5:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_follow(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_follow"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_follow:I

    .line 2
    .line 3
    return-void
.end method

.method public setGame_gift_package(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_gift_package"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_gift_package:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_handle_entrance(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_handle_entrance"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_handle_entrance:Lcom/join/mgps/dto/RecomDatabean;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_ico_remote(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_ico_remote"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_info(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_info:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_info_top_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_info_top_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_info_top_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_info_top_video_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_info_top_video_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_info_top_video_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_info_tpl_type(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_info_tpl_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_info_tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_open_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_open_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_open_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setGame_open_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_open_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_open_time:J

    .line 2
    .line 3
    return-void
.end method

.method public setGame_prompt(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_prompt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamePromptBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_prompt:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_ranking_pos(Lcom/join/mgps/dto/GameDetailRankingTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_ranking_pos"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_ranking_pos:Lcom/join/mgps/dto/GameDetailRankingTag;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_score(Lcom/join/mgps/dto/GameScore;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_score"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_score:Lcom/join/mgps/dto/GameScore;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_screen_shot(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_screen_shot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/screenshot/ScreenshotGamedetialBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_screen_shot:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_server_state(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_server_state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ServiceState;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_server_state:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_server_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_server_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_server_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setGame_strategy(Lcom/join/mgps/dto/GameDetialStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_strategy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_strategy:Lcom/join/mgps/dto/GameDetialStrategy;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_upgrade_info(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_upgrade_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_upgrade_info:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_upgrade_info_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_upgrade_info_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_upgrade_info_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setGame_upgrade_state(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_upgrade_state"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_upgrade_state:I

    .line 2
    .line 3
    return-void
.end method

.method public setGame_welfare(Lcom/join/mgps/dto/BtGameWelfare;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_welfare"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->game_welfare:Lcom/join/mgps/dto/BtGameWelfare;

    .line 2
    .line 3
    return-void
.end method

.method public setGif_slide_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gif_slide_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->gif_slide_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGift_package_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gift_package_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->gift_package_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setHandle_support(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle_support"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->handle_support:I

    .line 2
    .line 3
    return-void
.end method

.method public setHas_more_activities(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "has_more_activities"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->has_more_activities:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ico_remote"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->info:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIs_fight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_fight"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->is_fight:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_network(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_network"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->is_network:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_started(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_started"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->is_started:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_world(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_world"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->is_world:I

    .line 2
    .line 3
    return-void
.end method

.method public setLast_week_down_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "last_week_down_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->last_week_down_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setLock_sp(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock_sp"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->lock_sp:I

    .line 2
    .line 3
    return-void
.end method

.method public setMax_an_compatible_ver(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max_an_compatible_ver"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->max_an_compatible_ver:I

    .line 2
    .line 3
    return-void
.end method

.method public setMax_battle_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max_battle_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->max_battle_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setMax_battle_view_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max_battle_view_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->max_battle_view_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setMin_an_compatible_ver(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "min_an_compatible_ver"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->min_an_compatible_ver:I

    .line 2
    .line 3
    return-void
.end method

.method public setMini_program(Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mini_program"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->mini_program:Lcom/join/mgps/dto/DomainInfoBean;

    .line 2
    .line 3
    return-void
.end method

.method public setMod_info(Lcom/join/mgps/dto/ModInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mod_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 2
    .line 3
    return-void
.end method

.method public setOther_down_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other_down_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->other_down_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPanel_switch(Lcom/join/mgps/dto/PanelSwitch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel_switch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->panel_switch:Lcom/join/mgps/dto/PanelSwitch;

    .line 2
    .line 3
    return-void
.end method

.method public setPapa_explain(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "papa_explain"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->papa_explain:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPay_tag_info(Lcom/join/mgps/dto/PayTagInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pay_tag_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pic_info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetialShowImageBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->pic_info:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_position(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pic_position"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->pic_position:I

    .line 2
    .line 3
    return-void
.end method

.method public setPlayer_qq(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player_qq"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->player_qq:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlugin_lowest_ver(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plugin_lowest_ver"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->plugin_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlugin_lowest_ver_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plugin_lowest_ver_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->plugin_lowest_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlugin_num(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plugin_num"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->plugin_num:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlugin_screenshot(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plugin_screenshot"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->plugin_screenshot:I

    .line 2
    .line 3
    return-void
.end method

.method public setQq_qun(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qq_qun"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->qq_qun:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRanking_info(Lcom/join/mgps/dto/RankingInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ranking_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ranking_info:Lcom/join/mgps/dto/RankingInfoBean;

    .line 2
    .line 3
    return-void
.end method

.method public setRanking_weight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ranking_weight"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ranking_weight:I

    .line 2
    .line 3
    return-void
.end method

.method public setRecommend_adinfo_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommend_adinfo_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->recommend_adinfo_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setRecommend_game(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommend_game"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->recommend_game:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setRecommend_game_big_gif(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommend_game_big_gif"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->recommend_game_big_gif:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRecommend_game_big_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommend_game_big_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->recommend_game_big_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRecommend_game_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommend_game_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->recommend_game_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setRecommend_information(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommend_information"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendInfomationBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->recommend_information:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setRecommend_information_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommend_information_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->recommend_information_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setResidual_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "residual_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->residual_time:J

    .line 2
    .line 3
    return-void
.end method

.method public setRom_lowest_ver(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rom_lowest_ver"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->rom_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRoom_cfg_info(Lcom/join/mgps/dto/GameDetailRoomCfgInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "room_cfg_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->room_cfg_info:Lcom/join/mgps/dto/GameDetailRoomCfgInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "score"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->score:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScore_count(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "score_count"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->score_count:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScore_count_manual(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "score_count_manual"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->score_count_manual:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScreenshot_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenshot_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSdk_active_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdk_active_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->sdk_active_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSelf_comment(Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "self_comment"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->self_comment:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    .line 2
    .line 3
    return-void
.end method

.method public setServer_qq(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "server_qq"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->server_qq:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShare_config(Lcom/join/mgps/dto/DetialShareData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "share_config"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->share_config:Lcom/join/mgps/dto/DetialShareData;

    .line 2
    .line 3
    return-void
.end method

.method public setShare_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "share_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->share_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSharer(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharer"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->sharer:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSimilar_games_recommend(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "similar_games_recommend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->similar_games_recommend:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setSimilar_games_recommend_pc(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "similar_games_recommend_pc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->similar_games_recommend_pc:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setSingle_game_mod_info(Lcom/join/mgps/dto/SingleGameModInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "single_game_mod_info2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 2
    .line 3
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->size:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSlide_position(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "slide_position"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->slide_position:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSource_down_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source_down_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->source_down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSource_lowest_ver(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source_lowest_ver"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->source_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSource_ver(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source_ver"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->source_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSource_ver_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source_ver_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->source_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sp_tag_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    return-void
.end method

.method public setSp_tpl_two_banner_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sp_tpl_two_banner_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->sp_tpl_two_banner_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setSp_tpl_two_position(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sp_tpl_two_position"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->sp_tpl_two_position:I

    .line 2
    .line 3
    return-void
.end method

.method public setStandalone_cloud_archive(Lcom/join/mgps/dto/StandaloneCloudArchive;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "standalone_cloud_archive"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->standalone_cloud_archive:Lcom/join/mgps/dto/StandaloneCloudArchive;

    .line 2
    .line 3
    return-void
.end method

.method public setStart_count(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start_count"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->start_count:I

    .line 2
    .line 3
    return-void
.end method

.method public setSync_memory(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sync_memory"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->sync_memory:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTag_info(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->tag_info:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setTimes(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "times"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->times:J

    .line 2
    .line 3
    return-void
.end method

.method public setTp_down_url(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tp_down_url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->tp_down_url:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setUnzip_size(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unzip_size"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->unzip_size:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVedio_cover_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vedio_cover_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->vedio_cover_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVedio_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vedio_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->vedio_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ver"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVer_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ver_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVideo_and_cover(Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "video_and_cover"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->video_and_cover:Lcom/join/mgps/activity/gamedetail/GamedetailViewbean;

    .line 2
    .line 3
    return-void
.end method

.method public setWeb_disk_info(Lcom/join/mgps/dto/WebDiskInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "web_disk_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->web_disk_info:Lcom/join/mgps/dto/WebDiskInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setWorld_area(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world_area"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->world_area:I

    .line 2
    .line 3
    return-void
.end method

.method public setWorld_shop(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world_shop"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GamedetialModleFourBean;->world_shop:I

    .line 2
    .line 3
    return-void
.end method
