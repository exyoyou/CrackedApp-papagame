.class public Lcom/byazt/btt/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x828,
        0x36
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/fk/da;

.field public static volatile tt:Lcom/byazt/fk/da;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Lcom/byazt/jzl/a;)Lcom/byazt/ete/ic;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "material_meta"

    .line 25
    invoke-virtual {p0, v1}, Lcom/byazt/jzl/a;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 26
    instance-of v1, p0, Lcom/byazt/ete/ic;

    if-eqz v1, :cond_1

    .line 27
    move-object v0, p0

    check-cast v0, Lcom/byazt/ete/ic;

    :cond_1
    return-object v0
.end method

.method public static synthetic c(ILcom/byazt/whk/i;Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;JLcom/byazt/ete/ic;)Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 0

    .line 2
    invoke-static/range {p0 .. p6}, Lcom/byazt/btt/ve;->tt(ILcom/byazt/whk/i;Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;JLcom/byazt/ete/ic;)Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/byazt/jzl/a;IILjava/lang/String;Lorg/json/JSONObject;J)V
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getPassThroughJson()Lorg/json/JSONObject;

    move-result-object p0

    :try_start_0
    const-string v0, "pitaya_cache_size"

    .line 18
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pitaya_code"

    .line 19
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pitaya_msg"

    .line 20
    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ext_plugin_code"

    .line 21
    invoke-static {}, Lcom/byazt/omf/eo;->tt()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "package"

    .line 22
    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "run_task_mills"

    .line 23
    invoke-virtual {p0, p1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static synthetic c(Lcom/byazt/jzl/a;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/byazt/btt/ve;->ve(Lcom/byazt/jzl/a;Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public static c(Lcom/byazt/jzl/a;Lcom/byazt/ete/ic;J)V
    .locals 8

    .line 28
    invoke-static {p0}, Lcom/byazt/btt/ve;->ve(Lcom/byazt/jzl/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-static {p1}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 30
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getPlayerType()I

    move-result v4

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v5, p1

    .line 31
    invoke-static/range {v1 .. v7}, Lcom/byazt/sw/uj;->c(Lcom/byazt/jzl/a;Ljava/lang/String;IILcom/byazt/ete/ic;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/byazt/afw/u;

    invoke-direct {v2}, Lcom/byazt/afw/u;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/afw/u;->c(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getPreloadSize()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/byazt/afw/u;->c(J)V

    .line 35
    invoke-virtual {v2, p2, p3}, Lcom/byazt/afw/u;->tt(J)V

    .line 36
    invoke-virtual {v2, p0}, Lcom/byazt/afw/c;->c(Lcom/byazt/jzl/a;)V

    .line 37
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getSourceType()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_1

    const-wide/16 p2, 0x1

    .line 38
    invoke-virtual {v2, p2, p3}, Lcom/byazt/afw/u;->ve(J)V

    goto :goto_0

    :cond_1
    const-wide/16 p2, 0x0

    .line 39
    invoke-virtual {v2, p2, p3}, Lcom/byazt/afw/u;->ve(J)V

    .line 40
    :goto_0
    new-instance p0, Lcom/byazt/afw/tt;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/byazt/afw/tt;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/afw/uj;)V

    .line 41
    invoke-static {p0}, Lcom/byazt/sw/uj;->tt(Lcom/byazt/afw/tt;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/jzl/a;Lcom/byazt/ete/ic;JILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-static/range {p0 .. p5}, Lcom/byazt/btt/ve;->tt(Lcom/byazt/jzl/a;Lcom/byazt/ete/ic;JILjava/lang/String;)V

    return-void
.end method

.method public static c(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;)V
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 6
    invoke-static {p0, p1, p0}, Lcom/byazt/btt/ve;->tt(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getPreloadSize()I

    invoke-virtual {p0}, Lcom/byazt/jzl/a;->isPreloadAll()Z

    .line 8
    invoke-static {p0}, Lcom/byazt/btt/ve;->c(Lcom/byazt/jzl/a;)Lcom/byazt/ete/ic;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getPreloadSize()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Lcom/byazt/jzl/a;->isPreloadAll()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-static {p0, p1, v0}, Lcom/byazt/btt/ve;->tt(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/byazt/bzd/x;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    new-instance v1, Lcom/byazt/btt/ve$1;

    const-string v2, "csj_vPreload"

    invoke-direct {v1, v2, p0, p1, v0}, Lcom/byazt/btt/ve$1;-><init>(Ljava/lang/String;Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;)V

    invoke-static {v1}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    return-void

    .line 13
    :cond_2
    invoke-static {p0, p1, v0}, Lcom/byazt/btt/ve;->ve(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/byazt/btt/ve;->ve(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;)V

    return-void
.end method

.method private static c(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;JZ)V
    .locals 7

    const/16 v1, -0x3e8

    if-eqz p5, :cond_0

    const/4 p5, -0x6

    const/4 v2, -0x6

    goto :goto_0

    :cond_0
    const/16 p5, -0x9

    const/16 v2, -0x9

    :goto_0
    const-string v3, "bridge is null"

    const/4 v4, 0x0

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, p3

    move-object v0, p0

    .line 15
    invoke-static/range {v0 .. v6}, Lcom/byazt/btt/ve;->c(Lcom/byazt/jzl/a;IILjava/lang/String;Lorg/json/JSONObject;J)V

    .line 16
    invoke-static {p0, p1, p2}, Lcom/byazt/btt/ve;->uj(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;)V

    return-void
.end method

.method private static c(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static tt(Lcom/byazt/jzl/a;)Lcom/byazt/fk/da;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getPlayerType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 3
    sget-object p0, Lcom/byazt/btt/ve;->tt:Lcom/byazt/fk/da;

    if-nez p0, :cond_1

    .line 4
    const-class p0, Lcom/byazt/btt/ve;

    monitor-enter p0

    .line 5
    :try_start_0
    sget-object v0, Lcom/byazt/btt/ve;->tt:Lcom/byazt/fk/da;

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lcom/byazt/btt/tt;->c()Lcom/byazt/dna/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/dna/h;->createVideoPreload()Lcom/byazt/fk/da;

    move-result-object v0

    sput-object v0, Lcom/byazt/btt/ve;->tt:Lcom/byazt/fk/da;

    .line 7
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lcom/byazt/btt/ve;->tt:Lcom/byazt/fk/da;

    return-object p0

    .line 9
    :cond_2
    sget-object p0, Lcom/byazt/btt/ve;->c:Lcom/byazt/fk/da;

    if-nez p0, :cond_4

    .line 10
    const-class p0, Lcom/byazt/btt/ve;

    monitor-enter p0

    .line 11
    :try_start_1
    sget-object v0, Lcom/byazt/btt/ve;->c:Lcom/byazt/fk/da;

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Lcom/byazt/yqr/c;

    invoke-direct {v0}, Lcom/byazt/yqr/c;-><init>()V

    sput-object v0, Lcom/byazt/btt/ve;->c:Lcom/byazt/fk/da;

    .line 13
    :cond_3
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 14
    :cond_4
    :goto_1
    sget-object p0, Lcom/byazt/btt/ve;->c:Lcom/byazt/fk/da;

    return-object p0
.end method

.method private static tt(ILcom/byazt/whk/i;Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;JLcom/byazt/ete/ic;)Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 13

    move-object v0, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    const/4 v10, 0x0

    if-nez p1, :cond_0

    const/16 v2, -0x3e8

    const/4 v3, -0x2

    :try_start_0
    const-string v4, "resultModel is null"

    const/4 v5, 0x0

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, p4

    move-object v1, p2

    .line 19
    invoke-static/range {v1 .. v7}, Lcom/byazt/btt/ve;->c(Lcom/byazt/jzl/a;IILjava/lang/String;Lorg/json/JSONObject;J)V

    .line 20
    invoke-static {p2, v8, v9}, Lcom/byazt/btt/ve;->uj(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;)V

    return-object v10

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/whk/i;->ve()Lcom/byazt/yxi/tt;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v2, -0x3e8

    const/4 v3, -0x3

    const-string v4, "result is null"

    const/4 v5, 0x0

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, p4

    move-object v1, p2

    .line 23
    invoke-static/range {v1 .. v7}, Lcom/byazt/btt/ve;->c(Lcom/byazt/jzl/a;IILjava/lang/String;Lorg/json/JSONObject;J)V

    .line 24
    invoke-static {p2, v8, v9}, Lcom/byazt/btt/ve;->uj(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;)V

    return-object v10

    .line 25
    :cond_1
    invoke-virtual {v1}, Lcom/byazt/yxi/tt;->uj()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v2

    if-nez v2, :cond_2

    const/16 v2, -0x3e8

    const/4 v3, -0x4

    const-string v4, "value is null"

    const/4 v5, 0x0

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, p4

    move-object v1, p2

    .line 27
    invoke-static/range {v1 .. v7}, Lcom/byazt/btt/ve;->c(Lcom/byazt/jzl/a;IILjava/lang/String;Lorg/json/JSONObject;J)V

    .line 28
    invoke-static {p2, v8, v9}, Lcom/byazt/btt/ve;->uj(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;)V

    return-object v10

    :cond_2
    const/4 v3, 0x2

    .line 29
    invoke-static {v2, v3}, Lcom/byazt/whk/da;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x5

    .line 30
    invoke-interface {v2, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->stringValue(I)Ljava/lang/String;

    const/4 v4, 0x3

    .line 31
    invoke-static {v2, v4}, Lcom/byazt/whk/da;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;I)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v4, 0x4

    .line 32
    invoke-static {v2, v4}, Lcom/byazt/whk/da;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 33
    invoke-virtual {v1}, Lcom/byazt/yxi/tt;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    const-string v4, "pitaya_cache_size"

    const/4 v6, -0x1

    .line 34
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "pitaya_code"

    const/16 v7, 0xc8

    .line 35
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "success"

    .line 36
    invoke-static {p2, v3, v4, v6}, Lcom/byazt/whk/u;->c(Lcom/byazt/jzl/a;Lorg/json/JSONObject;II)V

    move v3, v4

    move v4, v6

    goto :goto_0

    :cond_3
    const/16 v3, -0x3e8

    const/4 v4, -0x5

    move-object v7, v10

    .line 37
    :goto_0
    invoke-virtual {v1}, Lcom/byazt/yxi/tt;->c()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    .line 38
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 39
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v11, v1, p4

    move-object v1, p2

    move v2, v3

    move v3, v4

    move-object v4, v7

    move-wide v6, v11

    invoke-static/range {v1 .. v7}, Lcom/byazt/btt/ve;->c(Lcom/byazt/jzl/a;IILjava/lang/String;Lorg/json/JSONObject;J)V

    .line 40
    invoke-static {p2, v8, v9}, Lcom/byazt/btt/ve;->uj(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_1
    return-object v10
.end method

.method private static tt(Lcom/byazt/jzl/a;Lcom/byazt/ete/ic;)V
    .locals 10

    .line 42
    invoke-static {p0}, Lcom/byazt/btt/ve;->ve(Lcom/byazt/jzl/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->isPreloadAll()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getVideoSize()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getPreloadSize()I

    move-result v0

    int-to-long v0, v0

    .line 44
    :goto_0
    invoke-static {p1}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 45
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getPlayerType()I

    move-result v6

    const-wide/16 v8, -0x1

    move-object v3, p0

    move-object v7, p1

    .line 46
    invoke-static/range {v3 .. v9}, Lcom/byazt/sw/uj;->c(Lcom/byazt/jzl/a;Ljava/lang/String;IILcom/byazt/ete/ic;J)Lorg/json/JSONObject;

    move-result-object v3

    .line 47
    new-instance v4, Lcom/byazt/afw/t;

    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0, v1}, Lcom/byazt/afw/t;-><init>(Ljava/lang/String;J)V

    .line 48
    invoke-virtual {v4, p0}, Lcom/byazt/afw/c;->c(Lcom/byazt/jzl/a;)V

    .line 49
    new-instance p0, Lcom/byazt/afw/tt;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/byazt/afw/tt;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/afw/uj;)V

    .line 50
    invoke-static {p0}, Lcom/byazt/sw/uj;->c(Lcom/byazt/afw/tt;)V

    return-void
.end method

.method private static tt(Lcom/byazt/jzl/a;Lcom/byazt/ete/ic;JILjava/lang/String;)V
    .locals 8

    .line 51
    invoke-static {p0}, Lcom/byazt/btt/ve;->ve(Lcom/byazt/jzl/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-static {p1}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 53
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getPlayerType()I

    move-result v4

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v5, p1

    .line 54
    invoke-static/range {v1 .. v7}, Lcom/byazt/sw/uj;->c(Lcom/byazt/jzl/a;Ljava/lang/String;IILcom/byazt/ete/ic;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 55
    new-instance v2, Lcom/byazt/afw/sl;

    invoke-direct {v2}, Lcom/byazt/afw/sl;-><init>()V

    .line 56
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/afw/sl;->c(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getPreloadSize()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/byazt/afw/sl;->c(J)V

    .line 58
    invoke-virtual {v2, p2, p3}, Lcom/byazt/afw/sl;->tt(J)V

    .line 59
    invoke-virtual {v2, p4}, Lcom/byazt/afw/sl;->c(I)V

    .line 60
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, ""

    if-eqz p2, :cond_1

    move-object p5, p3

    :cond_1
    invoke-virtual {v2, p5}, Lcom/byazt/afw/sl;->tt(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2, p3}, Lcom/byazt/afw/sl;->ve(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2, p0}, Lcom/byazt/afw/c;->c(Lcom/byazt/jzl/a;)V

    .line 63
    new-instance p0, Lcom/byazt/afw/tt;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/byazt/afw/tt;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/afw/uj;)V

    .line 64
    invoke-static {p0}, Lcom/byazt/sw/uj;->ve(Lcom/byazt/afw/tt;)V

    return-void
.end method

.method private static tt(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, -0x64

    .line 15
    invoke-interface {p1, p0, v0}, Lcom/byazt/fk/da$c;->onVideoPreloadSuccess(Lcom/byazt/fk/u;I)V

    :cond_0
    if-eqz p2, :cond_2

    .line 16
    invoke-static {p2}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result p1

    invoke-static {p1}, Lcom/byazt/btt/ve;->tt(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result p1

    invoke-static {p1}, Lcom/byazt/btt/ve;->c(I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-wide/16 v0, 0x0

    .line 17
    invoke-static {p0, p2, v0, v1}, Lcom/byazt/btt/ve;->c(Lcom/byazt/jzl/a;Lcom/byazt/ete/ic;J)V

    :cond_2
    return-void
.end method

.method private static tt(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static uj(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;)V
    .locals 11

    .line 1
    const/16 v0, 0x1770

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/byazt/jzl/a;->setConnectTimeOutMills(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/byazt/jzl/a;->setReadTimeOutMills(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/byazt/jzl/a;->setWriteTimeOutMills(I)V

    .line 10
    .line 11
    .line 12
    if-eqz p2, :cond_2

    .line 13
    .line 14
    invoke-static {p2}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getPitayaCode()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/16 v1, 0x190

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    invoke-static {p0, p2}, Lcom/byazt/btt/ve;->ve(Lcom/byazt/jzl/a;Lcom/byazt/ete/ic;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-static {p0, p2}, Lcom/byazt/btt/ve;->tt(Lcom/byazt/jzl/a;Lcom/byazt/ete/ic;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    new-instance v8, Lcom/byazt/btt/ve$3;

    .line 41
    .line 42
    move-object v2, v8

    .line 43
    move-object v3, p1

    .line 44
    move-object v4, p2

    .line 45
    move-wide v5, v0

    .line 46
    move-object v7, p0

    .line 47
    invoke-direct/range {v2 .. v7}, Lcom/byazt/btt/ve$3;-><init>(Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;JLcom/byazt/jzl/a;)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getPlayerType()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 57
    .line 58
    const/16 v3, 0x17

    .line 59
    .line 60
    if-ge v2, v3, :cond_3

    .line 61
    .line 62
    invoke-static {}, Lcom/byazt/ns/c;->c()Lcom/byazt/ns/c;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2, p0}, Lcom/byazt/ns/c;->c(Lcom/byazt/jzl/a;)Z

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    invoke-static {p0}, Lcom/byazt/btt/ve;->tt(Lcom/byazt/jzl/a;)Lcom/byazt/fk/da;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {v2, v3, p0, v8}, Lcom/byazt/fk/da;->execVideoPreload(Landroid/content/Context;Lcom/byazt/fk/u;Lcom/byazt/fk/da$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catch_0
    move-exception v2

    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    const/4 v3, 0x2

    .line 86
    new-array v3, v3, [Ljava/lang/Object;

    .line 87
    .line 88
    const/4 v4, 0x0

    .line 89
    const-string v5, "pit exception onVideoPreloadFail: "

    .line 90
    .line 91
    aput-object v5, v3, v4

    .line 92
    .line 93
    const/4 v4, 0x1

    .line 94
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    aput-object v5, v3, v4

    .line 99
    .line 100
    const-string v4, "VideoPreloadUtils"

    .line 101
    .line 102
    invoke-static {v4, v3}, Lcom/byazt/nr/m;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    const/4 v3, -0x1

    .line 106
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-interface {p1, p0, v3, v4}, Lcom/byazt/fk/da$c;->onVideoPreloadFail(Lcom/byazt/fk/u;ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    if-eqz p2, :cond_5

    .line 114
    .line 115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 116
    .line 117
    .line 118
    move-result-wide v3

    .line 119
    sub-long v7, v3, v0

    .line 120
    .line 121
    const/4 v9, -0x1

    .line 122
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    move-object v5, p0

    .line 127
    move-object v6, p2

    .line 128
    invoke-static/range {v5 .. v10}, Lcom/byazt/btt/ve;->tt(Lcom/byazt/jzl/a;Lcom/byazt/ete/ic;JILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method private static ve(Lcom/byazt/jzl/a;Lcom/byazt/ete/ic;)V
    .locals 8

    .line 18
    invoke-static {p0}, Lcom/byazt/btt/ve;->ve(Lcom/byazt/jzl/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-static {p1}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 20
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getPlayerType()I

    move-result v4

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v5, p1

    .line 21
    invoke-static/range {v1 .. v7}, Lcom/byazt/sw/uj;->c(Lcom/byazt/jzl/a;Ljava/lang/String;IILcom/byazt/ete/ic;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 22
    new-instance v2, Lcom/byazt/afw/da;

    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getPreloadSize()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v2, v3, v4, v5}, Lcom/byazt/afw/da;-><init>(Ljava/lang/String;J)V

    .line 23
    invoke-virtual {v2, p0}, Lcom/byazt/afw/c;->c(Lcom/byazt/jzl/a;)V

    .line 24
    new-instance p0, Lcom/byazt/afw/tt;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/byazt/afw/tt;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/afw/uj;)V

    .line 25
    invoke-static {p0}, Lcom/byazt/sw/uj;->uj(Lcom/byazt/afw/tt;)V

    return-void
.end method

.method private static ve(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;)V
    .locals 11

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p2}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {}, Lcom/byazt/whk/da;->c()Z

    move-result v6

    .line 4
    invoke-static {v0}, Lcom/byazt/btt/ve;->tt(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v6, :cond_3

    const/16 v0, 0x2713

    .line 5
    invoke-static {v0}, Lcom/byazt/omf/gt;->c(I)Ljava/util/function/Function;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, v4

    move v5, v6

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/byazt/btt/ve;->c(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;JZ)V

    return-void

    :cond_1
    const-string v0, "pitaya"

    .line 7
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/byazt/whk/ve;

    if-eqz v7, :cond_2

    .line 8
    invoke-interface {v7}, Lcom/byazt/whk/ve;->isPitayaInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Lcom/byazt/whk/u;

    invoke-direct {v0}, Lcom/byazt/whk/u;-><init>()V

    .line 10
    invoke-virtual {v0, p0}, Lcom/byazt/whk/u;->c(Lcom/byazt/jzl/a;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "video_cache"

    .line 11
    new-instance v10, Lcom/byazt/btt/ve$2;

    move-object v0, v10

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/byazt/btt/ve$2;-><init>(Lorg/json/JSONObject;Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;JLcom/byazt/ete/ic;)V

    invoke-interface {v7, v9, v8, v10}, Lcom/byazt/whk/ve;->runTask(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/function/Function;)V

    return-void

    :cond_2
    const/16 v1, -0x3e8

    const/4 v2, -0x8

    const-string v3, "not init"

    const/4 v6, 0x0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    move-object v0, p0

    move-object v4, v6

    move-wide v5, v7

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/byazt/btt/ve;->c(Lcom/byazt/jzl/a;IILjava/lang/String;Lorg/json/JSONObject;J)V

    .line 14
    invoke-static {p0, p1, p2}, Lcom/byazt/btt/ve;->uj(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;)V

    return-void

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, v4

    move v5, v6

    .line 15
    invoke-static/range {v0 .. v5}, Lcom/byazt/btt/ve;->c(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;Lcom/byazt/ete/ic;JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "pit predict error:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    return-void
.end method

.method private static ve(Lcom/byazt/jzl/a;)Z
    .locals 2

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getPlayerType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
