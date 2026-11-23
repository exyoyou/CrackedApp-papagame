.class public Lcom/byazt/yi/ve;
.super Lcom/byazt/nc/z;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd8,
        0x36
    }
.end annotation


# instance fields
.field public a:J

.field public final c:Landroid/content/Context;

.field public da:Lcom/byazt/tn/tt;

.field public gr:Lcom/byazt/xjc/ve;

.field public gt:Ljava/lang/Double;

.field public gu:J

.field public i:Lcom/byazt/tn/c;

.field public m:Ljava/lang/String;

.field public my:I

.field public n:Ljava/lang/String;

.field public nu:Ljava/lang/String;

.field public qy:Z

.field public rh:Z

.field public rl:Z

.field public sl:Lcom/byazt/pop/c;

.field public final sp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public t:Ljava/lang/String;

.field public final tt:Lcom/byazt/ete/ic;

.field public u:I

.field public uj:Z

.field public final ve:Lcom/byazt/dj/tt;

.field public x:Lcom/byazt/tn/c;

.field public yp:Z

.field public z:I

.field public zm:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/z;-><init>()V

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
    iput-object v0, p0, Lcom/byazt/yi/ve;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/byazt/yi/ve;->z:I

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/byazt/yi/ve;->my:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/byazt/yi/ve;->gt:Ljava/lang/Double;

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/byazt/yi/ve;->rl:Z

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/byazt/yi/ve;->qy:Z

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    iput-wide v2, p0, Lcom/byazt/yi/ve;->gu:J

    .line 30
    .line 31
    iput-object p1, p0, Lcom/byazt/yi/ve;->c:Landroid/content/Context;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

    .line 34
    .line 35
    iput-object p3, p0, Lcom/byazt/yi/ve;->ve:Lcom/byazt/dj/tt;

    .line 36
    .line 37
    iput-boolean v1, p0, Lcom/byazt/yi/ve;->uj:Z

    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/byazt/yi/ve;->t:Ljava/lang/String;

    .line 70
    .line 71
    const/4 p1, 0x7

    .line 72
    invoke-virtual {p0}, Lcom/byazt/yi/ve;->getLifecycleId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {p2, p3, p1, v0}, Lcom/byazt/rgb/tt;->c(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public static synthetic c(Lcom/byazt/yi/ve;)Lcom/byazt/pop/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yi/ve;->sl:Lcom/byazt/pop/c;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/yi/ve;->t:Ljava/lang/String;

    new-instance v1, Lcom/byazt/yi/ve$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/byazt/yi/ve$2;-><init>(Lcom/byazt/yi/ve;Ljava/util/function/Function;)V

    invoke-static {v0, v1}, Lcom/byazt/yi/c;->c(Ljava/lang/String;Lcom/byazt/tn/c;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/yi/ve;->i:Lcom/byazt/tn/c;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/yi/ve;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/ete/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/yi/ve;->i:Lcom/byazt/tn/c;

    invoke-static {v0, v1}, Lcom/byazt/yi/c;->c(Ljava/lang/String;Lcom/byazt/tn/c;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/yi/ve;->da:Lcom/byazt/tn/tt;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/byazt/yi/ve;->setCustomPlayAgain(Z)V

    .line 7
    iget-object v0, p0, Lcom/byazt/yi/ve;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/ete/l;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/yi/ve;->da:Lcom/byazt/tn/tt;

    invoke-static {v0, v1}, Lcom/byazt/yi/c;->c(Ljava/lang/String;Lcom/byazt/tn/tt;)V

    :cond_1
    return-void
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 8
    new-instance v0, Lcom/byazt/yi/ve$3;

    invoke-direct {v0, p0}, Lcom/byazt/yi/ve$3;-><init>(Lcom/byazt/yi/ve;)V

    invoke-static {p1, p2, v0}, Lcom/byazt/nr/tt;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/nr/tt$c;)Z

    .line 9
    iget-object p1, p0, Lcom/byazt/yi/ve;->ve:Lcom/byazt/dj/tt;

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/byazt/lvl/c;->c()Lcom/byazt/lvl/c;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/yi/ve;->ve:Lcom/byazt/dj/tt;

    invoke-virtual {p2}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/byazt/lvl/c;->c(Lcom/byazt/dj/tt;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/l;->c(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-static {}, Lcom/byazt/lvl/c;->c()Lcom/byazt/lvl/c;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/yi/ve;->ve:Lcom/byazt/dj/tt;

    iget-object v0, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/l;->uj(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/byazt/lvl/c;->tt(Lcom/byazt/dj/tt;Ljava/lang/String;)V

    .line 13
    :cond_1
    iget-boolean p1, p0, Lcom/byazt/yi/ve;->zm:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/byazt/yi/ve;->yp:Z

    if-nez p1, :cond_2

    const/4 p1, 0x7

    .line 14
    iget-object p2, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1, p2}, Lcom/byazt/cf/ve;->c(ILcom/byazt/ete/ic;)V

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/yi/ve;->preloadNextVideo()V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/yi/ve;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yi/ve;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/yi/ve;)Lcom/byazt/tn/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yi/ve;->x:Lcom/byazt/tn/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/yi/ve;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

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
    invoke-virtual {p0}, Lcom/byazt/yi/ve;->getLifecycleId()Ljava/lang/String;

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
    iget-wide v0, p0, Lcom/byazt/yi/ve;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

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
    iget-object v0, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

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
    iget-object v0, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->yt()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/yi/ve;->getExpirationTimestamp()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "expireTimestamp"

    .line 25
    .line 26
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/byazt/ete/kp;->uj(Lcom/byazt/ete/ic;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "isRDEnable"

    .line 40
    .line 41
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const-string v1, "isPangle"

    .line 45
    .line 46
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/byazt/fcd/uj;->c(Lcom/byazt/ete/ic;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "adSceneType"

    .line 62
    .line 63
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_1
    const/4 v0, 0x0

    .line 68
    return-object v0
.end method

.method public getMediationManager()Lcom/byazt/sbm/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/ah/uj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ah/uj;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getRewardVideoAdType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

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
    iget-object v0, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

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
    iget-object v0, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

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

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/yi/ve;->qy:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-static {v0, p1, p2, p3}, Lcom/byazt/aas/h;->c(Lcom/byazt/ete/ic;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/byazt/yi/ve;->qy:Z

    .line 13
    .line 14
    return-void
.end method

.method public preloadNextVideo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/yi/ve;->ve:Lcom/byazt/dj/tt;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-boolean v0, p0, Lcom/byazt/yi/ve;->yp:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    return-void

    .line 16
    :cond_2
    iget-boolean v0, p0, Lcom/byazt/yi/ve;->zm:Z

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    return-void

    .line 21
    :cond_3
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->hz()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    return-void

    .line 32
    :cond_4
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/yi/ve;->uj:Z

    .line 33
    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    invoke-static {}, Lcom/byazt/cf/sp;->c()Lcom/byazt/cf/sp;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/byazt/yi/ve;->ve:Lcom/byazt/dj/tt;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/byazt/cf/ve;->c(Lcom/byazt/dj/tt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :catchall_0
    :cond_5
    return-void
.end method

.method public setAdInteractionListener(Lcom/byazt/ocd/tt;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

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

.method public setCustomPlayAgain(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/yi/ve;->rh:Z

    .line 2
    .line 3
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
    iput-object p1, p0, Lcom/byazt/yi/ve;->sl:Lcom/byazt/pop/c;

    .line 6
    .line 7
    return-void
.end method

.method public setExpirationTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/yi/ve;->a:J

    .line 2
    .line 3
    return-void
.end method

.method public setInsertAdBundle(Lcom/byazt/xjc/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yi/ve;->gr:Lcom/byazt/xjc/ve;

    .line 2
    .line 3
    return-void
.end method

.method public setMetaMd5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yi/ve;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayAgain(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/yi/ve;->yp:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPlayAgainCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/yi/ve;->z:I

    .line 2
    .line 3
    return-void
.end method

.method public setPlayAgainRewardAmount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yi/ve;->nu:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayAgainRewardName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yi/ve;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayAgainSourceRit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/yi/ve;->u:I

    .line 2
    .line 3
    return-void
.end method

.method public setPreload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/ve;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iput-boolean v0, p0, Lcom/byazt/yi/ve;->uj:Z

    .line 12
    .line 13
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yi/ve;->gt:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setRewardAdInteractionListener(Lcom/byazt/tn/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/ve;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object v0, p0, Lcom/byazt/yi/ve;->t:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/byazt/yi/c;->c(Ljava/lang/String;Lcom/byazt/tn/c;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/byazt/yi/ve;->x:Lcom/byazt/tn/c;

    .line 16
    .line 17
    return-void
.end method

.method public setRewardPlayAgainController(Lcom/byazt/tn/tt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/ve;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/byazt/yi/ve;->setCustomPlayAgain(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/yi/ve;->t:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/ete/l;->tt(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p1}, Lcom/byazt/yi/c;->c(Ljava/lang/String;Lcom/byazt/tn/tt;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/byazt/yi/ve;->da:Lcom/byazt/tn/tt;

    .line 24
    .line 25
    return-void
.end method

.method public setRewardPlayAgainInteractionListener(Lcom/byazt/tn/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/ve;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object v0, p0, Lcom/byazt/yi/ve;->t:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ete/l;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p1}, Lcom/byazt/yi/c;->c(Ljava/lang/String;Lcom/byazt/tn/c;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/byazt/yi/ve;->i:Lcom/byazt/tn/c;

    .line 20
    .line 21
    return-void
.end method

.method public setSecondAdPage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/yi/ve;->zm:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVideoCacheCallbackResult(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/yi/ve;->my:I

    .line 2
    .line 3
    return-void
.end method

.method public showRewardVideoAd(Landroid/app/Activity;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/byazt/yi/ve;->getLifecycleId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/rgb/tt;->tt(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

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

    const-string v3, "rewarded_video"

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

    const-string p1, "TTRewardVideoAdImpl"

    const-string v0, "showRewardVideoAd error1: activity is finishing"

    .line 6
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v2

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/byazt/yi/ve;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_4

    .line 9
    iget-object v2, p0, Lcom/byazt/yi/ve;->n:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/byazt/yi/ve;->uj:Z

    invoke-static {v0, v3, p1, v2, v4}, Lcom/byazt/iyp/tt;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/byazt/yi/ve;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    iget-object v0, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_13

    invoke-static {v0}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object v0

    if-nez v0, :cond_5

    goto/16 :goto_6

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/byazt/yi/ve;->getInteractionType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_6

    .line 13
    new-instance v0, Lcom/byazt/yi/ve$1;

    const-string v3, "reward_register_download"

    invoke-direct {v0, p0, v3}, Lcom/byazt/yi/ve$1;-><init>(Lcom/byazt/yi/ve;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    .line 14
    :cond_6
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object v0

    const-string v3, "reward_video_show_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Lcom/byazt/it/c;->put(Ljava/lang/String;J)V

    if-nez p1, :cond_7

    .line 15
    iget-object v0, p0, Lcom/byazt/yi/ve;->c:Landroid/content/Context;

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
    invoke-direct {p0}, Lcom/byazt/yi/ve;->c()V

    .line 18
    iget-object v3, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->by()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 19
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoLandscapeActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3

    .line 20
    :cond_9
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTRewardVideoActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_3
    if-nez p1, :cond_a

    const/high16 p1, 0x10000000

    .line 21
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    :cond_a
    iget-boolean p1, p0, Lcom/byazt/yi/ve;->yp:Z

    if-eqz p1, :cond_b

    const-string p1, "is_play_again"

    .line 23
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "play_again_count"

    .line 24
    iget v4, p0, Lcom/byazt/yi/ve;->z:I

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    .line 25
    :cond_b
    iget-object p1, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result p1

    iput p1, p0, Lcom/byazt/yi/ve;->u:I

    .line 26
    :goto_4
    iget-boolean p1, p0, Lcom/byazt/yi/ve;->zm:Z

    if-eqz p1, :cond_c

    const-string p1, "is_second_page"

    .line 27
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_c
    const-string p1, "source_rit_id"

    .line 28
    iget v4, p0, Lcom/byazt/yi/ve;->u:I

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "custom_play_again"

    .line 29
    iget-boolean v4, p0, Lcom/byazt/yi/ve;->rh:Z

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    iget-object p1, p0, Lcom/byazt/yi/ve;->ve:Lcom/byazt/dj/tt;

    if-eqz p1, :cond_d

    const-string v4, "media_extra"

    .line 31
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    iget-object p1, p0, Lcom/byazt/yi/ve;->ve:Lcom/byazt/dj/tt;

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->qy()Ljava/lang/String;

    move-result-object p1

    const-string v4, "userData"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    iget-object p1, p0, Lcom/byazt/yi/ve;->ve:Lcom/byazt/dj/tt;

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->yp()Ljava/lang/String;

    move-result-object p1

    const-string v4, "user_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    iget-object p1, p0, Lcom/byazt/yi/ve;->ve:Lcom/byazt/dj/tt;

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->gr()Ljava/lang/String;

    move-result-object p1

    const-string v4, "reward_name"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object p1, p0, Lcom/byazt/yi/ve;->ve:Lcom/byazt/dj/tt;

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->zm()I

    move-result p1

    const-string v4, "reward_amount"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    iget-object p1, p0, Lcom/byazt/yi/ve;->ve:Lcom/byazt/dj/tt;

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->rl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v2

    const-string v2, "is_adm"

    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    :cond_d
    iget-boolean p1, p0, Lcom/byazt/yi/ve;->yp:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/byazt/yi/ve;->m:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/byazt/yi/ve;->nu:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "reward_again_name"

    .line 38
    iget-object v2, p0, Lcom/byazt/yi/ve;->m:Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "reward_again_amount"

    .line 39
    iget-object v2, p0, Lcom/byazt/yi/ve;->nu:Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_e
    const-string p1, "is_preload"

    .line 40
    iget-boolean v2, p0, Lcom/byazt/yi/ve;->uj:Z

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "object_create_ts"

    .line 41
    iget-wide v4, p0, Lcom/byazt/yi/ve;->gu:J

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 42
    iget-object p1, p0, Lcom/byazt/yi/ve;->gt:Ljava/lang/Double;

    if-nez p1, :cond_f

    goto :goto_5

    :cond_f
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    const-string p1, "_client_bidding_aution_price"

    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object p1, p0, Lcom/byazt/yi/ve;->n:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    const-string p1, "rit_scene"

    .line 44
    iget-object v1, p0, Lcom/byazt/yi/ve;->n:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    :cond_10
    iget p1, p0, Lcom/byazt/yi/ve;->my:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_11

    const-string v1, "key_video_cache_callback"

    .line 46
    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    :cond_11
    iget-object p1, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

    invoke-static {v3, p1}, Lcom/byazt/aas/nb;->c(Landroid/content/Intent;Lcom/byazt/ete/ic;)V

    const-string p1, "multi_process_key"

    .line 48
    iget-object v1, p0, Lcom/byazt/yi/ve;->t:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object p1, p0, Lcom/byazt/yi/ve;->gr:Lcom/byazt/xjc/ve;

    if-eqz p1, :cond_12

    .line 50
    invoke-virtual {p1}, Lcom/byazt/xjc/ve;->i()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "insert_ad_bundle"

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    :cond_12
    invoke-direct {p0, v0, v3}, Lcom/byazt/yi/ve;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 52
    invoke-static {}, Lcom/byazt/dz/uj;->c()Lcom/byazt/dz/uj;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {p1, v0}, Lcom/byazt/dz/uj;->c(Lcom/byazt/ete/ic;)Lcom/byazt/dz/uj;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/byazt/dz/uj;->c(I)Lcom/byazt/dz/uj;

    :cond_13
    :goto_6
    return-void
.end method

.method public showRewardVideoAd(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p1, "TTRewardVideoAdImpl"

    const-string p2, "The param ritScenes can not be null!"

    .line 53
    invoke-static {p1, p2}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 54
    :cond_0
    invoke-static {p2}, Lcom/byazt/sq/n;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "customize_scenes"

    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iput-object p3, p0, Lcom/byazt/yi/ve;->n:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_1
    iput-object p2, p0, Lcom/byazt/yi/ve;->n:Ljava/lang/String;

    .line 58
    :goto_0
    invoke-virtual {p0, p1}, Lcom/byazt/yi/ve;->showRewardVideoAd(Landroid/app/Activity;)V

    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/yi/ve;->rl:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/yi/ve;->tt:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/byazt/aas/h;->c(Lcom/byazt/ete/ic;Ljava/lang/Double;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/byazt/yi/ve;->rl:Z

    .line 13
    .line 14
    return-void
.end method
