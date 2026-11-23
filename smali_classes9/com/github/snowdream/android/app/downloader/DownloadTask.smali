.class public Lcom/github/snowdream/android/app/downloader/DownloadTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/join/kotlin/base/impl/Downloadable;
.implements Lcom/join/kotlin/base/impl/GInfo;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "downloadtask"
.end annotation


# static fields
.field public static final GAME_RUN_STATUS_CANT_RUN:I = 0x3

.field public static final GAME_RUN_STATUS_ERROR:I = 0x2

.field public static final GAME_RUN_STATUS_NONE:I = 0x0

.field public static final GAME_RUN_STATUS_NOT_ASK:I = 0x4

.field public static final GAME_RUN_STATUS_SUCCESS:I = 0x1


# instance fields
.field private _from:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private _from_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field _modInfoBean:Lcom/join/mgps/dto/ModInfoBean;

.field _singleGameModInfoBean:Lcom/join/mgps/dto/SingleGameModInfoBean;

.field private actual_size:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ad_info:Lcom/join/mgps/dto/CommonGameInfoBean;

.field private ad_info_str:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ad_info_switch:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private allow_start_up_ad:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private battle_upload_pic:Ljava/lang/String;

.field private cdn_down_switch:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private cfg_down_url:Ljava/lang/String;
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

.field private checkRes:Z

.field private cloudArchiveTime:Ljava/lang/String;

.field private cost_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cpu_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private crc_link_type_val:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private currentSize:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private describe:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private disableShowSpeedUpPrompt:Z

.field private downLimit:I

.field private downType:Z

.field private down_count:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private down_status:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private down_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private down_url_remote:Ljava/lang/String;

.field private downloadType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private download_original_switch:Ljava/lang/String;

.field private download_outside_url:Ljava/lang/String;

.field private download_source_switch_v1:Ljava/lang/String;

.field private download_source_switch_v2:Ljava/lang/String;

.field private download_source_url:Ljava/lang/String;

.field private dtype:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private duration:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private event:I

.field private ext:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ext1:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private feed_back_show_times:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fight_fun:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fight_screenshot_pic:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fight_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fileType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private finishTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private fromRecomDown:Z

.field private gameZipPath:Ljava/lang/String;
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

.field private game_run_state:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private game_upgrade_state:I

.field private gift_package_switch:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private hasDeleteNotify:Z

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        generatedId = true
    .end annotation
.end field

.field private install_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private interrupt:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isFightOpen:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isNotCheckAddShortcut:Z

.field private isOpen:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private is_boot_commented:I
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

.field private keyword:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private lastCompleteSize:J

.field private lastTime:J

.field private lock_sp:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private max_an_compatible_ver:I

.field private mimeType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private min_an_compatible_ver:I

.field private mobleNetNeedStop:I

.field private mod_info:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private openTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private other_down_switch:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
    .end annotation
.end field

.field private pay_game_amount:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private permission_list:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private plugin_area:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private plugin_area_val:J
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

.field private portraitURL:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private progress:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ref_crc_sign_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private res_actual_size:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private res_currentSize:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private resource_path:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private resource_url_remote:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private rid:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private romArchivedNum:I

.field private romArchivedSize:J

.field private romType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private runtimeStatus:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private score:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private screenshot_pic:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private showName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private showSize:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private showType:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private single_game_mod_info:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private size:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private source_down_path:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private source_down_url:Ljava/lang/String;
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

.field private sp_tag_info:Lcom/join/mgps/dto/TipNew;

.field private sp_tag_info_s:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sp_tpl_two_position:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private speed:Ljava/lang/String;

.field private starNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private startDownloadTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private startGame:Z

.field private startTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private sync_memory:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private task_down_type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private tipBeans:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation
.end field

.field private tips:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private tp_down_url:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;"
        }
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private uncheckSelfSupport:Z

.field private unzip_size:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
    .end annotation
.end field

