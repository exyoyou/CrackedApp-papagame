.class public Lcom/join/mgps/dto/AppBean;
.super Lcom/join/mgps/dto/DownloadPointBase;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private allow_start_up_ad:Ljava/lang/String;

.field private appSize:Ljava/lang/String;

.field private bespeak_count:Ljava/lang/String;

.field private bespeak_switch:I

.field private bespeak_time:J

.field private butnShowType:I

.field private cdn_down_switch:I

.field private cfg_down_url:Ljava/lang/String;

.field private cfg_lowest_ver:Ljava/lang/String;

.field private cfg_ver:Ljava/lang/String;

.field private cfg_ver_name:Ljava/lang/String;

.field private company_name:Ljava/lang/String;

.field private cpu_type:I

.field private crc_sign_id:Ljava/lang/String;

.field private down_count:I

.field private down_status:I

.field private down_type:I

.field private down_url_remote:Ljava/lang/String;

.field private downloadType:I

.field private download_close:I

.field private download_original_switch:Ljava/lang/String;

.field private download_outside_url:Ljava/lang/String;

.field private download_source_switch_v1:Ljava/lang/String;

.field private download_source_switch_v2:Ljava/lang/String;

.field private download_source_url:Ljava/lang/String;

.field private edit_recommend:Ljava/lang/String;

.field private fight_funv2:Ljava/lang/String;

.field private fight_type:I

.field private forum_id:J

.field private forum_switch:I

.field private game_book:I

.field private game_id:Ljava/lang/String;

.field private game_info_top_pic:Ljava/lang/String;

.field private game_info_tpl_type:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private game_open_time:Ljava/lang/String;

.field private gif_ico_remote:Ljava/lang/String;

.field private gift_package_switch:I

.field private ico_remote:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private is_bespeak:I

.field private is_boot_commented:I

.field private is_fight:I

.field private is_network:I

.field private is_world:I

.field private lock_sp:I

.field private max_an_compatible_ver:I

.field private min_an_compatible_ver:I

.field private mod_info:Lcom/join/mgps/dto/ModInfoBean;

.field private other_down_switch:I

.field private packageName:Ljava/lang/String;

.field private papa_explain:Ljava/lang/String;

.field pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

.field private plugin_lowest_ver:Ljava/lang/String;

.field private plugin_lowest_ver_name:Ljava/lang/String;

.field private plugin_num:Ljava/lang/String;

.field private plugin_screenshot:I

.field private residual_time:Ljava/lang/String;

.field private rom_lowest_ver:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private screenshot_pic:Ljava/lang/String;

.field private single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

.field private size:Ljava/lang/String;

.field private source_down_url:Ljava/lang/String;

.field private source_lowest_ver:Ljava/lang/String;

.field private source_ver:Ljava/lang/String;

.field private source_ver_name:Ljava/lang/String;

.field private sp_tag_info:Lcom/join/mgps/dto/TipNew;

.field private sp_tpl_two_position:I

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

.field private ver:Ljava/lang/String;

.field private ver_name:Ljava/lang/String;

.field private web_disk_info:Lcom/join/mgps/dto/WebDiskInfo;

.field private world_area:I

