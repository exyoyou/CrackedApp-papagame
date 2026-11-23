.class public Lcom/byazt/di/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pk/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x159,
        0xd
    }
.end annotation


# static fields
.field public static c:Ljava/lang/String; = "tt"

.field public static volatile tt:Lcom/byazt/di/tt;


# instance fields
.field public ve:Lcom/byazt/di/da;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/byazt/di/da;->c(Landroid/content/Context;)Lcom/byazt/di/da;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/byazt/di/tt;->ve:Lcom/byazt/di/da;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic c(Lcom/byazt/di/tt;)Lcom/byazt/di/da;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/di/tt;->ve:Lcom/byazt/di/da;

    return-object p0
.end method

.method public static c()Lcom/byazt/di/tt;
    .locals 2

    .line 3
    sget-object v0, Lcom/byazt/di/tt;->tt:Lcom/byazt/di/tt;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/byazt/di/tt;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/byazt/di/tt;->tt:Lcom/byazt/di/tt;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/byazt/di/tt;

    invoke-direct {v1}, Lcom/byazt/di/tt;-><init>()V

    sput-object v1, Lcom/byazt/di/tt;->tt:Lcom/byazt/di/tt;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/di/tt;->tt:Lcom/byazt/di/tt;

    return-object v0
.end method

