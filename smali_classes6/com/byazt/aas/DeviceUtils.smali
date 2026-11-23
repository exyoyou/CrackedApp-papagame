.class public Lcom/byazt/aas/DeviceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0x995
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/aas/DeviceUtils$DeviceStatusBroadCastReceiver;,
        Lcom/byazt/aas/DeviceUtils$c;
    }
.end annotation


# static fields
.field public static volatile a:J = -0x1L

.field public static final c:Ljava/util/concurrent/atomic/AtomicLong;

.field public static volatile da:Landroid/content/BroadcastReceiver; = null

.field public static volatile i:Z = false

.field public static volatile n:J = 0x0L

.field public static volatile sl:Lcom/byazt/cb/c; = null

.field public static volatile sp:I = 0x0

.field public static t:Ljava/lang/String; = null

.field public static tt:I = 0x0

.field public static u:Ljava/lang/String; = null

.field public static volatile uj:I = -0x1

.field public static volatile ve:I = -0x1

.field public static volatile x:Z

.field public static yp:J

.field public static z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/aas/DeviceUtils;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    sput v0, Lcom/byazt/aas/DeviceUtils;->sp:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    sput-boolean v1, Lcom/byazt/aas/DeviceUtils;->x:Z

    .line 13
    .line 14
    sput-boolean v1, Lcom/byazt/aas/DeviceUtils;->i:Z

    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    sput-object v1, Lcom/byazt/aas/DeviceUtils;->t:Ljava/lang/String;

    .line 19
    .line 20
    sput-object v1, Lcom/byazt/aas/DeviceUtils;->u:Ljava/lang/String;

    .line 21
    .line 22
    sput v0, Lcom/byazt/aas/DeviceUtils;->tt:I

    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    sput-wide v0, Lcom/byazt/aas/DeviceUtils;->yp:J

    .line 27
    .line 28
    sput-wide v0, Lcom/byazt/aas/DeviceUtils;->z:J

    .line 29
    .line 30
    return-void
.end method