.field private world_shop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/DownloadPointBase;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/AppBean;->plugin_num:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "crc_sign_id",
            "game_name",
            "ico_remote",
            "packageName",
            "appSize",
            "down_url_remote",
            "info",
            "ver",
            "ver_name",
            "cfg_down_url",
            "cfg_ver",
            "cfg_ver_name",
            "screenshot_pic",
            "butnShowType",
            "downloadType",
            "plugin_num",
            "is_world",
            "is_network",
            "source_ver_name",
            "source_ver",
            "source_down_url",
            "plugin_screenshot",
            "forum_switch",
            "forum_id",
            "world_shop",
            "world_area",
            "is_fight",
            "fight_type",
            "fight_funv2",
            "plugin_lowest_ver_name",
            "plugin_lowest_ver",
            "rom_lowest_ver",
            "source_lowest_ver",
            "cfg_lowest_ver",
            "game_info_tpl_type",
            "company_name",
            "cdn_down_switch",
            "other_down_switch",
            "game_info_top_pic",
            "papa_explain",
            "edit_recommend",
            "sync_memory",
            "gift_package_switch",
            "down_status"
        }
    .end annotation

    move-object v0, p0

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/dto/DownloadPointBase;-><init>()V

    move-object v1, p1

    .line 4
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->crc_sign_id:Ljava/lang/String;

    move-object v1, p2

    .line 5
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->game_name:Ljava/lang/String;

    move-object v1, p3

    .line 6
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->ico_remote:Ljava/lang/String;

    move-object v1, p4

    .line 7
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->packageName:Ljava/lang/String;

    move-object v1, p5

    .line 8
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->appSize:Ljava/lang/String;

    move-object v1, p6

    .line 9
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->down_url_remote:Ljava/lang/String;

    move-object v1, p7

    .line 10
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->info:Ljava/lang/String;

    move-object v1, p8

    .line 11
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->ver:Ljava/lang/String;

    move-object v1, p9

    .line 12
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->ver_name:Ljava/lang/String;

    move-object v1, p10

    .line 13
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->cfg_down_url:Ljava/lang/String;

    move-object v1, p11

    .line 14
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->cfg_ver:Ljava/lang/String;

    move-object v1, p12

    .line 15
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->cfg_ver_name:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 16
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->screenshot_pic:Ljava/lang/String;

    move/from16 v1, p14

    .line 17
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->butnShowType:I

    move/from16 v1, p15

    .line 18
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->downloadType:I

    move-object/from16 v1, p16

    .line 19
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->plugin_num:Ljava/lang/String;

    move/from16 v1, p17

    .line 20
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->is_world:I

    move/from16 v1, p18

    .line 21
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->is_network:I

    move-object/from16 v1, p19

    .line 22
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->source_ver_name:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 23
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->source_ver:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 24
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->source_down_url:Ljava/lang/String;

    move/from16 v1, p22

    .line 25
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->plugin_screenshot:I

    move/from16 v1, p23

    .line 26
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->forum_switch:I

    move-wide/from16 v1, p24

    .line 27
    iput-wide v1, v0, Lcom/join/mgps/dto/AppBean;->forum_id:J

    move/from16 v1, p26

    .line 28
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->world_shop:I

    move/from16 v1, p27

    .line 29
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->world_area:I

    move/from16 v1, p28

    .line 30
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->is_fight:I

    move/from16 v1, p29

    .line 31
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->fight_type:I

    move-object/from16 v1, p30

    .line 32
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->fight_funv2:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 33
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->plugin_lowest_ver_name:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 34
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->plugin_lowest_ver:Ljava/lang/String;

    move-object/from16 v1, p33

    .line 35
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->rom_lowest_ver:Ljava/lang/String;

    move-object/from16 v1, p34

    .line 36
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->source_lowest_ver:Ljava/lang/String;

    move-object/from16 v1, p35

    .line 37
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->cfg_lowest_ver:Ljava/lang/String;

    move-object/from16 v1, p36

    .line 38
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->game_info_tpl_type:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 39
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->company_name:Ljava/lang/String;

    move/from16 v1, p38

    .line 40
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->cdn_down_switch:I

    move/from16 v1, p39

    .line 41
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->other_down_switch:I

    move-object/from16 v1, p40

    .line 42
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->game_info_top_pic:Ljava/lang/String;

    move-object/from16 v1, p41

    .line 43
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->papa_explain:Ljava/lang/String;

    move-object/from16 v1, p42

    .line 44
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->edit_recommend:Ljava/lang/String;

    move-object/from16 v1, p43

    .line 45
    iput-object v1, v0, Lcom/join/mgps/dto/AppBean;->sync_memory:Ljava/lang/String;

    move/from16 v1, p44

    .line 46
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->gift_package_switch:I

    move/from16 v1, p45

    .line 47
    iput v1, v0, Lcom/join/mgps/dto/AppBean;->down_status:I

    return-void
