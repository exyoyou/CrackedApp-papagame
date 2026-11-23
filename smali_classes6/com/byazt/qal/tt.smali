.class public Lcom/byazt/qal/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/qal/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5cc,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/byazt/qal/tt;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/byazt/qal/c;"
    }
.end annotation


# instance fields
.field public a:J

.field public c:Ljava/lang/String;

.field public da:Ljava/lang/String;

.field public i:I

.field public n:Ljava/lang/String;

.field public sl:Ljava/lang/String;

.field public sp:I

.field public t:Ljava/lang/String;

.field public tt:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public yp:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/byazt/omf/p;->n:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/qal/tt;->uj:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, 0x3e8

    .line 13
    .line 14
    div-long/2addr v0, v2

    .line 15
    iput-wide v0, p0, Lcom/byazt/qal/tt;->a:J

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/byazt/qal/tt;->sp:I

    .line 19
    .line 20
    iput v0, p0, Lcom/byazt/qal/tt;->i:I

    .line 21
    .line 22
    return-void
.end method

.method private nu()Lorg/json/JSONObject;
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "device_info_new"

    .line 7
    .line 8
    invoke-static {v1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/byazt/dna/u;

    .line 13
    .line 14
    const-string v2, "embed_applog"

    .line 15
    .line 16
    invoke-static {v2}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/byazt/dna/ve;

    .line 21
    .line 22
    const-string v3, "os"

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/byazt/qh/tt;->ve(Lorg/json/JSONObject;)V

    .line 29
    .line 30
    .line 31
    const-string v3, "oaid"

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-interface {v2, v4}, Lcom/byazt/dna/ve;->getOAID(Z)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v3, "model"

    .line 42
    .line 43
    invoke-interface {v1}, Lcom/byazt/dna/u;->getDeviceModel()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    const-string v3, "android_id"

    .line 51
    .line 52
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->tt()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    const-string v3, "vendor"

    .line 60
    .line 61
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    const-string v3, "package_name"

    .line 67
    .line 68
    invoke-static {}, Lcom/byazt/aas/nb;->x()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    const-string v3, "ua"

    .line 76
    .line 77
    invoke-interface {v1, v4}, Lcom/byazt/dna/u;->getWebViewUA(Z)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    const-string v1, "applog_did"

    .line 85
    .line 86
    invoke-interface {v2}, Lcom/byazt/dna/ve;->getDid()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    const-string v1, "ip"

    .line 94
    .line 95
    invoke-static {}, Lcom/byazt/aas/my;->c()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    :catch_0
    return-object v0
.end method

.method private rh()Lcom/byazt/qal/tt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public static tt()Lcom/byazt/qal/tt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/byazt/qal/tt<",
            "Lcom/byazt/qal/tt;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/qal/tt;

    invoke-direct {v0}, Lcom/byazt/qal/tt;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/byazt/qal/tt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/byazt/qal/tt;->x:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/byazt/qal/tt;->rh()Lcom/byazt/qal/tt;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qal/tt;->uj:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Lcom/byazt/qal/tt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 44
    iput p1, p0, Lcom/byazt/qal/tt;->sp:I

    .line 45
    invoke-direct {p0}, Lcom/byazt/qal/tt;->rh()Lcom/byazt/qal/tt;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lcom/byazt/qal/tt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 42
    iput-wide p1, p0, Lcom/byazt/qal/tt;->a:J

    .line 43
    invoke-direct {p0}, Lcom/byazt/qal/tt;->rh()Lcom/byazt/qal/tt;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/qal/tt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/byazt/qal/tt;->c:Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Lcom/byazt/qal/tt;->rh()Lcom/byazt/qal/tt;

    move-result-object p1

    return-object p1
.end method

.method public c()Lorg/json/JSONObject;
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "type"

    .line 3
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "rit"

    .line 5
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "creative_id"

    .line 7
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ad_sdk_version"

    .line 9
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "app_version"

    if-nez v1, :cond_4

    .line 11
    :try_start_1
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {}, Lcom/byazt/aas/nb;->da()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->i()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    const-string v1, "timestamp"

    .line 14
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->i()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->da()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "adtype"

    .line 16
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->da()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    :cond_6
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->sl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "req_id"

    .line 18
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->sl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const-string v1, "error_code"

    .line 19
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->t()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "error_msg"

    .line 21
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    :cond_8
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->yp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "extra"

    .line 23
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->yp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    :cond_9
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "image_url"

    .line 25
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    :cond_a
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->ve()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "event_extra"

    .line 27
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->ve()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    :cond_b
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->sp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "duration"

    .line 29
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->sp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    :cond_c
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/omf/x;->rl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "appid"

    .line 31
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/omf/x;->rl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    :cond_d
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "ad_info"

    .line 33
    invoke-virtual {p0}, Lcom/byazt/qal/tt;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    const-string v1, "plugin_version"

    const-string v2, "7.6.1.1"

    .line 34
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_plugin"

    .line 35
    invoke-static {}, Lcom/byazt/omf/p;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "os_api"

    .line 36
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "conn_type"

    .line 37
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/nr/rh;->tt(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 38
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_1
    :try_start_2
    const-string v1, "device_info"

    .line 39
    invoke-direct {p0}, Lcom/byazt/qal/tt;->nu()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public da()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/qal/tt;->sp:I

    .line 2
    .line 3
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qal/tt;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/qal/tt;->a:J

    return-wide v0
.end method

.method public i(Ljava/lang/String;)Lcom/byazt/qal/tt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/byazt/qal/tt;->z:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/byazt/qal/tt;->rh()Lcom/byazt/qal/tt;

    move-result-object p1

    return-object p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qal/tt;->z:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n(Ljava/lang/String;)Lcom/byazt/qal/tt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/byazt/qal/tt;->yp:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/byazt/qal/tt;->rh()Lcom/byazt/qal/tt;

    move-result-object p1

    return-object p1
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qal/tt;->ve:Ljava/lang/String;

    return-object v0
.end method

.method public sl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qal/tt;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp(Ljava/lang/String;)Lcom/byazt/qal/tt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/byazt/qal/tt;->da:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/byazt/qal/tt;->rh()Lcom/byazt/qal/tt;

    move-result-object p1

    return-object p1
.end method

.method public sp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qal/tt;->yp:Ljava/lang/String;

    return-object v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/qal/tt;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public tt(I)Lcom/byazt/qal/tt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 4
    iput p1, p0, Lcom/byazt/qal/tt;->i:I

    .line 5
    invoke-direct {p0}, Lcom/byazt/qal/tt;->rh()Lcom/byazt/qal/tt;

    move-result-object p1

    return-object p1
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/qal/tt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/byazt/qal/tt;->u:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/byazt/qal/tt;->rh()Lcom/byazt/qal/tt;

    move-result-object p1

    return-object p1
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qal/tt;->da:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj(Ljava/lang/String;)Lcom/byazt/qal/tt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/byazt/qal/tt;->ve:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/byazt/qal/tt;->rh()Lcom/byazt/qal/tt;

    move-result-object p1

    return-object p1
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qal/tt;->tt:Ljava/lang/String;

    return-object v0
.end method

.method public ve(Ljava/lang/String;)Lcom/byazt/qal/tt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/byazt/qal/tt;->tt:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/byazt/qal/tt;->rh()Lcom/byazt/qal/tt;

    move-result-object p1

    return-object p1
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qal/tt;->u:Ljava/lang/String;

    return-object v0
.end method

.method public x(Ljava/lang/String;)Lcom/byazt/qal/tt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/byazt/qal/tt;->sl:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/byazt/qal/tt;->rh()Lcom/byazt/qal/tt;

    move-result-object p1

    return-object p1
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qal/tt;->n:Ljava/lang/String;

    return-object v0
.end method

.method public yp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qal/tt;->sl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qal/tt;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
