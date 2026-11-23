.class public Lcom/byazt/zn/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f5,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/zn/c$c;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/zn/c$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/zn/c;-><init>()V

    return-void
.end method

.method public static c()Lcom/byazt/zn/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/zn/c$c;->c()Lcom/byazt/zn/c;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/byazt/dd/c;)Lorg/json/JSONObject;
    .locals 3

    .line 114
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 115
    :try_start_0
    invoke-interface {p1}, Lcom/byazt/dd/c;->sp()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 116
    invoke-interface {p1}, Lcom/byazt/dd/c;->m()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v1, "download_url"

    .line 117
    invoke-interface {p1}, Lcom/byazt/dd/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "package_name"

    .line 118
    invoke-interface {p1}, Lcom/byazt/dd/c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "android_int"

    .line 119
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rom_name"

    .line 120
    invoke-static {}, Lcom/byazt/i/n;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rom_version"

    .line 121
    invoke-static {}, Lcom/byazt/i/n;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ttdownloader"

    const/4 v2, 0x1

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "funnel_type"

    .line 123
    invoke-interface {p1}, Lcom/byazt/dd/c;->x()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    invoke-interface {p1}, Lcom/byazt/dd/c;->x()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 125
    invoke-static {v0, p1}, Lcom/byazt/hu/a;->tt(Lorg/json/JSONObject;Lcom/byazt/dd/c;)Lorg/json/JSONObject;

    .line 126
    :cond_0
    invoke-static {}, Lcom/byazt/i/n;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 127
    invoke-static {v0}, Lcom/byazt/hu/a;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    invoke-static {}, Lcom/byazt/gq/t;->gt()Lcom/byazt/pd/c;

    move-result-object v1

    const-string v2, "getBaseJson"

    invoke-interface {v1, p1, v2}, Lcom/byazt/pd/c;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private c(Lcom/byazt/e/ve;)V
    .locals 1

    .line 129
    invoke-static {}, Lcom/byazt/gq/t;->c()Lcom/byazt/ou/sp;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/e/ve;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-static {}, Lcom/byazt/gq/t;->c()Lcom/byazt/ou/sp;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/ou/sp;->c(Lcom/byazt/e/ve;)V

    return-void

    .line 132
    :cond_1
    invoke-static {}, Lcom/byazt/gq/t;->c()Lcom/byazt/ou/sp;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/ou/sp;->tt(Lcom/byazt/e/ve;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JILcom/byazt/dd/c;)V
    .locals 5

    if-nez p7, :cond_0

    .line 94
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p1

    const-string p2, "onEvent data null"

    invoke-virtual {p1, p2}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    return-void

    .line 95
    :cond_0
    instance-of v0, p7, Lcom/byazt/nn/n;

    if-eqz v0, :cond_1

    move-object v0, p7

    check-cast v0, Lcom/byazt/nn/n;

    invoke-virtual {v0}, Lcom/byazt/nn/n;->gr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p1

    const-string p2, "onEvent ModelBox notValid"

    invoke-virtual {p1, p2}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    return-void

    .line 97
    :cond_1
    :try_start_0
    new-instance v0, Lcom/byazt/e/ve$c;

    invoke-direct {v0}, Lcom/byazt/e/ve$c;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 98
    invoke-interface {p7}, Lcom/byazt/dd/c;->da()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const-string p1, "embeded_ad"

    const/4 v4, 0x2

    aput-object p1, v1, v4

    invoke-static {v1}, Lcom/byazt/hu/u;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/byazt/e/ve$c;->c(Ljava/lang/String;)Lcom/byazt/e/ve$c;

    move-result-object p1

    .line 99
    invoke-virtual {p1, p2}, Lcom/byazt/e/ve$c;->tt(Ljava/lang/String;)Lcom/byazt/e/ve$c;

    move-result-object p1

    .line 100
    invoke-interface {p7}, Lcom/byazt/dd/c;->ve()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/e/ve$c;->tt(Z)Lcom/byazt/e/ve$c;

    move-result-object p1

    .line 101
    invoke-interface {p7}, Lcom/byazt/dd/c;->tt()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/e/ve$c;->c(J)Lcom/byazt/e/ve$c;

    move-result-object p1

    .line 102
    invoke-interface {p7}, Lcom/byazt/dd/c;->uj()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/e/ve$c;->ve(Ljava/lang/String;)Lcom/byazt/e/ve$c;

    move-result-object p1

    const-wide/16 v0, 0x0

    cmp-long p2, p4, v0

    if-lez p2, :cond_2

    goto :goto_0

    .line 103
    :cond_2
    invoke-interface {p7}, Lcom/byazt/dd/c;->t()J

    move-result-wide p4

    :goto_0
    invoke-virtual {p1, p4, p5}, Lcom/byazt/e/ve$c;->tt(J)Lcom/byazt/e/ve$c;

    move-result-object p1

    .line 104
    invoke-interface {p7}, Lcom/byazt/dd/c;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/e/ve$c;->uj(Ljava/lang/String;)Lcom/byazt/e/ve$c;

    move-result-object p1

    .line 105
    invoke-interface {p7}, Lcom/byazt/dd/c;->yp()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/e/ve$c;->c(Ljava/util/List;)Lcom/byazt/e/ve$c;

    move-result-object p1

    new-array p2, v4, [Lorg/json/JSONObject;

    .line 106
    invoke-direct {p0, p7}, Lcom/byazt/zn/c;->c(Lcom/byazt/dd/c;)Lorg/json/JSONObject;

    move-result-object p4

    aput-object p4, p2, v2

    aput-object p3, p2, v3

    invoke-static {p2}, Lcom/byazt/hu/u;->c([Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/e/ve$c;->c(Lorg/json/JSONObject;)Lcom/byazt/e/ve$c;

    move-result-object p1

    .line 107
    invoke-interface {p7}, Lcom/byazt/dd/c;->sl()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/e/ve$c;->tt(Lorg/json/JSONObject;)Lcom/byazt/e/ve$c;

    move-result-object p1

    .line 108
    invoke-interface {p7}, Lcom/byazt/dd/c;->z()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/e/ve$c;->c(Ljava/lang/Object;)Lcom/byazt/e/ve$c;

    move-result-object p1

    if-lez p6, :cond_3

    goto :goto_1

    :cond_3
    const/4 p6, 0x2

    .line 109
    :goto_1
    invoke-virtual {p1, p6}, Lcom/byazt/e/ve$c;->c(I)Lcom/byazt/e/ve$c;

    move-result-object p1

    .line 110
    invoke-interface {p7}, Lcom/byazt/dd/c;->u()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/e/ve$c;->c(Z)Lcom/byazt/e/ve$c;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/byazt/e/ve$c;->c()Lcom/byazt/e/ve;

    move-result-object p1

    .line 112
    invoke-direct {p0, p1}, Lcom/byazt/zn/c;->c(Lcom/byazt/e/ve;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 113
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p2

    const-string p3, "onEvent"

    invoke-virtual {p2, p1, p3}, Lcom/byazt/dm/ve;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(JI)V
    .locals 8

    .line 2
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/nn/a;->n(J)Lcom/byazt/nn/n;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/nn/n;->gr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p1

    const-string p2, "sendClickEvent ModelBox notValid"

    invoke-virtual {p1, p2}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    invoke-interface {v1}, Lcom/byazt/su/DownloadEventConfig;->isEnableClickEvent()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 6
    iget-object v2, v0, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    if-ne p3, v1, :cond_2

    invoke-interface {v2}, Lcom/byazt/su/DownloadEventConfig;->getClickItemTag()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Lcom/byazt/su/DownloadEventConfig;->getClickButtonTag()Ljava/lang/String;

    move-result-object v2

    .line 7
    :goto_0
    iget-object v3, v0, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    invoke-interface {v3}, Lcom/byazt/su/DownloadEventConfig;->getClickLabel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "click"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/hu/u;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v6, "download_click_type"

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v5, v6, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "permission_notification"

    .line 10
    invoke-static {}, Lcom/byazt/p/uj;->c()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x2

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p3, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "network_available"

    .line 11
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/byazt/w/a;->ve(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, p3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p3

    .line 12
    invoke-static {p3}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 13
    :goto_3
    invoke-virtual {p0, v2, v3, v5, v0}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    .line 14
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 15
    iget-object p3, v0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    if-eqz p3, :cond_5

    .line 16
    invoke-static {}, Lcom/byazt/zn/ve;->c()Lcom/byazt/zn/ve;

    move-result-object p3

    iget-object v0, v0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/byazt/zn/ve;->c(JLjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public c(JILcom/byazt/t/DownloadInfo;)V
    .locals 9

    .line 17
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/nn/a;->n(J)Lcom/byazt/nn/n;

    move-result-object v8

    .line 18
    invoke-virtual {v8}, Lcom/byazt/nn/n;->gr()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p1

    const-string p2, "sendEvent ModelBox notValid"

    invoke-virtual {p1, p2}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    return-void

    .line 20
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 21
    invoke-virtual {v8}, Lcom/byazt/nn/n;->gt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "download_scene"

    invoke-static {v4, p2, p1}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    if-eq p3, p1, :cond_6

    const/4 p1, 0x2

    if-eq p3, p1, :cond_5

    const/4 p1, 0x3

    if-eq p3, p1, :cond_4

    const/4 p1, 0x4

    if-eq p3, p1, :cond_3

    const/4 p1, 0x5

    if-eq p3, p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 22
    :try_start_0
    invoke-virtual {p4}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result p1

    invoke-static {v4, p1}, Lcom/byazt/hu/a;->c(Lorg/json/JSONObject;I)V

    .line 23
    invoke-static {v4, p4}, Lcom/byazt/di/c;->tt(Lorg/json/JSONObject;Lcom/byazt/t/DownloadInfo;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :catchall_0
    :cond_2
    iget-object p1, v8, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getClickInstallLabel()Ljava/lang/String;

    move-result-object p1

    const-string p2, "click_install"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/hu/u;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 25
    :cond_3
    iget-object p1, v8, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getClickContinueLabel()Ljava/lang/String;

    move-result-object p1

    const-string p2, "click_continue"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/hu/u;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p4, v4}, Lcom/byazt/hu/a;->ve(Lcom/byazt/t/DownloadInfo;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 27
    :cond_4
    iget-object p1, v8, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getClickPauseLabel()Ljava/lang/String;

    move-result-object p1

    const-string p2, "click_pause"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/hu/u;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p4, v4}, Lcom/byazt/hu/a;->tt(Lcom/byazt/t/DownloadInfo;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 29
    :cond_5
    iget-object p1, v8, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getClickStartLabel()Ljava/lang/String;

    move-result-object p1

    const-string p2, "click_start"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/hu/u;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p4, v4}, Lcom/byazt/hu/a;->c(Lcom/byazt/t/DownloadInfo;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 31
    :cond_6
    iget-object p1, v8, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    invoke-interface {p1}, Lcom/byazt/su/DownloadEventConfig;->getStorageDenyLabel()Ljava/lang/String;

    move-result-object p1

    const-string p2, "storage_deny"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/hu/u;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    .line 32
    invoke-direct/range {v1 .. v8}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JILcom/byazt/dd/c;)V

    return-void
.end method

.method public c(JLcom/byazt/m/BaseException;)V
    .locals 2

    .line 45
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/nn/a;->n(J)Lcom/byazt/nn/n;

    move-result-object p1

    .line 46
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "download_time"

    const/4 v1, 0x0

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string v0, "fail_status"

    .line 48
    invoke-virtual {p3}, Lcom/byazt/m/BaseException;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "fail_msg"

    .line 49
    invoke-virtual {p3}, Lcom/byazt/m/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 50
    invoke-static {p3}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const-string p3, "download_failed"

    .line 51
    invoke-virtual {p0, p3, p2, p1}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public c(JZI)V
    .locals 1

    .line 34
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/nn/a;->n(J)Lcom/byazt/nn/n;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/byazt/nn/n;->gr()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 36
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p1

    const-string p2, "sendQuickAppEvent ModelBox notValid"

    invoke-virtual {p1, p2}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    return-void

    .line 37
    :cond_0
    iget-object p2, p1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {p2}, Lcom/byazt/su/DownloadModel;->getQuickAppModel()Lcom/byazt/e/uj;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 38
    :cond_1
    iget-object p2, p1, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    instance-of v0, p2, Lcom/byazt/ar/AdDownloadModel;

    if-eqz v0, :cond_2

    .line 39
    check-cast p2, Lcom/byazt/ar/AdDownloadModel;

    const/4 v0, 0x3

    .line 40
    invoke-virtual {p2, v0}, Lcom/byazt/ar/AdDownloadModel;->setFunnelType(I)Lcom/byazt/ar/AdDownloadModel;

    .line 41
    :cond_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "download_click_type"

    .line 42
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, v0, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 43
    invoke-static {p4}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p3, :cond_3

    const-string p3, "deeplink_quickapp_success"

    goto :goto_1

    :cond_3
    const-string p3, "deeplink_quickapp_failed"

    .line 44
    :goto_1
    invoke-virtual {p0, p3, p2, p1}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;)V
    .locals 4

    .line 52
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/nn/a;->c(Lcom/byazt/t/DownloadInfo;)Lcom/byazt/dd/tt;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 54
    invoke-static {p1, v1}, Lcom/byazt/hu/a;->ve(Lcom/byazt/t/DownloadInfo;Lorg/json/JSONObject;)V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/byazt/dd/tt;->c(J)V

    .line 56
    invoke-virtual {v0}, Lcom/byazt/dd/tt;->da()Ljava/lang/String;

    move-result-object p1

    const-string v2, "download_resume"

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    .line 57
    invoke-static {}, Lcom/byazt/nn/i;->c()Lcom/byazt/nn/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/byazt/nn/i;->c(Lcom/byazt/dd/tt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 58
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/byazt/nn/a;->c(Lcom/byazt/t/DownloadInfo;)Lcom/byazt/dd/tt;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 61
    :cond_1
    iget-object v0, p2, Lcom/byazt/dd/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 62
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 63
    :try_start_0
    invoke-static {v0, p1}, Lcom/byazt/di/c;->c(Lorg/json/JSONObject;Lcom/byazt/t/DownloadInfo;)Lorg/json/JSONObject;

    const-string v1, "fail_status"

    .line 64
    invoke-virtual {p2}, Lcom/byazt/dd/tt;->eo()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fail_msg"

    .line 65
    invoke-virtual {p2}, Lcom/byazt/dd/tt;->zb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "download_failed_times"

    .line 66
    invoke-virtual {p2}, Lcom/byazt/dd/tt;->gr()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    const-string v1, "download_percent"

    .line 68
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v5, v7

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_3
    const-string v1, "download_status"

    .line 69
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getRealStatus()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 71
    invoke-virtual {p2}, Lcom/byazt/dd/tt;->cu()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_4

    const-string p1, "time_from_start_download"

    .line 72
    invoke-virtual {p2}, Lcom/byazt/dd/tt;->cu()J

    move-result-wide v5

    sub-long v5, v1, v5

    invoke-virtual {v0, p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 73
    :cond_4
    invoke-virtual {p2}, Lcom/byazt/dd/tt;->md()J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_5

    const-string p1, "time_from_download_resume"

    .line 74
    invoke-virtual {p2}, Lcom/byazt/dd/tt;->md()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_5
    const-string p1, "is_update_download"

    .line 75
    invoke-virtual {p2}, Lcom/byazt/dd/tt;->lt()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "can_show_notification"

    .line 76
    invoke-static {}, Lcom/byazt/p/uj;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "has_send_download_failed_finally"

    .line 77
    iget-object v1, p2, Lcom/byazt/dd/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v2, 0x2

    :goto_2
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 78
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 79
    :goto_3
    invoke-virtual {p2}, Lcom/byazt/dd/tt;->da()Ljava/lang/String;

    move-result-object p1

    const-string v1, "download_cancel"

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public c(Ljava/lang/String;ILcom/byazt/nn/n;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    int-to-long v4, p2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v7, p3

    .line 33
    invoke-direct/range {v0 .. v7}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JILcom/byazt/dd/c;)V

    return-void
.end method

.method public c(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/dd/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, p1, v0, p2}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V
    .locals 7
    .param p2    # Lcom/byazt/su/DownloadModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/byazt/su/DownloadEventConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/byazt/su/DownloadController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    new-instance v6, Lcom/byazt/nn/n;

    invoke-interface {p2}, Lcom/byazt/su/DownloadModel;->getId()J

    move-result-wide v1

    move-object v0, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/byazt/nn/n;-><init>(JLcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;)V

    invoke-virtual {p0, p1, v6}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dd/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    .line 93
    invoke-direct/range {v0 .. v7}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JILcom/byazt/dd/c;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 1

    .line 82
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/byazt/nn/a;->uj(J)Lcom/byazt/dd/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, p1, p2, v0}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void

    .line 84
    :cond_0
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/byazt/nn/a;->n(J)Lcom/byazt/nn/n;

    move-result-object p3

    .line 85
    invoke-virtual {p3}, Lcom/byazt/nn/n;->gr()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 86
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p1

    const-string p2, "sendUnityEvent ModelBox notValid"

    invoke-virtual {p1, p2}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    return-void

    .line 87
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V
    .locals 2

    .line 88
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "unity_label"

    .line 89
    invoke-static {v0, v1, p1}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "ttdownloader_unity"

    .line 90
    invoke-static {p2, v0}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "embeded_ad"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/dd/tt;)V
    .locals 2
    .param p2    # Lcom/byazt/dd/tt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    invoke-virtual {p2}, Lcom/byazt/dd/tt;->da()Ljava/lang/String;

    move-result-object v0

    const-string v1, "install_finish"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public tt(JI)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/byazt/zn/c;->c(JILcom/byazt/t/DownloadInfo;)V

    return-void
.end method

.method public tt(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/nn/a;->c(Lcom/byazt/t/DownloadInfo;)Lcom/byazt/dd/tt;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object p1

    const-string p2, "sendDownloadFailedEvent nativeModel null"

    invoke-virtual {p1, p2}, Lcom/byazt/dm/ve;->c(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    iget-object v1, v0, Lcom/byazt/dd/tt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 5
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_0
    invoke-static {p1, v1}, Lcom/byazt/hu/a;->ve(Lcom/byazt/t/DownloadInfo;Lorg/json/JSONObject;)V

    .line 7
    invoke-static {v1, p1}, Lcom/byazt/di/c;->c(Lorg/json/JSONObject;Lcom/byazt/t/DownloadInfo;)Lorg/json/JSONObject;

    if-eqz p2, :cond_3

    const-string v2, "fail_status"

    .line 8
    invoke-virtual {p2}, Lcom/byazt/m/BaseException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "fail_msg"

    .line 9
    invoke-virtual {p2}, Lcom/byazt/m/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {p2}, Lcom/byazt/m/BaseException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/dd/tt;->uj(I)V

    .line 11
    invoke-virtual {p2}, Lcom/byazt/m/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/byazt/dd/tt;->c(Ljava/lang/String;)V

    .line 12
    :cond_3
    invoke-virtual {v0}, Lcom/byazt/dd/tt;->zm()V

    const-string p2, "download_failed_times"

    .line 13
    invoke-virtual {v0}, Lcom/byazt/dd/tt;->gr()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-lez p2, :cond_4

    const-string p2, "download_percent"

    .line 15
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_4
    const-string p1, "has_send_download_failed_finally"

    .line 16
    iget-object p2, v0, Lcom/byazt/dd/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p2, :cond_5

    const/4 p2, 0x1

    goto :goto_0

    :cond_5
    const/4 p2, 0x2

    :goto_0
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    invoke-static {v0, v1}, Lcom/byazt/hu/a;->c(Lcom/byazt/dd/tt;Lorg/json/JSONObject;)V

    const-string p1, "is_update_download"

    .line 18
    invoke-virtual {v0}, Lcom/byazt/dd/tt;->lt()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    :goto_1
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 19
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 20
    :goto_2
    invoke-virtual {v0}, Lcom/byazt/dd/tt;->da()Ljava/lang/String;

    move-result-object p1

    const-string p2, "download_failed"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    .line 21
    invoke-static {}, Lcom/byazt/nn/i;->c()Lcom/byazt/nn/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/byazt/nn/i;->c(Lcom/byazt/dd/tt;)V

    return-void
.end method

.method public tt(Ljava/lang/String;J)V
    .locals 1

    .line 22
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/byazt/nn/a;->uj(J)Lcom/byazt/dd/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lcom/byazt/dd/c;)V

    return-void

    .line 24
    :cond_0
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/byazt/nn/a;->n(J)Lcom/byazt/nn/n;

    move-result-object p2

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/byazt/zn/c;->tt(Ljava/lang/String;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public tt(Ljava/lang/String;Lcom/byazt/dd/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0, p1, p2}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public tt(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method