.end method


# virtual methods
.method public buildDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/AppBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getAllow_start_up_ad()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->allow_start_up_ad:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->appSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBespeakSwitch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->bespeak_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getBespeak_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->bespeak_count:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBespeak_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->bespeak_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getBespeak_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AppBean;->bespeak_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getButnShowType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->butnShowType:I

    .line 2
    .line 3
    return v0
.end method

.method public getCdn_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->cdn_down_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getCfg_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->cfg_down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->cfg_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->cfg_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->cfg_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCompany_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->company_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCpu_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->cpu_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getCrc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->crc_sign_id:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->game_id:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->crc_sign_id:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public getDownStatus()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->down_status:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/dto/AppBean;->bespeak_switch:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x6

    .line 12
    iput v0, p0, Lcom/join/mgps/dto/AppBean;->down_status:I

    .line 13
    .line 14
    :cond_0
    return v0
.end method

.method public getDown_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->down_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getDown_status()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->down_status:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/dto/AppBean;->bespeak_switch:I

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

.method public getDown_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->down_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getDown_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->down_url_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->downloadType:I

    .line 2
    .line 3
    return v0
.end method

.method public getDownload_close()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->download_close:I

    .line 2
    .line 3
    return v0
.end method

.method public getDownload_original_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->download_original_switch:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_outside_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->download_outside_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_source_switch_v1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->download_source_switch_v1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_source_switch_v2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->download_source_switch_v2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_source_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->download_source_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 4
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 1
    new-instance v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->ico_remote:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->game_name:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->down_url_remote:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->tag_info:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->crc_sign_id:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->ver:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->ver_name:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->plugin_num:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->info:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->size:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_0

    .line 67
    .line 68
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->appSize:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->size:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->cfg_ver:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->cfg_ver_name:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->cfg_down_url:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->downloadType:I

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->screenshot_pic:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->plugin_num:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->is_world:I

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_world(I)V

    .line 112
    .line 113
    .line 114
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->is_network:I

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_network(I)V

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->source_ver:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->source_ver_name:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver_name(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->source_down_url:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_url(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->plugin_screenshot:I

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_screenshot(I)V

    .line 137
    .line 138
    .line 139
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->forum_switch:I

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area(I)V

    .line 142
    .line 143
    .line 144
    iget-wide v2, p0, Lcom/join/mgps/dto/AppBean;->forum_id:J

    .line 145
    .line 146
    invoke-virtual {v0, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area_val(J)V

    .line 147
    .line 148
    .line 149
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->world_shop:I

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_shop(I)V

    .line 152
    .line 153
    .line 154
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->world_area:I

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_area(I)V

    .line 157
    .line 158
    .line 159
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->is_fight:I

    .line 160
    .line 161
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_fight(I)V

    .line 162
    .line 163
    .line 164
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->fight_type:I

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_type(I)V

    .line 167
    .line 168
    .line 169
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->fight_funv2:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_fun(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->game_info_tpl_type:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_info_tpl_type(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->sp_tpl_two_position:I

    .line 180
    .line 181
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tpl_two_position(I)V

    .line 182
    .line 183
    .line 184
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->lock_sp:I

    .line 185
    .line 186
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLock_sp(I)V

    .line 187
    .line 188
    .line 189
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->unzip_size:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUnzip_size(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->sync_memory:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSync_memory(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->gift_package_switch:I

    .line 200
    .line 201
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGift_package_switch(I)V

    .line 202
    .line 203
    .line 204
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->down_count:I

    .line 205
    .line 206
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_count(I)V

    .line 207
    .line 208
    .line 209
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 210
    .line 211
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V

    .line 212
    .line 213
    .line 214
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->score:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScore(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    .line 220
    .line 221
    if-eqz v2, :cond_1

    .line 222
    .line 223
    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    :cond_1
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 228
    .line 229
    .line 230
    iget v1, p0, Lcom/join/mgps/dto/AppBean;->down_status:I

    .line 231
    .line 232
    const/4 v2, 0x2

    .line 233
    if-ne v1, v2, :cond_2

    .line 234
    .line 235
    iget v2, p0, Lcom/join/mgps/dto/AppBean;->bespeak_switch:I

    .line 236
    .line 237
    const/4 v3, 0x1

    .line 238
    if-ne v2, v3, :cond_2

    .line 239
    .line 240
    const/4 v1, 0x6

    .line 241
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_status(I)V

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_2
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_status(I)V

    .line 246
    .line 247
    .line 248
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->download_source_url:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_url(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->download_outside_url:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_outside_url(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->download_original_switch:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_original_switch(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->download_source_switch_v1:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v1(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->download_source_switch_v2:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v2(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->allow_start_up_ad:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setAllow_start_up_ad(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 290
    .line 291
    .line 292
    iget v1, p0, Lcom/join/mgps/dto/AppBean;->min_an_compatible_ver:I

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMin_an_compatible_ver(I)V

    .line 295
    .line 296
    .line 297
    iget v1, p0, Lcom/join/mgps/dto/AppBean;->max_an_compatible_ver:I

    .line 298
    .line 299
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMax_an_compatible_ver(I)V

    .line 300
    .line 301
    .line 302
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->cfg_down_url:Ljava/lang/String;

    .line 303
    .line 304
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-eqz v1, :cond_3

    .line 309
    .line 310
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->cfg_down_url:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 316
    .line 317
    if-eqz v1, :cond_5

    .line 318
    .line 319
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->crc_sign_id:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-eqz v1, :cond_4

    .line 330
    .line 331
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 332
    .line 333
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 341
    .line 342
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRef_crc_sign_id(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    goto :goto_2

    .line 350
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 351
    .line 352
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRef_crc_sign_id(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 360
    .line 361
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 369
    .line 370
    if-eqz v1, :cond_6

    .line 371
    .line 372
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getDownUrl()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 380
    .line 381
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSingle_game_mod_info(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    :cond_6
    return-object v0
.end method

.method public getEdit_recommend()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->edit_recommend:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFight_funv2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->fight_funv2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFight_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->fight_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getForum_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AppBean;->forum_id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getForum_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->forum_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameBook()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->game_book:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/AppBean;->getGame_id()Ljava/lang/String;

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
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->game_book:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info_top_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->game_info_top_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->game_info_tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_open_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->game_open_time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGif_ico_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->gif_ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGift_package_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->gift_package_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 4
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

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
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->game_info_tpl_type:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/dto/AppBean;->crc_sign_id:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/join/mgps/dto/AppBean;->sp_tpl_two_position:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/join/mgps/Util/IntentToDetialBean;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/join/mgps/Util/IntentToDetialBean;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->crc_sign_id:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->setAppId(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->game_name:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->setAppName(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/dto/AppBean;->ico_remote:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->setIconUrl(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentToDetialBean;->setDetialType(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method

.method public getIs_bespeak()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->is_bespeak:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_boot_commented()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->is_boot_commented:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_fight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->is_fight:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_network()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->is_network:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_world()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->is_world:I

    .line 2
    .line 3
    return v0
.end method

.method public getLock_sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->lock_sp:I

    .line 2
    .line 3
    return v0
.end method

.method public getMax_an_compatible_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->max_an_compatible_ver:I

    .line 2
    .line 3
    return v0
.end method

.method public getMin_an_compatible_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->min_an_compatible_ver:I

    .line 2
    .line 3
    return v0
.end method

.method public getModGameId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

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
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOther_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->other_down_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPapa_explain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->papa_explain:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayTagInfo()Lcom/join/mgps/dto/PayTagInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPluginNum()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->plugin_num:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->plugin_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_lowest_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->plugin_lowest_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->plugin_num:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_screenshot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->plugin_screenshot:I

    .line 2
    .line 3
    return v0
.end method

.method public getResidual_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->residual_time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRom_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->rom_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->score:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScreenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->size:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->source_down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->source_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->source_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->source_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSpTagInfo()Lcom/join/mgps/dto/TipNew;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSp_tag_info()Lcom/join/mgps/dto/TipNew;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSp_tpl_two_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->sp_tpl_two_position:I

    .line 2
    .line 3
    return v0
.end method

.method public getSync_memory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->sync_memory:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->tag_info:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->tag_info:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
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
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->tp_down_url:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnzip_size()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->unzip_size:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersionCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

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

.method public getWeb_disk_info()Lcom/join/mgps/dto/WebDiskInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AppBean;->web_disk_info:Lcom/join/mgps/dto/WebDiskInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWorld_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->world_area:I

    .line 2
    .line 3
    return v0
.end method

.method public getWorld_shop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->world_shop:I

    .line 2
    .line 3
    return v0
.end method

.method public isCpsGame()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AppBean;->download_close:I

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
    invoke-virtual {p0}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

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
    invoke-virtual {p0}, Lcom/join/mgps/dto/AppBean;->getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;

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
    invoke-virtual {p0}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/dto/AppBean;->getGameId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/join/mgps/dto/AppBean;->getVersionCode()I

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->allow_start_up_ad:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->appSize:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->bespeak_count:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->bespeak_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setBespeak_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bespeak_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AppBean;->bespeak_time:J

    .line 2
    .line 3
    return-void
.end method

.method public setButnShowType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "butnShowType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->butnShowType:I

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->cdn_down_switch:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->cfg_down_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->cfg_lowest_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->cfg_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->cfg_ver_name:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->company_name:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->cpu_type:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->crc_sign_id:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->down_count:I

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->down_status:I

    .line 2
    .line 3
    return-void
.end method

.method public setDown_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "down_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->down_type:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->down_url_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDownloadType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->downloadType:I

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->download_close:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->download_original_switch:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->download_outside_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->download_source_switch_v1:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->download_source_switch_v2:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->download_source_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->edit_recommend:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->fight_funv2:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->fight_type:I

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
    iput-wide p1, p0, Lcom/join/mgps/dto/AppBean;->forum_id:J

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->forum_switch:I

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->game_book:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->game_id:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->game_info_top_pic:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->game_info_tpl_type:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_open_time(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->game_open_time:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGif_ico_remote(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gif_ico_remote"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->gif_ico_remote:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->gift_package_switch:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->ico_remote:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->info:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIs_bespeak(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_bespeak"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->is_bespeak:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_boot_commented(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_boot_commented"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->is_boot_commented:I

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->is_fight:I

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->is_network:I

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->is_world:I

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->lock_sp:I

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->max_an_compatible_ver:I

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->min_an_compatible_ver:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->other_down_switch:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->packageName:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->papa_explain:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->plugin_lowest_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->plugin_lowest_ver_name:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->plugin_num:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->plugin_screenshot:I

    .line 2
    .line 3
    return-void
.end method

.method public setResidual_time(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->residual_time:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->rom_lowest_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->score:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->screenshot_pic:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->size:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->source_down_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->source_lowest_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->source_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->source_ver_name:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->sp_tpl_two_position:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->sync_memory:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->tag_info:Ljava/util/ArrayList;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->tp_down_url:Ljava/util/List;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->unzip_size:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->ver_name:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/AppBean;->web_disk_info:Lcom/join/mgps/dto/WebDiskInfo;

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->world_area:I

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
    iput p1, p0, Lcom/join/mgps/dto/AppBean;->world_shop:I

    .line 2
    .line 3
    return-void
.end method
