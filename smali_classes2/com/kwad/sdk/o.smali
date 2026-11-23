.class public final Lcom/kwad/sdk/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/o$a;
    }
.end annotation


# instance fields
.field private aGA:Lcom/kwad/sdk/g;

.field private aGB:Lcom/kwad/sdk/g;

.field private aGC:Lcom/kwad/sdk/g;

.field private aGD:Lcom/kwad/sdk/g;

.field private volatile aGE:Z

.field private aGF:Z

.field private aGG:Z

.field private aGH:Ljava/lang/String;

.field private volatile aGo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile aGp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile aGq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile aGr:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aGs:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile aGt:Ljava/lang/Boolean;

.field private aGu:Ljava/lang/String;

.field private aGv:I

.field private aGw:Z

.field private aGx:Lcom/kwad/components/core/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aGy:J

.field private aGz:J

.field private alK:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kwad/sdk/o;->aGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kwad/sdk/o;->aGp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kwad/sdk/o;->aGq:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kwad/sdk/o;->aGr:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kwad/sdk/o;->aGs:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/kwad/sdk/o;->aGt:Ljava/lang/Boolean;

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/kwad/sdk/o;->aGu:Ljava/lang/String;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/kwad/sdk/o;->aGE:Z

    .line 11
    iput-boolean v0, p0, Lcom/kwad/sdk/o;->aGF:Z

    .line 12
    iput-boolean v1, p0, Lcom/kwad/sdk/o;->aGG:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/o;-><init>()V

    return-void
.end method

