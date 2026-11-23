.class public Lcom/byazt/ng/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vb/sl;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf8,
        0x2a
    }
.end annotation


# static fields
.field public static final tt:Landroid/os/Handler;

.field public static final ve:Ljava/lang/Runnable;


# instance fields
.field public c:Lcom/byazt/le/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/le/c<",
            "Lcom/byazt/ng/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/eu/n;->tt()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/byazt/ng/i;->tt:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v0, Lcom/byazt/ng/i$2;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/byazt/ng/i$2;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/byazt/ng/i;->ve:Ljava/lang/Runnable;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ng/i;Ljava/util/List;)Lcom/byazt/ng/n;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/ng/i;->c(Ljava/util/List;)Lcom/byazt/ng/n;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/util/List;)Lcom/byazt/ng/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/ng/c;",
            ">;)",
            "Lcom/byazt/ng/n;"
        }
    .end annotation

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ng/i;->c:Lcom/byazt/le/c;

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Lcom/byazt/bp/tt;->c()Lcom/byazt/le/c;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ng/i;->c:Lcom/byazt/le/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 29
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/byazt/ng/i;->c:Lcom/byazt/le/c;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 30
    :cond_1
    invoke-interface {v0, p1}, Lcom/byazt/le/c;->c(Ljava/util/List;)Lcom/byazt/ng/n;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic c()V
    .locals 0

    .line 2
    invoke-static {}, Lcom/byazt/ng/i;->tt()V

    return-void
.end method

.method private c(Lorg/json/JSONObject;IJILorg/json/JSONObject;)V
    .locals 3

    const-string v0, "event_extra"

    if-eqz p1, :cond_1

    .line 19
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 21
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "size"

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "batchId"

    .line 23
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "batchIndex"

    .line 24
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "preEventId"

    if-eqz p6, :cond_0

    const-string p3, "event_id"

    .line 25
    invoke-virtual {p6, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, "-1"

    :goto_0
    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private static tt()V
    .locals 4

    .line 1
    sget-object v0, Lcom/byazt/ng/i;->tt:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    sget-object v1, Lcom/byazt/ng/i;->ve:Ljava/lang/Runnable;

    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/qe/ve;->nb()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private tt(Lorg/json/JSONObject;IJILorg/json/JSONObject;)V
    .locals 8

    const-string v0, "params"

    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p6, :cond_0

    .line 4
    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v7, p1

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/byazt/ng/i;->c(Lorg/json/JSONObject;IJILorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method


# virtual methods
.method public c(Ljava/util/List;Lcom/byazt/vb/da;)V
    .locals 15
    .param p2    # Lcom/byazt/vb/da;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;",
            "Lcom/byazt/vb/da;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    if-eqz v0, :cond_2

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v8, v3

    const/4 v12, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/byazt/vb/tt;

    .line 7
    invoke-interface {v13}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    move-result-object v14

    .line 8
    invoke-interface {v13}, Lcom/byazt/vb/tt;->n()B

    move-result v2

    .line 9
    invoke-interface {v13}, Lcom/byazt/vb/tt;->uj()B

    move-result v3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    const/4 v2, 0x3

    if-ne v3, v2, :cond_0

    .line 10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    move-object v2, p0

    move-object v3, v14

    move-wide v5, v9

    move v7, v12

    invoke-direct/range {v2 .. v8}, Lcom/byazt/ng/i;->tt(Lorg/json/JSONObject;IJILorg/json/JSONObject;)V

    .line 11
    new-instance v2, Lcom/byazt/ng/sp;

    invoke-interface {v13}, Lcom/byazt/vb/tt;->ve()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v14}, Lcom/byazt/ng/sp;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 12
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "not_v3"

    .line 14
    invoke-virtual {v2, v3, v14}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "batchId"

    .line 15
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "batchIndex"

    .line 16
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    move-object v8, v14

    goto :goto_0

    .line 17
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 18
    invoke-static {}, Lcom/byazt/eu/n;->sp()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/byazt/ng/i$1;

    move-object v4, p0

    move-object/from16 v5, p2

    invoke-direct {v3, p0, v1, v5, v0}, Lcom/byazt/ng/i$1;-><init>(Lcom/byazt/ng/i;Ljava/util/List;Lcom/byazt/vb/da;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    move-object v4, p0

    :goto_2
    return-void
.end method
