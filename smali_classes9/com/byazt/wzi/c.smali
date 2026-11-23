.class public Lcom/byazt/wzi/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x678,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/wzi/c$c;
    }
.end annotation


# static fields
.field public static volatile ve:Lcom/byazt/wzi/c;


# instance fields
.field public a:J

.field public c:Landroid/content/Context;

.field public final n:Ljava/lang/Object;

.field public sp:Landroid/content/ServiceConnection;

.field public tt:Lcom/byazt/omf/da;

.field public uj:Ljava/util/concurrent/CountDownLatch;

.field public x:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/wzi/c;->n:Ljava/lang/Object;

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/byazt/wzi/c;->a:J

    .line 14
    .line 15
    new-instance v0, Lcom/byazt/wzi/c$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/byazt/wzi/c$1;-><init>(Lcom/byazt/wzi/c;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/byazt/wzi/c;->sp:Landroid/content/ServiceConnection;

    .line 21
    .line 22
    new-instance v0, Lcom/byazt/wzi/c$2;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/byazt/wzi/c$2;-><init>(Lcom/byazt/wzi/c;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/byazt/wzi/c;->x:Landroid/os/IBinder$DeathRecipient;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/byazt/wzi/c;->c:Landroid/content/Context;

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/byazt/wzi/c;->c()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static synthetic c(Lcom/byazt/wzi/c;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wzi/c;->x:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/wzi/c;Lcom/byazt/omf/da;)Lcom/byazt/omf/da;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/wzi/c;->tt:Lcom/byazt/omf/da;

    return-object p1
.end method

.method public static c(Landroid/content/Context;)Lcom/byazt/wzi/c;
    .locals 2

    .line 3
    sget-object v0, Lcom/byazt/wzi/c;->ve:Lcom/byazt/wzi/c;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/byazt/wzi/c;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/byazt/wzi/c;->ve:Lcom/byazt/wzi/c;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/byazt/wzi/c;

    invoke-direct {v1, p0}, Lcom/byazt/wzi/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/byazt/wzi/c;->ve:Lcom/byazt/wzi/c;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lcom/byazt/wzi/c;->ve:Lcom/byazt/wzi/c;

    return-object p0
.end method

.method private declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "MultiProcess"

    const-string v1, "BinderPool......connectBinderPoolService"

    .line 12
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/byazt/wzi/c;->uj:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/byazt/wzi/c;->c:Landroid/content/Context;

    const-class v3, Lcom/byazt/wzi/BinderPoolService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    iget-object v2, p0, Lcom/byazt/wzi/c;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/byazt/wzi/c;->sp:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/wzi/c;->a:J

    .line 17
    iget-object v0, p0, Lcom/byazt/wzi/c;->uj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MultiProcess"

    const-string v2, "connectBinderPoolService throws: "

    .line 19
    invoke-static {v1, v2, v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic n(Lcom/byazt/wzi/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/wzi/c;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/wzi/c;)Lcom/byazt/omf/da;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wzi/c;->tt:Lcom/byazt/omf/da;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/wzi/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/wzi/c;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic ve(Lcom/byazt/wzi/c;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wzi/c;->uj:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(I)Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/byazt/wzi/c;->tt:Lcom/byazt/omf/da;

    if-eqz v1, :cond_0

    .line 10
    invoke-interface {v1, p1}, Lcom/byazt/omf/da;->c(I)Landroid/os/IBinder;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method
