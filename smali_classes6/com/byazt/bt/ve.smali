.class public Lcom/byazt/bt/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x112,
        0x36
    }
.end annotation


# static fields
.field public static volatile a:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static volatile d:Landroid/net/wifi/WifiManager;

.field public static volatile da:Ljava/lang/String;

.field public static volatile eo:Landroid/net/wifi/WifiInfo;

.field public static volatile gr:Z

.field public static volatile gt:Z

.field public static volatile gu:Z

.field public static volatile h:Landroid/telephony/TelephonyManager;

.field public static volatile i:Ljava/lang/String;

.field public static volatile m:Z

.field public static volatile md:Z

.field public static volatile my:Z

.field public static n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static volatile nu:Z

.field public static volatile p:J

.field public static volatile qy:Z

.field public static volatile rh:Z

.field public static volatile rl:Z

.field public static volatile sl:Ljava/lang/String;

.field public static volatile sp:Ljava/lang/String;

.field public static volatile t:Ljava/lang/String;

.field public static volatile tt:Ljava/lang/String;

.field public static volatile u:Ljava/lang/String;

.field public static volatile uj:Ljava/lang/String;

.field public static volatile ve:Ljava/lang/String;

.field public static volatile x:Z

.field public static volatile yp:Ljava/lang/String;

.field public static volatile yv:Ljava/lang/String;

.field public static volatile z:Ljava/lang/String;

