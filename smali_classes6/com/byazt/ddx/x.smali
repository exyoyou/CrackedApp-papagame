.class public Lcom/byazt/ddx/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1e3,
        0x47
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/ddx/x;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c()Lcom/byazt/ddx/x;
    .locals 2

    .line 2
    sget-object v0, Lcom/byazt/ddx/x;->c:Lcom/byazt/ddx/x;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/byazt/ddx/x;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/byazt/ddx/x;->c:Lcom/byazt/ddx/x;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/byazt/ddx/x;

    invoke-direct {v1}, Lcom/byazt/ddx/x;-><init>()V

    sput-object v1, Lcom/byazt/ddx/x;->c:Lcom/byazt/ddx/x;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/ddx/x;->c:Lcom/byazt/ddx/x;

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/byazt/ddx/x;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    return-void
.end method

.method private static tt(Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "save_jump_success_time"

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/it/c;->put(Ljava/lang/String;J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v1, "save_dpl_success_materialmeta"

    .line 35
    .line 36
    invoke-interface {v0, v1, p0}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p0, "save_jump_success_ad_tag"

    .line 40
    .line 41
    invoke-interface {v0, p0, p1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ete/ic;Ljava/lang/String;ZZLcom/byazt/ddx/i$c;)V
    .locals 11

    if-eqz p1, :cond_1

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Lcom/byazt/cl/c;->c(I)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 11
    new-instance v9, Lcom/byazt/ddx/i;

    invoke-direct {v9}, Lcom/byazt/ddx/i;-><init>()V

    new-instance v10, Lcom/byazt/ddx/x$1;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p5

    move v3, p3

    move-object v4, p2

    move v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/byazt/ddx/x$1;-><init>(Lcom/byazt/ddx/x;Lcom/byazt/ddx/i$c;ZLjava/lang/String;ZLcom/byazt/ete/ic;J)V

    invoke-virtual {v9, v10}, Lcom/byazt/ddx/i;->c(Lcom/byazt/ddx/i$c;)V

    :cond_1
    :goto_0
    return-void
.end method
