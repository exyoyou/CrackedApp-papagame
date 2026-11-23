.class public Lcom/join/mgps/dto/ConfigData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field anti_addiction_switch:Z

.field b_side:Z

.field private banner:Lcom/join/mgps/dto/CloudBannerBean;

.field client_ip:Ljava/lang/String;

.field private cloud_gaming:Lcom/join/mgps/dto/CloudGameConfigBean;

.field download_game_switch:Z

.field private exclude_simulator_type:Lcom/join/mgps/dto/ExcludeSimulatorType;

.field first_screen_ad_interaction:Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

.field private found_game_tab:Lcom/join/mgps/dto/FoundGameTabBean;

.field home_page_video_switch:Z

.field launch_game_switch:Z

.field private net_game_count_down:I

.field non_online_user_switch:Z

.field private pd_ad_cfg:Lcom/join/mgps/dto/PdAdCfgBean;

.field real_name_black_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sch_feed_back_switch:Z

.field private sdk_init:Z

.field private top_type_entrance:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TopTypeEntranceBean;",
            ">;"
        }
    .end annotation
.end field

.field unknown_source_state:Z

.field private w_channel_info_switch:Z

.field private web_disk_cfg:Lcom/join/mgps/dto/WebDiskCfg;

.field private web_disk_position:Lcom/join/mgps/dto/WebDiskPositionBean;

.field wx_open_appid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/dto/ConfigData;->w_channel_info_switch:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/dto/ConfigData;->sch_feed_back_switch:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getBanner()Lcom/join/mgps/dto/CloudBannerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ConfigData;->banner:Lcom/join/mgps/dto/CloudBannerBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClient_ip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ConfigData;->client_ip:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloud_gaming()Lcom/join/mgps/dto/CloudGameConfigBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ConfigData;->cloud_gaming:Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExclude_simulator_type()Lcom/join/mgps/dto/ExcludeSimulatorType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ConfigData;->exclude_simulator_type:Lcom/join/mgps/dto/ExcludeSimulatorType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFirst_screen_ad_interaction()Lcom/join/mgps/dto/FirstScreenAdInteractionBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ConfigData;->first_screen_ad_interaction:Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFound_game_tab()Lcom/join/mgps/dto/FoundGameTabBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ConfigData;->found_game_tab:Lcom/join/mgps/dto/FoundGameTabBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNet_game_count_down()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ConfigData;->net_game_count_down:I

    .line 2
    .line 3
    return v0
.end method

.method public getPd_ad_cfg()Lcom/join/mgps/dto/PdAdCfgBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ConfigData;->pd_ad_cfg:Lcom/join/mgps/dto/PdAdCfgBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReal_name_black_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ConfigData;->real_name_black_list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTop_type_entrance()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TopTypeEntranceBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ConfigData;->top_type_entrance:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWeb_disk_cfg()Lcom/join/mgps/dto/WebDiskCfg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ConfigData;->web_disk_cfg:Lcom/join/mgps/dto/WebDiskCfg;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWeb_disk_position()Lcom/join/mgps/dto/WebDiskPositionBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ConfigData;->web_disk_position:Lcom/join/mgps/dto/WebDiskPositionBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWx_open_appid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ConfigData;->wx_open_appid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAnti_addiction_switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ConfigData;->anti_addiction_switch:Z

    .line 2
    .line 3
    return v0
.end method

.method public isB_side()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ConfigData;->b_side:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDownload_game_switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ConfigData;->download_game_switch:Z

    .line 2
    .line 3
    return v0
.end method

.method public isHome_page_video_switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ConfigData;->home_page_video_switch:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLaunch_game_switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ConfigData;->launch_game_switch:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNon_online_user_switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ConfigData;->non_online_user_switch:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSch_feed_back_switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ConfigData;->sch_feed_back_switch:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSdk_init()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ConfigData;->sdk_init:Z

    .line 2
    .line 3
    return v0
.end method

.method public isUnknown_source_state()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ConfigData;->unknown_source_state:Z

    .line 2
    .line 3
    return v0