.method public static c(Z)Lcom/byazt/su/DownloadController;
    .locals 3

    .line 30
    new-instance v0, Lcom/byazt/ar/AdDownloadController$Builder;

    invoke-direct {v0}, Lcom/byazt/ar/AdDownloadController$Builder;-><init>()V

    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setLinkMode(I)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 32
    invoke-virtual {v0, v2}, Lcom/byazt/ar/AdDownloadController$Builder;->setIsEnableBackDialog(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setIsEnableMultipleDownload(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setShouldUseNewWebView(Z)Lcom/byazt/ar/AdDownloadController$Builder;

    move-result-object v0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    .line 35
    invoke-virtual {v0, p0}, Lcom/byazt/ar/AdDownloadController$Builder;->setDownloadMode(I)Lcom/byazt/ar/AdDownloadController$Builder;

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadController$Builder;->setDownloadMode(I)Lcom/byazt/ar/AdDownloadController$Builder;

    .line 37
    :goto_0
    invoke-virtual {v0}, Lcom/byazt/ar/AdDownloadController$Builder;->build()Lcom/byazt/ar/AdDownloadController;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/di/tt;Landroid/content/Context;Landroid/net/Uri;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/IDownloadButtonClickListener;)Z
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/byazt/di/tt;->tt(Landroid/content/Context;Landroid/net/Uri;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/IDownloadButtonClickListener;)Z

    move-result p0

    return p0
.end method

.method public static tt()Lcom/byazt/su/DownloadController;
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-static {v0}, Lcom/byazt/di/tt;->c(Z)Lcom/byazt/su/DownloadController;

    move-result-object v0

    return-object v0
.end method

.method private tt(Landroid/content/Context;Landroid/net/Uri;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/IDownloadButtonClickListener;)Z
    .locals 13

    move-object/from16 v6, p3

    move-object/from16 v0, p5

    .line 47
    invoke-static {p2}, Lcom/byazt/ki/c;->c(Landroid/net/Uri;)Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    return v7

    .line 48
    :cond_0
    invoke-static {}, Lcom/byazt/gq/t;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "disable_market"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x1

    if-ne v1, v8, :cond_1

    return v7

    :cond_1
    if-nez p1, :cond_2

    .line 49
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_2
    move-object v9, p1

    .line 50
    :goto_0
    invoke-static {p2}, Lcom/byazt/ki/c;->tt(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    if-nez v6, :cond_4

    .line 51
    invoke-static {v9, v10}, Lcom/byazt/hu/i;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/nn/sp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nn/sp;->getType()I

    move-result v0

    if-ne v0, v11, :cond_3

    return v8

    :cond_3
    return v7

    .line 52
    :cond_4
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    instance-of v1, v6, Lcom/byazt/ar/AdDownloadModel;

    if-eqz v1, :cond_5

    .line 53
    move-object v1, v6

    check-cast v1, Lcom/byazt/ar/AdDownloadModel;

    invoke-virtual {v1, v10}, Lcom/byazt/ar/AdDownloadModel;->setPackageName(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    :cond_5
    const/4 v1, 0x2

    if-eqz v0, :cond_6

    .line 54
    invoke-interface {v0, v1}, Lcom/byazt/su/DownloadController;->setDownloadMode(I)V

    :goto_1
    move-object v5, v0

    goto :goto_2

    .line 55
    :cond_6
    instance-of v0, v6, Lcom/byazt/ar/AdDownloadModel;

    if-eqz v0, :cond_7

    invoke-interface/range {p3 .. p3}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 56
    move-object v0, v6

    check-cast v0, Lcom/byazt/ar/AdDownloadModel;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/ar/AdDownloadModel;->setDownloadUrl(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadModel;

    .line 57
    invoke-static {v8}, Lcom/byazt/di/tt;->c(Z)Lcom/byazt/su/DownloadController;

    move-result-object v0

    goto :goto_1

    .line 58
    :cond_7
    invoke-interface/range {p3 .. p3}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "market"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 59
    invoke-static {v8}, Lcom/byazt/di/tt;->c(Z)Lcom/byazt/su/DownloadController;

    move-result-object v0

    goto :goto_1

    .line 60
    :cond_8
    invoke-static {}, Lcom/byazt/di/tt;->tt()Lcom/byazt/su/DownloadController;

    move-result-object v0

    goto :goto_1

    .line 61
    :goto_2
    new-instance v12, Lcom/byazt/nn/n;

    invoke-interface/range {p3 .. p3}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v2

    new-array v0, v1, [Lcom/byazt/su/DownloadEventConfig;

    aput-object p4, v0, v7

    .line 62
    invoke-static {}, Lcom/byazt/di/tt;->ve()Lcom/byazt/su/DownloadEventConfig;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/byazt/hu/u;->c([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/byazt/su/DownloadEventConfig;

    move-object v0, v12

    move-wide v1, v2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/byazt/nn/n;-><init>(JLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V

    .line 63
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    iget-object v1, v12, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-virtual {v0, v1}, Lcom/byazt/nn/a;->c(Lcom/byazt/su/DownloadModel;)V

    .line 64
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    iget-wide v1, v12, Lcom/byazt/nn/n;->c:J

    iget-object v3, v12, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/nn/a;->c(JLcom/byazt/su/DownloadEventConfig;)V

    .line 65
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    iget-wide v1, v12, Lcom/byazt/nn/n;->c:J

    iget-object v3, v12, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/nn/a;->c(JLcom/byazt/su/DownloadController;)V

    .line 66
    invoke-static/range {p3 .. p3}, Lcom/byazt/hu/u;->c(Lcom/byazt/su/DownloadModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "app_link_opt"

    invoke-virtual {v0, v1}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_9

    .line 67
    invoke-static {v12}, Lcom/byazt/us/c;->c(Lcom/byazt/nn/n;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v8

    .line 68
    :cond_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "market_url"

    .line 69
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "download_scene"

    .line 70
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    iget-object v1, v12, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    invoke-interface {v1}, Lcom/byazt/su/DownloadController;->getMarketStatusChangeListener()Lcom/byazt/su/tt;

    move-result-object v1

    .line 72
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v2

    const-string v3, "market_click_open"

    invoke-virtual {v2, v3, v0, v12}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    .line 73
    invoke-static {v9, v12, v10}, Lcom/byazt/hu/i;->c(Landroid/content/Context;Lcom/byazt/nn/n;Ljava/lang/String;)Lcom/byazt/nn/sp;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Lcom/byazt/nn/sp;->tt()Ljava/lang/String;

    move-result-object v3

    const-string v4, "open_market"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/hu/u;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {v2}, Lcom/byazt/nn/sp;->getType()I

    move-result v4

    if-ne v4, v11, :cond_a

    .line 76
    invoke-static {v3, v0, v12, v8}, Lcom/byazt/us/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/nn/n;Z)V

    return v8

    .line 77
    :cond_a
    invoke-virtual {v2}, Lcom/byazt/nn/sp;->getType()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_d

    .line 78
    invoke-virtual {v2}, Lcom/byazt/nn/sp;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "error_code"

    invoke-static {v0, v3, v2}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v1, :cond_b

    .line 79
    invoke-interface {v1}, Lcom/byazt/su/tt;->tt()V

    .line 80
    :cond_b
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v1

    const-string v2, "market_open_failed"

    invoke-virtual {v1, v2, v0, v12}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    move-object/from16 v0, p6

    .line 81
    invoke-static {v6, v0}, Lcom/byazt/gq/i;->c(Lcom/byazt/su/DownloadModel;Lcom/byazt/ou/IDownloadButtonClickListener;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 82
    invoke-interface/range {p6 .. p6}, Lcom/byazt/ou/IDownloadButtonClickListener;->handleMarketFailedComplianceDialog()V

    :cond_c
    return v7

    :cond_d
    return v8
.end method

.method public static ve()Lcom/byazt/su/DownloadEventConfig;
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "landing_h5_download_ad_button"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickButtonTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickItemTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "click_start_detail"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickStartLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "click_pause_detail"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickPauseLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "click_continue_detail"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickContinueLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "click_install_detail"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickInstallLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "click_open_detail"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickOpenLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "storage_deny_detail"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setStorageDenyLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setDownloadScene(I)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v2}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setIsEnableClickEvent(Z)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, v1}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setIsEnableNoChargeClickEvent(Z)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v2}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setIsEnableV3Event(Z)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->build()Lcom/byazt/ar/AdDownloadEventConfig;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method


# virtual methods
.method public c(Landroid/content/Context;Ljava/lang/String;ZLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/su/DownloadStatusChangeListener;I)Landroid/app/Dialog;
    .locals 10
    .param p4    # Lcom/byazt/su/DownloadModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 9
    invoke-virtual/range {v0 .. v9}, Lcom/byazt/di/tt;->c(Landroid/content/Context;Ljava/lang/String;ZLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/su/DownloadStatusChangeListener;IZ)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;ZLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/su/DownloadStatusChangeListener;ILcom/byazt/ou/IDownloadButtonClickListener;)Landroid/app/Dialog;
    .locals 11
    .param p4    # Lcom/byazt/su/DownloadModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v10, p9

    .line 10
    invoke-virtual/range {v0 .. v10}, Lcom/byazt/di/tt;->c(Landroid/content/Context;Ljava/lang/String;ZLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/su/DownloadStatusChangeListener;IZLcom/byazt/ou/IDownloadButtonClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;ZLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/su/DownloadStatusChangeListener;IZ)Landroid/app/Dialog;
    .locals 11
    .param p4    # Lcom/byazt/su/DownloadModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 11
    invoke-virtual/range {v0 .. v10}, Lcom/byazt/di/tt;->c(Landroid/content/Context;Ljava/lang/String;ZLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/su/DownloadStatusChangeListener;IZLcom/byazt/ou/IDownloadButtonClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;ZLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/su/DownloadStatusChangeListener;IZLcom/byazt/ou/IDownloadButtonClickListener;)Landroid/app/Dialog;
    .locals 13
    .param p4    # Lcom/byazt/su/DownloadModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    new-instance v12, Lcom/byazt/di/tt$1;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/byazt/di/tt$1;-><init>(Lcom/byazt/di/tt;Landroid/content/Context;Ljava/lang/String;ZLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/su/DownloadStatusChangeListener;IZLcom/byazt/ou/IDownloadButtonClickListener;)V

    invoke-static {v12}, Lcom/byazt/dm/tt;->c(Lcom/byazt/dm/tt$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method

.method public c(JLcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V
    .locals 9

    .line 19
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/nn/a;->c(J)Lcom/byazt/su/DownloadModel;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/byazt/nn/a;->uj(J)Lcom/byazt/dd/tt;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {v1}, Lcom/byazt/dd/tt;->y()Lcom/byazt/ar/AdDownloadModel;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 22
    instance-of v1, p3, Lcom/byazt/su/uj;

    if-nez v1, :cond_3

    instance-of v1, p4, Lcom/byazt/su/ve;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 23
    invoke-interface {p3, v1}, Lcom/byazt/su/DownloadEventConfig;->setDownloadScene(I)V

    .line 24
    iget-object v2, p0, Lcom/byazt/di/tt;->ve:Lcom/byazt/di/da;

    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    move-wide v4, p1

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/byazt/di/da;->c(Ljava/lang/String;JILcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V

    return-void

    .line 25
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/byazt/di/tt;->tt(J)V

    return-void
.end method

.method public c(J)Z
    .locals 1

    .line 26
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/nn/a;->c(J)Lcom/byazt/su/DownloadModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 27
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/nn/a;->uj(J)Lcom/byazt/dd/tt;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public c(JI)Z
    .locals 1

    .line 17
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/nn/a;->c(J)Lcom/byazt/su/DownloadModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    iget-object p2, p0, Lcom/byazt/di/tt;->ve:Lcom/byazt/di/da;

    invoke-interface {p1}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/byazt/di/da;->c(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/content/Context;JLjava/lang/String;Lcom/byazt/su/DownloadStatusChangeListener;I)Z
    .locals 1

    .line 13
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lcom/byazt/nn/a;->uj(J)Lcom/byazt/dd/tt;

    move-result-object p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 14
    iget-object p2, p0, Lcom/byazt/di/tt;->ve:Lcom/byazt/di/da;

    invoke-virtual {p4}, Lcom/byazt/dd/tt;->y()Lcom/byazt/ar/AdDownloadModel;

    move-result-object p3

    invoke-virtual {p2, p1, p6, p5, p3}, Lcom/byazt/di/da;->c(Landroid/content/Context;ILcom/byazt/su/DownloadStatusChangeListener;Lcom/byazt/su/DownloadModel;)V

    return v0

    .line 15
    :cond_0
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lcom/byazt/nn/a;->c(J)Lcom/byazt/su/DownloadModel;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 16
    iget-object p3, p0, Lcom/byazt/di/tt;->ve:Lcom/byazt/di/da;

    invoke-virtual {p3, p1, p6, p5, p2}, Lcom/byazt/di/da;->c(Landroid/content/Context;ILcom/byazt/su/DownloadStatusChangeListener;Lcom/byazt/su/DownloadModel;)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/content/Context;Landroid/net/Uri;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 28
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/di/tt;->c(Landroid/content/Context;Landroid/net/Uri;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/IDownloadButtonClickListener;)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/content/Context;Landroid/net/Uri;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/IDownloadButtonClickListener;)Z
    .locals 9

    .line 29
    new-instance v8, Lcom/byazt/di/tt$3;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/byazt/di/tt$3;-><init>(Lcom/byazt/di/tt;Landroid/content/Context;Landroid/net/Uri;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/IDownloadButtonClickListener;)V

    invoke-static {v8}, Lcom/byazt/dm/tt;->c(Lcom/byazt/dm/tt$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public tt(Landroid/content/Context;Ljava/lang/String;ZLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/su/DownloadStatusChangeListener;IZLcom/byazt/ou/IDownloadButtonClickListener;)Landroid/app/Dialog;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    .line 1
    invoke-interface {p4}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/byazt/di/tt;->c(J)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    if-eqz p9, :cond_0

    .line 2
    invoke-interface {p4}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p5, v4}, Lcom/byazt/di/tt;->c(JLcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p4}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/byazt/di/tt;->tt(J)V

    :goto_0
    return-object v6

    :cond_1
    if-eqz v1, :cond_6

    .line 4
    invoke-interface {p4}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_3

    .line 5
    :cond_2
    iget-object v5, v0, Lcom/byazt/di/tt;->ve:Lcom/byazt/di/da;

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual {v5, p1, v8, v7, p4}, Lcom/byazt/di/da;->c(Landroid/content/Context;ILcom/byazt/su/DownloadStatusChangeListener;Lcom/byazt/su/DownloadModel;)V

    const/4 v5, 0x2

    new-array v7, v5, [Lcom/byazt/su/DownloadEventConfig;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    .line 6
    invoke-static {}, Lcom/byazt/di/tt;->ve()Lcom/byazt/su/DownloadEventConfig;

    move-result-object v3

    const/4 v9, 0x1

    aput-object v3, v7, v9

    invoke-static {v7}, Lcom/byazt/hu/u;->c([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/su/DownloadEventConfig;

    new-array v5, v5, [Lcom/byazt/su/DownloadController;

    aput-object v4, v5, v8

    .line 7
    invoke-static {}, Lcom/byazt/di/tt;->tt()Lcom/byazt/su/DownloadController;

    move-result-object v4

    aput-object v4, v5, v9

    invoke-static {v5}, Lcom/byazt/hu/u;->c([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/su/DownloadController;

    .line 8
    invoke-interface {v3, v9}, Lcom/byazt/su/DownloadEventConfig;->setDownloadScene(I)V

    .line 9
    invoke-static {}, Lcom/byazt/gq/t;->i()Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "disable_lp_dialog"

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    or-int/2addr v5, p3

    .line 10
    invoke-interface {v4}, Lcom/byazt/su/DownloadController;->enableShowComplianceDialog()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 11
    invoke-static {}, Lcom/byazt/lr/tt;->c()Lcom/byazt/lr/tt;

    move-result-object v7

    invoke-virtual {v7, p4}, Lcom/byazt/lr/tt;->c(Lcom/byazt/su/DownloadModel;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move v9, v5

    :goto_2
    if-eqz v9, :cond_5

    .line 12
    iget-object v1, v0, Lcom/byazt/di/tt;->ve:Lcom/byazt/di/da;

    invoke-interface {p4}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v7

    const/4 v2, 0x2

    move-object p1, v1

    move-object p2, v5

    move-wide p3, v7

    move p5, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, p10

    invoke-virtual/range {p1 .. p8}, Lcom/byazt/di/da;->c(Ljava/lang/String;JILcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;Lcom/byazt/ou/IDownloadButtonClickListener;)V

    return-object v6

    .line 13
    :cond_5
    sget-object v5, Lcom/byazt/di/tt;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "tryStartDownload show dialog appName:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p4}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v6}, Lcom/byazt/hu/sl;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 14
    invoke-static {}, Lcom/byazt/gq/t;->ve()Lcom/byazt/ou/u;

    move-result-object v5

    new-instance v6, Lcom/byazt/e/tt$c;

    invoke-direct {v6, p1}, Lcom/byazt/e/tt$c;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-interface {p4}, Lcom/byazt/su/DownloadModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/byazt/e/tt$c;->c(Ljava/lang/String;)Lcom/byazt/e/tt$c;

    move-result-object v1

    const-string v6, "\u786e\u8ba4\u8981\u4e0b\u8f7d\u6b64\u5e94\u7528\u5417\uff1f"

    .line 16
    invoke-virtual {v1, v6}, Lcom/byazt/e/tt$c;->tt(Ljava/lang/String;)Lcom/byazt/e/tt$c;

    move-result-object v1

    const-string v6, "\u786e\u8ba4"

    .line 17
    invoke-virtual {v1, v6}, Lcom/byazt/e/tt$c;->ve(Ljava/lang/String;)Lcom/byazt/e/tt$c;

    move-result-object v1

    const-string v6, "\u53d6\u6d88"

    .line 18
    invoke-virtual {v1, v6}, Lcom/byazt/e/tt$c;->uj(Ljava/lang/String;)Lcom/byazt/e/tt$c;

    move-result-object v1

    new-instance v6, Lcom/byazt/di/tt$2;

    invoke-direct {v6, p0, p4, v3, v4}, Lcom/byazt/di/tt$2;-><init>(Lcom/byazt/di/tt;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V

    .line 19
    invoke-virtual {v1, v6}, Lcom/byazt/e/tt$c;->c(Lcom/byazt/e/tt$tt;)Lcom/byazt/e/tt$c;

    move-result-object v1

    .line 20
    invoke-virtual {v1, v8}, Lcom/byazt/e/tt$c;->c(I)Lcom/byazt/e/tt$c;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/byazt/e/tt$c;->c()Lcom/byazt/e/tt;

    move-result-object v1

    .line 22
    invoke-interface {v5, v1}, Lcom/byazt/ou/u;->tt(Lcom/byazt/e/tt;)Landroid/app/Dialog;

    move-result-object v1

    .line 23
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v5

    const-string v6, "landing_download_dialog_show"

    invoke-virtual {v5, v6, p4, v3, v4}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V

    return-object v1

    :cond_6
    :goto_3
    return-object v6
.end method

.method public tt(J)V
    .locals 11

    .line 24
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/nn/a;->c(J)Lcom/byazt/su/DownloadModel;

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/byazt/nn/a;->uj(J)Lcom/byazt/dd/tt;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v1}, Lcom/byazt/dd/tt;->y()Lcom/byazt/ar/AdDownloadModel;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 27
    :cond_1
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/byazt/nn/a;->tt(J)Lcom/byazt/su/DownloadEventConfig;

    move-result-object v2

    .line 28
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/byazt/nn/a;->ve(J)Lcom/byazt/su/DownloadController;

    move-result-object v3

    .line 29
    instance-of v4, v2, Lcom/byazt/su/uj;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move-object v2, v5

    .line 30
    :cond_2
    instance-of v4, v3, Lcom/byazt/su/ve;

    if-eqz v4, :cond_3

    move-object v3, v5

    :cond_3
    if-nez v1, :cond_5

    if-nez v2, :cond_4

    .line 31
    invoke-static {}, Lcom/byazt/di/tt;->ve()Lcom/byazt/su/DownloadEventConfig;

    move-result-object v2

    :cond_4
    if-nez v3, :cond_7

    .line 32
    invoke-static {}, Lcom/byazt/di/tt;->tt()Lcom/byazt/su/DownloadController;

    move-result-object v3

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    .line 33
    new-instance v2, Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    invoke-direct {v2}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;-><init>()V

    .line 34
    invoke-virtual {v1}, Lcom/byazt/dd/tt;->da()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickButtonTag(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v2

    .line 35
    invoke-virtual {v1}, Lcom/byazt/dd/tt;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setRefer(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v2

    .line 36
    invoke-virtual {v1}, Lcom/byazt/dd/tt;->u()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setIsEnableV3Event(Z)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v2

    const/4 v4, 0x0

    .line 37
    invoke-virtual {v2, v4}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setIsEnableClickEvent(Z)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v2

    const-string v4, "click_start_detail"

    .line 38
    invoke-virtual {v2, v4}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickStartLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v2

    const-string v4, "click_pause_detail"

    .line 39
    invoke-virtual {v2, v4}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickPauseLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v2

    const-string v4, "click_continue_detail"

    .line 40
    invoke-virtual {v2, v4}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickContinueLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v2

    const-string v4, "click_install_detail"

    .line 41
    invoke-virtual {v2, v4}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setClickInstallLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v2

    const-string v4, "storage_deny_detail"

    .line 42
    invoke-virtual {v2, v4}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->setStorageDenyLabel(Ljava/lang/String;)Lcom/byazt/ar/AdDownloadEventConfig$Builder;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/byazt/ar/AdDownloadEventConfig$Builder;->build()Lcom/byazt/ar/AdDownloadEventConfig;

    move-result-object v2

    :cond_6
    if-nez v3, :cond_7

    .line 44
    invoke-virtual {v1}, Lcom/byazt/dd/tt;->j()Lcom/byazt/ar/AdDownloadController;

    move-result-object v3

    :cond_7
    :goto_0
    move-object v9, v2

    move-object v10, v3

    const/4 v1, 0x1

    .line 45
    invoke-interface {v9, v1}, Lcom/byazt/su/DownloadEventConfig;->setDownloadScene(I)V

    .line 46
    iget-object v4, p0, Lcom/byazt/di/tt;->ve:Lcom/byazt/di/da;

    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    move-wide v6, p1

    invoke-virtual/range {v4 .. v10}, Lcom/byazt/di/da;->c(Ljava/lang/String;JILcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V

    return-void
.end method
