.class public Lcom/byazt/by/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x227,
        0x14
    }
.end annotation


# static fields
.field public static c:J = -0x1L

.field public static tt:Z

.field public static volatile uj:Ljava/lang/String;

.field public static ve:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/by/c;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method public static c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/byazt/aas/my;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;I)Lorg/json/JSONObject;
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/byazt/by/c;->tt(Landroid/content/Context;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static c()V
    .locals 5

    .line 2
    sget-wide v0, Lcom/byazt/by/c;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/byazt/by/c;->c:J

    return-void
.end method

.method private static c(ILjava/lang/Throwable;)V
    .locals 2

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p0

    const-string v1, "b_ad_req"

    invoke-virtual {p0, v1, v0, p1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic c(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/byazt/by/c;->tt(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Lorg/json/JSONObject;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 8
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/by/ve;->c(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    invoke-static {p0}, Lcom/byazt/by/c;->tt(Lorg/json/JSONObject;)V

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/by/uj;->z()Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "scheme_success_list"

    .line 12
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :cond_1
    sget-object p0, Lcom/byazt/by/c;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 14
    :cond_2
    sget-object p0, Lcom/byazt/by/c;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    new-instance p0, Lcom/byazt/by/c$1;

    const-string p1, "tt-scheme"

    invoke-direct {p0, p1}, Lcom/byazt/by/c$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V

    return-void

    .line 16
    :cond_3
    invoke-static {p0}, Lcom/byazt/by/c;->tt(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static c(I)[Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string p0, "device_info_new"

    .line 17
    invoke-static {p0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byazt/dna/u;

    invoke-static {}, Lcom/byazt/by/c;->tt()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, v0}, Lcom/byazt/dna/u;->getNewIpAddrs(Z)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    .line 18
    filled-new-array {p0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static tt(Landroid/content/Context;I)Lorg/json/JSONObject;
    .locals 18

    move/from16 v1, p1

    const-string v0, "device_score"

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "device_info_new"

    .line 6
    invoke-static {v3}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/dna/u;

    const-string v4, "embed_applog"

    .line 7
    invoke-static {v4}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/dna/ve;

    .line 8
    new-instance v5, Lcom/byazt/xgx/c;

    invoke-direct {v5}, Lcom/byazt/xgx/c;-><init>()V

    .line 9
    invoke-virtual {v5}, Lcom/byazt/xgx/c;->tt()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/byazt/xgx/c;->ve()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v6, 0x1

    .line 10
    :goto_1
    invoke-static {}, Lcom/byazt/by/c;->tt()Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 11
    :goto_2
    new-instance v10, Lcom/byazt/by/uj$tt;

    invoke-direct {v10}, Lcom/byazt/by/uj$tt;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, "imei"

    const-string v12, ""

    const/4 v13, 0x0

    if-eqz v9, :cond_4

    .line 12
    :try_start_1
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/byazt/by/uj;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 13
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object v14, v13

    :cond_3
    invoke-virtual {v2, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 14
    :cond_4
    invoke-virtual {v5}, Lcom/byazt/xgx/c;->c()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v14}, Lcom/byazt/aas/DeviceUtils;->c(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v14

    .line 15
    invoke-virtual {v2, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v14, :cond_5

    move-object v14, v12

    .line 16
    :cond_5
    invoke-virtual {v10, v14}, Lcom/byazt/by/uj$tt;->c(Ljava/lang/String;)Lcom/byazt/by/uj$tt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    const-string v11, "android_id"

    if-eqz v9, :cond_7

    .line 17
    :try_start_2
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v14

    invoke-virtual {v14}, Lcom/byazt/by/uj;->n()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 18
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object v14, v13

    :cond_6
    invoke-virtual {v2, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 19
    :cond_7
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->tt()Ljava/lang/String;

    move-result-object v14

    .line 20
    invoke-virtual {v2, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v14, :cond_8

    move-object v14, v12

    .line 21
    :cond_8
    invoke-virtual {v10, v14}, Lcom/byazt/by/uj$tt;->tt(Ljava/lang/String;)Lcom/byazt/by/uj$tt;

    :goto_4
    const-string v11, "uuid"

    .line 22
    invoke-static {}, Lcom/byazt/by/c;->ve()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v11, "ssid"

    if-eqz v9, :cond_a

    .line 23
    :try_start_3
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v14

    invoke-virtual {v14}, Lcom/byazt/by/uj;->a()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 24
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object v14, v13

    :cond_9
    invoke-virtual {v2, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    .line 25
    :cond_a
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v3, v14}, Lcom/byazt/dna/u;->getSSID(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v14

    .line 26
    invoke-virtual {v2, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v14, :cond_b

    move-object v14, v12

    .line 27
    :cond_b
    invoke-virtual {v10, v14}, Lcom/byazt/by/uj$tt;->ve(Ljava/lang/String;)Lcom/byazt/by/uj$tt;

    .line 28
    :goto_5
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/byazt/by/uj;->sp(I)Z

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v14, "wifi_mac"

    if-eqz v11, :cond_c

    .line 29
    :try_start_4
    invoke-interface {v3}, Lcom/byazt/dna/u;->getAsyncWifiMac()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 30
    :cond_c
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/byazt/dna/u;->getWifiMac(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    const-string v6, "imsi"

    if-eqz v9, :cond_e

    .line 31
    :try_start_5
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v11

    invoke-virtual {v11}, Lcom/byazt/by/uj;->sp()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 32
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_d

    move-object v11, v13

    :cond_d
    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    .line 33
    :cond_e
    invoke-virtual {v5}, Lcom/byazt/xgx/c;->c()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v3, v11}, Lcom/byazt/dna/u;->getImsi(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v11

    .line 34
    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v11, :cond_f

    move-object v11, v12

    .line 35
    :cond_f
    invoke-virtual {v10, v11}, Lcom/byazt/by/uj$tt;->uj(Ljava/lang/String;)Lcom/byazt/by/uj$tt;

    :goto_7
    const-string v6, "boot"

    .line 36
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "power_on_time"

    .line 37
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "rom_version"

    .line 38
    invoke-interface {v3}, Lcom/byazt/dna/u;->getRomInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "rom_new_version"

    .line 39
    invoke-static {}, Lcom/byazt/aas/zm;->yp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "sys_compiling_time"

    .line 40
    invoke-interface {v3}, Lcom/byazt/dna/u;->getCompilingTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "type"

    .line 41
    invoke-interface {v3, v9}, Lcom/byazt/dna/u;->getDeviceType(Z)I

    move-result v11

    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "os"

    .line 42
    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "os_api"

    .line 43
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "os_version"

    .line 44
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "vendor"

    .line 45
    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "model"

    .line 46
    invoke-interface {v3}, Lcom/byazt/dna/u;->getDeviceModel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "language"

    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "conn_type"

    .line 48
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->uj()I

    move-result v11

    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v6, "mac"

    if-eqz v9, :cond_11

    .line 49
    :try_start_6
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v11

    invoke-virtual {v11}, Lcom/byazt/by/uj;->yp()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_11

    .line 50
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    move-object v11, v13

    :cond_10
    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_8

    .line 51
    :cond_11
    invoke-virtual {v5}, Lcom/byazt/xgx/c;->tt()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/byazt/dna/u;->getMacAddress(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v5, :cond_12

    move-object v5, v12

    .line 53
    :cond_12
    invoke-virtual {v10, v5}, Lcom/byazt/by/uj$tt;->n(Ljava/lang/String;)Lcom/byazt/by/uj$tt;

    .line 54
    :goto_8
    invoke-static/range {p0 .. p0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;)[I

    move-result-object v5

    const-string v6, "screen_width"

    .line 55
    aget v11, v5, v7

    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "screen_height"

    .line 56
    aget v5, v5, v8

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "oaid"

    .line 57
    invoke-interface {v4, v9}, Lcom/byazt/dna/ve;->getOAID(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "oaid_source"

    .line 58
    invoke-static {}, Lcom/byazt/aas/gu;->c()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "free_space"

    .line 59
    sget-wide v14, Lcom/byazt/aas/i;->c:J

    invoke-virtual {v2, v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "locale_language"

    .line 60
    invoke-interface {v3}, Lcom/byazt/dna/u;->getLocalLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->n()F

    move-result v5

    const-string v6, "screen_bright"

    const/high16 v11, 0x41200000    # 10.0f

    mul-float v5, v5, v11

    float-to-double v14, v5

    .line 62
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    div-double v14, v14, v16

    invoke-virtual {v2, v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "is_screen_off"

    .line 63
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->c()Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_9

    :cond_13
    const/4 v7, 0x1

    :goto_9
    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "cpu_num"

    .line 64
    invoke-static {}, Lcom/byazt/aas/nb;->yp()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "cpu_max_freq"

    .line 65
    invoke-static {}, Lcom/byazt/aas/nb;->z()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "cpu_min_freq"

    .line 66
    invoke-static {}, Lcom/byazt/aas/nb;->m()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "battery_remaining_pct"

    .line 67
    invoke-static/range {p0 .. p0}, Lcom/byazt/aas/DeviceUtils$c;->tt(Landroid/content/Context;)F

    move-result v6

    float-to-int v6, v6

    .line 68
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "is_charging"

    .line 69
    invoke-static/range {p0 .. p0}, Lcom/byazt/aas/DeviceUtils$c;->c(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "total_mem"

    .line 70
    invoke-static {}, Lcom/byazt/aas/nb;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "total_space"

    .line 71
    invoke-static {}, Lcom/byazt/aas/nb;->nu()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "free_space_in"

    .line 72
    invoke-static {}, Lcom/byazt/aas/nb;->my()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sdcard_size"

    .line 73
    invoke-static {}, Lcom/byazt/aas/nb;->gt()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "rooted"

    .line 74
    invoke-static {}, Lcom/byazt/aas/nb;->qy()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/byazt/by/uj;->sp(I)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "enable_assisted_clicking"

    .line 76
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->a()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_14
    const-string v5, "mnc"

    if-eqz v9, :cond_16

    .line 77
    :try_start_7
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/by/uj;->x()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 78
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_15

    move-object v6, v13

    :cond_15
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_b

    .line 79
    :cond_16
    invoke-interface {v3}, Lcom/byazt/dna/u;->getMnc()Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v6, :cond_17

    goto :goto_a

    :cond_17
    move-object v6, v12

    .line 81
    :goto_a
    invoke-virtual {v10, v6}, Lcom/byazt/by/uj$tt;->a(Ljava/lang/String;)Lcom/byazt/by/uj$tt;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_b
    const-string v5, "mcc"

    if-eqz v9, :cond_19

    .line 82
    :try_start_8
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/by/uj;->i()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 83
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_18

    move-object v6, v13

    :cond_18
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    .line 84
    :cond_19
    invoke-interface {v3}, Lcom/byazt/dna/u;->getMcc()Ljava/lang/String;

    move-result-object v6

    .line 85
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v6, :cond_1a

    goto :goto_c

    :cond_1a
    move-object v6, v12

    .line 86
    :goto_c
    invoke-virtual {v10, v6}, Lcom/byazt/by/uj$tt;->sp(Ljava/lang/String;)Lcom/byazt/by/uj$tt;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_d
    const-string v5, "mnc_2"

    if-eqz v9, :cond_1c

    .line 87
    :try_start_9
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/by/uj;->da()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1c

    .line 88
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1b

    move-object v6, v13

    :cond_1b
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f

    .line 89
    :cond_1c
    invoke-interface {v3}, Lcom/byazt/dna/u;->getMnc2()Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v6, :cond_1d

    goto :goto_e

    :cond_1d
    move-object v6, v12

    .line 91
    :goto_e
    invoke-virtual {v10, v6}, Lcom/byazt/by/uj$tt;->x(Ljava/lang/String;)Lcom/byazt/by/uj$tt;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_f
    const-string v5, "mcc_2"

    if-eqz v9, :cond_1f

    .line 92
    :try_start_a
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/by/uj;->sl()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1f

    .line 93
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_10

    :cond_1e
    move-object v13, v6

    :goto_10
    invoke-virtual {v2, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_12

    .line 94
    :cond_1f
    invoke-interface {v3}, Lcom/byazt/dna/u;->getMcc2()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v3, :cond_20

    goto :goto_11

    :cond_20
    move-object v3, v12

    .line 96
    :goto_11
    invoke-virtual {v10, v3}, Lcom/byazt/by/uj$tt;->i(Ljava/lang/String;)Lcom/byazt/by/uj$tt;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_12
    const-string v3, "download_channel"

    if-eqz v9, :cond_21

    .line 97
    :try_start_b
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/by/uj;->t()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 98
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_13

    .line 99
    :cond_21
    invoke-static {}, Lcom/byazt/fh/c;->i()Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v5, :cond_22

    move-object v12, v5

    .line 101
    :cond_22
    invoke-virtual {v10, v12}, Lcom/byazt/by/uj$tt;->da(Ljava/lang/String;)Lcom/byazt/by/uj$tt;

    .line 102
    :goto_13
    invoke-virtual {v10}, Lcom/byazt/by/uj$tt;->c()V

    .line 103
    invoke-static {}, Lcom/byazt/ml/c;->c()Ljava/lang/String;

    move-result-object v3

    const-string v5, "is_app_log_con"

    .line 104
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string v3, "applog_did"

    if-eqz v9, :cond_23

    .line 105
    :try_start_c
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/by/uj;->u()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 106
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_14

    .line 107
    :cond_23
    invoke-interface {v4}, Lcom/byazt/dna/ve;->getDid()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    :goto_14
    invoke-static {}, Lcom/byazt/lkt/c;->tt()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sec_did"

    .line 110
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->i()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_24

    const-string v5, "client_global_did"

    .line 112
    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_24
    const-string v3, "sys_vol"

    .line 113
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->da()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    invoke-static {}, Lcom/byazt/aas/gr;->da()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    const-string v4, "ud"

    .line 115
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 116
    :cond_25
    :try_start_d
    invoke-static {}, Lcom/byazt/whk/c;->c()Lcom/byazt/whk/c;

    move-result-object v3

    const-string v4, "DeviceRate"

    const-string v5, "bytebench_value"

    invoke-static {}, Lcom/byazt/vxy/c;->uj()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/byazt/whk/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 117
    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_15

    :catch_0
    const/4 v3, -0x1

    .line 118
    :try_start_e
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    :goto_15
    invoke-static {v2}, Lcom/byazt/aas/DeviceUtils;->c(Lorg/json/JSONObject;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_16

    :catchall_0
    move-exception v0

    .line 120
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 121
    invoke-static {v1, v0}, Lcom/byazt/by/c;->c(ILjava/lang/Throwable;)V

    :goto_16
    return-object v2
.end method

.method private static tt(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 122
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->o()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 123
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_6

    const-wide/32 v1, 0xf731400

    .line 124
    invoke-static {v1, v2}, Lcom/byazt/aas/yv;->c(J)Ljava/util/Map;

    move-result-object v1

    .line 125
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 126
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 127
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 129
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 130
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 131
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    .line 135
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "scheme_success_list"

    .line 136
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    if-eqz p0, :cond_4

    .line 137
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "scheme_fail_list"

    .line 138
    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    if-nez p0, :cond_5

    .line 139
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/byazt/by/uj;->c(Lorg/json/JSONArray;)V

    return-void

    .line 140
    :cond_5
    new-instance p0, Lcom/byazt/by/c$2;

    const-string v0, "tt-scheme-save"

    invoke-direct {p0, v0, v2}, Lcom/byazt/by/c$2;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    invoke-static {p0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V

    :cond_6
    return-void
.end method

.method public static tt()Z
    .locals 7

    .line 1
    sget-boolean v0, Lcom/byazt/by/c;->tt:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-wide v2, Lcom/byazt/by/c;->c:J

    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/byazt/by/c;->c:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 4
    :goto_0
    sput-boolean v1, Lcom/byazt/by/c;->tt:Z

    return v1
.end method

.method public static synthetic uj()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/by/c;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static ve()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/by/c;->uj:Ljava/lang/String;

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
    sget-object v0, Lcom/byazt/by/c;->uj:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/by/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/byazt/by/c;->uj:Ljava/lang/String;

    .line 22
    .line 23
    return-object v0
.end method
