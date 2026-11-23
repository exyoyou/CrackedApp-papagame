.class public Lcom/byazt/ukr/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nv/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x439,
        0x43
    }
.end annotation


# static fields
.field public static final c:Lcom/byazt/ukr/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/ukr/u;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ukr/u;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/ukr/u;->c:Lcom/byazt/ukr/u;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Lcom/byazt/ee/c;Z)V
    .locals 8

    const-string p2, "event_extra"

    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/byazt/ee/c;->c()Lcom/byazt/qal/c;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/byazt/qal/c;->c()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 5
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 9
    :goto_0
    sget-object v1, Lcom/byazt/ukr/tt;->tt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const-string v2, "stats_index"

    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "sdk_session_id"

    .line 11
    sget-object v3, Lcom/byazt/ukr/tt;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "csj_type"

    .line 12
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/omf/x;->bx()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "create_ts"

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 14
    sget-object v2, Lcom/byazt/aas/nb;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "wrong_stats_url"

    .line 15
    sget-object v3, Lcom/byazt/aas/nb;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    :cond_2
    sget-object v2, Lcom/byazt/aas/nb;->da:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "wrong_applog_url"

    .line 17
    sget-object v3, Lcom/byazt/aas/nb;->da:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/byazt/whk/c;->c()Lcom/byazt/whk/c;

    move-result-object v2

    const-string v3, "DeviceRate"

    const-string v6, "bytebench_value"

    invoke-static {}, Lcom/byazt/vxy/c;->uj()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v6, v7}, Lcom/byazt/whk/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v6, "device_score"

    .line 19
    invoke-virtual {v0, v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    const-string v2, "abtest_version"

    .line 20
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/omf/x;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :catch_1
    :try_start_3
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/omf/x;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "first_of_two"

    .line 22
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    new-instance p2, Lcom/byazt/fo/c;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/byazt/fo/c;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 25
    invoke-virtual {p2, v4}, Lcom/byazt/fo/c;->ve(B)V

    .line 26
    sget-object v0, Lcom/byazt/ukr/tt;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    .line 27
    invoke-virtual {p2, v0}, Lcom/byazt/fo/c;->tt(B)V

    .line 28
    invoke-virtual {p2, v5}, Lcom/byazt/fo/c;->c(B)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x2

    .line 29
    invoke-virtual {p2, v0}, Lcom/byazt/fo/c;->tt(B)V

    .line 30
    invoke-virtual {p2, v5}, Lcom/byazt/fo/c;->c(B)V

    :goto_2
    const-string v0, "type"

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Lcom/byazt/ukr/tt;->c(Lcom/byazt/fo/c;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :cond_6
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ukr/u;Lcom/byazt/ee/c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/ukr/u;->c(Lcom/byazt/ee/c;Z)V

    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ee/c;Ljava/lang/String;Z)V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/ukr/u$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/byazt/ukr/u$1;-><init>(Lcom/byazt/ukr/u;Ljava/lang/String;ZLcom/byazt/ee/c;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->tt(Ljava/lang/Runnable;)V

    return-void
.end method
