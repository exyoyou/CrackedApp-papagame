.class public Lcom/byazt/jzl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fk/u;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x626,
        0x22
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public da:I

.field public gr:I

.field public gt:I

.field public gu:I

.field public i:I

.field public m:J

.field public my:J

.field public n:Lcom/byazt/fk/n;

.field public nu:Z

.field public qy:I

.field public rh:Z

.field public rl:I

.field public sl:Ljava/lang/String;

.field public sp:I

.field public t:I

.field public tt:I

.field public u:I

.field public uj:Lcom/byazt/fk/n;

.field public final ve:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public x:I

.field public yp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public yv:Lorg/json/JSONObject;

.field public z:Ljava/lang/String;

.field public zm:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/fk/n;Lcom/byazt/fk/n;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x32000

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/jzl/a;->x:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/byazt/jzl/a;->i:I

    .line 11
    .line 12
    iput v0, p0, Lcom/byazt/jzl/a;->da:I

    .line 13
    .line 14
    const-wide/16 v1, -0x1

    .line 15
    .line 16
    iput-wide v1, p0, Lcom/byazt/jzl/a;->my:J

    .line 17
    .line 18
    iput v0, p0, Lcom/byazt/jzl/a;->gt:I

    .line 19
    .line 20
    iput v0, p0, Lcom/byazt/jzl/a;->rl:I

    .line 21
    .line 22
    new-instance v1, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/byazt/jzl/a;->ve:Ljava/util/HashMap;

    .line 28
    .line 29
    const/16 v1, 0x2710

    .line 30
    .line 31
    iput v1, p0, Lcom/byazt/jzl/a;->qy:I

    .line 32
    .line 33
    iput v1, p0, Lcom/byazt/jzl/a;->gu:I

    .line 34
    .line 35
    iput v1, p0, Lcom/byazt/jzl/a;->gr:I

    .line 36
    .line 37
    iput v0, p0, Lcom/byazt/jzl/a;->zm:I

    .line 38
    .line 39
    new-instance v0, Lorg/json/JSONObject;

    .line 40
    .line 41
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/byazt/jzl/a;->yv:Lorg/json/JSONObject;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/byazt/jzl/a;->a:Ljava/lang/String;

    .line 47
    .line 48
    iput-object p2, p0, Lcom/byazt/jzl/a;->uj:Lcom/byazt/fk/n;

    .line 49
    .line 50
    iput-object p3, p0, Lcom/byazt/jzl/a;->n:Lcom/byazt/fk/n;

    .line 51
    .line 52
    iput p4, p0, Lcom/byazt/jzl/a;->gt:I

    .line 53
    .line 54
    iput p5, p0, Lcom/byazt/jzl/a;->rl:I

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public getCacheParentDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jzl/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jzl/a;->sl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCodeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jzl/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConnectTimeOutMills()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/jzl/a;->qy:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurrent()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/jzl/a;->m:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCurrentVideoInfo()Lcom/byazt/fk/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->isH265()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/jzl/a;->n:Lcom/byazt/fk/n;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/jzl/a;->uj:Lcom/byazt/fk/n;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    return-object v0
.end method

.method public declared-synchronized getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/jzl/a;->ve:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public getFileNameKey()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->isH265()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/jzl/a;->n:Lcom/byazt/fk/n;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/fk/n;->getFileHash()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/jzl/a;->uj:Lcom/byazt/fk/n;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/byazt/fk/n;->getFileHash()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/jzl/a;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public getLogExtra()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jzl/a;->z:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPassThroughJson()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jzl/a;->yv:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPitayaCacheSize()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/jzl/a;->yv:Lorg/json/JSONObject;

    .line 2
    .line 3
    const-string v1, "pitaya_cache_size"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getPitayaCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/jzl/a;->yv:Lorg/json/JSONObject;

    .line 2
    .line 3
    const-string v1, "pitaya_code"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getPitayaErrorMsg()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/jzl/a;->yv:Lorg/json/JSONObject;

    .line 2
    .line 3
    const-string v1, "pitaya_msg"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getPlaySpeedRatio()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->isH265()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/jzl/a;->n:Lcom/byazt/fk/n;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/fk/n;->getPlay_speed_ratio()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/jzl/a;->uj:Lcom/byazt/fk/n;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/byazt/fk/n;->getPlay_speed_ratio()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    .line 24
    .line 25
    return v0
.end method

