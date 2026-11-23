.class public Lcn/fly/tools/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/fly/tools/utils/e$a;
    }
.end annotation


# static fields
.field private static a:Lcn/fly/tools/utils/e;

.field private static final j:Ljava/lang/Object;


# instance fields
.field private volatile b:Ljava/util/List;

.field private volatile c:Ljava/util/List;

.field private volatile d:Ljava/lang/Object;

.field private volatile e:Ljava/lang/Object;

.field private volatile f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private g:J

.field private h:Lcn/fly/tools/utils/e$a;

.field private volatile i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcn/fly/tools/utils/e;->j:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcn/fly/tools/utils/e;->b:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcn/fly/tools/utils/e;->c:Ljava/util/List;

    .line 17
    .line 18
    invoke-direct {p0}, Lcn/fly/tools/utils/e;->g()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcn/fly/tools/utils/e;->e:Ljava/lang/Object;

    .line 23
    .line 24
    return-void
.end method

.method public static a()Lcn/fly/tools/utils/e;
    .locals 2

    .line 2
    sget-object v0, Lcn/fly/tools/utils/e;->a:Lcn/fly/tools/utils/e;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcn/fly/tools/utils/e;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcn/fly/tools/utils/e;->a:Lcn/fly/tools/utils/e;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcn/fly/tools/utils/e;

    invoke-direct {v1}, Lcn/fly/tools/utils/e;-><init>()V

    sput-object v1, Lcn/fly/tools/utils/e;->a:Lcn/fly/tools/utils/e;

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
    sget-object v0, Lcn/fly/tools/utils/e;->a:Lcn/fly/tools/utils/e;

    return-object v0
.end method

.method static synthetic a(Lcn/fly/tools/utils/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/e;->d:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Landroid/content/Context;IIZ)Ljava/util/List;
    .locals 7

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "039cdTcbcicjchcbckFieIcicechehehchcjDd[ckecdcdcfhdkdkcgfbdddffhcgedfgdcecebddfgdf"

    .line 21
    invoke-static {v1}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/fly/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "041cd;cbcicjchcbckDieDcicechehehchcj\'dZckecdcdcfhdkdkcgdcfgecfidkfhcgedfgdcecebddfgdf"

    .line 22
    invoke-static {v1}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/fly/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_8

    .line 23
    iget-object v1, p0, Lcn/fly/tools/utils/e;->d:Ljava/lang/Object;

    if-nez v1, :cond_2

    const-string v1, "008fZcjMbchNchcjSd"

    .line 24
    invoke-static {v1}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/fly/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcn/fly/tools/utils/e;->d:Ljava/lang/Object;

    .line 25
    :cond_2
    iget-object v1, p0, Lcn/fly/tools/utils/e;->d:Ljava/lang/Object;

    if-nez v1, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 26
    :cond_3
    sget-object v1, Lcn/fly/tools/utils/e;->j:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    .line 27
    :try_start_1
    iget-object v4, p0, Lcn/fly/tools/utils/e;->d:Ljava/lang/Object;

    const-string v5, "003[diLi[eh"

    invoke-static {v5}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcn/fly/tools/utils/e;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "003;di.iDeh"

    .line 28
    invoke-static {v4}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v5, p2

    invoke-direct {p0, p1, v4, v5, v6}, Lcn/fly/tools/utils/e;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_5
    :goto_3
    if-eqz p3, :cond_6

    const/4 p2, 0x1

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_7

    .line 29
    iget-object p2, p0, Lcn/fly/tools/utils/e;->d:Ljava/lang/Object;

    const-string v4, "007dehDefcjcidg"

    invoke-static {v4}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v4}, Lcn/fly/tools/utils/e;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "007dehNefcjcidg"

    .line 30
    invoke-static {p2}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v4, p3

    invoke-direct {p0, p1, p2, v4, v5}, Lcn/fly/tools/utils/e;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 31
    :cond_7
    monitor-exit v1

    goto :goto_6

    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 32
    :cond_8
    :goto_6
    iget-object p1, p0, Lcn/fly/tools/utils/e;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    if-eqz p4, :cond_b

    const-string p1, "003!di5iYeh"

    .line 33
    invoke-static {p1}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/fly/tools/utils/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 34
    iget-object p2, p0, Lcn/fly/tools/utils/e;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_9
    iget-object p1, p0, Lcn/fly/tools/utils/e;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "007deh-efcjcidg"

    .line 36
    invoke-static {p1}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/fly/tools/utils/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 37
    iget-object p2, p0, Lcn/fly/tools/utils/e;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_a
    iget-object p1, p0, Lcn/fly/tools/utils/e;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "passive"

    .line 39
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 40
    iget-object p2, p0, Lcn/fly/tools/utils/e;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_b
    iget-object p1, p0, Lcn/fly/tools/utils/e;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    .line 42
    iget-object p1, p0, Lcn/fly/tools/utils/e;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 43
    iget-object p3, p0, Lcn/fly/tools/utils/e;->b:Ljava/util/List;

    const-string p4, "025cdIcbcicjchcbckQfScj2bch<chcj^d4ckedcj+bch5chcjFd"

    invoke-static {p4}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcn/fly/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {p4, v1}, Lcn/fly/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p3, "025cd>cbcicjchcbck<fPcj?bch]chcj[dFckedcj5bchGchcj)d"

    .line 44
    invoke-static {p3}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/fly/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    aput-object p2, p4, v2

    invoke-static {p3, p4}, Lcn/fly/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 45
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/fly/tools/utils/e;->g:J

    .line 46
    iget-object p1, p0, Lcn/fly/tools/utils/e;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception p1

    .line 47
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_e
    :goto_8
    return-object v0
