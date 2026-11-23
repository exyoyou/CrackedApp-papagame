.class public Lcom/join/mgps/db/tables/AppBeanTable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appBeanMainTable:Lcom/join/mgps/db/tables/AppBeanMainTable;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "appbeanmain"
        foreign = true
        foreignAutoRefresh = true
    .end annotation
.end field

.field private appSize:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private butnShowType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cdn_down_switch:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cfg_down_url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cfg_lowest_ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cfg_ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cfg_ver_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private company_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private crc_sign_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private down_status:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private down_url_remote:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private downloadType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private edit_recommend:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fight_fun:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fight_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private forum_id:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private forum_switch:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private game_info_top_pic:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private game_info_tpl_type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private game_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gift_package_switch:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ico_remote:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private info:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private is_fight:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private is_network:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private is_world:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lock_sp:I

.field private other_down_switch:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private papa_explain:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private plugin_lowest_ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private plugin_lowest_ver_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private plugin_num:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private plugin_screenshot:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private rom_lowest_ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private screenshot_pic:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private source_down_url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private source_lowest_ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private source_ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private source_ver_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sync_memory:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field tag_info:Lcom/j256/ormlite/dao/ForeignCollection;
    .annotation runtime Lcom/j256/ormlite/field/ForeignCollectionField;
        eager = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/mgps/db/tables/TipBeanTable;",
            ">;"
        }
    .end annotation
.end field

.field tp_down_url:Lcom/j256/ormlite/dao/ForeignCollection;
    .annotation runtime Lcom/j256/ormlite/field/ForeignCollectionField;
        eager = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/mgps/db/tables/DownloadUrlTable;",
            ">;"
        }
    .end annotation
.end field

.field private unzip_size:Ljava/lang/String;

.field private ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ver_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private world_area:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private world_shop:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->plugin_num:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/AppBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appBean"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->plugin_num:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->crc_sign_id:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->game_name:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getIco_remote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->ico_remote:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->packageName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getAppSize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->appSize:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->down_url_remote:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->info:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->ver:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getVer_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->ver_name:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCfg_down_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->cfg_down_url:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCfg_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->cfg_ver:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCfg_ver_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->cfg_ver_name:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getScreenshot_pic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->screenshot_pic:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getButnShowType()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->butnShowType:I

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getDownloadType()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->downloadType:I

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->plugin_num:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getIs_world()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->is_world:I

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getIs_network()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->is_network:I

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getSource_ver_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->source_ver_name:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getSource_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->source_ver:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getSource_down_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->source_down_url:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPlugin_screenshot()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->plugin_screenshot:I

    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getForum_switch()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->forum_switch:I

    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getForum_id()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->forum_id:J

    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getWorld_shop()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->world_shop:I

    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getWorld_area()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->world_area:I

    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getIs_fight()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->is_fight:I

    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getFight_type()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->fight_type:I

    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getFight_funv2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->fight_fun:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPlugin_lowest_ver_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->plugin_lowest_ver_name:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPlugin_lowest_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->plugin_lowest_ver:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getRom_lowest_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->rom_lowest_ver:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getSource_lowest_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->source_lowest_ver:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCfg_lowest_ver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->cfg_lowest_ver:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->game_info_tpl_type:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCompany_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->company_name:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCdn_down_switch()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->cdn_down_switch:I

    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getOther_down_switch()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->other_down_switch:I

    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->game_info_top_pic:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPapa_explain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->papa_explain:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getEdit_recommend()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->edit_recommend:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getSync_memory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->sync_memory:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getGift_package_switch()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->gift_package_switch:I

    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getDown_status()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->down_status:I

    return-void
.end method


