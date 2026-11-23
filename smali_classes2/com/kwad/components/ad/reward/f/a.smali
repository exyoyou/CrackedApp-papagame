.class public final Lcom/kwad/components/ad/reward/f/a;
.super Lcom/kwad/components/ad/k/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/components/ad/k/a<",
        "Lcom/kwad/components/core/video/h;",
        ">;"
    }
.end annotation


# instance fields
.field private ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

.field private mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private vA:Lcom/kwad/components/offline/api/core/adlive/listener/AdLivePlayStateListener;

.field private vy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/components/core/video/h;",
            ">;"
        }
    .end annotation
.end field

.field private vz:J


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;Lcom/kwad/sdk/core/response/model/AdInfo;)V
    .locals 2
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/k/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->vy:Ljava/util/List;

    .line 10
    .line 11
    const-wide/16 v0, 0x7530

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/kwad/components/ad/reward/f/a;->vz:J

    .line 14
    .line 15
    new-instance v0, Lcom/kwad/components/ad/reward/f/a$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/f/a$1;-><init>(Lcom/kwad/components/ad/reward/f/a;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->vA:Lcom/kwad/components/offline/api/core/adlive/listener/AdLivePlayStateListener;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/kwad/components/ad/reward/f/a;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/kwad/components/ad/reward/f/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    const/4 p3, 0x2

    .line 31
    if-ne p2, p3, :cond_0

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p2, 0x0

    .line 36
    :goto_0
    if-eqz p2, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->ak(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    iput-wide p1, p0, Lcom/kwad/components/ad/reward/f/a;->vz:J

    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/ad/reward/f/a;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 49
    .line 50
    iget-object p2, p0, Lcom/kwad/components/ad/reward/f/a;->vA:Lcom/kwad/components/offline/api/core/adlive/listener/AdLivePlayStateListener;

    .line 51
    .line 52
    invoke-interface {p1, p2}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->registerAdLivePlayStateListener(Lcom/kwad/components/offline/api/core/adlive/listener/AdLivePlayStateListener;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method static synthetic a(Lcom/kwad/components/ad/reward/f/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kwad/components/ad/reward/f/a;->vz:J

    return-wide v0
.end method

.method static synthetic a(Lcom/kwad/components/ad/reward/f/a;Lcom/kwad/sdk/g/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/reward/f/a;->b(Lcom/kwad/sdk/g/a;)V

    return-void
.end method

.method private a(Lcom/kwad/components/core/video/h;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->vy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private b(Lcom/kwad/components/core/video/h;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->vy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private b(Lcom/kwad/sdk/g/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/g/a<",
            "Lcom/kwad/components/core/video/h;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->vy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/components/core/video/h;

    .line 3
    invoke-interface {p1, v1}, Lcom/kwad/sdk/g/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private iq()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->vy:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/ad/reward/f/a;->vA:Lcom/kwad/components/offline/api/core/adlive/listener/AdLivePlayStateListener;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->unRegisterAdLivePlayStateListener(Lcom/kwad/components/offline/api/core/adlive/listener/AdLivePlayStateListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getAppId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Lcom/kwad/components/ad/reward/f/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 29
    .line 30
    invoke-static {v3}, Lcom/kwad/sdk/core/response/helper/a;->cw(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v4, p0, Lcom/kwad/components/ad/reward/f/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 39
    .line 40
    invoke-static {v4}, Lcom/kwad/sdk/core/response/helper/a;->cy(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    sget-object v5, Lcom/kwad/components/ad/reward/monitor/LivePlayMonitorType;->LIVE_PLAY_MODULE_RELEASE_INNER_EXCEPTION:Lcom/kwad/components/ad/reward/monitor/LivePlayMonitorType;

    .line 49
    .line 50
    invoke-virtual {v5}, Lcom/kwad/components/ad/reward/monitor/LivePlayMonitorType;->getValue()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v7, "LivePlayModule releaseInner error: "

    .line 57
    .line 58
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-static/range {v1 .. v6}, Lcom/kwad/components/ad/reward/monitor/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/kwad/components/core/video/i;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/kwad/components/core/video/h;

    invoke-direct {p0, p1}, Lcom/kwad/components/ad/reward/f/a;->b(Lcom/kwad/components/core/video/h;)V

    return-void
.end method

.method public final synthetic b(Lcom/kwad/components/core/video/i;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/components/core/video/h;

    invoke-direct {p0, p1}, Lcom/kwad/components/ad/reward/f/a;->a(Lcom/kwad/components/core/video/h;)V

    return-void
.end method

.method public final getCurrentShowShopItemInfo()Lcom/kwad/components/offline/api/core/adlive/model/LiveShopItemInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->getCurrentShowShopItemInfo()Lcom/kwad/components/offline/api/core/adlive/model/LiveShopItemInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getPlayDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->getPlayDuration()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->onPause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->onResume()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->pause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final registerAdLiveCallerContextListener(Lcom/kwad/components/offline/api/core/adlive/listener/AdLiveCallerContextListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->registerAdLiveCallerContextListener(Lcom/kwad/components/offline/api/core/adlive/listener/AdLiveCallerContextListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final release()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/k/a;->release()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/f/a;->iq()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final removeInterceptor(Lcom/kwad/components/offline/api/core/adlive/listener/OnAdLiveResumeInterceptor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->removeInterceptor(Lcom/kwad/components/offline/api/core/adlive/listener/OnAdLiveResumeInterceptor;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->resume()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setAudioEnabled(ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->setAudioEnabled(ZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final skipToEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->skipToEnd()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final unRegisterAdLiveCallerContextListener(Lcom/kwad/components/offline/api/core/adlive/listener/AdLiveCallerContextListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/f/a;->ir:Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->unRegisterAdLiveCallerContextListener(Lcom/kwad/components/offline/api/core/adlive/listener/AdLiveCallerContextListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