.end method

.method private a(Z)Ljava/util/List;
    .locals 5

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    .line 57
    :try_start_0
    iget-object p1, p0, Lcn/fly/tools/utils/e;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/fly/tools/utils/e;->g:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x2bf20

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    .line 58
    iget-object p1, p0, Lcn/fly/tools/utils/e;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "025cdQcbcicjchcbck1fRcjQbch.chcj]dZckedcjXbch7chcjHd"

    .line 59
    invoke-static {v2}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/fly/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcn/fly/tools/utils/ReflectHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, p0, Lcn/fly/tools/utils/e;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 62
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4

    .line 48
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    move-result v0

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/fly/tools/utils/e;->b(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 50
    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcn/fly/tools/b/i;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v1, p0, Lcn/fly/tools/utils/e;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 52
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[212] cur err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/fly/tools/utils/e;->b(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 5

    .line 54
    invoke-static {}, Lcn/fly/commons/e;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "017RchehfkcicjccchcbKe\'cifhEdc*eeMfe?cb"

    .line 55
    invoke-static {v0}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {p1, v0, v2, v4}, Lcn/fly/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static synthetic b(Lcn/fly/tools/utils/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/fly/tools/utils/e;->f()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 2
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    move-result v0

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/fly/tools/b/e;->a(Landroid/content/Context;)Lcn/fly/tools/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/fly/tools/b/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/fly/tools/b/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :catchall_0
    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/fly/tools/b/e;->a(Landroid/content/Context;)Lcn/fly/tools/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/fly/tools/b/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7

    .line 6
    invoke-static {}, Lcn/fly/commons/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    invoke-static {p1}, Lcn/fly/tools/b/e;->a(Landroid/content/Context;)Lcn/fly/tools/b/e;

    move-result-object v1

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    iget-object v6, p0, Lcn/fly/tools/utils/e;->e:Ljava/lang/Object;

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcn/fly/tools/b/e;->a(Ljava/lang/String;JFLjava/lang/Object;)V

    .line 8
    sget-object p1, Lcn/fly/tools/utils/e;->j:Ljava/lang/Object;

    invoke-virtual {p1, p3, p4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 10
    :goto_0
    invoke-direct {p0}, Lcn/fly/tools/utils/e;->j()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcn/fly/tools/utils/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/fly/tools/utils/e;->i()V

    return-void
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcn/fly/tools/utils/e;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcn/fly/tools/utils/e;)Ljava/util/List;
    .locals 0

    .line 2
    iget-object p0, p0, Lcn/fly/tools/utils/e;->c:Ljava/util/List;

    return-object p0
.end method

.method private e()V
    .locals 7

    .line 2
    invoke-static {}, Lcn/fly/commons/e;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "039cd2cbcicjchcbck,ieRcicechehehchcj>d^ckecdcdcfhdkdkcgfbdddffhcgedfgdcecebddfgdf"

    .line 3
    invoke-static {v2}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/fly/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    iget-object v2, p0, Lcn/fly/tools/utils/e;->d:Ljava/lang/Object;

    if-nez v2, :cond_0

    const-string v2, "008f^cjWbch3chcj=d"

    .line 5
    invoke-static {v2}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/fly/tools/utils/DH$SyncMtd;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcn/fly/tools/utils/e;->d:Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object v2, p0, Lcn/fly/tools/utils/e;->d:Ljava/lang/Object;

    if-nez v2, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    move-result v2

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_2

    invoke-static {}, Lcn/fly/FlySDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v2, v3, :cond_2

    .line 8
    invoke-static {}, Lcn/fly/commons/a/m;->a()Lcn/fly/commons/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcn/fly/commons/a/m;->b()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcn/fly/tools/utils/e$1;

    invoke-direct {v3, p0}, Lcn/fly/tools/utils/e$1;-><init>(Lcn/fly/tools/utils/e;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    move-result v2

    if-lt v2, v3, :cond_3

    .line 10
    iget-object v2, p0, Lcn/fly/tools/utils/e;->d:Ljava/lang/Object;

    const-string v3, "0265ciPe\'dichehJhe9cihcGdBehehdkOhch7cfehdc;cffFeeRcb?dg"

    invoke-static {v3}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 11
    invoke-direct {p0}, Lcn/fly/tools/utils/e;->h()Landroid/location/GnssStatus$Callback;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {}, Lcn/fly/commons/a/m;->a()Lcn/fly/commons/a/m;

    move-result-object v6

    invoke-virtual {v6}, Lcn/fly/commons/a/m;->b()Landroid/os/Handler;

    move-result-object v6

    aput-object v6, v5, v0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {}, Lcn/fly/tools/utils/s;->a()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v1

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v0

    .line 12
    invoke-static {v2, v3, v5, v4}, Lcn/fly/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v2

    const-string v3, "[212] rg >= 31"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 14
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "[212]"

    aput-object v4, v0, v1

    const-string v1, "%s"

    invoke-virtual {v3, v2, v1, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic e(Lcn/fly/tools/utils/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/fly/tools/utils/e;->j()V

    return-void
.end method

.method private f()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string v2, "018=cjXdBhc4i:ehdk4hchMcfehdcSgcd*di6eEcb"

    .line 11
    .line 12
    invoke-static {v2}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Lcn/fly/tools/utils/e$2;

    .line 17
    .line 18
    invoke-direct {v3, p0}, Lcn/fly/tools/utils/e$2;-><init>(Lcn/fly/tools/utils/e;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcn/fly/tools/utils/e$3;

    .line 25
    .line 26
    invoke-direct {v2, p0, v1}, Lcn/fly/tools/utils/e$3;-><init>(Lcn/fly/tools/utils/e;I)V

    .line 27
    .line 28
    .line 29
    const-string v3, "equals"

    .line 30
    .line 31
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v2, "008gcJehQgVdccjcb)e"

    .line 35
    .line 36
    invoke-static {v2}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Lcn/fly/tools/utils/e$4;

    .line 41
    .line 42
    invoke-direct {v3, p0, v1}, Lcn/fly/tools/utils/e$4;-><init>(Lcn/fly/tools/utils/e;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v2, "026cdPcbcicjchcbckYfIcjBbch]chcj5dYckhc!i ehdkHhch:cfeh"

    .line 54
    .line 55
    invoke-static {v2}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, "$"

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, "008Gedcheh8hede7ci"

    .line 68
    .line 69
    invoke-static {v2}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/4 v2, 0x1

    .line 85
    new-array v2, v2, [Ljava/lang/Class;

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    aput-object v1, v2, v3

    .line 89
    .line 90
    invoke-static {v0, v2}, Lcn/fly/tools/utils/ReflectHelper;->createProxy(Ljava/util/Map;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    return-object v0
.end method

.method private g()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    :try_start_0
    const-string v2, "0179cjJdKedcj[bchPchcjPd9dcGgcd7diCe6cb"

    .line 11
    .line 12
    invoke-static {v2}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Lcn/fly/tools/utils/e$5;

    .line 17
    .line 18
    invoke-direct {v3, p0}, Lcn/fly/tools/utils/e$5;-><init>(Lcn/fly/tools/utils/e;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-string v2, "equals"

    .line 25
    .line 26
    new-instance v3, Lcn/fly/tools/utils/e$6;

    .line 27
    .line 28
    invoke-direct {v3, p0, v1}, Lcn/fly/tools/utils/e$6;-><init>(Lcn/fly/tools/utils/e;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v2, "008gcQehZg?dccjcbCe"

    .line 35
    .line 36
    invoke-static {v2}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Lcn/fly/tools/utils/e$7;

    .line 41
    .line 42
    invoke-direct {v3, p0, v1}, Lcn/fly/tools/utils/e$7;-><init>(Lcn/fly/tools/utils/e;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    new-array v1, v1, [Ljava/lang/Class;

    .line 50
    .line 51
    invoke-direct {p0}, Lcn/fly/tools/utils/e;->k()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v3, 0x0

    .line 56
    aput-object v2, v1, v3

    .line 57
    .line 58
    invoke-static {v0, v1}, Lcn/fly/tools/utils/ReflectHelper;->createProxy(Ljava/util/Map;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0
.end method

.method private h()Landroid/location/GnssStatus$Callback;
    .locals 2

    .line 1
    invoke-static {}, Lcn/fly/tools/utils/DH$SyncMtd;->getOSVersionIntForFly()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1f

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcn/fly/tools/utils/e$8;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcn/fly/tools/utils/e$8;-><init>(Lcn/fly/tools/utils/e;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0
.end method

.method private i()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/fly/tools/utils/e;->h:Lcn/fly/tools/utils/e$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcn/fly/tools/utils/e$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const-string v4, "[cl]"

    .line 19
    .line 20
    aput-object v4, v2, v3

    .line 21
    .line 22
    const-string v3, "%s"

    .line 23
    .line 24
    invoke-virtual {v1, v0, v3, v2}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    return-void
.end method

.method private j()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/fly/tools/utils/e;->e:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcn/fly/tools/utils/e;->d:Ljava/lang/Object;

    .line 6
    .line 7
    const-string v1, "013LciLe5cecjcc+e2dj)iNcb@cheWeh"

    .line 8
    .line 9
    invoke-static {v1}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    new-array v3, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v4, p0, Lcn/fly/tools/utils/e;->e:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    aput-object v4, v3, v5

    .line 20
    .line 21
    new-array v2, v2, [Ljava/lang/Class;

    .line 22
    .line 23
    invoke-direct {p0}, Lcn/fly/tools/utils/e;->k()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    aput-object v4, v2, v5

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static {v0, v1, v3, v2, v4}, Lcn/fly/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method private k()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/fly/tools/utils/e;->f:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string v0, "033cd)cbcicjchcbckCfUcj2bch$chcjJd\'ckedcjKbch chcjZdLedchehLhede3ci"

    .line 6
    .line 7
    invoke-static {v0}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcn/fly/tools/utils/e;->f:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    :catchall_0
    :cond_0
    iget-object v0, p0, Lcn/fly/tools/utils/e;->f:Ljava/lang/Class;

    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;IIZZ)Ljava/util/List;
    .locals 2

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-static {}, Lcn/fly/commons/CSCenter;->getInstance()Lcn/fly/commons/CSCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/fly/commons/CSCenter;->isLocationDataEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-direct {p0, p5}, Lcn/fly/tools/utils/e;->a(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    sget-object v1, Lcn/fly/tools/utils/e;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    invoke-direct {p0, p5}, Lcn/fly/tools/utils/e;->a(Z)Ljava/util/List;

    move-result-object p5

    invoke-interface {v0, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/fly/tools/utils/e;->a(Landroid/content/Context;IIZ)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 19
    :cond_1
    invoke-static {}, Lcn/fly/commons/CSCenter;->getInstance()Lcn/fly/commons/CSCenter;

    move-result-object p1

    invoke-virtual {p1}, Lcn/fly/commons/CSCenter;->getLocation()Landroid/location/Location;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object v0
.end method

.method public a(Lcn/fly/tools/utils/e$a;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcn/fly/tools/utils/e;->h:Lcn/fly/tools/utils/e$a;

    .line 9
    invoke-direct {p0}, Lcn/fly/tools/utils/e;->e()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 63
    iput-object p1, p0, Lcn/fly/tools/utils/e;->i:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "0031diNi:eh"

    .line 64
    invoke-static {v0}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "039cd!cbcicjchcbck-ie^cicechehehchcjQd:ckecdcdcfhdkdkcgfbdddffhcgedfgdcecebddfgdf"

    .line 65
    invoke-static {v0}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/fly/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    const-string v0, "007dehPefcjcidg"

    .line 66
    invoke-static {v0}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "039cd_cbcicjchcbck?ie0cicechehehchcjUd6ckecdcdcfhdkdkcgfbdddffhcgedfgdcecebddfgdf"

    .line 67
    invoke-static {v0}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/fly/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    const-string v0, "007deh*efcjcidg"

    .line 68
    invoke-static {v0}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "041cd9cbcicjchcbck]ieMcicechehehchcj>d$ckecdcdcfhdkdkcgdcfgecfidkfhcgedfgdcecebddfgdf"

    .line 69
    invoke-static {v0}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/fly/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "passive"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "039cd(cbcicjchcbckRie1cicechehehchcj]dOckecdcdcfhdkdkcgfbdddffhcgedfgdcecebddfgdf"

    .line 71
    invoke-static {v1}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/fly/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 72
    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "041cd7cbcicjchcbckOie8cicechehehchcjVd@ckecdcdcfhdkdkcgdcfgecfidkfhcgedfgdcecebddfgdf"

    .line 73
    invoke-static {p1}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/fly/tools/utils/DH$SyncMtd;->checkPermission(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 11
    iget-object v0, p0, Lcn/fly/tools/utils/e;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    const-string v0, "003Udi^i;eh"

    .line 2
    invoke-static {v0}, Lcn/fly/commons/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/fly/tools/utils/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