# virtual methods
.method public getAppBean()Lcom/join/mgps/dto/AppBean;
    .locals 50

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v47, Lcom/join/mgps/dto/AppBean;

    .line 4
    .line 5
    move-object/from16 v1, v47

    .line 6
    .line 7
    iget-object v2, v0, Lcom/join/mgps/db/tables/AppBeanTable;->crc_sign_id:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/join/mgps/db/tables/AppBeanTable;->game_name:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, v0, Lcom/join/mgps/db/tables/AppBeanTable;->ico_remote:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v5, v0, Lcom/join/mgps/db/tables/AppBeanTable;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v6, v0, Lcom/join/mgps/db/tables/AppBeanTable;->appSize:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v7, v0, Lcom/join/mgps/db/tables/AppBeanTable;->down_url_remote:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v8, v0, Lcom/join/mgps/db/tables/AppBeanTable;->info:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v9, v0, Lcom/join/mgps/db/tables/AppBeanTable;->ver:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v10, v0, Lcom/join/mgps/db/tables/AppBeanTable;->ver_name:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v11, v0, Lcom/join/mgps/db/tables/AppBeanTable;->cfg_down_url:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v12, v0, Lcom/join/mgps/db/tables/AppBeanTable;->cfg_ver:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v13, v0, Lcom/join/mgps/db/tables/AppBeanTable;->cfg_ver_name:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v14, v0, Lcom/join/mgps/db/tables/AppBeanTable;->screenshot_pic:Ljava/lang/String;

    .line 32
    .line 33
    iget v15, v0, Lcom/join/mgps/db/tables/AppBeanTable;->butnShowType:I

    .line 34
    .line 35
    move-object/from16 v48, v1

    .line 36
    .line 37
    iget v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->downloadType:I

    .line 38
    .line 39
    move/from16 v16, v1

    .line 40
    .line 41
    iget-object v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->plugin_num:Ljava/lang/String;

    .line 42
    .line 43
    move-object/from16 v17, v1

    .line 44
    .line 45
    iget v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->is_world:I

    .line 46
    .line 47
    move/from16 v18, v1

    .line 48
    .line 49
    iget v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->is_network:I

    .line 50
    .line 51
    move/from16 v19, v1

    .line 52
    .line 53
    iget-object v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->source_ver_name:Ljava/lang/String;

    .line 54
    .line 55
    move-object/from16 v20, v1

    .line 56
    .line 57
    iget-object v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->source_ver:Ljava/lang/String;

    .line 58
    .line 59
    move-object/from16 v21, v1

    .line 60
    .line 61
    iget-object v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->source_down_url:Ljava/lang/String;

    .line 62
    .line 63
    move-object/from16 v22, v1

    .line 64
    .line 65
    iget v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->plugin_screenshot:I

    .line 66
    .line 67
    move/from16 v23, v1

    .line 68
    .line 69
    iget v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->forum_switch:I

    .line 70
    .line 71
    move/from16 v24, v1

    .line 72
    .line 73
    move-object/from16 v49, v2

    .line 74
    .line 75
    iget-wide v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->forum_id:J

    .line 76
    .line 77
    move-wide/from16 v25, v1

    .line 78
    .line 79
    iget v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->world_shop:I

    .line 80
    .line 81
    move/from16 v27, v1

    .line 82
    .line 83
    iget v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->world_area:I

    .line 84
    .line 85
    move/from16 v28, v1

    .line 86
    .line 87
    iget v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->is_fight:I

    .line 88
    .line 89
    move/from16 v29, v1

    .line 90
    .line 91
    iget v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->fight_type:I

    .line 92
    .line 93
    move/from16 v30, v1

    .line 94
    .line 95
    iget-object v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->fight_fun:Ljava/lang/String;

    .line 96
    .line 97
    move-object/from16 v31, v1

    .line 98
    .line 99
    iget-object v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->plugin_lowest_ver_name:Ljava/lang/String;

    .line 100
    .line 101
    move-object/from16 v32, v1

    .line 102
    .line 103
    iget-object v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->plugin_lowest_ver:Ljava/lang/String;

    .line 104
    .line 105
    move-object/from16 v33, v1

    .line 106
    .line 107
    iget-object v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->rom_lowest_ver:Ljava/lang/String;

    .line 108
    .line 109
    move-object/from16 v34, v1

    .line 110
    .line 111
    iget-object v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->source_lowest_ver:Ljava/lang/String;

    .line 112
    .line 113
    move-object/from16 v35, v1

    .line 114
    .line 115
    iget-object v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->cfg_lowest_ver:Ljava/lang/String;

    .line 116
    .line 117
    move-object/from16 v36, v1

    .line 118
    .line 119
    iget-object v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->game_info_tpl_type:Ljava/lang/String;

    .line 120
    .line 121
    move-object/from16 v37, v1

    .line 122
    .line 123
    iget-object v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->company_name:Ljava/lang/String;

    .line 124
    .line 125
    move-object/from16 v38, v1

    .line 126
    .line 127
    iget v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->cdn_down_switch:I

    .line 128
    .line 129
    move/from16 v39, v1

    .line 130
    .line 131
    iget v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->other_down_switch:I

    .line 132
    .line 133
    move/from16 v40, v1

    .line 134
    .line 135
    iget-object v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->game_info_top_pic:Ljava/lang/String;

    .line 136
    .line 137
    move-object/from16 v41, v1

    .line 138
    .line 139
    iget-object v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->papa_explain:Ljava/lang/String;

    .line 140
    .line 141
    move-object/from16 v42, v1

    .line 142
    .line 143
    iget-object v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->edit_recommend:Ljava/lang/String;

    .line 144
    .line 145
    move-object/from16 v43, v1

    .line 146
    .line 147
    iget-object v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->sync_memory:Ljava/lang/String;

    .line 148
    .line 149
    move-object/from16 v44, v1

    .line 150
    .line 151
    iget v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->gift_package_switch:I

    .line 152
    .line 153
    move/from16 v45, v1

    .line 154
    .line 155
    iget v1, v0, Lcom/join/mgps/db/tables/AppBeanTable;->down_status:I

    .line 156
    .line 157
    move/from16 v46, v1

    .line 158
    .line 159
    move-object/from16 v1, v48

    .line 160
    .line 161
    move-object/from16 v2, v49

    .line 162
    .line 163
    invoke-direct/range {v1 .. v46}, Lcom/join/mgps/dto/AppBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 164
    .line 165
    .line 166
    return-object v47
