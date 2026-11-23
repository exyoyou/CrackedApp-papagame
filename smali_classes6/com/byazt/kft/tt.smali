.class public Lcom/byazt/kft/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fk/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x118,
        0xd
    }
.end annotation


# instance fields
.field public a:J

.field public final c:Ljava/lang/String;

.field public final da:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/byazt/fk/sp$c;",
            "Lcom/byazt/fk/sp$c;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lcom/byazt/fk/sp;

.field public n:I

.field public final sl:Lcom/byazt/jr/tt;

.field public volatile sp:Z

.field public t:Lcom/byazt/ga/LottieAnimationView;

.field public final tt:I

.field public uj:Z

.field public final ve:I

.field public volatile x:Z


# direct methods
.method public constructor <init>(Lcom/byazt/fk/sp;Lcom/byazt/cph/c;Lcom/byazt/jzl/tt;Lcom/byazt/jr/tt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "UpieVideoPlayer"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/kft/tt;->c:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/byazt/kft/tt;->n:I

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/byazt/kft/tt;->sp:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/byazt/kft/tt;->x:Z

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/byazt/kft/tt;->da:Ljava/util/Map;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/byazt/cph/c;->uj()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/byazt/kft/tt;->tt:I

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/byazt/cph/c;->n()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lcom/byazt/kft/tt;->ve:I

    .line 35
    .line 36
    iput-object p4, p0, Lcom/byazt/kft/tt;->sl:Lcom/byazt/jr/tt;

    .line 37
    .line 38
    instance-of p1, p4, Lcom/byazt/kft/UpieVideoView;

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    check-cast p4, Lcom/byazt/kft/UpieVideoView;

    .line 43
    .line 44
    invoke-virtual {p4}, Lcom/byazt/kft/UpieVideoView;->getLottieAnimationView()Lcom/byazt/ga/LottieAnimationView;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/byazt/kft/tt;->t:Lcom/byazt/ga/LottieAnimationView;

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1, p3}, Lcom/byazt/ga/LottieAnimationView;->setVideoStats(Lcom/byazt/jzl/tt;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/cph/c;->c()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p0, p1}, Lcom/byazt/kft/tt;->c(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static synthetic a(Lcom/byazt/kft/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/kft/tt;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/byazt/kft/tt;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/kft/tt;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/byazt/kft/tt;->n:I

    return v0
.end method

.method private c()V
    .locals 1

    .line 13
    new-instance v0, Lcom/byazt/kft/tt$4;

    invoke-direct {v0, p0}, Lcom/byazt/kft/tt$4;-><init>(Lcom/byazt/kft/tt;)V

    invoke-static {v0}, Lcom/byazt/qk/tt;->tt(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(J)V
    .locals 5

    .line 14
    iget-object v0, p0, Lcom/byazt/kft/tt;->t:Lcom/byazt/ga/LottieAnimationView;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/byazt/kft/tt;->getVideoDuration()J

    move-result-wide v0

    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 17
    rem-long/2addr p1, v0

    .line 18
    iget-object v2, p0, Lcom/byazt/kft/tt;->t:Lcom/byazt/ga/LottieAnimationView;

    long-to-float p1, p1

    long-to-float p2, v0

    div-float/2addr p1, p2

    invoke-virtual {v2, p1}, Lcom/byazt/ga/LottieAnimationView;->setProgress(F)V

    :cond_1
    return-void
.end method

.method private c(Lcom/byazt/fk/ve;)V
    .locals 1

    .line 11
    new-instance v0, Lcom/byazt/kft/tt$2;

    invoke-direct {v0, p0, p1}, Lcom/byazt/kft/tt$2;-><init>(Lcom/byazt/kft/tt;Lcom/byazt/fk/ve;)V

    invoke-static {v0}, Lcom/byazt/qk/tt;->tt(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/kft/tt;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/kft/tt;->c(J)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/kft/tt;Lcom/byazt/fk/ve;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/kft/tt;->c(Lcom/byazt/fk/ve;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/kft/tt;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/kft/tt;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/kft/tt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/byazt/kft/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance p1, Lcom/byazt/jzl/ve;

    const/16 v0, 0x2710

    const-string v1, "lottieJsonUrl\u4e3a\u7a7a"

    const v2, 0xea68

    invoke-direct {p1, v2, v0, v1}, Lcom/byazt/jzl/ve;-><init>(IILjava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/byazt/kft/tt;->c(Lcom/byazt/fk/ve;)V

    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/byazt/kft/tt$1;

    invoke-direct {v0, p0, p1}, Lcom/byazt/kft/tt$1;-><init>(Lcom/byazt/kft/tt;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/qk/tt;->ve(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 12
    new-instance v0, Lcom/byazt/kft/tt$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/kft/tt$3;-><init>(Lcom/byazt/kft/tt;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/qk/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/kft/tt;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/byazt/kft/tt;->uj:Z

    return p1
.end method

.method public static synthetic da(Lcom/byazt/kft/tt;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/kft/tt;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic i(Lcom/byazt/kft/tt;)Lcom/byazt/fk/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/kft/tt;)Lcom/byazt/ga/LottieAnimationView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/tt;->t:Lcom/byazt/ga/LottieAnimationView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/kft/tt;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/kft/tt;->tt:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic sp(Lcom/byazt/kft/tt;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/kft/tt;->x:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic t(Lcom/byazt/kft/tt;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/kft/tt;->ve:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic tt(Lcom/byazt/kft/tt;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/kft/tt;->n:I

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/kft/tt;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/kft/tt;->sp:Z

    return p1
.end method

.method public static synthetic uj(Lcom/byazt/kft/tt;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kft/tt;->da:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/kft/tt;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/kft/tt;->uj:Z

    return p0
.end method

.method public static synthetic ve(Lcom/byazt/kft/tt;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/kft/tt;->x:Z

    return p1
.end method

.method public static synthetic x(Lcom/byazt/kft/tt;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/kft/tt;->sp:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public addIVideoPlayerCallback(Lcom/byazt/fk/sp$c;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/byazt/kft/tt$5;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/byazt/kft/tt$5;-><init>(Lcom/byazt/kft/tt;Lcom/byazt/fk/sp$c;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/kft/tt;->da:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 15
    .line 16
    invoke-interface {p1, v0}, Lcom/byazt/fk/sp;->addIVideoPlayerCallback(Lcom/byazt/fk/sp$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public getBufferCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/fk/sp;->getBufferCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/fk/sp;->getCurrentPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/fk/sp;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/fk/sp;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTotalBufferTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/fk/sp;->getTotalBufferTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getUpdateProgressInterval()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/fk/sp;->getUpdateProgressInterval()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getVideoDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/fk/sp;->getVideoDuration()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/kft/tt;->ve:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/kft/tt;->tt:I

    .line 2
    .line 3
    return v0
.end method

.method public isCompleted()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kft/tt;->uj:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isCompleted()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "--==--isCompleted: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ",      errorInvoked: "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/byazt/kft/tt;->uj:Z

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "UpieVideoPlayer"

    .line 41
    .line 42
    invoke-static {v2, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v0
.end method

.method public isFirstFrameSuccess()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isFirstFrameSuccess()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isLooping()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isPaused()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kft/tt;->uj:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPaused()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "--==--isPaused: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ",      errorInvoked: "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/byazt/kft/tt;->uj:Z

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "UpieVideoPlayer"

    .line 41
    .line 42
    invoke-static {v2, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kft/tt;->uj:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPlaying()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "--==--isPlaying: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ",      errorInvoked: "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/byazt/kft/tt;->uj:Z

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "UpieVideoPlayer"

    .line 41
    .line 42
    invoke-static {v2, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v0
.end method

.method public isPrepared()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kft/tt;->uj:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPrepared()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "--==--isPrepared: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ",     errorInvoked: "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/byazt/kft/tt;->uj:Z

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "UpieVideoPlayer"

    .line 41
    .line 42
    invoke-static {v2, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v0
.end method

.method public isReleased()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kft/tt;->uj:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isReleased()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "--==--isReleased: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ",      errorInvoked: "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/byazt/kft/tt;->uj:Z

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "UpieVideoPlayer"

    .line 41
    .line 42
    invoke-static {v2, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v0
.end method

.method public isStarted()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kft/tt;->uj:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isStarted()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "--==--isStarted: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ",      errorInvoked: "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/byazt/kft/tt;->uj:Z

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "UpieVideoPlayer"

    .line 41
    .line 42
    invoke-static {v2, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v0
.end method

.method public pause()V
    .locals 2

    .line 1
    const-string v0, "UpieVideoPlayer"

    .line 2
    .line 3
    const-string v1, "--==--pause"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/byazt/fk/sp;->pause()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/kft/tt;->t:Lcom/byazt/ga/LottieAnimationView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->sp()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/kft/tt;->sl:Lcom/byazt/jr/tt;

    .line 21
    .line 22
    instance-of v1, v0, Lcom/byazt/kft/UpieVideoView;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    check-cast v0, Lcom/byazt/kft/UpieVideoView;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/byazt/kft/UpieVideoView;->tt()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public play()V
    .locals 2

    .line 1
    const-string v0, "UpieVideoPlayer"

    .line 2
    .line 3
    const-string v1, "--==--play"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/byazt/fk/sp;->play()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/kft/tt;->t:Lcom/byazt/ga/LottieAnimationView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->tt()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/kft/tt;->sl:Lcom/byazt/jr/tt;

    .line 21
    .line 22
    instance-of v1, v0, Lcom/byazt/kft/UpieVideoView;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    check-cast v0, Lcom/byazt/kft/UpieVideoView;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/byazt/kft/UpieVideoView;->c()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    const-string v0, "UpieVideoPlayer"

    .line 2
    .line 3
    const-string v1, "--==--release"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/byazt/fk/sp;->release()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/kft/tt;->t:Lcom/byazt/ga/LottieAnimationView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->a()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/kft/tt;->sl:Lcom/byazt/jr/tt;

    .line 21
    .line 22
    instance-of v1, v0, Lcom/byazt/kft/UpieVideoView;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    check-cast v0, Lcom/byazt/kft/UpieVideoView;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/byazt/kft/UpieVideoView;->tt()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public removeIVideoPlayerCallback(Lcom/byazt/fk/sp$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/tt;->da:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/byazt/fk/sp$c;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp;->removeIVideoPlayerCallback(Lcom/byazt/fk/sp$c;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    const-string v0, "UpieVideoPlayer"

    .line 2
    .line 3
    const-string v1, "--==--reset"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/byazt/fk/sp;->reset()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/kft/tt;->t:Lcom/byazt/ga/LottieAnimationView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->sp()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/kft/tt;->t:Lcom/byazt/ga/LottieAnimationView;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lcom/byazt/ga/LottieAnimationView;->setProgress(F)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/byazt/kft/tt;->sl:Lcom/byazt/jr/tt;

    .line 27
    .line 28
    instance-of v1, v0, Lcom/byazt/kft/UpieVideoView;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    check-cast v0, Lcom/byazt/kft/UpieVideoView;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/byazt/kft/UpieVideoView;->tt()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public restart()V
    .locals 2

    .line 1
    const-string v0, "UpieVideoPlayer"

    .line 2
    .line 3
    const-string v1, "--==--restart"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/byazt/fk/sp;->restart()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/kft/tt;->t:Lcom/byazt/ga/LottieAnimationView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->a()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/kft/tt;->t:Lcom/byazt/ga/LottieAnimationView;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lcom/byazt/ga/LottieAnimationView;->setProgress(F)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/kft/tt;->t:Lcom/byazt/ga/LottieAnimationView;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->c()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/byazt/kft/tt;->sl:Lcom/byazt/jr/tt;

    .line 32
    .line 33
    instance-of v1, v0, Lcom/byazt/kft/UpieVideoView;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    check-cast v0, Lcom/byazt/kft/UpieVideoView;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/byazt/kft/UpieVideoView;->c()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public seekTo(J)V
    .locals 2

    .line 1
    const-string v0, "--==--seekTo: "

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "UpieVideoPlayer"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 17
    .line 18
    invoke-interface {v0, p1, p2}, Lcom/byazt/fk/sp;->seekTo(J)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/byazt/kft/tt;->c(J)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setDataSource(Lcom/byazt/fk/u;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "--==--setDataSource: "

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "UpieVideoPlayer"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp;->setDataSource(Lcom/byazt/fk/u;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLoop(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp;->setLoop(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPlaySpeedRatio(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp;->setPlaySpeedRatio(F)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/kft/tt;->t:Lcom/byazt/ga/LottieAnimationView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/byazt/ga/LottieAnimationView;->setSpeed(F)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setQuietPlay(Z)V
    .locals 2

    .line 1
    const-string v0, "--==--isMute: "

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "UpieVideoPlayer"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp;->setQuietPlay(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setSeekMode(I)V
    .locals 2

    .line 1
    const-string v0, "--==--setSeekMode: "

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "UpieVideoPlayer"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp;->setSeekMode(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp;->setSurface(Landroid/graphics/SurfaceTexture;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSurfaceValid(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp;->setSurfaceValid(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUpdateProgressInterval(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/fk/sp;->setUpdateProgressInterval(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public start(ZJZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "--==--start: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "UpieVideoPlayer"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 35
    .line 36
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/fk/sp;->start(ZJZ)V

    .line 37
    .line 38
    .line 39
    iput-wide p2, p0, Lcom/byazt/kft/tt;->a:J

    .line 40
    .line 41
    iget-object p1, p0, Lcom/byazt/kft/tt;->sl:Lcom/byazt/jr/tt;

    .line 42
    .line 43
    instance-of p2, p1, Lcom/byazt/kft/UpieVideoView;

    .line 44
    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    check-cast p1, Lcom/byazt/kft/UpieVideoView;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/byazt/kft/UpieVideoView;->c()V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    const-string v0, "UpieVideoPlayer"

    .line 2
    .line 3
    const-string v1, "--==--stop"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/kft/tt;->i:Lcom/byazt/fk/sp;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/byazt/fk/sp;->stop()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/kft/tt;->t:Lcom/byazt/ga/LottieAnimationView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->sp()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/kft/tt;->sl:Lcom/byazt/jr/tt;

    .line 21
    .line 22
    instance-of v1, v0, Lcom/byazt/kft/UpieVideoView;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    check-cast v0, Lcom/byazt/kft/UpieVideoView;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/byazt/kft/UpieVideoView;->tt()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method
