.class public Lcom/byazt/bt/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x112,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/bt/c$c;,
        Lcom/byazt/bt/c$tt;
    }
.end annotation


# static fields
.field public static c:J = 0x1b7740L

.field public static volatile n:J = 0x0L

.field public static tt:J = 0xea60L

.field public static volatile uj:J

.field public static volatile ve:Lcom/byazt/zuu/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic c(J)J
    .locals 0

    .line 1
    sput-wide p0, Lcom/byazt/bt/c;->uj:J

    return-wide p0
.end method

.method private static c(Landroid/location/LocationManager;)Landroid/location/Location;
    .locals 1

    const-string v0, "gps"

    .line 11
    invoke-static {p0, v0}, Lcom/byazt/bt/c;->c(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "network"

    .line 12
    invoke-static {p0, v0}, Lcom/byazt/bt/c;->c(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "passive"

    .line 13
    invoke-static {p0, v0}, Lcom/byazt/bt/c;->c(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static c(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
    .locals 2

    .line 14
    :try_start_0
    new-instance v0, Lcom/byazt/bt/c$tt;

    invoke-direct {v0, p0, p1}, Lcom/byazt/bt/c$tt;-><init>(Landroid/location/LocationManager;Ljava/lang/String;)V

    .line 15
    new-instance p0, Lcom/byazt/bwm/a;

    const/4 p1, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/byazt/bwm/a;-><init>(Ljava/util/concurrent/Callable;II)V

    const-string p1, "thread_service"

    .line 16
    invoke-static {p1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/dna/qp;

    invoke-interface {p1}, Lcom/byazt/dna/qp;->getIoExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/byazt/bt/c$3;

    const-string v1, "getLastKnownLocation"

    invoke-direct {v0, v1, p0}, Lcom/byazt/bt/c$3;-><init>(Ljava/lang/String;Lcom/byazt/bwm/a;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Landroid/location/LocationManager;
    .locals 1

    :try_start_0
    const-string v0, "location"

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Landroid/content/Context;ZLcom/byazt/dna/c;I)Lcom/byazt/fn/c;
    .locals 0

    .line 7
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/bt/c;->tt(Landroid/content/Context;ZLcom/byazt/dna/c;I)Lcom/byazt/zuu/c;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/byazt/dna/c;)Lcom/byazt/lz/uj;
    .locals 3

    .line 18
    :try_start_0
    new-instance v0, Lcom/byazt/bt/c$c;

    invoke-direct {v0, p0}, Lcom/byazt/bt/c$c;-><init>(Lcom/byazt/dna/c;)V

    .line 19
    new-instance p0, Lcom/byazt/bwm/a;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/byazt/bwm/a;-><init>(Ljava/util/concurrent/Callable;II)V

    const-string v0, "thread_service"

    .line 20
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/qp;

    invoke-interface {v0}, Lcom/byazt/dna/qp;->getIoExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/byazt/bt/c$4;

    const-string v2, "getLastKnownLocation"

    invoke-direct {v1, v2, p0}, Lcom/byazt/bt/c$4;-><init>(Ljava/lang/String;Lcom/byazt/bwm/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byazt/lz/uj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;Lcom/byazt/dna/c;)Lcom/byazt/zuu/c;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/byazt/bt/c;->tt(Landroid/content/Context;Lcom/byazt/dna/c;)Lcom/byazt/zuu/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/zuu/c;)Lcom/byazt/zuu/c;
    .locals 0

    .line 3
    sput-object p0, Lcom/byazt/bt/c;->ve:Lcom/byazt/zuu/c;

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/byazt/bt/c;->tt(Landroid/content/Context;Landroid/location/LocationManager;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/byazt/dna/c;I)V
    .locals 3

    const-string v0, "thread_service"

    .line 8
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/qp;

    invoke-interface {v0}, Lcom/byazt/dna/qp;->getIoExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/byazt/bt/c$1;

    const-string v2, "getLocation c"

    invoke-direct {v1, v2, p0, p1, p2}, Lcom/byazt/bt/c$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/byazt/dna/c;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
    .locals 0

    .line 5
    invoke-static {p0, p1}, Lcom/byazt/bt/c;->tt(Landroid/location/LocationManager;Landroid/location/LocationListener;)V

    return-void
.end method

.method private static c()Z
    .locals 5

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/byazt/bt/c;->n:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/byazt/bt/c;->c:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic c(Landroid/location/Location;)Z
    .locals 0

    .line 6
    invoke-static {p0}, Lcom/byazt/bt/c;->tt(Landroid/location/Location;)Z

    move-result p0

    return p0
.end method

.method private static tt(Landroid/content/Context;Lcom/byazt/dna/c;)Lcom/byazt/zuu/c;
    .locals 6

    .line 38
    invoke-interface {p1}, Lcom/byazt/dna/c;->getCustomController()Lcom/byazt/lz/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/lz/c;->isCanUseLocation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 39
    :try_start_0
    invoke-static {p1}, Lcom/byazt/bt/c;->c(Lcom/byazt/dna/c;)Lcom/byazt/lz/uj;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 40
    invoke-interface {p0}, Lcom/byazt/lz/uj;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    .line 41
    invoke-interface {p0}, Lcom/byazt/lz/uj;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    .line 42
    new-instance v0, Lcom/byazt/zuu/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p1, p0, v2, v3}, Lcom/byazt/zuu/c;-><init>(FFJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    return-object v1

    .line 43
    :cond_1
    invoke-static {p0}, Lcom/byazt/bt/c;->c(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 44
    :try_start_1
    invoke-static {p1}, Lcom/byazt/bt/c;->c(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 45
    invoke-static {v0}, Lcom/byazt/bt/c;->tt(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    new-instance v2, Lcom/byazt/zuu/c;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    double-to-float v3, v3

    .line 47
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/byazt/zuu/c;-><init>(FFJ)V

    move-object v1, v2

    .line 48
    :cond_2
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/byazt/bt/c$2;

    invoke-direct {v2, p0, p1}, Lcom/byazt/bt/c$2;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 49
    invoke-static {}, Lcom/byazt/nr/m;->ve()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 50
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static tt(Landroid/content/Context;ZLcom/byazt/dna/c;I)Lcom/byazt/zuu/c;
    .locals 9

    .line 1
    sget-object v0, Lcom/byazt/bt/c;->ve:Lcom/byazt/zuu/c;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/byazt/bt/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/byazt/bt/c;->tt()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_1
    sget-object p0, Lcom/byazt/bt/c;->ve:Lcom/byazt/zuu/c;

    return-object p0

    :cond_2
    const-wide/32 v0, 0x7fffffff

    const-string v2, "new_sdk_ad_location"

    .line 3
    invoke-static {v2, v0, v1, p2}, Lcom/byazt/bt/x;->tt(Ljava/lang/String;JLcom/byazt/dna/c;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/byazt/nr/c;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lbstime"

    const-string v3, "longitude"

    const-string v4, "latitude"

    if-eqz v0, :cond_4

    .line 5
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 10
    new-instance v5, Lcom/byazt/zuu/c;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct {v5, v0, v6, v7, v8}, Lcom/byazt/zuu/c;-><init>(FFJ)V

    sput-object v5, Lcom/byazt/bt/c;->ve:Lcom/byazt/zuu/c;

    .line 11
    sput-wide v7, Lcom/byazt/bt/c;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 13
    sget-object p0, Lcom/byazt/bt/c;->ve:Lcom/byazt/zuu/c;

    return-object p0

    .line 14
    :cond_4
    sget-object p1, Lcom/byazt/bt/c;->ve:Lcom/byazt/zuu/c;

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/byazt/bt/c;->c()Z

    move-result p1

    if-nez p1, :cond_5

    .line 15
    sget-object p0, Lcom/byazt/bt/c;->ve:Lcom/byazt/zuu/c;

    return-object p0

    .line 16
    :cond_5
    invoke-interface {p2}, Lcom/byazt/dna/c;->getCustomController()Lcom/byazt/lz/c;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Lcom/byazt/lz/c;->isCanUseLocation()Z

    move-result v0

    if-nez v0, :cond_8

    .line 18
    invoke-interface {p1}, Lcom/byazt/lz/c;->getTTLocation()Lcom/byazt/lz/uj;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/byazt/bt/c;->n:J

    .line 20
    new-instance p1, Lcom/byazt/zuu/c;

    invoke-interface {p0}, Lcom/byazt/lz/uj;->getLatitude()D

    move-result-wide v5

    double-to-float v0, v5

    .line 21
    invoke-interface {p0}, Lcom/byazt/lz/uj;->getLongitude()D

    move-result-wide v5

    double-to-float p0, v5

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {p1, v0, p0, v5, v6}, Lcom/byazt/zuu/c;-><init>(FFJ)V

    sput-object p1, Lcom/byazt/bt/c;->ve:Lcom/byazt/zuu/c;

    .line 23
    :cond_6
    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    sget-object p1, Lcom/byazt/bt/c;->ve:Lcom/byazt/zuu/c;

    if-eqz p1, :cond_7

    .line 25
    sget-object p1, Lcom/byazt/bt/c;->ve:Lcom/byazt/zuu/c;

    iget p1, p1, Lcom/byazt/zuu/c;->c:F

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    sget-object p1, Lcom/byazt/bt/c;->ve:Lcom/byazt/zuu/c;

    iget p1, p1, Lcom/byazt/zuu/c;->tt:F

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    sget-object p1, Lcom/byazt/bt/c;->ve:Lcom/byazt/zuu/c;

    iget-wide v3, p1, Lcom/byazt/zuu/c;->ve:J

    invoke-virtual {p0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 28
    :cond_7
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/byazt/nr/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-static {v2, p0, p2, p3}, Lcom/byazt/bt/x;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dna/c;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 31
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 32
    :goto_1
    sget-object p0, Lcom/byazt/bt/c;->ve:Lcom/byazt/zuu/c;

    return-object p0

    .line 33
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/byazt/bt/c;->n:J

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/byazt/bt/c;->uj:J

    .line 35
    invoke-static {p0, p2, p3}, Lcom/byazt/bt/c;->c(Landroid/content/Context;Lcom/byazt/dna/c;I)V

    .line 36
    sget-object p0, Lcom/byazt/bt/c;->ve:Lcom/byazt/zuu/c;

    return-object p0
.end method

.method private static tt(Landroid/location/LocationManager;)Ljava/lang/String;
    .locals 2

    const-string v0, "gps"

    .line 51
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "network"

    .line 52
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "passive"

    .line 53
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static tt(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 4

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance p0, Lcom/byazt/bt/c$5;

    invoke-direct {p0, p1}, Lcom/byazt/bt/c$5;-><init>(Landroid/location/LocationManager;)V

    .line 55
    :try_start_0
    invoke-static {p1}, Lcom/byazt/bt/c;->tt(Landroid/location/LocationManager;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 57
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p1, v0, p0, v1}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 58
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/bt/c$6;

    invoke-direct {v1, p1, p0}, Lcom/byazt/bt/c$6;-><init>(Landroid/location/LocationManager;Landroid/location/LocationListener;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 59
    invoke-static {}, Lcom/byazt/nr/m;->ve()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 61
    :cond_2
    invoke-static {p1, p0}, Lcom/byazt/bt/c;->tt(Landroid/location/LocationManager;Landroid/location/LocationListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static tt(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 63
    invoke-static {}, Lcom/byazt/nr/m;->ve()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 64
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static tt()Z
    .locals 5

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/byazt/bt/c;->uj:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/byazt/bt/c;->tt:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static tt(Landroid/location/Location;)Z
    .locals 5

    .line 65
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