.method public getPlayTrackUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/jzl/a;->yp:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayerType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/jzl/a;->gt:I

    .line 2
    .line 3
    return v0
.end method

.method public getPreloadSize()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->isH265()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/jzl/a;->n:Lcom/byazt/fk/n;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/fk/n;->getVideoPreloadSize()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/jzl/a;->uj:Lcom/byazt/fk/n;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/byazt/fk/n;->getVideoPreloadSize()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public getReadTimeOutMills()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/jzl/a;->gu:I

    .line 2
    .line 3
    return v0
.end method

.method public getScene()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/jzl/a;->tt:I

    .line 2
    .line 3
    return v0
.end method

.method public getSourceType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/jzl/a;->zm:I

    .line 2
    .line 3
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->isH265()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/jzl/a;->n:Lcom/byazt/fk/n;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/fk/n;->getVideo_url()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/jzl/a;->uj:Lcom/byazt/fk/n;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/byazt/fk/n;->getVideo_url()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return-object v0
.end method

.method public getVideoEncodeType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/jzl/a;->rl:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoH264()Lcom/byazt/fk/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jzl/a;->uj:Lcom/byazt/fk/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoH265()Lcom/byazt/fk/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jzl/a;->n:Lcom/byazt/fk/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoSize()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->isH265()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/jzl/a;->n:Lcom/byazt/fk/n;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/fk/n;->getSize()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/jzl/a;->uj:Lcom/byazt/fk/n;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/byazt/fk/n;->getSize()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0

    .line 23
    :cond_1
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    return-wide v0
.end method

.method public getVideoSkipResult()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/jzl/a;->sp:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/jzl/a;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public getWriteTimeOutMills()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/jzl/a;->gr:I

    .line 2
    .line 3
    return v0
.end method

.method public isAudio()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/jzl/a;->rh:Z

    .line 2
    .line 3
    return v0
.end method

.method public isH265()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/byazt/jzl/a;->rl:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/jzl/a;->n:Lcom/byazt/fk/n;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/byazt/fk/n;->getVideo_url()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lcom/byazt/oy/tt;->n()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x2

    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v2, 0x1a

    .line 30
    .line 31
    if-lt v0, v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget v0, p0, Lcom/byazt/jzl/a;->gt:I

    .line 35
    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :goto_0
    return v1
.end method

.method public isPreloadAll()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->isH265()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/jzl/a;->n:Lcom/byazt/fk/n;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/fk/n;->isCacheAllVideo()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/jzl/a;->uj:Lcom/byazt/fk/n;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/byazt/fk/n;->isCacheAllVideo()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    return v0
.end method

.method public isQuiet()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/jzl/a;->nu:Z

    .line 2
    .line 3
    return v0
.end method

.method public declared-synchronized putExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/jzl/a;->ve:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public removeExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jzl/a;->ve:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public setAudio(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/jzl/a;->rh:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCacheParentDir(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jzl/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jzl/a;->sl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCodeId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jzl/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setConnectTimeOutMills(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/jzl/a;->qy:I

    .line 2
    .line 3
    return-void
.end method

.method public setCurrent(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/jzl/a;->m:J

    .line 2
    .line 3
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/jzl/a;->u:I

    .line 2
    .line 3
    return-void
.end method

.method public setLogExtra(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jzl/a;->z:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayTrackUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/byazt/jzl/a;->yp:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayerType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/jzl/a;->gt:I

    .line 2
    .line 3
    return-void
.end method

.method public setQuiet(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/jzl/a;->nu:Z

    .line 2
    .line 3
    return-void
.end method

.method public setReadTimeOutMills(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/jzl/a;->gu:I

    .line 2
    .line 3
    return-void
.end method

.method public setScene(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/jzl/a;->tt:I

    .line 2
    .line 3
    return-void
.end method

.method public setSourceType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/jzl/a;->zm:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoEncodeType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/jzl/a;->rl:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoH264(Lcom/byazt/fk/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jzl/a;->uj:Lcom/byazt/fk/n;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoH265(Lcom/byazt/fk/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jzl/a;->n:Lcom/byazt/fk/n;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoSkipResult(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/jzl/a;->sp:I

    .line 2
    .line 3
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/jzl/a;->t:I

    .line 2
    .line 3
    return-void
.end method

.method public setWriteTimeOutMills(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/jzl/a;->gr:I

    .line 2
    .line 3
    return-void
.end method