.field private ver:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private ver_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private vm_device_switch:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private zipCost:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    .line 2
    iput v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->event:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mimeType:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->name:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->path:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 7
    iput-wide v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->size:J

    const-string v4, "0"

    .line 8
    iput-object v4, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showSize:Ljava/lang/String;

    .line 9
    iput-wide v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startTime:J

    const/16 v5, 0xe

    .line 10
    iput v5, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->status:I

    .line 11
    iput-wide v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->finishTime:J

    .line 12
    iput v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->type:I

    .line 13
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

    const/4 v5, -0x1

    .line 14
    iput v5, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showType:I

    .line 15
    sget-object v5, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 16
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fileType:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_num:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ext1:Ljava/lang/String;

    .line 19
    iput-wide v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startDownloadTime:J

    const-wide/16 v2, 0x1

    .line 20
    iput-wide v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->progress:J

    .line 21
    iput-object v4, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->speed:Ljava/lang/String;

    .line 22
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->runtimeStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    iput v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_from:I

    .line 24
    iput v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_from_type:I

    .line 25
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->score:Ljava/lang/String;

    const/4 v2, 0x1

    .line 26
    iput-boolean v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downType:Z

    const/16 v3, 0x12c

    .line 27
    iput v3, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downLimit:I

    .line 28
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mod_info:Ljava/lang/String;

    .line 29
    iput v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->vm_device_switch:I

    .line 30
    iput v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cost_type:I

    .line 31
    iput v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->feed_back_show_times:I

    .line 32
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->permission_list:Ljava/lang/String;

    .line 33
    iput-boolean v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->checkRes:Z

    .line 34
    iput-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->hasDeleteNotify:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;JJLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
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
            "context",
            "finishTime",
            "id",
            "mimeType",
            "name",
            "path",
            "size",
            "showSize",
            "startTime",
            "status",
            "type",
            "url",
            "gameZipPath",
            "showName",
            "dtype",
            "packageName",
            "tips",
            "portraitURL",
            "crc_link_type_val",
            "ver",
            "ver_name",
            "starNumber",
            "romType",
            "isOpen",
            "isFightOpen",
            "describe",
            "showType",
            "fileType",
            "cfg_ver_name",
            "cfg_ver",
            "cfg_down_url",
            "downloadType",
            "screenshot_pic",
            "fight_screenshot_pic",
            "openTime",
            "tipBeans",
            "lastCompleteSize",
            "lastTime",
            "keyword",
            "plugin_num",
            "is_world",
            "is_network",
            "source_ver_name",
            "source_ver",
            "source_down_url",
            "source_down_path",
            "plugin_screenshot",
            "plugin_area",
            "plugin_area_val",
            "world_shop",
            "world_area",
            "is_fight",
            "fight_type",
            "fight_fun",
            "startGame",
            "rid",
            "recordPath",
            "game_info_tpl_type",
            "sync_memory",
            "gift_package_switch",
            "ad_info_str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJIIII",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x12

    .line 36
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->event:I

    const/4 v1, 0x0

    .line 37
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    const-string v2, ""

    .line 38
    iput-object v2, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mimeType:Ljava/lang/String;

    .line 39
    iput-object v2, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->name:Ljava/lang/String;

    .line 40
    iput-object v2, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->path:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 41
    iput-wide v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->size:J

    const-string v5, "0"

    .line 42
    iput-object v5, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showSize:Ljava/lang/String;

    .line 43
    iput-wide v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startTime:J

    const/16 v6, 0xe

    .line 44
    iput v6, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->status:I

    .line 45
    iput-wide v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->finishTime:J

    .line 46
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->type:I

    .line 47
    iput-object v2, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

    const/4 v6, -0x1

    .line 48
    iput v6, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showType:I

    .line 49
    sget-object v6, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 50
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fileType:Ljava/lang/String;

    .line 51
    iput-object v2, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_num:Ljava/lang/String;

    .line 52
    iput-object v2, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ext1:Ljava/lang/String;

    .line 53
    iput-wide v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startDownloadTime:J

    const-wide/16 v3, 0x1

    .line 54
    iput-wide v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->progress:J

    .line 55
    iput-object v5, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->speed:Ljava/lang/String;

    .line 56
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v4, 0x1a

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->runtimeStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_from:I

    .line 58
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_from_type:I

    .line 59
    iput-object v2, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->score:Ljava/lang/String;

    const/4 v3, 0x1

    .line 60
    iput-boolean v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downType:Z

    const/16 v4, 0x12c

    .line 61
    iput v4, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downLimit:I

    .line 62
    iput-object v2, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mod_info:Ljava/lang/String;

    .line 63
    iput v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->vm_device_switch:I

    .line 64
    iput v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cost_type:I

    .line 65
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->feed_back_show_times:I

    .line 66
    iput-object v2, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->permission_list:Ljava/lang/String;

    .line 67
    iput-boolean v3, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->checkRes:Z

    .line 68
    iput-boolean v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->hasDeleteNotify:Z

    move-wide v1, p2

    .line 69
    iput-wide v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->finishTime:J

    move v1, p4

    .line 70
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    move-object v1, p5

    .line 71
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mimeType:Ljava/lang/String;

    move-object v1, p6

    .line 72
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->name:Ljava/lang/String;

    move-object v1, p7

    .line 73
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->path:Ljava/lang/String;

    move-wide v1, p8

    .line 74
    iput-wide v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->size:J

    move-object/from16 v1, p10

    .line 75
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showSize:Ljava/lang/String;

    move-wide/from16 v1, p11

    .line 76
    iput-wide v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startTime:J

    move/from16 v1, p13

    .line 77
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->status:I

    move/from16 v1, p14

    .line 78
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->type:I

    move-object/from16 v1, p15

    .line 79
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 80
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->gameZipPath:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 81
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showName:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 82
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->dtype:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 83
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->packageName:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 84
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tips:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 85
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->portraitURL:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 86
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->crc_link_type_val:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 87
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ver:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 88
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ver_name:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 89
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->starNumber:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 90
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->romType:Ljava/lang/String;

    move/from16 v1, p27

    .line 91
    iput-boolean v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen:Z

    move/from16 v1, p28

    .line 92
    iput-boolean v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isFightOpen:Z

    move-object/from16 v1, p29

    .line 93
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->describe:Ljava/lang/String;

    move/from16 v1, p30

    .line 94
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showType:I

    move-object/from16 v1, p31

    .line 95
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fileType:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 96
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_ver_name:Ljava/lang/String;

    move-object/from16 v1, p33

    .line 97
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_ver:Ljava/lang/String;

    move-object/from16 v1, p34

    .line 98
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_down_url:Ljava/lang/String;

    move/from16 v1, p35

    .line 99
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downloadType:I

    move-object/from16 v1, p36

    .line 100
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->screenshot_pic:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 101
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_screenshot_pic:Ljava/lang/String;

    move-wide/from16 v1, p38

    .line 102
    iput-wide v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->openTime:J

    move-object/from16 v1, p40

    .line 103
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tipBeans:Ljava/util/List;

    move-wide/from16 v1, p41

    .line 104
    iput-wide v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->lastCompleteSize:J

    move-wide/from16 v1, p43

    .line 105
    iput-wide v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->lastTime:J

    move-object/from16 v1, p45

    .line 106
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->keyword:Ljava/lang/String;

    move-object/from16 v1, p46

    .line 107
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_num:Ljava/lang/String;

    move/from16 v1, p48

    .line 108
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_network:I

    move-object/from16 v1, p49

    .line 109
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_ver_name:Ljava/lang/String;

    move-object/from16 v1, p50

    .line 110
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_ver:Ljava/lang/String;

    move-object/from16 v1, p51

    .line 111
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_down_url:Ljava/lang/String;

    move-object/from16 v1, p52

    .line 112
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_down_path:Ljava/lang/String;

    move/from16 v1, p53

    .line 113
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_screenshot:I

    move/from16 v1, p54

    .line 114
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_area:I

    move-wide/from16 v1, p55

    .line 115
    iput-wide v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_area_val:J

    move/from16 v1, p59

    .line 116
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_fight:I

    move/from16 v1, p60

    .line 117
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_type:I

    move-object/from16 v1, p61

    .line 118
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_fun:Ljava/lang/String;

    move/from16 v1, p62

    .line 119
    iput-boolean v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startGame:Z

    move-object/from16 v1, p63

    .line 120
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->rid:Ljava/lang/String;

    .line 121
    iget-wide v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->duration:J

    iput-wide v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->duration:J

    move-object/from16 v1, p65

    .line 122
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_info_tpl_type:Ljava/lang/String;

    move-object/from16 v1, p66

    .line 123
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sync_memory:Ljava/lang/String;

    move/from16 v1, p67

    .line 124
    iput v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->gift_package_switch:I

    move-object/from16 v1, p68

    .line 125
    iput-object v1, v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info_str:Ljava/lang/String;

    return-void