.end method

.method public isW_channel_info_switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ConfigData;->w_channel_info_switch:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAnti_addiction_switch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anti_addiction_switch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ConfigData;->anti_addiction_switch:Z

    .line 2
    .line 3
    return-void
.end method

.method public setB_side(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b_side"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ConfigData;->b_side:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBanner(Lcom/join/mgps/dto/CloudBannerBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "banner"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ConfigData;->banner:Lcom/join/mgps/dto/CloudBannerBean;

    .line 2
    .line 3
    return-void
.end method

.method public setClient_ip(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client_ip"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ConfigData;->client_ip:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCloud_gaming(Lcom/join/mgps/dto/CloudGameConfigBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloud_gaming"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ConfigData;->cloud_gaming:Lcom/join/mgps/dto/CloudGameConfigBean;

    .line 2
    .line 3
    return-void
.end method

.method public setDownload_game_switch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "download_game_switch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ConfigData;->download_game_switch:Z

    .line 2
    .line 3
    return-void
.end method

.method public setExclude_simulator_type(Lcom/join/mgps/dto/ExcludeSimulatorType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exclude_simulator_type"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ConfigData;->exclude_simulator_type:Lcom/join/mgps/dto/ExcludeSimulatorType;

    .line 2
    .line 3
    return-void
.end method

.method public setFirst_screen_ad_interaction(Lcom/join/mgps/dto/FirstScreenAdInteractionBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "first_screen_ad_interaction"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ConfigData;->first_screen_ad_interaction:Lcom/join/mgps/dto/FirstScreenAdInteractionBean;

    .line 2
    .line 3
    return-void
.end method

.method public setFound_game_tab(Lcom/join/mgps/dto/FoundGameTabBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "found_game_tab"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ConfigData;->found_game_tab:Lcom/join/mgps/dto/FoundGameTabBean;

    .line 2
    .line 3
    return-void
.end method

.method public setHome_page_video_switch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "home_page_video_switch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ConfigData;->home_page_video_switch:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLaunch_game_switch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "launch_game_switch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ConfigData;->launch_game_switch:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNet_game_count_down(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "net_game_count_down"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ConfigData;->net_game_count_down:I

    .line 2
    .line 3
    return-void
.end method

.method public setNon_online_user_switch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "non_online_user_switch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ConfigData;->non_online_user_switch:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPd_ad_cfg(Lcom/join/mgps/dto/PdAdCfgBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pd_ad_cfg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ConfigData;->pd_ad_cfg:Lcom/join/mgps/dto/PdAdCfgBean;

    .line 2
    .line 3
    return-void
.end method

.method public setReal_name_black_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "real_name_black_list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ConfigData;->real_name_black_list:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setSch_feed_back_switch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sch_feed_back_switch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ConfigData;->sch_feed_back_switch:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSdk_init(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdk_init"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ConfigData;->sdk_init:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTop_type_entrance(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "top_type_entrance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TopTypeEntranceBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ConfigData;->top_type_entrance:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setUnknown_source_state(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unknown_source_state"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ConfigData;->unknown_source_state:Z

    .line 2
    .line 3
    return-void
.end method

.method public setW_channel_info_switch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "w_channel_info_switch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ConfigData;->w_channel_info_switch:Z

    .line 2
    .line 3
    return-void
.end method

.method public setWeb_disk_cfg(Lcom/join/mgps/dto/WebDiskCfg;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "web_disk_cfg"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ConfigData;->web_disk_cfg:Lcom/join/mgps/dto/WebDiskCfg;

    .line 2
    .line 3
    return-void
.end method

.method public setWeb_disk_position(Lcom/join/mgps/dto/WebDiskPositionBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "web_disk_position"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ConfigData;->web_disk_position:Lcom/join/mgps/dto/WebDiskPositionBean;

    .line 2
    .line 3
    return-void
.end method

.method public setWx_open_appid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wx_open_appid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ConfigData;->wx_open_appid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
