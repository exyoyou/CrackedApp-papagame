.class public Lcom/byazt/bt/DeviceInfoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x112,
        0x9b4
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/bt/DeviceInfoUtils$ScreenStatusReceiver;,
        Lcom/byazt/bt/DeviceInfoUtils$c;
    }
.end annotation


# static fields
.field public static volatile a:Landroid/content/BroadcastReceiver; = null

.field public static volatile c:I = -0x1

.field public static volatile da:Ljava/lang/String; = null

.field public static volatile i:Ljava/lang/String; = null

.field public static volatile m:F = 0.0f

.field public static volatile n:Z = true

.field public static volatile nu:J

.field public static rh:J

.field public static volatile sl:J

.field public static volatile sp:Landroid/content/BroadcastReceiver;

.field public static volatile t:J

.field public static volatile tt:Z

.field public static u:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static volatile uj:Z

.field public static volatile ve:Z

.field public static volatile x:Landroid/database/ContentObserver;

.field public static yp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static volatile z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/bt/DeviceInfoUtils;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/byazt/bt/DeviceInfoUtils;->yp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    sput-wide v0, Lcom/byazt/bt/DeviceInfoUtils;->z:J

    .line 22
    .line 23
    const/high16 v0, -0x40000000    # -2.0f

    .line 24
    .line 25
    sput v0, Lcom/byazt/bt/DeviceInfoUtils;->m:F

    .line 26
    .line 27
    const-wide/16 v0, 0x0

    .line 28
    .line 29
    sput-wide v0, Lcom/byazt/bt/DeviceInfoUtils;->rh:J

    .line 30
    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    .line 1
    sget-boolean v0, Lcom/byazt/bt/DeviceInfoUtils;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget-wide v2, Lcom/byazt/bt/DeviceInfoUtils;->rh:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    const-wide/16 v2, 0x2710

    .line 13
    .line 14
    cmp-long v4, v0, v2

    .line 15
    .line 16
    if-ltz v4, :cond_0

    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    sput-wide v0, Lcom/byazt/bt/DeviceInfoUtils;->rh:J

    .line 23
    .line 24
    :try_start_0
    const-string v0, "power"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroid/os/PowerManager;

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    sput-boolean p0, Lcom/byazt/bt/DeviceInfoUtils;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    sget-boolean p0, Lcom/byazt/bt/DeviceInfoUtils;->n:Z

    .line 46
    .line 47
    return p0
.end method

.method public static c()I
    .locals 2

    .line 3
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    const/16 v1, -0xc

    if-ge v0, v1, :cond_0

    const/16 v0, -0xc

    :cond_0
    const/16 v1, 0xc

    if-le v0, v1, :cond_1

    const/16 v0, 0xc

    :cond_1
    return v0
.end method

.method public static c(Landroid/content/Context;ZLcom/byazt/dna/c;I)I
    .locals 4

    .line 5
    sget v0, Lcom/byazt/bt/DeviceInfoUtils;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6
    sget p0, Lcom/byazt/bt/DeviceInfoUtils;->c:I

    return p0

    :cond_0
    const-string v0, "dev06"

    if-eqz p1, :cond_2

    const-wide v2, 0x9a7ec800L

    .line 7
    invoke-static {v0, v2, v3, p2}, Lcom/byazt/bt/x;->c(Ljava/lang/String;JLcom/byazt/dna/c;)Ljava/lang/String;

    move-result-object v2

    .line 8
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/byazt/bt/DeviceInfoUtils;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 10
    :cond_1
    :goto_0
    sget v2, Lcom/byazt/bt/DeviceInfoUtils;->c:I

    if-eq v2, v1, :cond_2

    .line 11
    sget p0, Lcom/byazt/bt/DeviceInfoUtils;->c:I

    return p0

    .line 12
    :cond_2
    invoke-static {p0}, Lcom/byazt/bt/DeviceInfoUtils;->tt(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x3

    .line 13
    sput p0, Lcom/byazt/bt/DeviceInfoUtils;->c:I

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {p0}, Lcom/byazt/bt/DeviceInfoUtils;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    .line 15
    sput p0, Lcom/byazt/bt/DeviceInfoUtils;->c:I

    goto :goto_1

    :cond_4
    const/4 p0, 0x1

    .line 16
    sput p0, Lcom/byazt/bt/DeviceInfoUtils;->c:I

    :goto_1
    if-eqz p1, :cond_5

    .line 17
    sget p0, Lcom/byazt/bt/DeviceInfoUtils;->c:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2, p3}, Lcom/byazt/bt/x;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dna/c;I)V

    .line 18
    :cond_5
    sget p0, Lcom/byazt/bt/DeviceInfoUtils;->c:I

    return p0
