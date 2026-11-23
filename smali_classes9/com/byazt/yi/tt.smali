.class public Lcom/byazt/yi/tt;
.super Lcom/byazt/nc/sl;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd8,
        0xd
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Landroid/content/Context;

.field public da:Z

.field public i:Ljava/lang/Double;

.field public m:Lcom/byazt/xjc/ve;

.field public n:J

.field public nu:Z

.field public sl:Z

.field public final sp:Ljava/lang/String;

.field public t:J

.field public final tt:Lcom/byazt/ete/ic;

.field public u:Lcom/byazt/dj/tt;

.field public uj:Ljava/lang/String;

.field public ve:Z

.field public x:I

.field public yp:Lcom/byazt/gl/c;

.field public z:Lcom/byazt/pop/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/sl;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/yi/tt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/byazt/yi/tt;->x:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/byazt/yi/tt;->i:Ljava/lang/Double;

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/byazt/yi/tt;->da:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/byazt/yi/tt;->sl:Z

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    iput-wide v2, p0, Lcom/byazt/yi/tt;->t:J

    .line 27
    .line 28
    iput-object p1, p0, Lcom/byazt/yi/tt;->c:Landroid/content/Context;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    .line 31
    .line 32
    iput-object p3, p0, Lcom/byazt/yi/tt;->u:Lcom/byazt/dj/tt;

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/byazt/yi/tt;->ve:Z

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/byazt/yi/tt;->sp:Ljava/lang/String;

    .line 67
    .line 68
    const/16 p1, 0x8

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/byazt/yi/tt;->getLifecycleId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {p2, p3, p1, v0}, Lcom/byazt/rgb/tt;->c(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public static synthetic c(Lcom/byazt/yi/tt;)Lcom/byazt/pop/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yi/tt;->z:Lcom/byazt/pop/c;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/yi/tt;->yp:Lcom/byazt/gl/c;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/yi/tt;->sp:Ljava/lang/String;

    new-instance v1, Lcom/byazt/yi/tt$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/byazt/yi/tt$2;-><init>(Lcom/byazt/yi/tt;Ljava/util/function/Function;)V

    invoke-static {v0, v1}, Lcom/byazt/yi/c;->c(Ljava/lang/String;Lcom/byazt/gl/c;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/byazt/yi/tt$3;

    invoke-direct {v0, p0}, Lcom/byazt/yi/tt$3;-><init>(Lcom/byazt/yi/tt;)V

    invoke-static {p1, p2, v0}, Lcom/byazt/nr/tt;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/nr/tt$c;)Z

    .line 5
    iget-object p1, p0, Lcom/byazt/yi/tt;->u:Lcom/byazt/dj/tt;

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/byazt/lvl/c;->c()Lcom/byazt/lvl/c;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/yi/tt;->u:Lcom/byazt/dj/tt;

    invoke-virtual {p2}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/byazt/lvl/c;->c(Lcom/byazt/dj/tt;Ljava/lang/String;)V

    .line 7
    iget-boolean p1, p0, Lcom/byazt/yi/tt;->nu:Z

    if-nez p1, :cond_1

    const/16 p1, 0x8

    .line 8
    iget-object p2, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1, p2}, Lcom/byazt/cf/ve;->c(ILcom/byazt/ete/ic;)V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/yi/tt;->preloadNextVideo()V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/yi/tt;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yi/tt;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/yi/tt;)Lcom/byazt/gl/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yi/tt;->yp:Lcom/byazt/gl/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/yi/tt;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/byazt/yi/tt;->getLifecycleId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-static {v0, v1}, Lcom/byazt/rgb/tt;->ve(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getExpirationTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/yi/tt;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFullVideoAdType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/byazt/aas/rl;->ve(Lcom/byazt/ete/ic;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    return v0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/aas/rl;->uj(Lcom/byazt/ete/ic;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    return v0

    .line 35
    :cond_3
    const/4 v0, 0x0

    .line 36
    return v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getLifecycleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->zm()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->yt()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/byazt/yi/tt;->getExpirationTimestamp()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "expireTimestamp"

    .line 18
    .line 19
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/byazt/fcd/uj;->c(Lcom/byazt/ete/ic;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "adSceneType"

    .line 33
    .line 34
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    return-object v0
.end method

.method public getMediationManager()Lcom/byazt/sbm/uj;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/ah/tt;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ah/tt;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/yi/tt;->sl:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-static {v0, p1, p2, p3}, Lcom/byazt/aas/h;->c(Lcom/byazt/ete/ic;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/byazt/yi/tt;->sl:Z

    .line 13
    .line 14
    return-void
.end method

.method public preloadNextVideo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/yi/tt;->u:Lcom/byazt/dj/tt;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-boolean v0, p0, Lcom/byazt/yi/tt;->nu:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    return-void

    .line 16
    :cond_2
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->hz()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    return-void

    .line 27
    :cond_3
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/yi/tt;->ve:Z

    .line 28
    .line 29
    iget-object v1, p0, Lcom/byazt/yi/tt;->u:Lcom/byazt/dj/tt;

    .line 30
    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    invoke-static {}, Lcom/byazt/cf/tt;->c()Lcom/byazt/cf/tt;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/byazt/yi/tt;->u:Lcom/byazt/dj/tt;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/byazt/cf/ve;->c(Lcom/byazt/dj/tt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    :catchall_0
    :cond_4
    return-void
.end method

.method public setAdInteractionListener(Lcom/byazt/ocd/tt;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->rl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v1, Lcom/byazt/ocd/tt;

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setDownloadListener(Lcom/byazt/ocd/ve;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/byazt/pop/c$c;->c(Lcom/byazt/ocd/ve;)Lcom/byazt/pop/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/byazt/yi/tt;->z:Lcom/byazt/pop/c;

    .line 6
    .line 7
    return-void
.end method

.method public setExpirationTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/yi/tt;->n:J

    .line 2
    .line 3
    return-void
.end method

.method public setFullScreenVideoAdInteractionListener(Lcom/byazt/gl/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/tt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object v0, p0, Lcom/byazt/yi/tt;->sp:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/byazt/yi/c;->c(Ljava/lang/String;Lcom/byazt/gl/c;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iput-object p1, p0, Lcom/byazt/yi/tt;->yp:Lcom/byazt/gl/c;

    .line 15
    .line 16
    return-void
.end method

.method public setInsertAdBundle(Lcom/byazt/xjc/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yi/tt;->m:Lcom/byazt/xjc/ve;

    .line 2
    .line 3
    return-void
.end method

.method public setPreload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/tt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/byazt/yi/tt;->ve:Z

    .line 12
    .line 13
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yi/tt;->i:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setSecondAdPage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/yi/tt;->nu:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVideoCacheCallbackResult(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/yi/tt;->x:I

    .line 2
    .line 3
    return-void
.end method

.method public showFullScreenVideoAd(Landroid/app/Activity;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/byazt/yi/tt;->getLifecycleId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/rgb/tt;->tt(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "0"

    .line 4
    :goto_1
    new-instance v3, Lcom/byazt/ddx/c$c;

    invoke-direct {v3}, Lcom/byazt/ddx/c$c;-><init>()V

    invoke-virtual {v3, v2}, Lcom/byazt/ddx/c$c;->n(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v2

    const-string v3, "fullscreen_interstitial_ad"

    invoke-virtual {v2, v3}, Lcom/byazt/ddx/c$c;->c(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v2

    const-string v4, "show_start"

    invoke-virtual {v2, v4}, Lcom/byazt/ddx/c$c;->tt(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/byazt/ddx/c$c;->uj(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/byazt/ddx/c$c;->c(Lcom/byazt/ya/c;)V

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "TTFullScreenVideoAdImpl"

    const-string v0, "showFullScreenVideoAd error1: activity is finishing"

    .line 6
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v2

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/byazt/yi/tt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_4

    .line 9
    iget-object v2, p0, Lcom/byazt/yi/tt;->uj:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/byazt/yi/tt;->ve:Z

    invoke-static {v0, v3, p1, v2, v4}, Lcom/byazt/iyp/tt;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/byazt/yi/tt;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    iget-object v0, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_11

    invoke-static {v0}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    goto/16 :goto_5

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/byazt/yi/tt;->getInteractionType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_6

    .line 13
    new-instance v0, Lcom/byazt/yi/tt$1;

    const-string v3, "full_register_download"

    invoke-direct {v0, p0, v3}, Lcom/byazt/yi/tt$1;-><init>(Lcom/byazt/yi/tt;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    .line 14
    :cond_6
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object v0

    const-string v3, "full_video_show_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Lcom/byazt/it/c;->get(Ljava/lang/String;J)J

    if-nez p1, :cond_7

    .line 15
    iget-object v0, p0, Lcom/byazt/yi/tt;->c:Landroid/content/Context;

    goto :goto_2

    :cond_7
    move-object v0, p1

    :goto_2
    if-nez v0, :cond_8

    .line 16
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 17
    :cond_8
    invoke-direct {p0}, Lcom/byazt/yi/tt;->c()V

    .line 18
    iget-object v3, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->by()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 19
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTFullScreenVideoLandscapeActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3

    .line 20
    :cond_9
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTFullScreenVideoActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_3
    if-nez p1, :cond_a

    const/high16 p1, 0x10000000

    .line 21
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    :cond_a
    iget-object p1, p0, Lcom/byazt/yi/tt;->u:Lcom/byazt/dj/tt;

    if-eqz p1, :cond_b

    .line 23
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->rl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v2

    const-string v4, "is_adm"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_b
    const-string p1, "is_preload"

    .line 24
    iget-boolean v4, p0, Lcom/byazt/yi/tt;->ve:Z

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "object_create_ts"

    .line 25
    iget-wide v4, p0, Lcom/byazt/yi/tt;->t:J

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 26
    iget-object p1, p0, Lcom/byazt/yi/tt;->i:Ljava/lang/Double;

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    const-string p1, "_client_bidding_aution_price"

    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    iget-object p1, p0, Lcom/byazt/yi/tt;->uj:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "rit_scene"

    .line 28
    iget-object v1, p0, Lcom/byazt/yi/tt;->uj:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    :cond_d
    iget p1, p0, Lcom/byazt/yi/tt;->x:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_e

    const-string v1, "key_video_cache_callback"

    .line 30
    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    :cond_e
    iget-boolean p1, p0, Lcom/byazt/yi/tt;->nu:Z

    if-eqz p1, :cond_f

    const-string p1, "is_second_page"

    .line 32
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    :cond_f
    iget-object p1, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    invoke-static {v3, p1}, Lcom/byazt/aas/nb;->c(Landroid/content/Intent;Lcom/byazt/ete/ic;)V

    const-string p1, "multi_process_key"

    .line 34
    iget-object v1, p0, Lcom/byazt/yi/tt;->sp:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object p1, p0, Lcom/byazt/yi/tt;->m:Lcom/byazt/xjc/ve;

    if-eqz p1, :cond_10

    .line 36
    invoke-virtual {p1}, Lcom/byazt/xjc/ve;->i()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "insert_ad_bundle"

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    :cond_10
    invoke-direct {p0, v0, v3}, Lcom/byazt/yi/tt;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    invoke-static {}, Lcom/byazt/dz/uj;->c()Lcom/byazt/dz/uj;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {p1, v0}, Lcom/byazt/dz/uj;->c(Lcom/byazt/ete/ic;)Lcom/byazt/dz/uj;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/byazt/dz/uj;->c(I)Lcom/byazt/dz/uj;

    :cond_11
    :goto_5
    return-void
.end method

.method public showFullScreenVideoAd(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p1, "TTFullScreenVideoAdImpl"

    const-string p2, "The param ritScenes can not be null!"

    .line 39
    invoke-static {p1, p2}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_0
    invoke-static {p2}, Lcom/byazt/sq/n;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "customize_scenes"

    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iput-object p3, p0, Lcom/byazt/yi/tt;->uj:Ljava/lang/String;

    goto :goto_0

    .line 43
    :cond_1
    iput-object p2, p0, Lcom/byazt/yi/tt;->uj:Ljava/lang/String;

    .line 44
    :goto_0
    invoke-virtual {p0, p1}, Lcom/byazt/yi/tt;->showFullScreenVideoAd(Landroid/app/Activity;)V

    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/yi/tt;->da:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/yi/tt;->tt:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/byazt/aas/h;->c(Lcom/byazt/ete/ic;Ljava/lang/Double;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/byazt/yi/tt;->da:Z

    .line 13
    .line 14
    return-void
.end method