.end method

.method public getAppBeanMainTable()Lcom/join/mgps/db/tables/AppBeanMainTable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->appBeanMainTable:Lcom/join/mgps/db/tables/AppBeanMainTable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->appSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getButnShowType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->butnShowType:I

    .line 2
    .line 3
    return v0
.end method

.method public getCdn_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->cdn_down_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getCfg_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->cfg_down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->cfg_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->cfg_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->cfg_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCompany_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->company_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCrc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->crc_sign_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDown_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->down_status:I

    .line 2
    .line 3
    return v0
.end method

.method public getDown_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->down_url_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->downloadType:I

    .line 2
    .line 3
    return v0
.end method

.method public getEdit_recommend()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->edit_recommend:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFight_fun()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->fight_fun:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFight_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->fight_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getForum_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->forum_id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getForum_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->forum_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_info_top_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->game_info_top_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->game_info_tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->game_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGift_package_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->gift_package_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIs_fight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->is_fight:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_network()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->is_network:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_world()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->is_world:I

    .line 2
    .line 3
    return v0
.end method

.method public getLock_sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->lock_sp:I

    .line 2
    .line 3
    return v0
.end method

.method public getOther_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->other_down_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPapa_explain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->papa_explain:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->plugin_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_lowest_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->plugin_lowest_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->plugin_num:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_screenshot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->plugin_screenshot:I

    .line 2
    .line 3
    return v0
.end method

.method public getRom_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->rom_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScreenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->source_down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->source_lowest_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->source_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->source_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSync_memory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->sync_memory:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag_info()Lcom/j256/ormlite/dao/ForeignCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/mgps/db/tables/TipBeanTable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->tag_info:Lcom/j256/ormlite/dao/ForeignCollection;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTp_down_url()Lcom/j256/ormlite/dao/ForeignCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/mgps/db/tables/DownloadUrlTable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->tp_down_url:Lcom/j256/ormlite/dao/ForeignCollection;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnzip_size()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->unzip_size:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWorld_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->world_area:I

    .line 2
    .line 3
    return v0
.end method

.method public getWorld_shop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/AppBeanTable;->world_shop:I

    .line 2
    .line 3
    return v0
.end method

.method public setAppBeanMainTable(Lcom/join/mgps/db/tables/AppBeanMainTable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appBeanMainTable"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->appBeanMainTable:Lcom/join/mgps/db/tables/AppBeanMainTable;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->appSize:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->butnShowType:I

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
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->cdn_down_switch:I

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->cfg_down_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->cfg_lowest_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->cfg_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->cfg_ver_name:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->company_name:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->crc_sign_id:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->down_status:I

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->down_url_remote:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->downloadType:I

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->edit_recommend:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFight_fun(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fight_fun"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->fight_fun:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->fight_type:I

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
    iput-wide p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->forum_id:J

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
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->forum_switch:I

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->game_info_top_pic:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->game_info_tpl_type:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->game_name:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->gift_package_switch:I

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->ico_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->id:I

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->info:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->is_fight:I

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
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->is_network:I

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
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->is_world:I

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
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->lock_sp:I

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
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->other_down_switch:I

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->packageName:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->papa_explain:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->plugin_lowest_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->plugin_lowest_ver_name:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->plugin_num:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->plugin_screenshot:I

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->rom_lowest_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->screenshot_pic:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->source_down_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->source_lowest_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->source_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->source_ver_name:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->sync_memory:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTag_info(Lcom/j256/ormlite/dao/ForeignCollection;)V
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
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/mgps/db/tables/TipBeanTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->tag_info:Lcom/j256/ormlite/dao/ForeignCollection;

    .line 2
    .line 3
    return-void
.end method

.method public setTp_down_url(Lcom/j256/ormlite/dao/ForeignCollection;)V
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
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/join/mgps/db/tables/DownloadUrlTable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->tp_down_url:Lcom/j256/ormlite/dao/ForeignCollection;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->unzip_size:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->ver_name:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->world_area:I

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
    iput p1, p0, Lcom/join/mgps/db/tables/AppBeanTable;->world_shop:I

    .line 2
    .line 3
    return-void
.end method