.method public static a()I
    .locals 6

    .line 1
    sget v0, Lcom/byazt/aas/DeviceUtils;->uj:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    sget-wide v2, Lcom/byazt/aas/DeviceUtils;->n:J

    .line 7
    .line 8
    const-wide/32 v4, 0xea60

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v3, v4, v5}, Lcom/byazt/aas/DeviceUtils;->c(JJ)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget v0, Lcom/byazt/aas/DeviceUtils;->uj:I

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "accessibility"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    return v1

    .line 35
    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sput v0, Lcom/byazt/aas/DeviceUtils;->uj:I

    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    sput-wide v0, Lcom/byazt/aas/DeviceUtils;->n:J

    .line 46
    .line 47
    sget v0, Lcom/byazt/aas/DeviceUtils;->uj:I

    .line 48
    .line 49
    return v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    const-string v0, "device_info_new"

    .line 16
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    invoke-interface {v0, p0}, Lcom/byazt/dna/u;->getNetworkSignalType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    const-string v0, "device_info_new"

    .line 2
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    invoke-interface {v0, p0}, Lcom/byazt/dna/u;->getImei(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/byazt/aas/DeviceUtils;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    sput-object p0, Lcom/byazt/aas/DeviceUtils;->u:Ljava/lang/String;

    const/4 v0, 0x6

    .line 5
    invoke-static {v0, p0}, Lcom/byazt/zlb/ve;->tt(ILjava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public static c(IZ)Lorg/json/JSONObject;
    .locals 4

    .line 18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appid"

    .line 19
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/omf/x;->rl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 20
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/omf/x;->qy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-static {v0}, Lcom/byazt/aas/DeviceUtils;->tt(Lorg/json/JSONObject;)V

    .line 22
    invoke-static {v0}, Lcom/byazt/qh/tt;->tt(Lorg/json/JSONObject;)V

    const-string v1, "is_paid_app"

    .line 23
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/omf/x;->gu()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 24
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/byazt/by/uj;->sp(I)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "network_speed"

    .line 25
    invoke-static {}, Lcom/byazt/hy/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p0, "apk_sign"

    .line 26
    invoke-static {}, Lcom/byazt/fh/c;->sl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "useful_open_sdk"

    .line 27
    invoke-static {}, Lcom/byazt/wdw/uj;->ve()Lcom/byazt/wdw/uj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/wdw/uj;->tt()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "real_app_name"

    .line 28
    invoke-static {}, Lcom/byazt/fh/c;->da()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "app_cold_startup_time"

    .line 29
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/qw/ve;->c()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "sdk_init_timestamp"

    .line 30
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/qw/ve;->tt()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    .line 31
    sget-object p0, Lcom/byazt/aas/DeviceUtils;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p0

    const-string v1, "session_ad_index"

    .line 32
    invoke-virtual {v0, v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 33
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/ogz/sl;->ri()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 34
    invoke-static {}, Lcom/byazt/qw/c;->ve()J

    move-result-wide p0

    .line 35
    invoke-static {}, Lcom/byazt/qw/c;->uj()J

    move-result-wide v1

    const-string v3, "app_total_7_duration"

    add-long/2addr v1, p0

    .line 36
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "app_use_7_duration"

    .line 37
    invoke-virtual {v0, v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "start_session"

    .line 38
    invoke-static {}, Lcom/byazt/qw/c;->n()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static c(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    return-void

    .line 39
    :cond_0
    sget-wide v0, Lcom/byazt/aas/DeviceUtils;->a:J

    cmp-long v2, v0, p0

    if-nez v2, :cond_1

    return-void

    .line 40
    :cond_1
    sput-wide p0, Lcom/byazt/aas/DeviceUtils;->a:J

    .line 41
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v0

    const-string v1, "dev19"

    invoke-virtual {v0, v1, p0, p1}, Lcom/byazt/by/uj;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public static c(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/byazt/aas/sl;->tt()Z

    move-result v0

    const-string v1, "os_new"

    if-eqz v0, :cond_1

    const-string v0, "harmony"

    .line 8
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "harmonyos_api"

    .line 9
    invoke-static {}, Lcom/byazt/aas/sl;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "harmonyos_version"

    .line 10
    invoke-static {}, Lcom/byazt/aas/sl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "harmonyos_release_type"

    .line 11
    invoke-static {}, Lcom/byazt/aas/sl;->sp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "harmonyos_build_version"

    .line 12
    invoke-static {}, Lcom/byazt/aas/sl;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/aas/sl;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pure_mode"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const-string v0, "android"

    .line 14
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v0, "rom_name"

    .line 15
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public static c()Z
    .locals 1

    const-string v0, "device_info_new"

    .line 1
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    invoke-interface {v0}, Lcom/byazt/dna/u;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public static c(JJ)Z
    .locals 2

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    cmp-long p0, v0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 p0, p0, 0xf

    const/4 v1, 0x3

    if-lt p0, v1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public static da()I
    .locals 4

    .line 1
    sget v0, Lcom/byazt/aas/DeviceUtils;->sp:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/byazt/aas/DeviceUtils;->sp:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "audio"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/media/AudioManager;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    const/4 v2, 0x3

    .line 25
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {}, Lcom/byazt/qqc/ve;->c()Lcom/byazt/qqc/ve;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    int-to-float v3, v1

    .line 34
    invoke-virtual {v2, v3}, Lcom/byazt/qqc/ve;->tt(F)V

    .line 35
    .line 36
    .line 37
    sput v1, Lcom/byazt/aas/DeviceUtils;->sp:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    sget v0, Lcom/byazt/aas/DeviceUtils;->sp:I

    .line 40
    .line 41
    :catch_0
    return v0
.end method

.method public static i()J
    .locals 5

    .line 1
    sget-wide v0, Lcom/byazt/aas/DeviceUtils;->a:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    sget-wide v0, Lcom/byazt/aas/DeviceUtils;->a:J

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "dev19"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/by/uj;->tt(Ljava/lang/String;J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0
.end method

.method public static n()F
    .locals 1

    .line 1
    const-string v0, "device_info_new"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/dna/u;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/dna/u;->getScreenBright()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static sl()V
    .locals 2

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/byazt/aas/DeviceUtils;->x:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/byazt/aas/DeviceUtils;->da:Landroid/content/BroadcastReceiver;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/byazt/aas/DeviceUtils;->da:Landroid/content/BroadcastReceiver;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static sp()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lcom/byazt/aas/nb;->u()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "cpu_cnt"

    .line 16
    .line 17
    invoke-virtual {v1, v2, v0}, Lcom/byazt/by/uj;->c(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    sput v0, Lcom/byazt/aas/nb;->c:I

    .line 21
    .line 22
    invoke-static {}, Lcom/byazt/aas/nb;->u()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Lcom/byazt/aas/nb;->ve(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "cpu_max_freq"

    .line 35
    .line 36
    invoke-virtual {v1, v2, v0}, Lcom/byazt/by/uj;->c(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput v0, Lcom/byazt/aas/nb;->tt:I

    .line 40
    .line 41
    invoke-static {}, Lcom/byazt/aas/nb;->u()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {v0}, Lcom/byazt/aas/nb;->uj(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "cpu_min_freq"

    .line 54
    .line 55
    invoke-virtual {v1, v2, v0}, Lcom/byazt/by/uj;->c(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    sput v0, Lcom/byazt/aas/nb;->ve:I

    .line 59
    .line 60
    const-string v0, "MemTotal"

    .line 61
    .line 62
    invoke-static {v0}, Lcom/byazt/aas/nb;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "total_memory"

    .line 73
    .line 74
    invoke-virtual {v1, v2, v0}, Lcom/byazt/by/uj;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lcom/byazt/aas/nb;->uj:Ljava/lang/String;

    .line 78
    .line 79
    :cond_0
    invoke-static {}, Lcom/byazt/aas/nb;->rh()J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const-string v3, "internal_storage"

    .line 88
    .line 89
    invoke-virtual {v2, v3, v0, v1}, Lcom/byazt/by/uj;->c(Ljava/lang/String;J)V

    .line 90
    .line 91
    .line 92
    sput-wide v0, Lcom/byazt/aas/nb;->n:J

    .line 93
    .line 94
    invoke-static {}, Lcom/byazt/nr/nu;->c()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const-string v3, "free_storage"

    .line 103
    .line 104
    invoke-virtual {v2, v3, v0, v1}, Lcom/byazt/by/uj;->c(Ljava/lang/String;J)V

    .line 105
    .line 106
    .line 107
    sput-wide v0, Lcom/byazt/aas/nb;->a:J

    .line 108
    .line 109
    invoke-static {}, Lcom/byazt/aas/nb;->rl()J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    const-string v3, "sdcard_storage"

    .line 118
    .line 119
    invoke-virtual {v2, v3, v0, v1}, Lcom/byazt/by/uj;->c(Ljava/lang/String;J)V

    .line 120
    .line 121
    .line 122
    sput-wide v0, Lcom/byazt/aas/nb;->sp:J

    .line 123
    .line 124
    invoke-static {}, Lcom/byazt/aas/nb;->gu()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-string v2, "is_root"

    .line 133
    .line 134
    invoke-virtual {v1, v2, v0}, Lcom/byazt/by/uj;->c(Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    sput v0, Lcom/byazt/aas/nb;->x:I

    .line 138
    .line 139
    :cond_1
    return-void
.end method

.method public static t()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/aas/DeviceUtils;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/byazt/aas/DeviceUtils;->sl:Lcom/byazt/cb/c;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lcom/byazt/aas/DeviceUtils;->sl:Lcom/byazt/cb/c;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/cb/c;->tt()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public static synthetic tt(I)I
    .locals 0

    .line 1
    sput p0, Lcom/byazt/aas/DeviceUtils;->sp:I

    return p0
.end method

.method public static synthetic tt(J)J
    .locals 0

    .line 2
    sput-wide p0, Lcom/byazt/aas/DeviceUtils;->z:J

    return-wide p0
.end method

.method public static tt()Ljava/lang/String;
    .locals 2

    const-string v0, "device_info_new"

    .line 3
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    invoke-interface {v0}, Lcom/byazt/dna/u;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/byazt/aas/DeviceUtils;->t:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    :cond_0
    sput-object v0, Lcom/byazt/aas/DeviceUtils;->t:Ljava/lang/String;

    const/16 v1, 0x9

    .line 6
    invoke-static {v1, v0}, Lcom/byazt/zlb/ve;->tt(ILjava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private static tt(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "package_name"

    .line 8
    invoke-static {}, Lcom/byazt/aas/nb;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version_code"

    .line 9
    invoke-static {}, Lcom/byazt/aas/nb;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    .line 10
    invoke-static {}, Lcom/byazt/aas/nb;->da()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static tt(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 p0, p0, 0xf

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public static synthetic u()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/aas/DeviceUtils;->sp:I

    .line 2
    .line 3
    return v0
.end method

.method public static uj()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nr/rh;->tt(Landroid/content/Context;)I

    move-result v0

    .line 2
    sput v0, Lcom/byazt/aas/DeviceUtils;->ve:I

    return v0
.end method

.method public static uj(Landroid/content/Context;)V
    .locals 4

    .line 3
    sget-boolean v0, Lcom/byazt/aas/DeviceUtils;->x:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4
    :try_start_0
    new-instance v0, Lcom/byazt/aas/DeviceUtils$DeviceStatusBroadCastReceiver;

    invoke-direct {v0}, Lcom/byazt/aas/DeviceUtils$DeviceStatusBroadCastReceiver;-><init>()V

    sput-object v0, Lcom/byazt/aas/DeviceUtils;->da:Landroid/content/BroadcastReceiver;

    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lcom/byazt/aas/DeviceUtils;->da:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9
    sput-boolean v1, Lcom/byazt/aas/DeviceUtils;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 10
    :cond_0
    :goto_0
    sget-boolean p0, Lcom/byazt/aas/DeviceUtils;->i:Z

    if-nez p0, :cond_1

    .line 11
    new-instance p0, Lcom/byazt/cb/c;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/byazt/aas/DeviceUtils$1;

    invoke-direct {v3}, Lcom/byazt/aas/DeviceUtils$1;-><init>()V

    invoke-direct {p0, v0, v2, v3}, Lcom/byazt/cb/c;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/byazt/cb/c$c;)V

    .line 12
    sput-object p0, Lcom/byazt/aas/DeviceUtils;->sl:Lcom/byazt/cb/c;

    invoke-virtual {p0}, Lcom/byazt/cb/c;->c()V

    .line 13
    sput-boolean v1, Lcom/byazt/aas/DeviceUtils;->i:Z

    :cond_1
    return-void
.end method

.method public static synthetic ve(J)J
    .locals 0

    .line 1
    sput-wide p0, Lcom/byazt/aas/DeviceUtils;->yp:J

    return-wide p0
.end method

.method public static ve()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->uj()I

    .line 3
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->n()F

    .line 4
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->a()I

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcom/byazt/aas/DeviceUtils;->c(I)Ljava/lang/String;

    const/4 v1, 0x1

    .line 6
    invoke-static {v1}, Lcom/byazt/aas/DeviceUtils;->c(I)Ljava/lang/String;

    const-string v1, "device_info_new"

    .line 7
    invoke-static {v1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/dna/u;

    .line 8
    invoke-interface {v1, v0}, Lcom/byazt/dna/u;->getNewIpAddrs(Z)[Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Lcom/byazt/aas/my;->tt(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static ve(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "screen_brightness_mode"

    .line 11
    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static x()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 14
    .line 15
    const/high16 v1, 0x41800000    # 16.0f

    .line 16
    .line 17
    mul-float v0, v0, v1

    .line 18
    .line 19
    float-to-int v0, v0

    .line 20
    return v0
.end method

.method public static synthetic yp()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/byazt/aas/DeviceUtils;->z:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic z()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/byazt/aas/DeviceUtils;->yp:J

    .line 2
    .line 3
    return-wide v0
.end method
