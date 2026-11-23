.class public Lcom/byazt/nbs/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x74f,
        0x48
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/byazt/nbs/da;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public da:I

.field public gr:Lcom/byazt/hr/i;

.field public gt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gu:I

.field public i:I

.field public m:I

.field public my:Lcom/byazt/nbs/x;

.field public n:Ljava/lang/String;

.field public nu:I

.field public qy:Ljava/lang/String;

.field public rh:I

.field public rl:I

.field public sl:Ljava/lang/String;

.field public sp:I

.field public t:Ljava/lang/String;

.field public tt:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public x:I

.field public yp:I

.field public yv:I

.field public z:I

.field public zm:Lcom/byazt/hr/sp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "1"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/nbs/da;->uj:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "0"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/nbs/da;->n:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/da;->rl:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/da;->m:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/nbs/da;->a:Ljava/lang/String;

    return-void
.end method

.method public bx()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/da;->qy:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/nbs/da;->yv:I

    return v0
.end method

.method public c(Lcom/byazt/nbs/da;)I
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 8
    :cond_0
    iget v1, p0, Lcom/byazt/nbs/da;->x:I

    invoke-virtual {p1}, Lcom/byazt/nbs/da;->yv()I

    move-result v2

    if-le v1, v2, :cond_1

    return v0

    .line 9
    :cond_1
    iget v1, p0, Lcom/byazt/nbs/da;->x:I

    invoke-virtual {p1}, Lcom/byazt/nbs/da;->yv()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2

    return v3

    .line 10
    :cond_2
    iget v1, p0, Lcom/byazt/nbs/da;->i:I

    invoke-virtual {p1}, Lcom/byazt/nbs/da;->p()I

    move-result v2

    if-le v1, v2, :cond_3

    return v0

    .line 11
    :cond_3
    iget v0, p0, Lcom/byazt/nbs/da;->i:I

    invoke-virtual {p1}, Lcom/byazt/nbs/da;->p()I

    move-result p1

    if-ge v0, p1, :cond_4

    return v3

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/nbs/da;->yv:I

    return-void
.end method