.field public static volatile zm:Z


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
    sput-object v0, Lcom/byazt/bt/ve;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    sput-object v0, Lcom/byazt/bt/ve;->sp:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lcom/byazt/bt/ve;->x:Z

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/byazt/bt/ve;->z:Ljava/lang/String;

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

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/byazt/bt/ve;->gt:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/byazt/bt/ve;->a:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    const-class v0, Lcom/byazt/bt/ve;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/byazt/bt/ve;->gt:Z

    if-eqz v1, :cond_1

    .line 5
    sget-object p0, Lcom/byazt/bt/ve;->a:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 6
    :cond_1
    sget-boolean v1, Lcom/byazt/bt/ve;->nu:Z

    if-eqz v1, :cond_2

    .line 7
    sget-object p0, Lcom/byazt/bt/ve;->tt:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 8
    :cond_2
    invoke-static {p0}, Lcom/byazt/bt/ve;->c(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-nez p0, :cond_3

    .line 9
    sget-object p0, Lcom/byazt/bt/ve;->a:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object p0

    .line 10
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/byazt/bt/ve;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    const/4 p0, 0x1

    .line 11
    :try_start_2
    sput-boolean p0, Lcom/byazt/bt/ve;->gt:Z

    .line 12
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    sget-object p0, Lcom/byazt/bt/ve;->a:Ljava/lang/String;

    return-object p0

    :catchall_1
    move-exception p0

    .line 14
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static a(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lcom/byazt/bt/ve;->t(Lcom/byazt/dna/c;Landroid/content/Context;)V

    .line 16
    sget-object p0, Lcom/byazt/bt/ve;->da:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Lcom/byazt/dna/c;Landroid/content/Context;)Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 11
    invoke-interface {p0}, Lcom/byazt/dna/c;->getCustomController()Lcom/byazt/lz/c;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 12
    invoke-interface {p0}, Lcom/byazt/lz/c;->isCanUseWifiState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/byazt/lz/c;->isCanUseLocation()Z

    move-result p0

    if-nez p0, :cond_1

    .line 13
    :cond_0
    sget-object p0, Lcom/byazt/bt/ve;->eo:Landroid/net/wifi/WifiInfo;

    return-object p0

    .line 14
    :cond_1
    sget-object p0, Lcom/byazt/bt/ve;->eo:Landroid/net/wifi/WifiInfo;

    if-eqz p0, :cond_2

    .line 15
    sget-object p0, Lcom/byazt/bt/ve;->eo:Landroid/net/wifi/WifiInfo;

    return-object p0

    .line 16
    :cond_2
    const-class p0, Lcom/byazt/bt/ve;

    monitor-enter p0

    .line 17
    :try_start_0
    sget-object v0, Lcom/byazt/bt/ve;->eo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_3

    .line 18
    sget-object p1, Lcom/byazt/bt/ve;->eo:Landroid/net/wifi/WifiInfo;

    monitor-exit p0

    return-object p1

    .line 19
    :cond_3
    invoke-static {p1}, Lcom/byazt/bt/ve;->uj(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    if-nez p1, :cond_4

    .line 20
    sget-object p1, Lcom/byazt/bt/ve;->eo:Landroid/net/wifi/WifiInfo;

    monitor-exit p0

    return-object p1

    .line 21
    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    sput-object p1, Lcom/byazt/bt/ve;->eo:Landroid/net/wifi/WifiInfo;

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    sget-object p0, Lcom/byazt/bt/ve;->eo:Landroid/net/wifi/WifiInfo;

    return-object p0

    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static c(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 2

    .line 2
    sget-object v0, Lcom/byazt/bt/ve;->h:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lcom/byazt/bt/ve;->h:Landroid/telephony/TelephonyManager;

    return-object p0

    .line 4
    :cond_0
    const-class v0, Lcom/byazt/bt/ve;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/byazt/bt/ve;->h:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 6
    sget-object p0, Lcom/byazt/bt/ve;->h:Landroid/telephony/TelephonyManager;

    monitor-exit v0

    return-object p0

    :cond_1
    const-string v1, "phone"

    .line 7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sput-object p0, Lcom/byazt/bt/ve;->h:Landroid/telephony/TelephonyManager;

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    sget-object p0, Lcom/byazt/bt/ve;->h:Landroid/telephony/TelephonyManager;

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/dna/c;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 70
    :try_start_0
    invoke-interface {p1}, Lcom/byazt/dna/c;->getCustomController()Lcom/byazt/lz/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    invoke-interface {p1}, Lcom/byazt/lz/c;->isCanUsePhoneState()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/byazt/bt/ve;->c(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 73
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt p1, v1, :cond_2

    .line 74
    invoke-static {}, Lq0/l;->a()I

    move-result p1

    .line 75
    invoke-static {p0, p1}, Lq0/m;->a(Landroid/telephony/TelephonyManager;I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public static c(Lcom/byazt/dna/c;)Ljava/lang/String;
    .locals 2

    .line 38
    invoke-interface {p0}, Lcom/byazt/dna/c;->getCustomController()Lcom/byazt/lz/c;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 39
    invoke-interface {p0}, Lcom/byazt/lz/c;->isCanUsePhoneState()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_0
    sget-object p0, Lcom/byazt/bt/ve;->yp:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 41
    sget-object p0, Lcom/byazt/bt/ve;->yp:Ljava/lang/String;

    return-object p0

    .line 42
    :cond_1
    sget-boolean p0, Lcom/byazt/bt/ve;->gr:Z

    if-eqz p0, :cond_2

    .line 43
    sget-object p0, Lcom/byazt/bt/ve;->yp:Ljava/lang/String;

    return-object p0

    .line 44
    :cond_2
    const-class p0, Lcom/byazt/bt/ve;

    monitor-enter p0

    .line 45
    :try_start_0
    sget-boolean v0, Lcom/byazt/bt/ve;->gr:Z

    if-eqz v0, :cond_3

    .line 46
    sget-object v0, Lcom/byazt/bt/ve;->yp:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 47
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_4

    .line 48
    :try_start_1
    invoke-static {}, Lq0/k;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/byazt/bt/ve;->yp:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    :cond_4
    :try_start_2
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    sput-object v0, Lcom/byazt/bt/ve;->yp:Ljava/lang/String;

    :catchall_0
    :goto_0
    const/4 v0, 0x1

    .line 50
    sput-boolean v0, Lcom/byazt/bt/ve;->gr:Z

    .line 51
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    sget-object p0, Lcom/byazt/bt/ve;->yp:Ljava/lang/String;

    return-object p0

    :catchall_1
    move-exception v0

    .line 53
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private static c(Lcom/byazt/lz/c;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    .line 32
    invoke-interface {p0}, Lcom/byazt/lz/c;->getDevImei()Ljava/lang/String;

    move-result-object p0

    .line 33
    sput-object p0, Lcom/byazt/bt/ve;->tt:Ljava/lang/String;

    return-object p0

    .line 34
    :cond_0
    sget-boolean p0, Lcom/byazt/bt/ve;->m:Z

    if-eqz p0, :cond_1

    .line 35
    sget-object p0, Lcom/byazt/bt/ve;->tt:Ljava/lang/String;

    return-object p0

    .line 36
    :cond_1
    invoke-static {p2}, Lcom/byazt/bt/ve;->n(Landroid/content/Context;)V

    .line 37
    sget-object p0, Lcom/byazt/bt/ve;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Ljava/lang/Boolean;Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/byazt/bt/ve;->tt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    sget-object p0, Lcom/byazt/bt/ve;->tt:Ljava/lang/String;

    return-object p0

    .line 27
    :cond_0
    invoke-interface {p1}, Lcom/byazt/dna/c;->getCustomController()Lcom/byazt/lz/c;

    move-result-object p1

    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    .line 28
    invoke-interface {p1}, Lcom/byazt/lz/c;->isCanUsePhoneState()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, p0, p2}, Lcom/byazt/bt/ve;->c(Lcom/byazt/lz/c;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 29
    :cond_2
    sget-boolean v0, Lcom/byazt/bt/ve;->m:Z

    if-eqz v0, :cond_3

    .line 30
    sget-object p0, Lcom/byazt/bt/ve;->tt:Ljava/lang/String;

    return-object p0

    .line 31
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p1, p0, p2}, Lcom/byazt/bt/ve;->c(Lcom/byazt/lz/c;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Boolean;Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)Ljava/lang/String;
    .locals 2

    .line 59
    sget-object v0, Lcom/byazt/bt/ve;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    sget-object p0, Lcom/byazt/bt/ve;->z:Ljava/lang/String;

    return-object p0

    .line 61
    :cond_0
    invoke-interface {p1}, Lcom/byazt/dna/c;->getCustomController()Lcom/byazt/lz/c;

    move-result-object v0

    if-nez p0, :cond_1

    if-eqz v0, :cond_3

    .line 62
    invoke-interface {v0}, Lcom/byazt/lz/c;->isCanUseWifiState()Z

    move-result p0

    if-nez p0, :cond_3

    .line 63
    invoke-interface {v0}, Lcom/byazt/lz/c;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 64
    :cond_1
    sget-boolean v1, Lcom/byazt/bt/ve;->zm:Z

    if-eqz v1, :cond_2

    .line 65
    sget-object p0, Lcom/byazt/bt/ve;->z:Ljava/lang/String;

    return-object p0

    :cond_2
    if-eqz v0, :cond_3

    .line 66
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_3

    .line 67
    invoke-interface {v0}, Lcom/byazt/lz/c;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 68
    :cond_3
    invoke-static {p1, p2, p3, p4}, Lcom/byazt/bt/ve;->tt(Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/bt/ve;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static c(Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)V
    .locals 1

    .line 54
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/bt/tt;->c(Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p1, "DU:MM:YA:DD:RE:SS"

    :cond_0
    const-string p3, "mac_address"

    .line 56
    invoke-static {p3, p1, p0, p2}, Lcom/byazt/bt/x;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dna/c;I)V

    const-string p3, "armor_service"

    .line 57
    invoke-static {p3}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/byazt/dna/n;

    invoke-interface {p3, p1}, Lcom/byazt/dna/n;->encryptAESWithCBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "new_mac_address"

    invoke-static {v0, p3, p0, p2}, Lcom/byazt/bt/x;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dna/c;I)V

    .line 58
    sput-object p1, Lcom/byazt/bt/ve;->z:Ljava/lang/String;

    return-void
.end method

.method private static c(JJ)Z
    .locals 2

    .line 69
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

.method private static da(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/byazt/bt/ve;->rh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/byazt/bt/ve;->ve:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-class v0, Lcom/byazt/bt/ve;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-boolean v1, Lcom/byazt/bt/ve;->rh:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    sget-object p0, Lcom/byazt/bt/ve;->ve:Ljava/lang/String;

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    return-object p0

    .line 19
    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Lcom/byazt/bt/ve;->c(Lcom/byazt/dna/c;Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-nez p0, :cond_2

    .line 24
    .line 25
    sget-object p0, Lcom/byazt/bt/ve;->ve:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28
    return-object p0

    .line 29
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sput-object p0, Lcom/byazt/bt/ve;->ve:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    .line 35
    :catchall_0
    const/4 p0, 0x1

    .line 36
    :try_start_4
    sput-boolean p0, Lcom/byazt/bt/ve;->rh:Z

    .line 37
    .line 38
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 39
    sget-object p0, Lcom/byazt/bt/ve;->ve:Ljava/lang/String;

    .line 40
    .line 41
    return-object p0

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 44
    throw p0
.end method

.method public static i(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/byazt/bt/ve;->t(Lcom/byazt/dna/c;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/byazt/bt/ve;->u:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method public static n(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 17
    :try_start_0
    invoke-static {p0, p1}, Lcom/byazt/bt/ve;->t(Lcom/byazt/dna/c;Landroid/content/Context;)V

    .line 18
    sget-object p0, Lcom/byazt/bt/ve;->i:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 19
    sget-object p0, Lcom/byazt/bt/ve;->i:Ljava/lang/String;

    return-object p0

    .line 20
    :cond_0
    sget-wide v1, Lcom/byazt/bt/ve;->p:J

    const-wide/32 v3, 0xea60

    invoke-static {v1, v2, v3, v4}, Lcom/byazt/bt/ve;->c(JJ)Z

    move-result p0

    if-nez p0, :cond_1

    .line 21
    sget-object p0, Lcom/byazt/bt/ve;->yv:Ljava/lang/String;

    return-object p0

    .line 22
    :cond_1
    invoke-static {p1}, Lcom/byazt/bt/ve;->tt(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    .line 23
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 24
    iget p0, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz p0, :cond_3

    .line 25
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/byazt/bt/ve;->i:Ljava/lang/String;

    .line 26
    :goto_0
    sput-object p0, Lcom/byazt/bt/ve;->yv:Ljava/lang/String;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/byazt/bt/ve;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method private static n(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-class v0, Lcom/byazt/bt/ve;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/byazt/bt/ve;->m:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    sget-boolean v1, Lcom/byazt/bt/ve;->nu:Z

    if-eqz v1, :cond_1

    .line 5
    monitor-exit v0

    return-void

    :cond_1
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 6
    invoke-static {p0, v1}, Lcom/byazt/bt/uj;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 7
    sput-boolean v1, Lcom/byazt/bt/ve;->nu:Z

    .line 8
    invoke-static {p0}, Lcom/byazt/bt/ve;->c(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-nez p0, :cond_2

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 10
    :cond_2
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_3

    .line 11
    invoke-static {p0}, Lq0/i;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/byazt/bt/ve;->tt:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/byazt/bt/ve;->tt:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :catchall_0
    :goto_0
    :try_start_2
    sput-boolean v1, Lcom/byazt/bt/ve;->m:Z

    .line 14
    monitor-exit v0

    return-void

    .line 15
    :cond_4
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private static sl(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/byazt/bt/ve;->my:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/byazt/bt/ve;->uj:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-class v0, Lcom/byazt/bt/ve;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-boolean v1, Lcom/byazt/bt/ve;->my:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    sget-object p0, Lcom/byazt/bt/ve;->uj:Ljava/lang/String;

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-static {p0, p1}, Lcom/byazt/bt/ve;->ve(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sput-object p0, Lcom/byazt/bt/ve;->uj:Ljava/lang/String;

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    sput-boolean p0, Lcom/byazt/bt/ve;->my:Z

    .line 27
    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    sget-object p0, Lcom/byazt/bt/ve;->uj:Ljava/lang/String;

    .line 30
    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0
.end method

.method public static sp(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/byazt/bt/ve;->t(Lcom/byazt/dna/c;Landroid/content/Context;)V

    .line 2
    sget-object p0, Lcom/byazt/bt/ve;->sl:Ljava/lang/String;

    return-object p0
.end method

.method private static declared-synchronized sp(Landroid/content/Context;)V
    .locals 7

    const-class v0, Lcom/byazt/bt/ve;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-boolean v1, Lcom/byazt/bt/ve;->md:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x16

    if-ge v1, v2, :cond_1

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    :try_start_2
    const-class v1, Lcom/byazt/bt/ve;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x1

    .line 8
    :try_start_3
    sput-boolean v2, Lcom/byazt/bt/ve;->md:Z

    const-string v2, "telephony_subscription_service"

    .line 9
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lq0/n;->a(Ljava/lang/Object;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    .line 10
    invoke-static {p0}, Lq0/o;->a(Landroid/telephony/SubscriptionManager;)I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 11
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    .line 12
    :cond_2
    :try_start_4
    invoke-static {p0}, Lq0/p;->a(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v3, :cond_3

    .line 14
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_9

    .line 15
    :try_start_5
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lq0/q;->a(Ljava/lang/Object;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 16
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_4

    .line 17
    invoke-static {v4}, Lq0/r;->a(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-static {v4}, Lq0/s;->a(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 19
    :cond_4
    invoke-static {v4}, Lq0/t;->a(Landroid/telephony/SubscriptionInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-static {v4}, Lq0/j;->a(Landroid/telephony/SubscriptionInfo;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-nez v2, :cond_6

    .line 21
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 22
    sput-object v5, Lcom/byazt/bt/ve;->i:Ljava/lang/String;

    .line 23
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 24
    sput-object v4, Lcom/byazt/bt/ve;->sl:Ljava/lang/String;

    goto :goto_2

    .line 25
    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 26
    sput-object v5, Lcom/byazt/bt/ve;->da:Ljava/lang/String;

    .line 27
    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 28
    sput-object v4, Lcom/byazt/bt/ve;->t:Ljava/lang/String;

    :cond_8
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_9
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static t(Lcom/byazt/dna/c;Landroid/content/Context;)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/byazt/bt/ve;->gu:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-class v0, Lcom/byazt/bt/ve;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget-boolean v1, Lcom/byazt/bt/ve;->gu:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :cond_1
    invoke-static {p1}, Lcom/byazt/bt/ve;->c(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 16
    .line 17
    .line 18
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 19
    const/4 v2, 0x0

    .line 20
    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-object v3, v2

    .line 26
    :goto_0
    :try_start_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_2

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v5, 0x5

    .line 37
    if-ge v4, v5, :cond_3

    .line 38
    .line 39
    :cond_2
    invoke-static {p0, p1}, Lcom/byazt/bt/ve;->uj(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 43
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    goto :goto_1

    .line 48
    :catchall_1
    move-object p0, v2

    .line 49
    :goto_1
    :try_start_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_4

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/4 v4, 0x4

    .line 60
    if-le v1, v4, :cond_4

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    const/4 v2, 0x3

    .line 64
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    move-object v6, v2

    .line 73
    move-object v2, v1

    .line 74
    move-object v1, v6

    .line 75
    goto :goto_2

    .line 76
    :cond_4
    move-object v1, v2

    .line 77
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_5

    .line 82
    .line 83
    sput-object v2, Lcom/byazt/bt/ve;->i:Ljava/lang/String;

    .line 84
    .line 85
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_6

    .line 90
    .line 91
    sput-object v1, Lcom/byazt/bt/ve;->sl:Ljava/lang/String;

    .line 92
    .line 93
    :cond_6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_7

    .line 98
    .line 99
    sput-object p0, Lcom/byazt/bt/ve;->u:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 100
    .line 101
    :cond_7
    :try_start_5
    invoke-static {p1}, Lcom/byazt/bt/ve;->sp(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :catchall_2
    move-exception p0

    .line 106
    :try_start_6
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    :goto_3
    const/4 p0, 0x1

    .line 110
    sput-boolean p0, Lcom/byazt/bt/ve;->gu:Z

    .line 111
    .line 112
    monitor-exit v0

    .line 113
    return-void

    .line 114
    :catchall_3
    move-exception p0

    .line 115
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 116
    throw p0
.end method

.method public static tt(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 9
    sget-object v0, Lcom/byazt/bt/ve;->uj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/byazt/bt/ve;->my:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/byazt/bt/ve;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    sget-object v0, Lcom/byazt/bt/ve;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "thread_service"

    .line 12
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/qp;

    invoke-interface {v0}, Lcom/byazt/dna/qp;->getIoExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/byazt/bt/ve$1;

    const-string v2, ""

    invoke-direct {v1, v2, p0, p1}, Lcom/byazt/bt/ve$1;-><init>(Ljava/lang/String;Lcom/byazt/dna/c;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 13
    :cond_2
    :goto_0
    sget-object p0, Lcom/byazt/bt/ve;->uj:Ljava/lang/String;

    return-object p0
.end method

.method private static tt(Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)Ljava/lang/String;
    .locals 2

    .line 26
    sget-boolean v0, Lcom/byazt/bt/ve;->zm:Z

    if-eqz v0, :cond_0

    .line 27
    sget-object p0, Lcom/byazt/bt/ve;->z:Ljava/lang/String;

    return-object p0

    .line 28
    :cond_0
    const-class v0, Lcom/byazt/bt/ve;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-boolean v1, Lcom/byazt/bt/ve;->zm:Z

    if-eqz v1, :cond_1

    .line 30
    sget-object p0, Lcom/byazt/bt/ve;->z:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 31
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/bt/ve;->ve(Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/byazt/bt/ve;->z:Ljava/lang/String;

    const/4 p0, 0x1

    .line 32
    sput-boolean p0, Lcom/byazt/bt/ve;->zm:Z

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    sget-object p0, Lcom/byazt/bt/ve;->z:Ljava/lang/String;

    return-object p0

    :catchall_0
    move-exception p0

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static tt(Ljava/lang/Boolean;Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/bt/ve;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/byazt/bt/ve;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/byazt/dna/c;->getCustomController()Lcom/byazt/lz/c;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 4
    invoke-interface {p0}, Lcom/byazt/lz/c;->isCanUsePhoneState()Z

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    .line 5
    :cond_1
    sget-boolean p1, Lcom/byazt/bt/ve;->gt:Z

    if-nez p1, :cond_4

    sget-boolean p1, Lcom/byazt/bt/ve;->nu:Z

    if-eqz p1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    .line 7
    :cond_3
    invoke-static {p2}, Lcom/byazt/bt/ve;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_4
    :goto_0
    sget-object p0, Lcom/byazt/bt/ve;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static tt(Landroid/content/Context;)Z
    .locals 3

    .line 14
    sget-boolean v0, Lcom/byazt/bt/ve;->qy:Z

    if-eqz v0, :cond_0

    .line 15
    sget-boolean p0, Lcom/byazt/bt/ve;->x:Z

    return p0

    .line 16
    :cond_0
    const-class v0, Lcom/byazt/bt/ve;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-boolean v1, Lcom/byazt/bt/ve;->qy:Z

    if-eqz v1, :cond_1

    .line 18
    sget-boolean p0, Lcom/byazt/bt/ve;->x:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return p0

    .line 19
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/byazt/bt/ve;->c(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, p0, :cond_2

    .line 20
    sput-boolean v1, Lcom/byazt/bt/ve;->x:Z

    :cond_2
    if-nez p0, :cond_3

    .line 21
    sput-boolean v1, Lcom/byazt/bt/ve;->x:Z

    .line 22
    :cond_3
    sput-boolean v2, Lcom/byazt/bt/ve;->qy:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :catchall_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    sget-boolean p0, Lcom/byazt/bt/ve;->x:Z

    return p0

    :catchall_1
    move-exception p0

    .line 25
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private static uj(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/bt/ve;->d:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/byazt/bt/ve;->d:Landroid/net/wifi/WifiManager;

    return-object p0

    .line 3
    :cond_0
    const-class v0, Lcom/byazt/bt/ve;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/byazt/bt/ve;->d:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 5
    sget-object p0, Lcom/byazt/bt/ve;->d:Landroid/net/wifi/WifiManager;

    monitor-exit v0

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    sput-object p0, Lcom/byazt/bt/ve;->d:Landroid/net/wifi/WifiManager;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget-object p0, Lcom/byazt/bt/ve;->d:Landroid/net/wifi/WifiManager;

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static uj(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 18
    invoke-interface {p0}, Lcom/byazt/dna/c;->getCustomController()Lcom/byazt/lz/c;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 19
    invoke-interface {p0}, Lcom/byazt/lz/c;->isCanUsePhoneState()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 20
    :cond_0
    sget-object p0, Lcom/byazt/bt/ve;->sp:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 21
    sget-object p0, Lcom/byazt/bt/ve;->sp:Ljava/lang/String;

    return-object p0

    .line 22
    :cond_1
    sget-boolean p0, Lcom/byazt/bt/ve;->rl:Z

    if-eqz p0, :cond_2

    .line 23
    sget-object p0, Lcom/byazt/bt/ve;->sp:Ljava/lang/String;

    return-object p0

    .line 24
    :cond_2
    const-class p0, Lcom/byazt/bt/ve;

    monitor-enter p0

    .line 25
    :try_start_0
    sget-boolean v0, Lcom/byazt/bt/ve;->rl:Z

    if-eqz v0, :cond_3

    .line 26
    sget-object p1, Lcom/byazt/bt/ve;->sp:Ljava/lang/String;

    monitor-exit p0

    return-object p1

    .line 27
    :cond_3
    invoke-static {p1}, Lcom/byazt/bt/ve;->c(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    if-nez p1, :cond_4

    .line 28
    sget-object p1, Lcom/byazt/bt/ve;->sp:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object p1

    .line 29
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/byazt/bt/ve;->sp:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    const/4 p1, 0x1

    .line 30
    :try_start_2
    sput-boolean p1, Lcom/byazt/bt/ve;->rl:Z

    .line 31
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    sget-object p0, Lcom/byazt/bt/ve;->sp:Ljava/lang/String;

    return-object p0

    :catchall_1
    move-exception p1

    .line 33
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static uj(Ljava/lang/Boolean;Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 10
    sget-object v0, Lcom/byazt/bt/ve;->uj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    sget-object p0, Lcom/byazt/bt/ve;->uj:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_2

    .line 12
    invoke-interface {p1}, Lcom/byazt/dna/c;->getCustomController()Lcom/byazt/lz/c;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 13
    invoke-interface {p0}, Lcom/byazt/lz/c;->isCanUseWifiState()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/byazt/lz/c;->isCanUseLocation()Z

    move-result p0

    if-nez p0, :cond_4

    :cond_1
    return-object v0

    .line 14
    :cond_2
    sget-boolean v1, Lcom/byazt/bt/ve;->my:Z

    if-eqz v1, :cond_3

    .line 15
    sget-object p0, Lcom/byazt/bt/ve;->uj:Ljava/lang/String;

    return-object p0

    .line 16
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v0

    .line 17
    :cond_4
    invoke-static {p1, p2}, Lcom/byazt/bt/ve;->sl(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized ve(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom",
            "HardwareIds"
        }
    .end annotation

    const-class v0, Lcom/byazt/bt/ve;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 12
    monitor-exit v0

    return-object v1

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "android_id"

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 14
    :catch_0
    :goto_0
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v2, 0xd

    if-ge p0, v2, :cond_2

    :cond_1
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :cond_2
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static ve(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "02:00:00:00:00:00"

    .line 9
    :try_start_0
    invoke-static {p0, p1}, Lcom/byazt/bt/ve;->c(Lcom/byazt/dna/c;Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    move-object v0, p0

    :catchall_0
    return-object v0
.end method

.method private static ve(Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "new_mac_address"

    const-string v1, ""

    .line 16
    invoke-static {v0, v1, p0}, Lcom/byazt/bt/x;->tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/dna/c;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "time"

    .line 19
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "value"

    .line 20
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "armor_service"

    .line 21
    invoke-static {v1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/dna/n;

    invoke-interface {v1, v0}, Lcom/byazt/dna/n;->decryptAESWithCBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v1, 0x337f9800

    cmp-long v3, v4, v1

    if-gtz v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    .line 23
    :catch_0
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/bt/ve;->c(Lcom/byazt/dna/c;ZILcom/byazt/lz/ve;)V

    .line 24
    sget-object p0, Lcom/byazt/bt/ve;->z:Ljava/lang/String;

    return-object p0
.end method

.method public static ve(Ljava/lang/Boolean;Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/bt/ve;->ve:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/byazt/bt/ve;->ve:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_2

    .line 3
    invoke-interface {p1}, Lcom/byazt/dna/c;->getCustomController()Lcom/byazt/lz/c;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 4
    invoke-interface {p0}, Lcom/byazt/lz/c;->isCanUseWifiState()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/byazt/lz/c;->isCanUseLocation()Z

    move-result p0

    if-nez p0, :cond_4

    :cond_1
    return-object v0

    .line 5
    :cond_2
    sget-boolean v1, Lcom/byazt/bt/ve;->rh:Z

    if-eqz v1, :cond_3

    .line 6
    sget-object p0, Lcom/byazt/bt/ve;->ve:Ljava/lang/String;

    return-object p0

    .line 7
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v0

    .line 8
    :cond_4
    invoke-static {p1, p2}, Lcom/byazt/bt/ve;->da(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x(Lcom/byazt/dna/c;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/byazt/bt/ve;->t(Lcom/byazt/dna/c;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/byazt/bt/ve;->t:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method