.end method

.method public static synthetic c(J)J
    .locals 0

    .line 1
    sput-wide p0, Lcom/byazt/bt/DeviceInfoUtils;->z:J

    return-wide p0
.end method

.method public static c(ILcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-wide/32 v0, 0xea60

    if-nez p0, :cond_0

    .line 29
    sget-object v2, Lcom/byazt/bt/DeviceInfoUtils;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-wide v2, Lcom/byazt/bt/DeviceInfoUtils;->sl:J

    invoke-static {v2, v3, v0, v1}, Lcom/byazt/bt/DeviceInfoUtils;->c(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    sget-object p0, Lcom/byazt/bt/DeviceInfoUtils;->i:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 31
    sget-object v3, Lcom/byazt/bt/DeviceInfoUtils;->da:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-wide v3, Lcom/byazt/bt/DeviceInfoUtils;->t:J

    invoke-static {v3, v4, v0, v1}, Lcom/byazt/bt/DeviceInfoUtils;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    sget-object p0, Lcom/byazt/bt/DeviceInfoUtils;->da:Ljava/lang/String;

    return-object p0

    .line 33
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/byazt/bt/DeviceInfoUtils;->tt(ILcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_2

    .line 34
    sput-object p1, Lcom/byazt/bt/DeviceInfoUtils;->i:Ljava/lang/String;

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/byazt/bt/DeviceInfoUtils;->sl:J

    goto :goto_0

    :cond_2
    if-ne p0, v2, :cond_3

    .line 36
    sput-object p1, Lcom/byazt/bt/DeviceInfoUtils;->da:Ljava/lang/String;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/byazt/bt/DeviceInfoUtils;->t:J

    :cond_3
    :goto_0
    return-object p1
.end method

.method public static c(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .line 20
    sget-boolean v0, Lcom/byazt/bt/DeviceInfoUtils;->tt:Z

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "power"

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    sput-boolean v0, Lcom/byazt/bt/DeviceInfoUtils;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 23
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 24
    :cond_0
    :goto_0
    :try_start_1
    sput-object p1, Lcom/byazt/bt/DeviceInfoUtils;->a:Landroid/content/BroadcastReceiver;

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/byazt/bt/DeviceInfoUtils;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p0, 0x1

    .line 26
    sput-boolean p0, Lcom/byazt/bt/DeviceInfoUtils;->tt:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    .line 27
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static c(JJ)Z
    .locals 2

    .line 28
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

    .line 19
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

.method public static synthetic c(Z)Z
    .locals 0

    .line 2
    sput-boolean p0, Lcom/byazt/bt/DeviceInfoUtils;->n:Z

    return p0
.end method

.method public static n(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/bt/DeviceInfoUtils;->uj:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/byazt/bt/DeviceInfoUtils;->x:Landroid/database/ContentObserver;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sget-object v0, Lcom/byazt/bt/DeviceInfoUtils;->x:Landroid/database/ContentObserver;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public static sp(Landroid/content/Context;)F
    .locals 4

    .line 1
    sget v0, Lcom/byazt/bt/DeviceInfoUtils;->m:F

    .line 2
    .line 3
    const/high16 v1, -0x40000000    # -2.0f

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-wide v0, Lcom/byazt/bt/DeviceInfoUtils;->nu:J

    .line 10
    .line 11
    const-wide/16 v2, 0x7530

    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/bt/DeviceInfoUtils;->c(JJ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget p0, Lcom/byazt/bt/DeviceInfoUtils;->m:F

    .line 20
    .line 21
    return p0

    .line 22
    :cond_0
    const/4 v0, -0x1

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v1, "screen_brightness"

    .line 30
    .line 31
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    move v0, p0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    const-string v1, "DeviceInfoUtils"

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v1, p0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    if-gez v0, :cond_2

    .line 48
    .line 49
    const/high16 p0, -0x40800000    # -1.0f

    .line 50
    .line 51
    sput p0, Lcom/byazt/bt/DeviceInfoUtils;->m:F

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    int-to-float p0, v0

    .line 55
    const/high16 v0, 0x437f0000    # 255.0f

    .line 56
    .line 57
    div-float/2addr p0, v0

    .line 58
    const/high16 v0, 0x41200000    # 10.0f

    .line 59
    .line 60
    mul-float p0, p0, v0

    .line 61
    .line 62
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    int-to-float p0, p0

    .line 67
    div-float/2addr p0, v0

    .line 68
    sput p0, Lcom/byazt/bt/DeviceInfoUtils;->m:F

    .line 69
    .line 70
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    sput-wide v0, Lcom/byazt/bt/DeviceInfoUtils;->nu:J

    .line 75
    .line 76
    sget p0, Lcom/byazt/bt/DeviceInfoUtils;->m:F

    .line 77
    .line 78
    return p0
.end method

.method public static tt()J
    .locals 2

    .line 2
    sget-wide v0, Lcom/byazt/bt/DeviceInfoUtils;->z:J

    return-wide v0
.end method

.method private static tt(ILcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 3
    invoke-static {p2}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result v0

    .line 4
    invoke-interface {p1}, Lcom/byazt/dna/c;->getCustomController()Lcom/byazt/lz/c;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "dBm"

    const-string v4, "unknown"

    if-ne v0, v2, :cond_3

    if-nez p0, :cond_2

    .line 5
    :try_start_0
    invoke-interface {v1}, Lcom/byazt/lz/c;->isCanUseWifiState()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1, p2}, Lcom/byazt/bt/ve;->c(Lcom/byazt/dna/c;Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v4

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_2
    :goto_0
    return-object v4

    .line 8
    :cond_3
    invoke-interface {v1}, Lcom/byazt/lz/c;->isCanUsePhoneState()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {v1}, Lcom/byazt/lz/c;->isCanUseLocation()Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_2

    :cond_4
    const/4 p1, 0x1

    if-ne p0, p1, :cond_e

    .line 9
    :try_start_1
    invoke-static {p2}, Lcom/byazt/bt/ve;->tt(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_2

    .line 10
    :cond_5
    invoke-static {p2}, Lcom/byazt/bt/ve;->c(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-nez p0, :cond_6

    return-object v4

    .line 12
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_7

    return-object v4

    :cond_7
    const/4 p2, 0x0

    .line 13
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellInfo;

    .line 14
    instance-of p2, p0, Landroid/telephony/CellInfoGsm;

    if-eqz p2, :cond_8

    .line 15
    check-cast p0, Landroid/telephony/CellInfoGsm;

    .line 16
    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result p0

    goto :goto_1

    .line 18
    :cond_8
    instance-of p2, p0, Landroid/telephony/CellInfoCdma;

    if-eqz p2, :cond_9

    .line 19
    check-cast p0, Landroid/telephony/CellInfoCdma;

    .line 20
    invoke-virtual {p0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result p0

    goto :goto_1

    .line 22
    :cond_9
    instance-of p2, p0, Landroid/telephony/CellInfoLte;

    if-eqz p2, :cond_a

    .line 23
    check-cast p0, Landroid/telephony/CellInfoLte;

    .line 24
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result p0

    goto :goto_1

    .line 26
    :cond_a
    instance-of p2, p0, Landroid/telephony/CellInfoWcdma;

    if-eqz p2, :cond_b

    .line 27
    check-cast p0, Landroid/telephony/CellInfoWcdma;

    .line 28
    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result p0

    goto :goto_1

    :cond_b
    const/16 p2, 0x1d

    if-lt p1, p2, :cond_c

    .line 30
    invoke-static {p0}, Lq0/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 31
    invoke-static {p0}, Lq0/b;->a(Ljava/lang/Object;)Landroid/telephony/CellInfoNr;

    move-result-object p0

    .line 32
    invoke-static {p0}, Lq0/c;->a(Landroid/telephony/CellInfoNr;)Landroid/telephony/CellSignalStrength;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result p0

    goto :goto_1

    :cond_c
    if-lt p1, p2, :cond_e

    .line 34
    invoke-static {p0}, Lq0/d;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 35
    invoke-static {p0}, Lq0/e;->a(Ljava/lang/Object;)Landroid/telephony/CellInfoTdscdma;

    move-result-object p0

    .line 36
    invoke-static {p0}, Lq0/f;->a(Landroid/telephony/CellInfoTdscdma;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object p0

    .line 37
    invoke-static {p0}, Lq0/g;->a(Landroid/telephony/CellSignalStrengthTdscdma;)I

    move-result p0

    :goto_1
    const/high16 p1, -0x80000000

    if-ne p1, p0, :cond_d

    return-object v4

    .line 38
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    :cond_e
    :goto_2
    return-object v4
.end method

.method public static tt(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
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

.method public static synthetic uj()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/bt/DeviceInfoUtils;->yp:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static uj(Landroid/content/Context;)V
    .locals 1

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/byazt/bt/DeviceInfoUtils;->ve:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/byazt/bt/DeviceInfoUtils;->sp:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/byazt/bt/DeviceInfoUtils;->sp:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic ve()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/bt/DeviceInfoUtils;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static ve(Landroid/content/Context;)V
    .locals 1

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/byazt/bt/DeviceInfoUtils;->tt:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/byazt/bt/DeviceInfoUtils;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/byazt/bt/DeviceInfoUtils;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method
