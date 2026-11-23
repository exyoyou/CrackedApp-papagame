.class public Lcom/byazt/gq/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34,
        0xf
    }
.end annotation


# instance fields
.field public c:Landroid/os/Handler;

.field public tt:Lcom/byazt/nn/n;

.field public uj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public ve:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/gq/uj;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/gq/uj;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/byazt/gq/uj;->c:Landroid/os/Handler;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic c(Lcom/byazt/gq/uj;Ljava/util/Map;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/gq/uj;->c(Ljava/util/Map;)J

    move-result-wide p0

    return-wide p0
.end method

.method private c(Ljava/util/Map;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    .line 25
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "content-length"

    .line 29
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 31
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static synthetic c(Lcom/byazt/gq/uj;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/gq/uj;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "clean_space_install_params"

    .line 62
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 63
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static c(I)V
    .locals 0

    .line 64
    invoke-static {p0}, Lcom/byazt/hu/n;->a(I)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-static {}, Lcom/byazt/gq/t;->u()Lcom/byazt/ou/z;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/byazt/gq/t;->u()Lcom/byazt/ou/z;

    move-result-object p0

    invoke-interface {p0}, Lcom/byazt/ou/z;->tt()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 66
    invoke-static {}, Lcom/byazt/gq/t;->u()Lcom/byazt/ou/z;

    :cond_1
    return-void
.end method

.method private c(ILjava/lang/String;JLcom/byazt/dd/tt;JLcom/byazt/gq/n$c;)V
    .locals 18

    move-object/from16 v8, p0

    move-wide/from16 v1, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    .line 32
    iget-object v0, v8, Lcom/byazt/gq/uj;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v3, 0x0

    const/4 v12, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_2

    .line 33
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "apk_size"

    .line 34
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 35
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 36
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/byazt/hu/n;->c(I)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    long-to-double v0, v1

    mul-double v3, v3, v0

    .line 37
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    invoke-static/range {p1 .. p1}, Lcom/byazt/hu/n;->tt(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    sub-long v14, v0, p6

    .line 38
    invoke-static {}, Lcom/byazt/gq/uj;->uj()J

    move-result-wide v16

    cmp-long v0, v16, v14

    if-gez v0, :cond_2

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object v3, v13

    move-wide v4, v14

    move-wide/from16 v6, v16

    .line 39
    invoke-direct/range {v1 .. v7}, Lcom/byazt/gq/uj;->c(Lcom/byazt/dd/tt;Lorg/json/JSONObject;JJ)V

    .line 40
    invoke-static/range {p5 .. p5}, Lcom/byazt/gq/uj;->c(Lcom/byazt/dd/tt;)V

    .line 41
    invoke-static {}, Lcom/byazt/gq/uj;->uj()J

    move-result-wide v6

    cmp-long v0, v6, v14

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v9, v11}, Lcom/byazt/dd/tt;->uj(Z)V

    .line 43
    invoke-virtual/range {p5 .. p5}, Lcom/byazt/dd/tt;->c()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/byazt/ie/uj;->c()Lcom/byazt/ie/uj;

    move-result-object v1

    new-instance v2, Lcom/byazt/gq/uj$4;

    invoke-direct {v2, v8, v9, v10, v0}, Lcom/byazt/gq/uj$4;-><init>(Lcom/byazt/gq/uj;Lcom/byazt/dd/tt;Lcom/byazt/gq/n$c;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/byazt/ie/uj;->c(Ljava/lang/String;Lcom/byazt/ie/n;)V

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p2

    move-wide v5, v14

    .line 45
    invoke-direct/range {v1 .. v6}, Lcom/byazt/gq/uj;->c(ILcom/byazt/dd/tt;Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 46
    invoke-virtual {v9, v11}, Lcom/byazt/dd/tt;->n(Z)V

    goto :goto_2

    :cond_1
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object v3, v13

    move-wide/from16 v4, v16

    .line 47
    invoke-direct/range {v1 .. v7}, Lcom/byazt/gq/uj;->tt(Lcom/byazt/dd/tt;Lorg/json/JSONObject;JJ)V

    :cond_2
    :goto_2
    if-nez v12, :cond_3

    .line 48
    iget-object v0, v8, Lcom/byazt/gq/uj;->c:Landroid/os/Handler;

    new-instance v1, Lcom/byazt/gq/uj$5;

    invoke-direct {v1, v8, v10}, Lcom/byazt/gq/uj$5;-><init>(Lcom/byazt/gq/uj;Lcom/byazt/gq/n$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private static c(Lcom/byazt/dd/tt;)V
    .locals 6

    .line 67
    invoke-static {}, Lcom/byazt/gq/uj;->uj()J

    move-result-wide v0

    .line 68
    invoke-static {}, Lcom/byazt/gq/t;->u()Lcom/byazt/ou/z;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 69
    invoke-static {}, Lcom/byazt/gq/t;->u()Lcom/byazt/ou/z;

    .line 70
    :cond_0
    invoke-static {}, Lcom/byazt/ie/ve;->c()V

    .line 71
    invoke-static {}, Lcom/byazt/ie/ve;->tt()V

    .line 72
    invoke-virtual {p0}, Lcom/byazt/dd/tt;->my()I

    move-result v2

    invoke-static {v2}, Lcom/byazt/hu/n;->sp(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/ie/ve;->c(Landroid/content/Context;)V

    .line 74
    :cond_1
    invoke-static {}, Lcom/byazt/gq/uj;->uj()J

    move-result-wide v2

    .line 75
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "quite_clean_size"

    sub-long/2addr v2, v0

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 77
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 78
    :goto_0
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object v0

    const-string v1, "clean_quite_finish"

    invoke-virtual {v0, v1, v4, p0}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method private c(Lcom/byazt/dd/tt;Lorg/json/JSONObject;JJ)V
    .locals 1

    :try_start_0
    const-string v0, "available_space"

    .line 79
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p2, v0, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "apk_download_need_size"

    .line 80
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p5, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 81
    invoke-static {p3}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 82
    :goto_0
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p3

    const-string p4, "clean_space_no_enough_for_download"

    invoke-virtual {p3, p4, p2, p1}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/gq/uj;ILjava/lang/String;JLcom/byazt/dd/tt;JLcom/byazt/gq/n$c;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p8}, Lcom/byazt/gq/uj;->c(ILjava/lang/String;JLcom/byazt/dd/tt;JLcom/byazt/gq/n$c;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/byazt/dd/tt;Lcom/byazt/gq/n$tt;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 24
    :cond_0
    new-instance p2, Lcom/byazt/gq/uj$3;

    invoke-direct {p2, p0, p3}, Lcom/byazt/gq/uj$3;-><init>(Lcom/byazt/gq/uj;Lcom/byazt/gq/n$tt;)V

    invoke-static {p1, p2}, Lcom/byazt/no/tt;->c(Ljava/lang/String;Lcom/byazt/hs/da;)V

    return-void
.end method

.method private c(ILcom/byazt/dd/tt;Ljava/lang/String;J)Z
    .locals 8
    .param p2    # Lcom/byazt/dd/tt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-static {p1}, Lcom/byazt/hu/n;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 50
    :cond_0
    invoke-static {}, Lcom/byazt/gq/t;->u()Lcom/byazt/ou/z;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    invoke-static {}, Lcom/byazt/gq/t;->u()Lcom/byazt/ou/z;

    move-result-object v2

    const/4 v5, 0x1

    move v3, p1

    move-object v4, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/byazt/ou/z;->c(ILjava/lang/String;ZJ)Z

    move-result p1

    return p1

    .line 52
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p3, "show_dialog_result"

    const/4 p4, 0x3

    .line 53
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 54
    invoke-static {p3}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 55
    :goto_0
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p3

    const-string p4, "cleanspace_window_show"

    invoke-virtual {p3, p4, p1, p2}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return v1
.end method

.method public static c(Lcom/byazt/t/DownloadInfo;J)Z
    .locals 6

    .line 56
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    .line 57
    invoke-static {v1}, Lcom/byazt/hu/n;->a(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 58
    :cond_0
    invoke-static {}, Lcom/byazt/gq/t;->u()Lcom/byazt/ou/z;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    invoke-static {}, Lcom/byazt/gq/t;->u()Lcom/byazt/ou/z;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/byazt/ou/z;->c(ILjava/lang/String;ZJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    invoke-static {}, Lcom/byazt/ie/uj;->c()Lcom/byazt/ie/uj;

    move-result-object p1

    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/byazt/gq/uj$6;

    invoke-direct {v0, p0}, Lcom/byazt/gq/uj$6;-><init>(Lcom/byazt/t/DownloadInfo;)V

    invoke-virtual {p1, p2, v0}, Lcom/byazt/ie/uj;->c(Ljava/lang/String;Lcom/byazt/ie/n;)V

    :cond_1
    return v2
.end method

.method public static tt()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/gq/t;->u()Lcom/byazt/ou/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/byazt/gq/t;->u()Lcom/byazt/ou/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/ou/z;->c()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private tt(Lcom/byazt/dd/tt;Lorg/json/JSONObject;JJ)V
    .locals 1

    const-string v0, "1"

    .line 3
    invoke-virtual {p1, v0}, Lcom/byazt/dd/tt;->t(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/byazt/nn/i;->c()Lcom/byazt/nn/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/nn/i;->c(Lcom/byazt/dd/tt;)V

    :try_start_0
    const-string v0, "quite_clean_size"

    sub-long/2addr p5, p3

    .line 5
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 6
    invoke-static {p3}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    invoke-static {}, Lcom/byazt/zn/c;->c()Lcom/byazt/zn/c;

    move-result-object p3

    const-string p4, "cleanspace_download_after_quite_clean"

    invoke-virtual {p3, p4, p2, p1}, Lcom/byazt/zn/c;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/dd/c;)V

    return-void
.end method

.method private static uj()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/byazt/hu/u;->tt(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public static synthetic ve()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/gq/uj;->uj()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method


# virtual methods
.method public c(IJJLcom/byazt/gq/n$c;)V
    .locals 15

    move-object v9, p0

    move-object/from16 v10, p6

    .line 7
    iget-object v0, v9, Lcom/byazt/gq/uj;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez v10, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/byazt/hu/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/byazt/hu/n;->n(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 9
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/byazt/hu/n;->ve(I)J

    move-result-wide v11

    .line 10
    iget-object v0, v9, Lcom/byazt/gq/uj;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    iget-object v0, v9, Lcom/byazt/gq/uj;->tt:Lcom/byazt/nn/n;

    iget-object v0, v0, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    invoke-interface {v0}, Lcom/byazt/su/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/byazt/nn/a;->tt(Ljava/lang/String;)Lcom/byazt/dd/tt;

    move-result-object v0

    if-nez v0, :cond_2

    .line 13
    new-instance v0, Lcom/byazt/dd/tt;

    iget-object v2, v9, Lcom/byazt/gq/uj;->tt:Lcom/byazt/nn/n;

    iget-object v3, v2, Lcom/byazt/nn/n;->tt:Lcom/byazt/su/DownloadModel;

    iget-object v4, v2, Lcom/byazt/nn/n;->ve:Lcom/byazt/su/DownloadEventConfig;

    iget-object v2, v2, Lcom/byazt/nn/n;->uj:Lcom/byazt/su/DownloadController;

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/byazt/dd/tt;-><init>(Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadEventConfig;Lcom/byazt/su/DownloadController;I)V

    .line 14
    invoke-static {}, Lcom/byazt/nn/a;->c()Lcom/byazt/nn/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/byazt/nn/a;->c(Lcom/byazt/dd/tt;)V

    :cond_2
    move-object v13, v0

    .line 15
    invoke-virtual {v13, v1}, Lcom/byazt/dd/tt;->n(Z)V

    .line 16
    invoke-static {}, Lcom/byazt/gq/t;->u()Lcom/byazt/ou/z;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 17
    invoke-static {}, Lcom/byazt/gq/t;->u()Lcom/byazt/ou/z;

    invoke-virtual {v13}, Lcom/byazt/dd/tt;->tt()J

    .line 18
    :cond_3
    invoke-static {}, Lcom/byazt/ie/uj;->c()Lcom/byazt/ie/uj;

    move-result-object v0

    invoke-virtual {v13}, Lcom/byazt/dd/tt;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ie/uj;->c(Ljava/lang/String;)V

    .line 19
    invoke-static/range {p1 .. p1}, Lcom/byazt/hu/n;->uj(I)Z

    move-result v0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    move-object v0, p0

    move/from16 v1, p1

    move-object v2, v8

    move-wide/from16 v3, p4

    move-object v5, v13

    move-wide/from16 v6, p2

    move-object/from16 v8, p6

    .line 20
    invoke-direct/range {v0 .. v8}, Lcom/byazt/gq/uj;->c(ILjava/lang/String;JLcom/byazt/dd/tt;JLcom/byazt/gq/n$c;)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 21
    new-instance v14, Lcom/byazt/gq/uj$1;

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object v3, v8

    move-object v4, v13

    move-wide/from16 v5, p2

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/byazt/gq/uj$1;-><init>(Lcom/byazt/gq/uj;ILjava/lang/String;Lcom/byazt/dd/tt;JLcom/byazt/gq/n$c;)V

    invoke-direct {p0, v8, v13, v14}, Lcom/byazt/gq/uj;->c(Ljava/lang/String;Lcom/byazt/dd/tt;Lcom/byazt/gq/n$tt;)V

    goto :goto_0

    :cond_5
    move-wide v11, v1

    .line 22
    :goto_0
    iget-object v0, v9, Lcom/byazt/gq/uj;->c:Landroid/os/Handler;

    new-instance v1, Lcom/byazt/gq/uj$2;

    invoke-direct {v1, p0, v10}, Lcom/byazt/gq/uj$2;-><init>(Lcom/byazt/gq/uj;Lcom/byazt/gq/n$c;)V

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 23
    :cond_6
    :goto_1
    invoke-interface/range {p6 .. p6}, Lcom/byazt/gq/n$c;->c()V

    return-void
.end method

.method public c(Lcom/byazt/nn/n;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/gq/uj;->tt:Lcom/byazt/nn/n;

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/gq/uj;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/gq/uj;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