.method public c(Lcom/byazt/hr/i;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/nbs/da;->gr:Lcom/byazt/hr/i;

    return-void
.end method

.method public c(Lcom/byazt/hr/sp;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/nbs/da;->zm:Lcom/byazt/hr/sp;

    return-void
.end method

.method public c(Lcom/byazt/nbs/x;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/nbs/da;->my:Lcom/byazt/nbs/x;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/nbs/da;->sl:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lcom/byazt/nbs/da;->gt:Ljava/util/Map;

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/nbs/da;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/nbs/da;->c(Lcom/byazt/nbs/da;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public cu()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/nbs/da;->sp:I

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public d()Lcom/byazt/nbs/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/da;->my:Lcom/byazt/nbs/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public da()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/da;->m:I

    return v0
.end method

.method public da(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/da;->sp:I

    return-void
.end method

.method public da(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/nbs/da;->qy:Ljava/lang/String;

    return-void
.end method

.method public eo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/da;->gt:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public gr()D
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/nbs/da;->n:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-object v2, p0, Lcom/byazt/nbs/da;->uj:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 18
    .line 19
    .line 20
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    mul-double v0, v0, v2

    .line 22
    .line 23
    return-wide v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "getEcpm error "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "WaterFallConfig"

    .line 44
    .line 45
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-wide/16 v0, 0x0

    .line 49
    .line 50
    return-wide v0
.end method

.method public gt()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/nbs/da;->sp:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/16 v1, 0x64

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method public gu()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/da;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/da;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/da;->z:I

    return v0
.end method

.method public i(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/da;->da:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/nbs/da;->u:Ljava/lang/String;

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/da;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public md()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/da;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public my()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/da;->sp:I

    .line 2
    .line 3
    return v0
.end method

.method public n()Lcom/byazt/nbs/da;
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/vx/i;->tt()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/byazt/nbs/da;

    invoke-direct {v1}, Lcom/byazt/nbs/da;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/byazt/nbs/da;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/byazt/nbs/da;->c:Ljava/lang/String;

    const-string v2, "mAdnetworkName"

    .line 4
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/byazt/nbs/da;->ve:Ljava/lang/String;

    iput-object v2, v1, Lcom/byazt/nbs/da;->ve:Ljava/lang/String;

    const-string v2, "mAdnetwokrSlotId"

    .line 6
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/byazt/nbs/da;->uj:Ljava/lang/String;

    iput-object v2, v1, Lcom/byazt/nbs/da;->uj:Ljava/lang/String;

    const-string v2, "mExchangeRate"

    .line 8
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/byazt/nbs/da;->n:Ljava/lang/String;

    iput-object v2, v1, Lcom/byazt/nbs/da;->n:Ljava/lang/String;

    const-string v2, "mEcpm"

    .line 10
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/byazt/nbs/da;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/byazt/nbs/da;->a:Ljava/lang/String;

    const-string v2, "mDiscount"

    .line 12
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 13
    iget v2, p0, Lcom/byazt/nbs/da;->sp:I

    iput v2, v1, Lcom/byazt/nbs/da;->sp:I

    const-string v2, "mAdnetworkSlotType"

    .line 14
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 15
    iget v2, p0, Lcom/byazt/nbs/da;->x:I

    iput v2, v1, Lcom/byazt/nbs/da;->x:I

    const-string v2, "mLoadSort"

    .line 16
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 17
    iget v2, p0, Lcom/byazt/nbs/da;->i:I

    iput v2, v1, Lcom/byazt/nbs/da;->i:I

    const-string v2, "mShowSort"

    .line 18
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 19
    iget v2, p0, Lcom/byazt/nbs/da;->da:I

    iput v2, v1, Lcom/byazt/nbs/da;->da:I

    const-string v2, "mRitType"

    .line 20
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 21
    iget v2, p0, Lcom/byazt/nbs/da;->m:I

    iput v2, v1, Lcom/byazt/nbs/da;->m:I

    const-string v2, "originType"

    .line 22
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 23
    iget v2, p0, Lcom/byazt/nbs/da;->rl:I

    iput v2, v1, Lcom/byazt/nbs/da;->rl:I

    const-string v2, "mSubAdType"

    .line 24
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Lcom/byazt/nbs/da;->sl:Ljava/lang/String;

    iput-object v2, v1, Lcom/byazt/nbs/da;->sl:Ljava/lang/String;

    const-string v2, "mLoaderAdapterName"

    .line 26
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lcom/byazt/nbs/da;->t:Ljava/lang/String;

    iput-object v2, v1, Lcom/byazt/nbs/da;->t:Ljava/lang/String;

    const-string v2, "mWaterfallAbTestParam"

    .line 28
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 29
    iget-object v2, p0, Lcom/byazt/nbs/da;->u:Ljava/lang/String;

    iput-object v2, v1, Lcom/byazt/nbs/da;->u:Ljava/lang/String;

    const-string v2, "mServerBiddingExtra"

    .line 30
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 31
    iget v2, p0, Lcom/byazt/nbs/da;->yp:I

    iput v2, v1, Lcom/byazt/nbs/da;->yp:I

    const-string v2, "adExpiredTime"

    .line 32
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 33
    iget v2, p0, Lcom/byazt/nbs/da;->z:I

    iput v2, v1, Lcom/byazt/nbs/da;->z:I

    const-string v2, "ifReuseAds"

    .line 34
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 35
    iget v2, p0, Lcom/byazt/nbs/da;->nu:I

    iput v2, v1, Lcom/byazt/nbs/da;->nu:I

    const-string v2, "ifPreRequest"

    .line 36
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 37
    iget v2, p0, Lcom/byazt/nbs/da;->rh:I

    iput v2, v1, Lcom/byazt/nbs/da;->rh:I

    const-string v2, "ifIsReady"

    .line 38
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 39
    iget v2, p0, Lcom/byazt/nbs/da;->yv:I

    iput v2, v1, Lcom/byazt/nbs/da;->yv:I

    const-string v2, "isRefresh"

    .line 40
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 41
    iget-object v2, p0, Lcom/byazt/nbs/da;->tt:Ljava/lang/String;

    iput-object v2, v1, Lcom/byazt/nbs/da;->tt:Ljava/lang/String;

    const-string v2, "mCustomAdnetworkName"

    .line 42
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/byazt/nbs/da;->gt:Ljava/util/Map;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 44
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 45
    iget-object v3, p0, Lcom/byazt/nbs/da;->gt:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 46
    :goto_0
    iput-object v2, v1, Lcom/byazt/nbs/da;->gt:Ljava/util/Map;

    const-string v2, "mMultilevelSlotCpm"

    .line 47
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/byazt/nbs/da;->qy:Ljava/lang/String;

    iput-object v2, v1, Lcom/byazt/nbs/da;->qy:Ljava/lang/String;

    const-string v2, "mCustomAdapterJson"

    .line 49
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 50
    iget v2, p0, Lcom/byazt/nbs/da;->gu:I

    iput v2, v1, Lcom/byazt/nbs/da;->gu:I

    const-string v2, "mAdnRitTimingMode"

    .line 51
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/byazt/nbs/da;->zm:Lcom/byazt/hr/sp;

    iput-object v2, v1, Lcom/byazt/nbs/da;->zm:Lcom/byazt/hr/sp;

    const-string v2, "mIntervalFreqctlBean"

    .line 53
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/byazt/nbs/da;->gr:Lcom/byazt/hr/i;

    iput-object v2, v1, Lcom/byazt/nbs/da;->gr:Lcom/byazt/hr/i;

    const-string v2, "mIntervalPacingBean"

    .line 55
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->c(Ljava/util/List;Ljava/lang/String;)V

    const-string v2, "WaterFallConfig"

    .line 56
    invoke-static {v0, v2}, Lcom/byazt/vx/i;->tt(Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public n(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/byazt/nbs/da;->z:I

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/byazt/nbs/da;->ve:Ljava/lang/String;

    return-void
.end method

.method public nb()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->zb()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->or()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->qp()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method public nu()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/da;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/nbs/da;->tt:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/nbs/da;->c:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public or()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/nbs/da;->sp:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/da;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public pf()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/da;->sp:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public qp()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/nbs/da;->sp:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public qy()D
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/da;->my:Lcom/byazt/nbs/x;

    .line 2
    .line 3
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/nbs/x;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/nbs/da;->my:Lcom/byazt/nbs/x;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/nbs/x;->a()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 29
    .line 30
    .line 31
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-wide v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v4, "getServerBiddingLoadEcpm error "

    .line 37
    .line 38
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v3, "WaterFallConfig"

    .line 53
    .line 54
    invoke-static {v3, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-wide v1
.end method

.method public rh()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/da;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public rl()D
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/da;->my:Lcom/byazt/nbs/x;

    .line 2
    .line 3
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/nbs/x;->n()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/nbs/da;->my:Lcom/byazt/nbs/x;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/nbs/x;->n()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 29
    .line 30
    .line 31
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-wide v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v4, "getServerBiddingShowEcpm error "

    .line 37
    .line 38
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v3, "WaterFallConfig"

    .line 53
    .line 54
    invoke-static {v3, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-wide v1
.end method

.method public sl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/da;->nu:I

    return v0
.end method

.method public sl(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/da;->x:I

    return-void
.end method

.method public sp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/da;->sl:Ljava/lang/String;

    return-object v0
.end method

.method public sp(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/da;->nu:I

    return-void
.end method

.method public sp(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "0"

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/byazt/nbs/da;->n:Ljava/lang/String;

    return-void
.end method

.method public sv()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/nbs/da;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/qe/ve;->ve(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/da;->rh:I

    return v0
.end method

.method public t(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/da;->i:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "WaterFallConfig{mAdnetworkName=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/nbs/da;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x27

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", mCustomAdnetworkName=\'"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/byazt/nbs/da;->tt:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", mAdnetwokrSlotId=\'"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/byazt/nbs/da;->ve:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", mExchangeRate="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/byazt/nbs/da;->uj:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", mSlotEcpm="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/byazt/nbs/da;->n:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", mAdnetworkSlotType="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v1, p0, Lcom/byazt/nbs/da;->sp:I

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", mLoadSort="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v1, p0, Lcom/byazt/nbs/da;->x:I

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", mShowSort="

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget v1, p0, Lcom/byazt/nbs/da;->i:I

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const/16 v1, 0x7d

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    return-object v0
.end method

.method public tt()Lcom/byazt/hr/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/da;->zm:Lcom/byazt/hr/sp;

    return-object v0
.end method

.method public tt(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/da;->gu:I

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/nbs/da;->uj:Ljava/lang/String;

    return-void
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/da;->da:I

    .line 2
    .line 3
    return v0
.end method

.method public uj(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/da;->yp:I

    return-void
.end method

.method public uj(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/nbs/da;->tt:Ljava/lang/String;

    return-void
.end method

.method public uj()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/nbs/da;->gu:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ve()Lcom/byazt/hr/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/da;->gr:Lcom/byazt/hr/i;

    return-object v0
.end method

.method public ve(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/da;->rl:I

    return-void
.end method

.method public ve(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/nbs/da;->c:Ljava/lang/String;

    return-void
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/da;->yp:I

    return v0
.end method

.method public x(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/nbs/da;->rh:I

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/nbs/da;->t:Ljava/lang/String;

    return-void
.end method

.method public yp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/da;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public yv()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/da;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/da;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public zb()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/nbs/da;->sp:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public zm()D
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/da;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->gr()D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/nbs/da;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    cmpg-double v4, v0, v2

    .line 23
    .line 24
    if-lez v4, :cond_2

    .line 25
    .line 26
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 27
    .line 28
    cmpl-double v4, v0, v2

    .line 29
    .line 30
    if-lez v4, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->gr()D

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    mul-double v4, v4, v0

    .line 38
    .line 39
    div-double/2addr v4, v2

    .line 40
    return-wide v4

    .line 41
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->gr()D

    .line 42
    .line 43
    .line 44
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-wide v0

    .line 46
    :catch_0
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->gr()D

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    return-wide v0
.end method