.end method

.method private getSp_tag_info_s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info_s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public buildDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public cloneOne()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 3
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
    iget v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_status:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_status(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ver:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ver_name:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_num:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDescribe()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_ver:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_ver_name:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_down_url:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->screenshot_pic:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_num:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_world:I

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_world(I)V

    .line 115
    .line 116
    .line 117
    iget v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_network:I

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_network(I)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_ver:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_ver_name:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver_name(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_down_url:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_url(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_screenshot:I

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_screenshot(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_area_val()J

    .line 150
    .line 151
    .line 152
    move-result-wide v1

    .line 153
    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area_val(J)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getIs_world()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_shop(I)V

    .line 161
    .line 162
    .line 163
    iget v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_fight:I

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_fight(I)V

    .line 166
    .line 167
    .line 168
    iget v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_type:I

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_type(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_fun(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_screenshot_pic:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_screenshot_pic(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_info_tpl_type:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_info_tpl_type(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->lock_sp:I

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLock_sp(I)V

    .line 193
    .line 194
    .line 195
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->unzip_size:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUnzip_size(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sync_memory:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSync_memory(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->gift_package_switch:I

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGift_package_switch(I)V

    .line 208
    .line 209
    .line 210
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->battle_upload_pic:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setBattle_upload_pic(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-wide v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->actual_size:J

    .line 216
    .line 217
    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setActual_size(J)V

    .line 218
    .line 219
    .line 220
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_info_top_pic:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_info_top_pic(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tpl_two_position:I

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tpl_two_position(I)V

    .line 228
    .line 229
    .line 230
    iget v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_count:I

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_count(I)V

    .line 233
    .line 234
    .line 235
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V

    .line 238
    .line 239
    .line 240
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->score:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScore(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 250
    .line 251
    .line 252
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_source_url:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_url(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_outside_url:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_outside_url(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_original_switch:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_original_switch(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_source_switch_v1:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v1(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_source_switch_v2:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v2(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->allow_start_up_ad:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setAllow_start_up_ad(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_actual_size()J

    .line 283
    .line 284
    .line 285
    move-result-wide v1

    .line 286
    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_actual_size(J)V

    .line 287
    .line 288
    .line 289
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_down_url:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 306
    .line 307
    .line 308
    iget v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->min_an_compatible_ver:I

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMin_an_compatible_ver(I)V

    .line 311
    .line 312
    .line 313
    iget v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->max_an_compatible_ver:I

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMax_an_compatible_ver(I)V

    .line 316
    .line 317
    .line 318
    iget-wide v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->actual_size:J

    .line 319
    .line 320
    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setActual_size(J)V

    .line 321
    .line 322
    .line 323
    invoke-direct {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info_s()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tag_info_s(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mod_info:Ljava/lang/String;

    .line 331
    .line 332
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_url_remote()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->single_game_mod_info:Ljava/lang/String;

    .line 343
    .line 344
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSingle_game_mod_info(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ext:Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    iget v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->vm_device_switch:I

    .line 353
    .line 354
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVm_device_switch(I)V

    .line 355
    .line 356
    .line 357
    iget v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cost_type:I

    .line 358
    .line 359
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCost_type(I)V

    .line 360
    .line 361
    .line 362
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->permission_list:Ljava/lang/String;

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPermission_list(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cloudArchiveTime:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCloudArchiveTime(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    check-cast p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    .line 21
    iget v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    .line 22
    .line 23
    iget v3, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->crc_link_type_val:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->crc_link_type_val:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    .line 40
    :cond_3
    :goto_1
    return v1
.end method

.method public getActual_size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->actual_size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info_str:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info_str:Ljava/lang/String;

    .line 14
    .line 15
    const-class v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 26
    .line 27
    return-object v0
.end method

.method public getAd_info_str()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info_str:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAd_info_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getAllow_start_up_ad()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->allow_start_up_ad:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBattle_upload_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->battle_upload_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBespeakSwitch()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCdn_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cdn_down_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getCfg_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCfg_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloudArchiveTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cloudArchiveTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCost_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cost_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getCpu_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cpu_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getCrc_link_type_val()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentSize()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->currentSize:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gez v4, :cond_0

    .line 8
    .line 9
    move-wide v0, v2

    .line 10
    :cond_0
    return-wide v0
.end method

.method public getDescribe()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->describe:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownArgs()Lcom/join/mgps/dto/DownloadGameArgsBean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isGame()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/dto/DownloadGameArgsBean;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/dto/DownloadGameArgsBean;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setFrom(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setFromType(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getKeyword()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setKeyWord(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isFromRecomDown()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setFromRecommend(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setExt(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setExt(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt1()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/DownloadGameArgsBean;->setExt1(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_1
    const/4 v0, 0x0

    .line 92
    return-object v0
.end method

.method public getDownLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downLimit:I

    .line 2
    .line 3
    return v0
.end method

.method public getDownStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_status:I

    .line 2
    .line 3
    return v0
.end method

.method public getDown_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getDown_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_status:I

    .line 2
    .line 3
    return v0
.end method

.method public getDown_type()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_num:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_type:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/o;->l(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getDown_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_url_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    return-object p0
.end method

.method public getDownloadType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downloadType:I

    .line 2
    .line 3
    return v0
.end method

.method public getDownload_original_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_original_switch:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_outside_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_outside_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_source_switch_v1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_source_switch_v1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_source_switch_v2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_source_switch_v2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownload_source_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_source_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDtype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->dtype:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->duration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getEvent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->event:I

    .line 2
    .line 3
    return v0
.end method

.method public getExposure()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ext:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ext1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExt2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public getExt3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public getExt4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/dto/ExtBean;->game(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getFeed_back_show_times()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->feed_back_show_times:I

    .line 2
    .line 3
    return v0
.end method

.method public getFight_fun()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_fun:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFight_screenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFight_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fileType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFinishTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->finishTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGInfo()Lcom/join/kotlin/base/impl/GInfo;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    return-object p0
.end method

.method public getGameBook()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameZipPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->gameZipPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info_top_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_info_top_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_info_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_info_tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_run_state()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_run_state:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_upgrade_state()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_upgrade_state:I

    .line 2
    .line 3
    return v0
.end method

.method public getGift_package_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->gift_package_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getInstall_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->install_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterrupt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->interrupt:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_boot_commented()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_boot_commented:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_fight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_fight:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_network()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_network:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_world()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_world:I

    .line 2
    .line 3
    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->keyword:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastCompleteSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->lastCompleteSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLastTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->lastTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLock_sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->lock_sp:I

    .line 2
    .line 3
    return v0
.end method

.method public getMax_an_compatible_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->max_an_compatible_ver:I

    .line 2
    .line 3
    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMin_an_compatible_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->min_an_compatible_ver:I

    .line 2
    .line 3
    return v0
.end method

.method public getMobleNetNeedStop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mobleNetNeedStop:I

    .line 2
    .line 3
    return v0
.end method

.method public getModGameId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_modInfoBean:Lcom/join/mgps/dto/ModInfoBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->crc_link_type_val:Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean(Z)Lcom/join/mgps/dto/ModInfoBean;

    move-result-object v0

    return-object v0
.end method

.method public getModInfoBean(Z)Lcom/join/mgps/dto/ModInfoBean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reparse"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    const-class v0, Lcom/join/mgps/dto/ModInfoBean;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mod_info:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ModInfoBean;

    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_modInfoBean:Lcom/join/mgps/dto/ModInfoBean;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_modInfoBean:Lcom/join/mgps/dto/ModInfoBean;

    if-nez p1, :cond_1

    .line 6
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mod_info:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ModInfoBean;

    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_modInfoBean:Lcom/join/mgps/dto/ModInfoBean;

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_modInfoBean:Lcom/join/mgps/dto/ModInfoBean;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMod_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mod_info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpenTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->openTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getOther_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->other_down_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayTagInfo()Lcom/join/mgps/dto/PayTagInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPay_game_amount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->pay_game_amount:I

    .line 2
    .line 3
    return v0
.end method

.method public getPermissionList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->permission_list:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->permission_list:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x1

    .line 20
    new-array v3, v3, [Ljava/lang/Class;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const-class v5, Ljava/lang/String;

    .line 24
    .line 25
    aput-object v5, v3, v4

    .line 26
    .line 27
    const-class v4, Ljava/util/List;

    .line 28
    .line 29
    invoke-virtual {v2, v4, v3}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/List;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0
.end method

.method public getPermission_list()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->permission_list:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPluginNum()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_num:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlugin_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_area:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlugin_area_val()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_area_val:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPlugin_num()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_num:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_num:Ljava/lang/String;

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    :goto_0
    const-string v0, "0"

    .line 22
    .line 23
    return-object v0
.end method

.method public getPlugin_screenshot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_screenshot:I

    .line 2
    .line 3
    return v0
.end method

.method public getPortraitURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->portraitURL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProgress()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->progress:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRef_crc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ref_crc_sign_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRes_actual_size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->res_actual_size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRes_currentSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->res_currentSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getResource_path()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->resource_path:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v1, "0"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->resource_path:Ljava/lang/String;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    :goto_0
    const-string v0, ""

    .line 18
    .line 19
    return-object v0
.end method

.method public getResource_url_remote()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->resource_url_remote:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v1, "0"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->resource_url_remote:Ljava/lang/String;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    :goto_0
    const-string v0, ""

    .line 18
    .line 19
    return-object v0
.end method

.method public getRid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->rid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRomArchivedNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->romArchivedNum:I

    .line 2
    .line 3
    return v0
.end method

.method public getRomArchivedSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->romArchivedSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRomType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->romType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRuntimeStatus()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->runtimeStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->score:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScreenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showType:I

    .line 2
    .line 3
    return v0
.end method

.method public getSingleGameModInfoBean()Lcom/join/mgps/dto/SingleGameModInfoBean;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSingleGameModInfoBean(Z)Lcom/join/mgps/dto/SingleGameModInfoBean;

    move-result-object v0

    return-object v0
.end method

.method public getSingleGameModInfoBean(Z)Lcom/join/mgps/dto/SingleGameModInfoBean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reparse"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->single_game_mod_info:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    const-class v0, Lcom/join/mgps/dto/SingleGameModInfoBean;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->single_game_mod_info:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/SingleGameModInfoBean;

    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_singleGameModInfoBean:Lcom/join/mgps/dto/SingleGameModInfoBean;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_singleGameModInfoBean:Lcom/join/mgps/dto/SingleGameModInfoBean;

    if-nez p1, :cond_1

    .line 6
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->single_game_mod_info:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/SingleGameModInfoBean;

    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_singleGameModInfoBean:Lcom/join/mgps/dto/SingleGameModInfoBean;

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_singleGameModInfoBean:Lcom/join/mgps/dto/SingleGameModInfoBean;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSingle_game_mod_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->single_game_mod_info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSource_down_path()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_down_path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_down_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSpTagInfo()Lcom/join/mgps/dto/TipNew;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSp_tag_info()Lcom/join/mgps/dto/TipNew;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info_s:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info_s:Ljava/lang/String;

    .line 15
    .line 16
    const-class v3, Lcom/join/mgps/dto/TipNew;

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/join/mgps/dto/TipNew;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object v1
.end method

.method public getSp_tpl_two_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tpl_two_position:I

    .line 2
    .line 3
    return v0
.end method

.method public getSpeed()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->speed:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStarNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->starNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStartDownloadTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startDownloadTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public getSync_memory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sync_memory:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public getTagInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getTask_down_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->task_down_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getTipBeans()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tips:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tips:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "\"\""

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tips:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-class v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    new-array v4, v4, [Ljava/lang/Class;

    .line 34
    .line 35
    const-class v5, Lcom/join/mgps/dto/TipBean;

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    aput-object v5, v4, v6

    .line 39
    .line 40
    invoke-virtual {v2, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/util/List;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tipBeans:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v2, "tips="

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tips:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tipBeans:Ljava/util/List;

    .line 78
    .line 79
    :goto_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tipBeans:Ljava/util/List;

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_1
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    return-object v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tips:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tp_down_url:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public getUnzip_size()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->unzip_size:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->unzip_size:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "."

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->unzip_size:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->unzip_size:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVerCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ver:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v2, ""

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ver:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "_"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    array-length v2, v0

    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    aget-object v0, v0, v1

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0

    .line 32
    :cond_0
    return v1
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersionCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

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

.method public getVm_device_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->vm_device_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getZipCost()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->zipCost:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public get_from()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_from:I

    .line 2
    .line 3
    return v0
.end method

.method public get_from_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_from_type:I

    .line 2
    .line 3
    return v0
.end method

.method public hasGInfo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->crc_link_type_val:Ljava/lang/String;

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public is64Bit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAndroidGame()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTagInfo()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isBtGame()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getBt_game()Lcom/join/mgps/dto/TipBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isCheckRes()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->checkRes:Z

    .line 2
    .line 3
    return v0
.end method

.method public isCloudGame()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/join/mgps/dto/TipBean;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "269"

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    const-string v2, "271"

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    const-string v2, "272"

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    :cond_1
    const/4 v0, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0
.end method

.method public isCloudTask()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "cld_"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->name:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->path:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public isCpsGame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDisableShowSpeedUpPrompt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->disableShowSpeedUpPrompt:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDownType()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downType:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFightFun()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFight_fun()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_4

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x2

    .line 16
    if-lt v1, v2, :cond_4

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x7

    .line 28
    const/16 v5, 0x30

    .line 29
    .line 30
    const/16 v6, 0x31

    .line 31
    .line 32
    if-lt v3, v4, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x6

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x5

    .line 40
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    if-ne v0, v6, :cond_0

    .line 45
    .line 46
    const/16 v0, 0x31

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/16 v0, 0x30

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/16 v0, 0x30

    .line 53
    .line 54
    const/16 v3, 0x30

    .line 55
    .line 56
    :goto_0
    if-eq v6, v2, :cond_3

    .line 57
    .line 58
    if-ne v6, v3, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    if-ne v5, v2, :cond_4

    .line 62
    .line 63
    if-ne v5, v3, :cond_4

    .line 64
    .line 65
    if-ne v0, v6, :cond_4

    .line 66
    .line 67
    :cond_3
    :goto_1
    return v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :cond_4
    const/4 v0, 0x0

    .line 73
    return v0
.end method

.method public isFightOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isFightOpen:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFromRecomDown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fromRecomDown:Z

    .line 2
    .line 3
    return v0
.end method

.method public isGame()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isGameVm()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isModGameVm()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isSingleGameVm()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isNetGameVm()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isH5VmGame()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    return v0
.end method

.method public isH5Game()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_num:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0
.end method

.method public isH5VmGame()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/join/mgps/dto/TipBean;

    .line 20
    .line 21
    const-string v2, "268"

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method

.method public isHasDeleteNotify()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->hasDeleteNotify:Z

    .line 2
    .line 3
    return v0
.end method

.method public isHmCloud()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tipBeans:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

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
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tipBeans:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

.method public isIs_fight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_fight:I

    .line 2
    .line 3
    return v0
.end method

.method public isIs_network()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_network:I

    .line 2
    .line 3
    return v0
.end method

.method public isMiniGame()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getMini_game()Lcom/join/mgps/dto/TipBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isH5VmGame()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    :cond_2
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_3
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0
.end method

.method public isMod()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMod_info()Ljava/lang/String;

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
    return v0
.end method

.method public isModGameVm()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getMod_game_vm()Lcom/join/mgps/dto/TipBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isNetGame()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTagInfo()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->t2(Ljava/util/List;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isNetGameVm()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getNet_game_vm()Lcom/join/mgps/dto/TipBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isNotCheckAddShortcut()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isNotCheckAddShortcut:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPlugin_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_area:I

    .line 2
    .line 3
    return v0
.end method

.method public isPlugin_screenshot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_screenshot:I

    .line 2
    .line 3
    return v0
.end method

.method public isSingleGame()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getSingle_game_vm()Lcom/join/mgps/dto/TipBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public isSingleGameVm()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getSingle_game_vm()Lcom/join/mgps/dto/TipBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isSo()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public isStartGame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startGame:Z

    .line 2
    .line 3
    return v0
.end method

.method public isUncheckSelfSupport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->uncheckSelfSupport:Z

    .line 2
    .line 3
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public needPurchase()Z
    .locals 1

    const/4 v0, 0x0

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
    invoke-virtual {p0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVersionCode()I

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
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->actual_size:J

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    return-void
.end method

.method public setAd_info_str(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad_info_str"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info_str:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAd_info_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad_info_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ad_info_switch:I

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->allow_start_up_ad:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBattle_upload_pic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battle_upload_pic"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->battle_upload_pic:Ljava/lang/String;

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cdn_down_switch:I

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_down_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cfg_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCheckRes(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkRes"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->checkRes:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCloudArchiveTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloudArchiveTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cloudArchiveTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCost_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cost_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cost_type:I

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->cpu_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setCrc_link_type_val(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crc_link_type_val"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->crc_link_type_val:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCurrentSize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentSize"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->currentSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setDescribe(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "describe"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->describe:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDisableShowSpeedUpPrompt(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disableShowSpeedUpPrompt"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->disableShowSpeedUpPrompt:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDownLimit(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downLimit"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downLimit:I

    .line 2
    .line 3
    return-void
.end method

.method public setDownType(Z)V
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
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downType:Z

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_count:I

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_status:I

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_type:I

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->down_url_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-wide v0, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startTime:J

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startTime:J

    .line 7
    .line 8
    iget v0, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    .line 9
    .line 10
    iput v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mimeType:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mimeType:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mimeType:Ljava/lang/String;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->name:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->name:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->name:Ljava/lang/String;

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->path:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->path:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->path:Ljava/lang/String;

    .line 47
    .line 48
    :cond_3
    iget-wide v0, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->size:J

    .line 49
    .line 50
    iput-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->size:J

    .line 51
    .line 52
    iget v0, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->status:I

    .line 53
    .line 54
    iput v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->status:I

    .line 55
    .line 56
    iget v0, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->type:I

    .line 57
    .line 58
    iput v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->type:I

    .line 59
    .line 60
    iget-object p1, p1, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

    .line 63
    .line 64
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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->downloadType:I

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_original_switch:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_outside_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_source_switch_v1:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_source_switch_v2:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->download_source_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDtype(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dtype"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->dtype:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->duration:J

    .line 2
    .line 3
    return-void
.end method

.method public setEvent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->event:I

    .line 2
    .line 3
    return-void
.end method

.method public setExposure(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ext:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public setExt1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ext1:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExt2(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    return-void
.end method

.method public setExt3(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    return-void
.end method

.method public setExt4(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    return-void
.end method

.method public setFeed_back_show_times(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "feed_back_show_times"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->feed_back_show_times:I

    .line 2
    .line 3
    return-void
.end method

.method public setFightOpen(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFightOpen"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isFightOpen:Z

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_fun:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_screenshot_pic:Ljava/lang/String;

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fight_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fileType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFinishTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finishTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->finishTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setFromRecomDown(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromRecomDown"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->fromRecomDown:Z

    .line 2
    .line 3
    return-void
.end method

.method public setGameZipPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameZipPath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->gameZipPath:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_info_top_pic:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_info_tpl_type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_run_state(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_run_state"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_run_state:I

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->game_upgrade_state:I

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->gift_package_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setHasDeleteNotify(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasDeleteNotify"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->hasDeleteNotify:Z

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setInstall_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "install_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->install_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setInterrupt(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interrupt"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->interrupt:I

    .line 2
    .line 3
    return-void
.end method

.method public setIsFightOpen(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFightOpen"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isFightOpen:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIsOpen(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOpen"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen:Z

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_boot_commented:I

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_fight:I

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_network:I

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->is_world:I

    .line 2
    .line 3
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyword"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->keyword:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLastCompleteSize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastCompleteSize"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->lastCompleteSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setLastTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->lastTime:J

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->lock_sp:I

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->max_an_compatible_ver:I

    .line 2
    .line 3
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mimeType:Ljava/lang/String;

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->min_an_compatible_ver:I

    .line 2
    .line 3
    return-void
.end method

.method public setMobleNetNeedStop(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mobleNetNeedStop"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mobleNetNeedStop:I

    .line 2
    .line 3
    return-void
.end method

.method public setMod_info(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->mod_info:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNotCheckAddShortcut(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notCheckAddShortcut"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isNotCheckAddShortcut:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOpen(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOpen"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOpenTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "openTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->openTime:J

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->other_down_switch:I

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->path:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPay_game_amount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pay_game_amount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->pay_game_amount:I

    .line 2
    .line 3
    return-void
.end method

.method public setPermission_list(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permission_list"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->permission_list:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlugin_area(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plugin_area"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_area:I

    .line 2
    .line 3
    return-void
.end method

.method public setPlugin_area_val(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plugin_area_val"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_area_val:J

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_num:Ljava/lang/String;

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->plugin_screenshot:I

    .line 2
    .line 3
    return-void
.end method

.method public setPortraitURL(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "portraitURL"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->portraitURL:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setProgress(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->progress:J

    .line 2
    .line 3
    return-void
.end method

.method public setRef_crc_sign_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref_crc_sign_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ref_crc_sign_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRes_actual_size(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res_actual_size"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->res_actual_size:J

    .line 2
    .line 3
    return-void
.end method

.method public setRes_currentSize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res_currentSize"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->res_currentSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setResource_path(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resource_path"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->resource_path:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResource_url_remote(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resource_url_remote"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->resource_url_remote:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->rid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRomArchivedNum(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "romArchivedNum"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->romArchivedNum:I

    .line 2
    .line 3
    return-void
.end method

.method public setRomArchivedSize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "romArchivedSize"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->romArchivedSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setRomType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "romType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->romType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRuntimeStatus(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runtimeStatus"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->runtimeStatus:Ljava/util/concurrent/atomic/AtomicInteger;

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->score:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->screenshot_pic:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShowName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShowSize(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showSize"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showSize:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShowType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->showType:I

    .line 2
    .line 3
    return-void
.end method

.method public setSingle_game_mod_info(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->single_game_mod_info:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSize(J)V
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
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->size:J

    .line 2
    .line 3
    return-void
.end method

.method public setSource_down_path(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source_down_path"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_down_path:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_down_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->source_ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sp_tag_info"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info_s:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    :catch_0
    :cond_0
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    .line 14
    .line 15
    return-void
.end method

.method public setSp_tag_info_s(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sp_tag_info_s"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tag_info_s:Ljava/lang/String;

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
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sp_tpl_two_position:I

    .line 2
    .line 3
    return-void
.end method

.method public setSpeed(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->speed:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setStarNumber(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "starNumber"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->starNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setStartDownloadTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startDownloadTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startDownloadTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setStartGame(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startGame"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startGame:Z

    .line 2
    .line 3
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->startTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->status:I

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->sync_memory:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTask_down_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task_down_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->task_down_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setTipBeans(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tipBeans"
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
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTips(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tipBeans:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tips"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tips:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->tp_down_url:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->type:I

    .line 2
    .line 3
    return-void
.end method

.method public setUncheckSelfSupport(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uncheckSelfSupport"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->uncheckSelfSupport:Z

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->unzip_size:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ver:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->ver_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVm_device_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vm_device_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->vm_device_switch:I

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

    return-void
.end method

.method public setZipCost(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipCost"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->zipCost:J

    .line 2
    .line 3
    return-void
.end method

.method public set_from(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_from"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_from:I

    .line 2
    .line 3
    return-void
.end method

.method public set_from_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_from_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadTask;->_from_type:I

    .line 2
    .line 3
    return-void
.end method

.method public update(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notify"
        }
    .end annotation

    return-void
.end method