.method private static GA()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/components/c;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/kwad/sdk/q;->s(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static GB()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/components/core/proxy/launchdialog/e;->vJ()Lcom/kwad/components/core/proxy/launchdialog/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/proxy/launchdialog/e;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static GC()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/kwad/components/core/d/a;->initAsync(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/kwad/sdk/q;->s(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static GD()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/kwad/components/core/d/a;->am(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/kwad/sdk/q;->s(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private GE()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/o;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/kwad/sdk/q;->s(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private GF()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/o;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/kwad/components/core/offline/b/b;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/kwad/sdk/q;->s(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private GG()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/sdk/o;->aGH:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/ai;->ap(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/kwad/sdk/o;->aGH:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private GH()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/kwad/sdk/core/config/c;->aPI:Lcom/kwad/sdk/core/config/item/s;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/s;->getValue()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/kwad/sdk/utils/ad;->parseJSON2MapString(Ljava/lang/String;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Lcom/kwad/sdk/o;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-static {v2, v3}, Lcom/kwad/sdk/core/threads/GlobalThreadPools;->r(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/core/threads/GlobalThreadPools;->NU()V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lcom/kwad/sdk/core/config/c;->aQC:Lcom/kwad/sdk/core/config/item/d;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/kwad/sdk/core/config/item/d;->Ld()Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/kwad/sdk/core/threads/GlobalThreadPools;->NS()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private GI()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/threads/GlobalThreadPools;->Oi()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/kwad/sdk/o$10;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/kwad/sdk/o$10;-><init>(Lcom/kwad/sdk/o;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static GJ()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getSDKConfig()Lcom/kwad/sdk/api/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/kwad/sdk/api/SdkConfig;->enableDebug:Z

    .line 6
    .line 7
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->init(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/kwad/sdk/q;->s(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static GK()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/wrapper/f;->XT()Lcom/kwad/sdk/wrapper/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/wrapper/f;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/kwad/sdk/q;->s(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static GL()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/c/b;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lcom/kwad/sdk/q;->s(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private GM()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/core/webview/b/a;->PH()Lcom/kwad/sdk/core/webview/b/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/kwad/sdk/o;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/webview/b/a;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private GN()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/core/network/idc/a;->Mo()Lcom/kwad/sdk/core/network/idc/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/kwad/sdk/o;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/network/idc/a;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lcom/kwad/sdk/q;->s(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static GO()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/core/download/a;->bQ(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/kwad/sdk/q;->s(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private GP()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/o;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a;->bP(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/kwad/sdk/q;->s(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static GQ()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/components/core/t/t;->wU()Lcom/kwad/components/core/t/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/core/t/t;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/kwad/sdk/q;->s(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static GR()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/components/core/q/b;->wf()Lcom/kwad/components/core/q/b;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->JA()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->JB()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v0, v1}, Lcom/kwad/components/core/q/b;->f(ZI)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private GS()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/o;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/utils/bf;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/kwad/sdk/q;->s(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static GT()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/app/b;->HO()Lcom/kwad/sdk/app/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/app/b;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/kwad/sdk/q;->s(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private GU()V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/kwad/sdk/o$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/sdk/o$2;-><init>(Lcom/kwad/sdk/o;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/kwad/library/solder/lib/i;->a(Lcom/kwad/library/solder/lib/i$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lcom/kwad/sdk/q;->s(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static Gs()Lcom/kwad/sdk/o;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o$a;->Hc()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private Gw()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/q;->bk(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private Gx()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/kwad/sdk/o;->alK:J

    .line 6
    .line 7
    invoke-static {}, Lcom/kwad/sdk/service/c;->init()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/kwad/sdk/k;->Fo()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/kwad/sdk/o;->GJ()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/kwad/sdk/o;->GK()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/kwad/sdk/o;->Gv()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v4, "initSDKModule enableInitStartMode: "

    .line 26
    .line 27
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lcom/kwad/sdk/o;->aGA:Lcom/kwad/sdk/g;

    .line 34
    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    iget-wide v3, p0, Lcom/kwad/sdk/o;->aGy:J

    .line 38
    .line 39
    invoke-static {v3, v4}, Lcom/kwad/sdk/g;->aj(J)Lcom/kwad/sdk/g;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iput-object v3, p0, Lcom/kwad/sdk/o;->aGA:Lcom/kwad/sdk/g;

    .line 44
    .line 45
    :cond_0
    if-nez v2, :cond_1

    .line 46
    .line 47
    iget-object v3, p0, Lcom/kwad/sdk/o;->aGA:Lcom/kwad/sdk/g;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/kwad/sdk/g;->report()V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-static {}, Lcom/kwad/sdk/o;->GA()V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/kwad/sdk/o;->GN()V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/kwad/sdk/o;->GO()V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/kwad/sdk/o;->GU()V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/kwad/sdk/o;->GG()V

    .line 65
    .line 66
    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/kwad/sdk/o;->Gy()V

    .line 70
    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    invoke-direct {p0, v3}, Lcom/kwad/sdk/o;->g(Lcom/kwad/sdk/g/a;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-static {}, Lcom/kwad/sdk/o;->GC()V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/kwad/sdk/o;->GE()V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/kwad/sdk/o;->GF()V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/kwad/sdk/o;->GL()V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/kwad/sdk/o;->GS()V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/kwad/sdk/o;->GQ()V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/kwad/sdk/wrapper/l;->Ov()V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lcom/kwad/sdk/o;->GB()V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/kwad/sdk/core/h/a;->Ov()V

    .line 101
    .line 102
    .line 103
    if-nez v2, :cond_3

    .line 104
    .line 105
    invoke-static {}, Lcom/kwad/sdk/a/a/c;->Hl()Lcom/kwad/sdk/a/a/c;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3}, Lcom/kwad/sdk/a/a/c;->Hn()V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lcom/kwad/components/core/p/a;->vL()Lcom/kwad/components/core/p/a;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v3}, Lcom/kwad/components/core/p/a;->vM()V

    .line 117
    .line 118
    .line 119
    :cond_3
    sget-object v3, Lcom/kwad/framework/a/a;->pd:Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_4

    .line 126
    .line 127
    :try_start_0
    const-class v3, Lcom/kwad/sdk/components/a;

    .line 128
    .line 129
    invoke-static {v3}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :catch_0
    nop

    .line 134
    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 135
    .line 136
    .line 137
    move-result-wide v3

    .line 138
    sub-long/2addr v3, v0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v1, "KSAdSDK init time:"

    .line 142
    .line 143
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-string v1, "KSAdSDK"

    .line 154
    .line 155
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const-string v0, "SDK_VERSION_NAME: 5.4.10.1 TK_VERSION_CODE: 6.2.3 BRIDGE_VERSION: 1.3"

    .line 159
    .line 160
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGB:Lcom/kwad/sdk/g;

    .line 164
    .line 165
    if-nez v0, :cond_5

    .line 166
    .line 167
    invoke-static {v3, v4}, Lcom/kwad/sdk/g;->ak(J)Lcom/kwad/sdk/g;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iput-object v0, p0, Lcom/kwad/sdk/o;->aGB:Lcom/kwad/sdk/g;

    .line 172
    .line 173
    :cond_5
    if-nez v2, :cond_6

    .line 174
    .line 175
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGB:Lcom/kwad/sdk/g;

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/kwad/sdk/g;->report()V

    .line 178
    .line 179
    .line 180
    :cond_6
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget-wide v0, v0, Lcom/kwad/sdk/o;->aGz:J

    .line 185
    .line 186
    const-wide/16 v2, 0x0

    .line 187
    .line 188
    cmp-long v4, v0, v2

    .line 189
    .line 190
    if-lez v4, :cond_7

    .line 191
    .line 192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 193
    .line 194
    .line 195
    move-result-wide v2

    .line 196
    sub-long/2addr v2, v0

    .line 197
    invoke-static {v2, v3}, Lcom/kwad/sdk/p;->ar(J)V

    .line 198
    .line 199
    .line 200
    :cond_7
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getSDKConfig()Lcom/kwad/sdk/api/SdkConfig;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-static {v2, v0, v1}, Lcom/kwad/sdk/f;->a(Lcom/kwad/sdk/api/SdkConfig;J)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 208
    .line 209
    const/4 v1, 0x1

    .line 210
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method private Gy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/mobileid/a;->init(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private Gz()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/kwad/sdk/o$6;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/sdk/o$6;-><init>(Lcom/kwad/sdk/o;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/kwad/sdk/o;->aGw:Z

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/kwad/sdk/commercial/c;->a(Lcom/kwad/sdk/commercial/c$a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/kwad/sdk/service/b;->holderSdkConfig(Lcom/kwad/sdk/api/SdkConfig;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->cJ(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/o;->GH()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/o;Lcom/kwad/sdk/core/response/model/SdkConfigData;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/kwad/sdk/o;->e(Lcom/kwad/sdk/core/response/model/SdkConfigData;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-static {p0, p1, p2}, Lcom/kwad/sdk/core/a/d;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private static bg(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/utils/ba;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "kssdk_remote"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method private static c(Lcom/kwad/sdk/api/SdkConfig;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/f;->c(Lcom/kwad/sdk/api/SdkConfig;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static cT(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/a/d;->ax(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static cU(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/a/d;->getResponseData(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static deleteCache()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->Lx()Lcom/kwad/sdk/core/diskcache/b/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/core/diskcache/b/a;->delete()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private e(Lcom/kwad/sdk/core/response/model/SdkConfigData;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Ju()Z

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/o;->GD()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    const-string v1, "KSAdSDK"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-direct {p0}, Lcom/kwad/sdk/o;->Gz()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/kwad/sdk/o;->GM()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Fs()Z

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/kwad/sdk/core/config/c;->aNB:Lcom/kwad/sdk/core/config/item/d;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/kwad/sdk/core/config/e;->a(Lcom/kwad/sdk/core/config/item/d;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->Ud()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/kwad/sdk/utils/ba;->isInMainProcess(Landroid/content/Context;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    :cond_0
    sget-object v0, Lcom/kwad/framework/a/a;->pe:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    :cond_1
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->Ud()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/kwad/sdk/api/loader/DynamicInstallReceiver;->registerToApp(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Kl()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-static {}, Lcom/kwad/sdk/wrapper/m;->Yb()Landroid/app/Application;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/kwad/sdk/b/a;->init(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-static {}, Lcom/kwad/sdk/o;->GR()V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/kwad/sdk/o;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/kwad/sdk/utils/bj;->init(Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lcom/kwad/components/core/a/a;->oE()Lcom/kwad/components/core/a/a;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/kwad/components/core/a/a;->az()V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lcom/kwad/sdk/o;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v1, Lcom/kwad/sdk/o$8;

    .line 95
    .line 96
    invoke-direct {v1, p0}, Lcom/kwad/sdk/o$8;-><init>(Lcom/kwad/sdk/o;)V

    .line 97
    .line 98
    .line 99
    const-wide/16 v2, 0x7530

    .line 100
    .line 101
    invoke-static {v0, v2, v3, v1}, Lcom/kwad/sdk/utils/h;->a(Landroid/content/Context;JLcom/kwad/sdk/collector/h;)V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lcom/kwad/sdk/core/network/idc/a;->Mo()Lcom/kwad/sdk/core/network/idc/a;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Km()Lcom/kwad/sdk/core/network/idc/a/b;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Kn()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/core/network/idc/a;->a(Lcom/kwad/sdk/core/network/idc/a/b;I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/SdkConfigData;->httpDnsInfo:Lcom/kwad/sdk/core/response/model/HttpDnsInfo;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/kwad/sdk/ip/direct/a;->a(Lcom/kwad/sdk/core/response/model/HttpDnsInfo;)V

    .line 122
    .line 123
    .line 124
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Ko()J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Kp()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/utils/bv;->a(JILandroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    invoke-static {}, Lcom/kwad/sdk/o;->GT()V

    .line 140
    .line 141
    .line 142
    invoke-direct {p0}, Lcom/kwad/sdk/o;->GP()V

    .line 143
    .line 144
    .line 145
    invoke-static {}, Lcom/kwad/components/core/i/a;->ra()Lcom/kwad/components/core/i/a;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {}, Lcom/kwad/sdk/o;->getContext()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/i/a;->at(Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    sget-object v0, Lcom/kwad/sdk/core/config/c;->aPu:Lcom/kwad/sdk/core/config/item/s;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/kwad/sdk/core/config/e;->a(Lcom/kwad/sdk/core/config/item/s;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0}, Lcom/kwad/sdk/crash/online/monitor/a;->dC(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {}, Lcom/kwad/sdk/core/imageloader/ImageLoaderPerfUtil;->report()V

    .line 166
    .line 167
    .line 168
    sget-object v0, Lcom/kwad/sdk/core/config/c;->aPD:Lcom/kwad/sdk/core/config/item/s;

    .line 169
    .line 170
    invoke-static {v0}, Lcom/kwad/sdk/core/config/e;->a(Lcom/kwad/sdk/core/config/item/s;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/kwad/sdk/m/f;->dC(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-static {}, Lcom/kwad/sdk/utils/at;->VN()Lcom/kwad/sdk/utils/at;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    sget-object v1, Lcom/kwad/sdk/core/config/c;->aPF:Lcom/kwad/sdk/core/config/item/s;

    .line 182
    .line 183
    invoke-static {v1}, Lcom/kwad/sdk/core/config/e;->a(Lcom/kwad/sdk/core/config/item/s;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/at;->dC(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    sget-object v0, Lcom/kwad/sdk/core/config/c;->aPH:Lcom/kwad/sdk/core/config/item/s;

    .line 191
    .line 192
    invoke-static {v0}, Lcom/kwad/sdk/core/config/e;->a(Lcom/kwad/sdk/core/config/item/s;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/kwad/sdk/core/threads/c;->dC(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-static {}, Lcom/kwad/sdk/monitor/b;->Sx()V

    .line 200
    .line 201
    .line 202
    invoke-static {}, Lcom/kwad/sdk/o;->getContext()Landroid/content/Context;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 207
    .line 208
    new-instance v2, Lcom/kwad/sdk/o$9;

    .line 209
    .line 210
    invoke-direct {v2, p0}, Lcom/kwad/sdk/o$9;-><init>(Lcom/kwad/sdk/o;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v1, v2}, Lcom/kwad/sdk/core/response/model/SdkConfigData;->getAppConfigData(Ljava/lang/Object;Lcom/kwad/sdk/g/b;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    check-cast p1, Ljava/lang/Boolean;

    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    invoke-static {v0, p1}, Lcom/kwad/sdk/wrapper/m;->E(Landroid/content/Context;Z)V

    .line 224
    .line 225
    .line 226
    sget-object p1, Lcom/kwad/sdk/core/config/c;->aPZ:Lcom/kwad/sdk/core/config/item/l;

    .line 227
    .line 228
    invoke-static {p1}, Lcom/kwad/sdk/core/config/e;->a(Lcom/kwad/sdk/core/config/item/l;)I

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    invoke-static {p1}, Lcom/kwad/sdk/kgeo/a;->fc(I)V

    .line 233
    .line 234
    .line 235
    :try_start_1
    invoke-static {}, Lcom/kwad/components/core/webview/tachikoma/g;->yH()Lcom/kwad/components/core/webview/tachikoma/g;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1}, Lcom/kwad/components/core/webview/tachikoma/g;->init()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :catchall_1
    move-exception p1

    .line 244
    invoke-static {p1}, Lcom/kwad/components/core/d/a;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 245
    .line 246
    .line 247
    :goto_1
    invoke-direct {p0}, Lcom/kwad/sdk/o;->GI()V

    .line 248
    .line 249
    .line 250
    :try_start_2
    invoke-static {}, Lcom/kwad/sdk/f/a/a;->Ra()Lcom/kwad/sdk/f/a/a;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    sget-object v0, Lcom/kwad/sdk/core/config/c;->aPE:Lcom/kwad/sdk/core/config/item/l;

    .line 255
    .line 256
    invoke-static {v0}, Lcom/kwad/sdk/core/config/e;->a(Lcom/kwad/sdk/core/config/item/l;)I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/f/a/a;->init(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :catchall_2
    move-exception p1

    .line 265
    invoke-static {p1}, Lcom/kwad/components/core/d/a;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    :goto_2
    invoke-static {}, Lcom/kwad/sdk/o;->getContext()Landroid/content/Context;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {p1}, Lcom/kwad/components/core/pfmonitor/d;->aF(Landroid/content/Context;)V

    .line 273
    .line 274
    .line 275
    return-void
.end method

.method public static varargs f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "autoRT"

    .line 2
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, -0x1

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "getAutoRevertTime"

    .line 4
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p0, 0x2710

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "TRANSFORM_API_HOST"

    .line 6
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 7
    invoke-static {}, Lcom/kwad/sdk/core/network/idc/a;->Mo()Lcom/kwad/sdk/core/network/idc/a;

    move-result-object p0

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "api"

    invoke-virtual {p0, p1, v1}, Lcom/kwad/sdk/core/network/idc/a;->ab(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "reportDynamicUpdate"

    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    aget-object p0, p1, v2

    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/kwad/sdk/commercial/c;->h(Lorg/json/JSONObject;)V

    .line 10
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    const-string p1, "enableDynamic"

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->Ud()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 13
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->Ud()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/kwad/sdk/utils/ba;->isInMainProcess(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/kwad/framework/a/a;->ayM:Ljava/lang/Boolean;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v2, 0x1

    .line 15
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p1, "getThrowClassNotFoundSet"

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 17
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->enableInflaterOptimize()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 18
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Lb()Ljava/util/Set;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_6
    return-object v0

    :catchall_0
    move-exception p0

    .line 19
    :try_start_1
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-object v0
.end method

.method public static f(Ljava/util/Map;)V
    .locals 0
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/a/d;->h(Ljava/util/Map;)V

    return-void
.end method

.method private g(Lcom/kwad/sdk/g/a;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/kwad/sdk/o$7;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kwad/sdk/o$7;-><init>(Lcom/kwad/sdk/o;Lcom/kwad/sdk/g/a;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/kwad/components/core/request/h;->a(Lcom/kwad/components/core/request/h$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/kwad/sdk/q;->s(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getSDKConfig()Lcom/kwad/sdk/api/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/kwad/sdk/api/SdkConfig;->appId:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method

.method public static getAppInfo()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/request/model/a;->Np()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getSDKConfig()Lcom/kwad/sdk/api/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/kwad/sdk/api/SdkConfig;->appName:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getDeviceInfo()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/request/model/b;->Nr()Lcom/kwad/sdk/core/request/model/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/a/a;->toJson()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getDid()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/utils/bf;->getDeviceId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getNetworkInfo()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/request/model/d;->Nu()Lcom/kwad/sdk/core/request/model/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/a/a;->toJson()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "5.4.10.1"

    return-object v0
.end method

.method public static getSdkConfig()Lcom/kwad/sdk/api/SdkConfig;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getSDKConfig()Lcom/kwad/sdk/api/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static isDebugLogEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getSDKConfig()Lcom/kwad/sdk/api/SdkConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/kwad/sdk/api/SdkConfig;->enableDebug:Z

    .line 6
    .line 7
    return v0
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/service/c;->h(Ljava/lang/Class;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public static pauseCurrentPlayer()V
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/components/a/a/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static r(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public static resumeCurrentPlayer()V
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/components/a/a/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static setLoadingLottieAnimation(ZI)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 1
    const-class p0, Lcom/kwad/components/a/a/a;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static setLoadingLottieAnimationColor(ZI)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    const-class p0, Lcom/kwad/components/a/a/a;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static setThemeMode(I)V
    .locals 0

    .line 1
    const-class p0, Lcom/kwad/components/a/a/a;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final Fu()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/o;->aGw:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Fv()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/o;->aGE:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Fw()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/o;->aGF:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Fx()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final GV()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/o;->Gv()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    return v0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method public final GW()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kwad/sdk/o;->alK:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final Gt()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGr:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/kwad/sdk/o;->GV()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "startAsync call: "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "jky"

    .line 30
    .line 31
    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/core/threads/GlobalThreadPools;->NW()Ljava/util/concurrent/ExecutorService;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lcom/kwad/sdk/o$5;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/kwad/sdk/o$5;-><init>(Lcom/kwad/sdk/o;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getSDKConfig()Lcom/kwad/sdk/api/SdkConfig;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/kwad/sdk/f;->b(Lcom/kwad/sdk/api/SdkConfig;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final Gu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGq:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGr:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final Gv()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/sdk/o;->Gw()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/kwad/sdk/o;->aGt:Ljava/lang/Boolean;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Gv()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/kwad/sdk/o;->aGt:Ljava/lang/Boolean;

    .line 22
    .line 23
    :cond_1
    iget-object v1, p0, Lcom/kwad/sdk/o;->aGt:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    return v0

    .line 32
    :cond_2
    iget-object v1, p0, Lcom/kwad/sdk/o;->aGs:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    return v2

    .line 42
    :cond_3
    const-class v1, Lcom/kwad/sdk/api/core/IKsAdSDK;

    .line 43
    .line 44
    const-string v3, "start"

    .line 45
    .line 46
    new-array v4, v0, [Ljava/lang/Class;

    .line 47
    .line 48
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/kwad/sdk/o;->aGs:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/kwad/sdk/o;->aGs:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67
    .line 68
    .line 69
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "enableInitStartMode return mApiHadStartMethod: "

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/kwad/sdk/o;->aGs:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGs:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    return v0
.end method

.method public final b(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KSAdSDK initAsync call mIsSdkInit:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/o;->aGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-static {p1, p2}, Lcom/kwad/sdk/o;->a(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1, p2}, Lcom/kwad/sdk/o;->a(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)V

    .line 6
    invoke-static {}, Lcom/kwad/sdk/core/threads/GlobalThreadPools;->NW()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/o$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/kwad/sdk/o$4;-><init>(Lcom/kwad/sdk/o;Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 7
    invoke-static {p2}, Lcom/kwad/sdk/f;->a(Lcom/kwad/sdk/api/SdkConfig;)V

    return-void
.end method

.method public final getAdManager()Lcom/kwad/sdk/api/KsLoadManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGx:Lcom/kwad/components/core/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/components/core/b;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/kwad/components/core/b;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kwad/sdk/o;->aGx:Lcom/kwad/components/core/b;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGx:Lcom/kwad/components/core/b;

    .line 13
    .line 14
    return-object v0
.end method

.method public final getApiVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGu:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getApiVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/o;->aGv:I

    .line 2
    .line 3
    return v0
.end method

.method final declared-synchronized init(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/16 v0, 0x2712

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    if-eqz p2, :cond_3

    .line 7
    .line 8
    :try_start_0
    iget-object v1, p2, Lcom/kwad/sdk/api/SdkConfig;->appId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "init appId:"

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p2, Lcom/kwad/sdk/api/SdkConfig;->appId:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, "--mIsSdkInit:"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/kwad/sdk/o;->aGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/kwad/sdk/o;->aGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-static {p1, p2}, Lcom/kwad/sdk/o;->a(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :cond_1
    :try_start_1
    invoke-static {p1, p2}, Lcom/kwad/sdk/o;->a(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/kwad/sdk/o;->bg(Landroid/content/Context;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v1, "intKSRemoteProcess appId="

    .line 69
    .line 70
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p2, Lcom/kwad/sdk/api/SdkConfig;->appId:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->Uc()V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/kwad/sdk/k;->Fo()V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/kwad/sdk/o;->GJ()V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/kwad/sdk/o;->aGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    .line 89
    const/4 v1, 0x1

    .line 90
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/kwad/sdk/q;->He()V

    .line 95
    .line 96
    .line 97
    invoke-direct {p0}, Lcom/kwad/sdk/o;->Gx()V

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lcom/kwad/sdk/q;->bj(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    :try_start_3
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {p1, v1}, Lcom/kwad/sdk/q;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance p1, Lcom/kwad/sdk/e;

    .line 113
    .line 114
    invoke-direct {p1, v0, v1}, Lcom/kwad/sdk/e;-><init>(ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p2, p1}, Lcom/kwad/sdk/f;->a(Lcom/kwad/sdk/api/SdkConfig;Lcom/kwad/sdk/e;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    .line 119
    .line 120
    monitor-exit p0

    .line 121
    return-void

    .line 122
    :catchall_1
    move-exception p1

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    :goto_0
    :try_start_4
    sget-object p1, Lcom/kwad/sdk/e;->aFO:Lcom/kwad/sdk/e;

    .line 125
    .line 126
    invoke-static {p2, p1}, Lcom/kwad/sdk/f;->a(Lcom/kwad/sdk/api/SdkConfig;Lcom/kwad/sdk/e;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 127
    .line 128
    .line 129
    monitor-exit p0

    .line 130
    return-void

    .line 131
    :goto_1
    :try_start_5
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {p1, v1}, Lcom/kwad/sdk/q;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance p1, Lcom/kwad/sdk/e;

    .line 139
    .line 140
    invoke-direct {p1, v0, v1}, Lcom/kwad/sdk/e;-><init>(ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {p2, p1}, Lcom/kwad/sdk/f;->a(Lcom/kwad/sdk/api/SdkConfig;Lcom/kwad/sdk/e;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 144
    .line 145
    .line 146
    :goto_2
    monitor-exit p0

    .line 147
    return-void

    .line 148
    :catchall_2
    move-exception p1

    .line 149
    monitor-exit p0

    .line 150
    throw p1
.end method

.method public final newComponentProxy(Ljava/lang/Class;Ljava/lang/Object;)Lcom/kwad/sdk/api/proxy/IComponentProxy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/kwad/sdk/api/proxy/IComponentProxy;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/kwad/sdk/service/c;->g(Ljava/lang/Class;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    instance-of v1, p2, Lcom/kwad/sdk/api/proxy/BaseProxyActivity;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-class v0, Lcom/kwad/components/core/proxy/d;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of p2, p2, Lcom/kwad/sdk/api/proxy/BaseProxyFragmentActivity;

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    const-class v0, Lcom/kwad/components/core/proxy/e;

    .line 19
    .line 20
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "--getIsExternal:"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/kwad/sdk/o;->Fu()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, "--mIsSdkInit:"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/kwad/sdk/o;->Fx()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, "--componentClass"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p2}, Lcom/kwad/components/core/d/a;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/kwad/sdk/api/proxy/IComponentProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    return-object p1

    .line 73
    :catch_0
    move-exception p1

    .line 74
    invoke-static {p1}, Lcom/kwad/components/core/d/a;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    return-object p1
.end method

.method public final setAdxEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/sdk/o;->aGG:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setApiVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/o;->aGu:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setApiVersionCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/o;->aGv:I

    .line 2
    .line 3
    return-void
.end method

.method public final setAppTag(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGH:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/kwad/sdk/utils/ai;->ap(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/kwad/sdk/o;->aGH:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public final setInitStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/sdk/o;->aGz:J

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    invoke-static {p1, p2}, Lcom/kwad/sdk/utils/q;->setInitStartTime(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setIsExternal(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/sdk/o;->aGw:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLaunchTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/sdk/o;->aGy:J

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/kwad/sdk/utils/q;->setLaunchTime(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setPersonalRecommend(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/sdk/o;->aGE:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setProgrammaticRecommend(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/sdk/o;->aGF:Z

    .line 2
    .line 3
    return-void
.end method

.method final declared-synchronized start()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    iget-object v2, p0, Lcom/kwad/sdk/o;->aGC:Lcom/kwad/sdk/g;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-wide v2, p0, Lcom/kwad/sdk/o;->aGy:J

    .line 11
    .line 12
    invoke-static {v2, v3}, Lcom/kwad/sdk/g;->al(J)Lcom/kwad/sdk/g;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iput-object v2, p0, Lcom/kwad/sdk/o;->aGC:Lcom/kwad/sdk/g;

    .line 17
    .line 18
    :cond_0
    iget-object v2, p0, Lcom/kwad/sdk/o;->aGC:Lcom/kwad/sdk/g;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/kwad/sdk/g;->report()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getSDKConfig()Lcom/kwad/sdk/api/SdkConfig;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p0}, Lcom/kwad/sdk/o;->Gv()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x1

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    invoke-static {v2}, Lcom/kwad/sdk/o;->c(Lcom/kwad/sdk/api/SdkConfig;)V

    .line 35
    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, 0x0

    .line 40
    :goto_0
    iget-object v5, p0, Lcom/kwad/sdk/o;->aGo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_2

    .line 47
    .line 48
    sget-object v3, Lcom/kwad/sdk/e;->aFP:Lcom/kwad/sdk/e;

    .line 49
    .line 50
    invoke-static {v2, v3}, Lcom/kwad/sdk/f;->b(Lcom/kwad/sdk/api/SdkConfig;Lcom/kwad/sdk/e;)V

    .line 51
    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    :cond_2
    iget-object v5, p0, Lcom/kwad/sdk/o;->aGp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_3

    .line 61
    .line 62
    invoke-static {v2}, Lcom/kwad/sdk/o;->c(Lcom/kwad/sdk/api/SdkConfig;)V

    .line 63
    .line 64
    .line 65
    const/4 v3, 0x1

    .line 66
    :cond_3
    if-nez v3, :cond_6

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/kwad/sdk/o;->Gy()V

    .line 69
    .line 70
    .line 71
    new-instance v3, Lcom/kwad/sdk/o$1;

    .line 72
    .line 73
    invoke-direct {v3, p0}, Lcom/kwad/sdk/o$1;-><init>(Lcom/kwad/sdk/o;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v3}, Lcom/kwad/sdk/o;->g(Lcom/kwad/sdk/g/a;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/kwad/sdk/a/a/c;->Hl()Lcom/kwad/sdk/a/a/c;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lcom/kwad/sdk/a/a/c;->Hn()V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/kwad/components/core/p/a;->vL()Lcom/kwad/components/core/p/a;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Lcom/kwad/components/core/p/a;->vM()V

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lcom/kwad/sdk/o;->aGA:Lcom/kwad/sdk/g;

    .line 94
    .line 95
    if-eqz v3, :cond_4

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/kwad/sdk/g;->report()V

    .line 98
    .line 99
    .line 100
    :cond_4
    iget-object v3, p0, Lcom/kwad/sdk/o;->aGB:Lcom/kwad/sdk/g;

    .line 101
    .line 102
    if-eqz v3, :cond_5

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/kwad/sdk/g;->report()V

    .line 105
    .line 106
    .line 107
    :cond_5
    iget-object v3, p0, Lcom/kwad/sdk/o;->aGp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    .line 109
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    .line 111
    .line 112
    invoke-static {v2}, Lcom/kwad/sdk/o;->c(Lcom/kwad/sdk/api/SdkConfig;)V

    .line 113
    .line 114
    .line 115
    :cond_6
    new-instance v2, Lcom/kwad/sdk/o$3;

    .line 116
    .line 117
    invoke-direct {v2, p0}, Lcom/kwad/sdk/o$3;-><init>(Lcom/kwad/sdk/o;)V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Kx()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    int-to-long v3, v3

    .line 125
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 126
    .line 127
    invoke-static {v2, v3, v4, v5}, Lcom/kwad/sdk/utils/i;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lcom/kwad/sdk/o;->aGD:Lcom/kwad/sdk/g;

    .line 131
    .line 132
    if-nez v2, :cond_7

    .line 133
    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 135
    .line 136
    .line 137
    move-result-wide v2

    .line 138
    sub-long/2addr v2, v0

    .line 139
    invoke-static {v2, v3}, Lcom/kwad/sdk/g;->am(J)Lcom/kwad/sdk/g;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iput-object v0, p0, Lcom/kwad/sdk/o;->aGD:Lcom/kwad/sdk/g;

    .line 144
    .line 145
    :cond_7
    iget-object v0, p0, Lcom/kwad/sdk/o;->aGC:Lcom/kwad/sdk/g;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/kwad/sdk/g;->report()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .line 149
    .line 150
    monitor-exit p0

    .line 151
    return-void

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    :try_start_1
    invoke-static {v0}, Lcom/kwad/sdk/q;->s(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    .line 155
    .line 156
    monitor-exit p0

    .line 157
    return-void

    .line 158
    :catchall_1
    move-exception v0

    .line 159
    monitor-exit p0

    .line 160
    throw v0
.end method

.method public final unInit()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/download/b;->Lz()Lcom/kwad/sdk/core/download/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/kwad/sdk/o;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/download/b;->bS(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
