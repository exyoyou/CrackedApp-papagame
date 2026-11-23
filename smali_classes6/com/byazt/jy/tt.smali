.class public Lcom/byazt/jy/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fk/sp;
.implements Lcom/byazt/dna/qp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7e5,
        0xd
    }
.end annotation


# static fields
.field public static volatile c:Z


# instance fields
.field public a:Z

.field public d:Z

.field public da:J

.field public volatile gr:Landroid/os/Handler;

.field public gt:I

.field public final gu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/fk/sp$c;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public m:Z

.field public md:Ljava/lang/Runnable;

.field public my:I

.field public n:Z

.field public nu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public p:J

.field public qy:Landroid/view/SurfaceHolder;

.field public rh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public rl:Landroid/graphics/SurfaceTexture;

.field public sl:J

.field public sp:Z

.field public t:J

.field public tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

.field public u:J

.field public uj:Z

.field public ve:Z

.field public x:Z

.field public yp:I

.field public volatile yv:I

.field public z:I

.field public volatile zm:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->ve:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->uj:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->n:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->a:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->sp:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->x:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->i:Z

    .line 18
    .line 19
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    iput-wide v1, p0, Lcom/byazt/jy/tt;->sl:J

    .line 22
    .line 23
    iput-wide v1, p0, Lcom/byazt/jy/tt;->t:J

    .line 24
    .line 25
    iput-wide v1, p0, Lcom/byazt/jy/tt;->u:J

    .line 26
    .line 27
    iput v0, p0, Lcom/byazt/jy/tt;->yp:I

    .line 28
    .line 29
    iput v0, p0, Lcom/byazt/jy/tt;->z:I

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->m:Z

    .line 32
    .line 33
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 36
    .line 37
    .line 38
    iput-object v3, p0, Lcom/byazt/jy/tt;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 43
    .line 44
    .line 45
    iput-object v3, p0, Lcom/byazt/jy/tt;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    new-instance v3, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iput-object v3, p0, Lcom/byazt/jy/tt;->gu:Ljava/util/List;

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->zm:Z

    .line 59
    .line 60
    const/16 v0, 0xc8

    .line 61
    .line 62
    iput v0, p0, Lcom/byazt/jy/tt;->yv:I

    .line 63
    .line 64
    iput-wide v1, p0, Lcom/byazt/jy/tt;->p:J

    .line 65
    .line 66
    new-instance v0, Lcom/byazt/jy/tt$1;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lcom/byazt/jy/tt$1;-><init>(Lcom/byazt/jy/tt;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/byazt/jy/tt;->md:Ljava/lang/Runnable;

    .line 72
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/byazt/jy/tt;->h:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    const-string v0, "vd_"

    .line 85
    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/jy/tt;->c(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    new-instance v1, Lcom/byazt/jy/tt$2;

    invoke-direct {v1, p0}, Lcom/byazt/jy/tt$2;-><init>(Lcom/byazt/jy/tt;)V

    invoke-virtual {v0, v1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->setVideoEngineSimpleCallback(Lcom/bykv/vk/component/ttvideo/VideoEngineSimpleCallback;)V

    return-void
.end method

.method public static synthetic a(Lcom/byazt/jy/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/jy/tt;->uj()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/jy/tt;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/jy/tt;->my:I

    return p1
.end method

.method public static synthetic c(Lcom/byazt/jy/tt;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/byazt/jy/tt;->p:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/byazt/jy/tt;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/jy/tt;->p:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/byazt/jy/tt;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/jy/tt;->gr:Landroid/os/Handler;

    return-object p1
.end method

.method private c(JJ)V
    .locals 8

    .line 7
    iget-object v0, p0, Lcom/byazt/jy/tt;->gu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/byazt/fk/sp$c;

    if-eqz v2, :cond_0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    .line 9
    invoke-interface/range {v2 .. v7}, Lcom/byazt/fk/sp$c;->onPlayPositionUpdate(Lcom/byazt/fk/sp;JJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;[JZ)V
    .locals 7

    .line 19
    :try_start_0
    new-instance v0, Lcom/bykv/vk/component/ttvideo/playerwrapper/MediaPlayerWrapper;

    invoke-direct {v0}, Lcom/bykv/vk/component/ttvideo/playerwrapper/MediaPlayerWrapper;-><init>()V

    .line 20
    invoke-static {}, Lcom/byazt/oy/tt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->create(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;Landroid/content/Context;)Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->release()V

    .line 22
    new-instance v6, Lcom/byazt/jy/tt$3;

    invoke-direct {v6}, Lcom/byazt/jy/tt$3;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/byazt/jy/c;->c(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;[JLcom/bykv/vk/component/ttvideo/log/VideoEventEngineUploader;)V

    .line 23
    invoke-static {p5}, Lcom/byazt/jy/c;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    sput-boolean p0, Lcom/byazt/jy/tt;->c:Z

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0

    .line 10
    invoke-static {p1}, Lcom/byazt/jy/c;->c(Landroid/content/Context;)Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    if-eqz p3, :cond_0

    .line 11
    new-instance p1, Lcom/byazt/nr/d;

    invoke-direct {p1, p3, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    iput-object p1, p0, Lcom/byazt/jy/tt;->gr:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/byazt/jy/tt;->zm:Z

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/byazt/jy/tt;->gr:Landroid/os/Handler;

    if-nez p1, :cond_1

    const-string p1, "thread_service"

    .line 14
    invoke-static {p1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/dna/qp;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "csj_"

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/byazt/dna/qp;->obtainHandler(Lcom/byazt/dna/qp$c;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/jy/tt;->gr:Landroid/os/Handler;

    .line 15
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/byazt/jy/tt;->a()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/jy/tt;JJ)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/jy/tt;->c(JJ)V

    return-void
.end method

.method private declared-synchronized c(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/byazt/jy/tt;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static c()Z
    .locals 1

    .line 18
    sget-boolean v0, Lcom/byazt/jy/tt;->c:Z

    return v0
.end method

.method public static synthetic c(Lcom/byazt/jy/tt;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/byazt/jy/tt;->sp:Z

    return p1
.end method

.method public static synthetic da(Lcom/byazt/jy/tt;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/jy/tt;->da:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic i(Lcom/byazt/jy/tt;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/jy/tt;->zm:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic m(Lcom/byazt/jy/tt;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/jy/tt;->u:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private n()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/jy/tt;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/jy/tt;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic n(Lcom/byazt/jy/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/jy/tt;->tt()V

    return-void
.end method

.method public static synthetic sl(Lcom/byazt/jy/tt;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/jy/tt;->sl:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic sp(Lcom/byazt/jy/tt;)Lcom/bykv/vk/component/ttvideo/TTVideoEngine;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    return-object p0
.end method

.method private sp()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->ve:Z

    .line 3
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->uj:Z

    .line 4
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->a:Z

    .line 5
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->sp:Z

    .line 6
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->x:Z

    return-void
.end method

.method public static synthetic t(Lcom/byazt/jy/tt;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/jy/tt;->md:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/jy/tt;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/jy/tt;->gt:I

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/jy/tt;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/jy/tt;->sl:J

    return-wide p1
.end method

.method private tt()V
    .locals 2

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->x:Z

    .line 6
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->uj:Z

    .line 7
    iget-object v0, p0, Lcom/byazt/jy/tt;->gu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/fk/sp$c;

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {v1, p0}, Lcom/byazt/fk/sp$c;->onStart(Lcom/byazt/fk/sp;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/byazt/jy/tt;->gr:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/byazt/jy/tt;->gr:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method private tt(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/jy/tt;->n:Z

    if-nez v0, :cond_1

    .line 13
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 14
    :cond_1
    invoke-direct {p0, p1}, Lcom/byazt/jy/tt;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/jy/tt;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/byazt/jy/tt;->a:Z

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/jy/tt;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/jy/tt;->m:Z

    return p1
.end method

.method public static synthetic u(Lcom/byazt/jy/tt;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/jy/tt;->z:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic uj(Lcom/byazt/jy/tt;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/jy/tt;->yv:I

    return p0
.end method

.method public static synthetic uj(Lcom/byazt/jy/tt;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/jy/tt;->z:I

    return p1
.end method

.method public static synthetic uj(Lcom/byazt/jy/tt;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/jy/tt;->t:J

    return-wide p1
.end method

.method private uj()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/jy/tt;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/byazt/jy/tt;->ve()V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/jy/tt;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/jy/tt;->yp:I

    return p1
.end method

.method public static synthetic ve(Lcom/byazt/jy/tt;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/jy/tt;->u:J

    return-wide p1
.end method

.method public static synthetic ve(Lcom/byazt/jy/tt;)Landroid/os/Handler;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/jy/tt;->gr:Landroid/os/Handler;

    return-object p0
.end method

.method private ve()V
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/byazt/jy/tt;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->d:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/byazt/jy/tt;->h:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 9
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/byazt/jy/tt;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->d:Z

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/jy/tt;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/jy/tt;->a:Z

    return p1
.end method

.method public static synthetic x(Lcom/byazt/jy/tt;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/jy/tt;->gu:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic yp(Lcom/byazt/jy/tt;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/jy/tt;->yp:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic z(Lcom/byazt/jy/tt;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/jy/tt;->t:J

    .line 2
    .line 3
    return-wide v0
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
    iget-object v0, p0, Lcom/byazt/jy/tt;->gu:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-ne v1, p1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/byazt/jy/tt;->gu:Ljava/util/List;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public getBufferCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/jy/tt;->z:I

    .line 2
    .line 3
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
    :try_start_0
    iget-object v0, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->getCurrentPlaybackTime()I

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    int-to-long v0, v0

    .line 8
    return-wide v0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    return-wide v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jy/tt;->qy:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jy/tt;->rl:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTotalBufferTime()J
    .locals 5

    .line 1
    iget v0, p0, Lcom/byazt/jy/tt;->z:I

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    iget-wide v3, p0, Lcom/byazt/jy/tt;->t:J

    .line 9
    .line 10
    cmp-long v0, v3, v1

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-wide v3, p0, Lcom/byazt/jy/tt;->u:J

    .line 15
    .line 16
    cmp-long v0, v3, v1

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iget-wide v2, p0, Lcom/byazt/jy/tt;->u:J

    .line 25
    .line 26
    sub-long/2addr v0, v2

    .line 27
    iput-wide v0, p0, Lcom/byazt/jy/tt;->t:J

    .line 28
    .line 29
    :cond_1
    iget-wide v0, p0, Lcom/byazt/jy/tt;->t:J

    .line 30
    .line 31
    return-wide v0
.end method

.method public getUpdateProgressInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/jy/tt;->yv:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->getDuration()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 2

    .line 1
    const-string v0, "CSJ_VIDEO_TTVideo"

    .line 2
    .line 3
    const-string v1, "getVideoHeight: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/byazt/jy/tt;->gt:I

    .line 9
    .line 10
    return v0
.end method

.method public getVideoWidth()I
    .locals 2

    .line 1
    const-string v0, "CSJ_VIDEO_TTVideo"

    .line 2
    .line 3
    const-string v1, "getVideoWidth: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/byazt/jy/tt;->my:I

    .line 9
    .line 10
    return v0
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x69

    .line 4
    .line 5
    if-eq v0, v1, :cond_a

    .line 6
    .line 7
    const/16 v1, 0x6e

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v1, :cond_8

    .line 11
    .line 12
    const/16 v1, 0x6f

    .line 13
    .line 14
    if-eq v0, v1, :cond_7

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->release()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iput-boolean v2, p0, Lcom/byazt/jy/tt;->n:Z

    .line 29
    .line 30
    iget-object p1, p0, Lcom/byazt/jy/tt;->gu:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/byazt/fk/sp$c;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-interface {v0, p0}, Lcom/byazt/fk/sp$c;->onRelease(Lcom/byazt/fk/sp;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return-void

    .line 63
    :pswitch_1
    invoke-direct {p0}, Lcom/byazt/jy/tt;->sp()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_2
    iget-object p1, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 68
    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    iget-object p1, p0, Lcom/byazt/jy/tt;->gr:Landroid/os/Handler;

    .line 72
    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->pause()V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/byazt/jy/tt;->gu:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 98
    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/byazt/fk/sp$c;

    .line 106
    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    invoke-interface {v0, p0}, Lcom/byazt/fk/sp$c;->onPause(Lcom/byazt/fk/sp;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    iget-object p1, p0, Lcom/byazt/jy/tt;->gr:Landroid/os/Handler;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/byazt/jy/tt;->md:Ljava/lang/Runnable;

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    .line 119
    .line 120
    :cond_6
    :goto_2
    return-void

    .line 121
    :pswitch_3
    iget-object p1, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 122
    .line 123
    if-eqz p1, :cond_b

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->play()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :catch_0
    move-exception p1

    .line 130
    goto :goto_4

    .line 131
    :cond_7
    iget-object v0, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 132
    .line 133
    if-eqz v0, :cond_b

    .line 134
    .line 135
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p1, Landroid/graphics/SurfaceTexture;

    .line 138
    .line 139
    const-string v0, "CSJ_VIDEO_TTVideo"

    .line 140
    .line 141
    const-string v1, "setSurface: TextureView "

    .line 142
    .line 143
    invoke-static {v0, v1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 147
    .line 148
    new-instance v1, Landroid/view/Surface;

    .line 149
    .line 150
    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->setSurface(Landroid/view/Surface;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/byazt/jy/tt;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 157
    .line 158
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/byazt/jy/tt;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_b

    .line 168
    .line 169
    invoke-direct {p0}, Lcom/byazt/jy/tt;->uj()V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_8
    iget-object v0, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 174
    .line 175
    if-eqz v0, :cond_b

    .line 176
    .line 177
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p1, Landroid/view/SurfaceHolder;

    .line 180
    .line 181
    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/byazt/jy/tt;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    .line 186
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/byazt/jy/tt;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_9

    .line 196
    .line 197
    invoke-direct {p0}, Lcom/byazt/jy/tt;->uj()V

    .line 198
    .line 199
    .line 200
    :cond_9
    return-void

    .line 201
    :cond_a
    iget-object p1, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 202
    .line 203
    if-eqz p1, :cond_b

    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .line 207
    .line 208
    :cond_b
    :goto_3
    return-void

    .line 209
    :goto_4
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isCompleted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/jy/tt;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFirstFrameSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/jy/tt;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->isLooping()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isPaused()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->getPlaybackState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->getPlaybackState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/jy/tt;->sp:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReleased()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/jy/tt;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/jy/tt;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public pause()V
    .locals 2

    .line 1
    const-string v0, "CSJ_VIDEO_TTVideo"

    .line 2
    .line 3
    const-string v1, "pause: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/jy/tt;->gr:Landroid/os/Handler;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x64

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x65

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public play()V
    .locals 4

    .line 1
    const-string v0, "CSJ_VIDEO_TTVideo"

    .line 2
    .line 3
    const-string v1, "play: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/jy/tt;->gr:Landroid/os/Handler;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/jy/tt;->md:Ljava/lang/Runnable;

    .line 13
    .line 14
    iget v2, p0, Lcom/byazt/jy/tt;->yv:I

    .line 15
    .line 16
    int-to-long v2, v2

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/byazt/jy/tt$8;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/byazt/jy/tt$8;-><init>(Lcom/byazt/jy/tt;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/jy/tt;->n()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/jy/tt;->gr:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x67

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    new-instance v1, Lcom/byazt/jy/tt$11;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/byazt/jy/tt$11;-><init>(Lcom/byazt/jy/tt;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public removeIVideoPlayerCallback(Lcom/byazt/fk/sp$c;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/jy/tt;->gu:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-ne v1, p1, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/jy/tt$9;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/jy/tt$9;-><init>(Lcom/byazt/jy/tt;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/byazt/jy/tt;->tt(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public restart()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->isMute()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iput v1, p0, Lcom/byazt/jy/tt;->z:I

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    iput-wide v2, p0, Lcom/byazt/jy/tt;->t:J

    .line 17
    .line 18
    iput-wide v2, p0, Lcom/byazt/jy/tt;->u:J

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/byazt/jy/tt;->a:Z

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/byazt/jy/tt;->start(ZJZ)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public seekTo(J)V
    .locals 2

    .line 1
    const-string v0, "CSJ_VIDEO_TTVideo"

    .line 2
    .line 3
    const-string v1, "seekTo: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/byazt/jy/tt;->uj:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 13
    .line 14
    long-to-int p2, p1

    .line 15
    new-instance p1, Lcom/byazt/jy/tt$10;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/byazt/jy/tt$10;-><init>(Lcom/byazt/jy/tt;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2, p1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->seekTo(ILcom/bykv/vk/component/ttvideo/SeekCompletionListener;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/byazt/fk/u;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/byazt/fk/u;->getUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p1}, Lcom/byazt/fk/u;->getFileNameKey()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-interface {p1}, Lcom/byazt/fk/u;->getCacheParentDir()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->setDirectUrlUseDataLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/byazt/jy/tt;->ve:Z

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput v1, p0, Lcom/byazt/jy/tt;->z:I

    .line 24
    .line 25
    const/16 v2, 0xa

    .line 26
    .line 27
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    .line 29
    const-string v3, "TTVideoPlayer setDirectUrlUseDataLoader:  url ="

    .line 30
    .line 31
    aput-object v3, v2, v1

    .line 32
    .line 33
    invoke-interface {p1}, Lcom/byazt/fk/u;->getUrl()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    aput-object v1, v2, v0

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    const-string v1, " isH265="

    .line 41
    .line 42
    aput-object v1, v2, v0

    .line 43
    .line 44
    invoke-interface {p1}, Lcom/byazt/fk/u;->isH265()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x3

    .line 53
    aput-object v0, v2, v1

    .line 54
    .line 55
    const/4 v0, 0x4

    .line 56
    const-string v1, " presize="

    .line 57
    .line 58
    aput-object v1, v2, v0

    .line 59
    .line 60
    invoke-interface {p1}, Lcom/byazt/fk/u;->getPreloadSize()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v1, 0x5

    .line 69
    aput-object v0, v2, v1

    .line 70
    .line 71
    const/4 v0, 0x6

    .line 72
    const-string v1, " path="

    .line 73
    .line 74
    aput-object v1, v2, v0

    .line 75
    .line 76
    const/4 v0, 0x7

    .line 77
    invoke-interface {p1}, Lcom/byazt/fk/u;->getCacheParentDir()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    aput-object v1, v2, v0

    .line 82
    .line 83
    const/16 v0, 0x8

    .line 84
    .line 85
    const-string v1, " fileName ="

    .line 86
    .line 87
    aput-object v1, v2, v0

    .line 88
    .line 89
    const/16 v0, 0x9

    .line 90
    .line 91
    invoke-interface {p1}, Lcom/byazt/fk/u;->getFileNameKey()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    aput-object p1, v2, v0

    .line 96
    .line 97
    const-string p1, "CSJ_VIDEO_TTVideo"

    .line 98
    .line 99
    invoke-static {p1, v2}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    const-string v0, "CSJ_VIDEO_TTVideo"

    .line 2
    .line 3
    const-string v1, "setDisplay:  SurfaceView"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/byazt/jy/tt;->setSurfaceValid(Z)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/byazt/jy/tt;->qy:Landroid/view/SurfaceHolder;

    .line 13
    .line 14
    new-instance v0, Lcom/byazt/jy/tt$4;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lcom/byazt/jy/tt$4;-><init>(Lcom/byazt/jy/tt;Landroid/view/SurfaceHolder;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/byazt/jy/tt;->tt(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setLoop(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->setLooping(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPlaySpeedRatio(F)V
    .locals 0

    return-void
.end method

.method public setQuietPlay(Z)V
    .locals 2

    .line 1
    const-string v0, "CSJ_VIDEO_TTVideo"

    .line 2
    .line 3
    const-string v1, "setIsMute: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->setIsMute(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setSeekMode(I)V
    .locals 0

    return-void
.end method

.method public setSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/byazt/jy/tt;->setSurfaceValid(Z)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/byazt/jy/tt;->rl:Landroid/graphics/SurfaceTexture;

    .line 6
    .line 7
    new-instance v0, Lcom/byazt/jy/tt$5;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lcom/byazt/jy/tt$5;-><init>(Lcom/byazt/jy/tt;Landroid/graphics/SurfaceTexture;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/byazt/jy/tt;->tt(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setSurfaceValid(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/jy/tt;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUpdateProgressInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/jy/tt;->yv:I

    .line 2
    .line 3
    return-void
.end method

.method public start(ZJZ)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "start: firstSeek:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " first:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, " quiet:"

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "CSJ_VIDEO_TTVideo"

    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/byazt/jy/tt;->gr:Landroid/os/Handler;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/byazt/jy/tt;->gr:Landroid/os/Handler;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/byazt/jy/tt;->md:Ljava/lang/Runnable;

    .line 43
    .line 44
    iget v2, p0, Lcom/byazt/jy/tt;->yv:I

    .line 45
    .line 46
    int-to-long v2, v2

    .line 47
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    iput-wide v1, p0, Lcom/byazt/jy/tt;->da:J

    .line 55
    .line 56
    iget-object p1, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 57
    .line 58
    long-to-int p3, p2

    .line 59
    invoke-virtual {p1, p3}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->setStartTime(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/byazt/jy/tt;->tt:Lcom/bykv/vk/component/ttvideo/TTVideoEngine;

    .line 63
    .line 64
    invoke-virtual {p1, p4}, Lcom/bykv/vk/component/ttvideo/TTVideoEngine;->setIsMute(Z)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/byazt/jy/tt;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const/4 p2, 0x1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    iget-boolean p1, p0, Lcom/byazt/jy/tt;->ve:Z

    .line 77
    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    invoke-direct {p0}, Lcom/byazt/jy/tt;->tt()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/4 p1, 0x2

    .line 85
    new-array p1, p1, [Ljava/lang/Object;

    .line 86
    .line 87
    const/4 p3, 0x0

    .line 88
    const-string p4, "seekTo: "

    .line 89
    .line 90
    aput-object p4, p1, p3

    .line 91
    .line 92
    const-string p3, "Can not exec play, please exec setDataSource && setSurface before seek"

    .line 93
    .line 94
    aput-object p3, p1, p2

    .line 95
    .line 96
    invoke-static {v0, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    new-instance p1, Lcom/byazt/jy/tt$6;

    .line 100
    .line 101
    invoke-direct {p1, p0}, Lcom/byazt/jy/tt$6;-><init>(Lcom/byazt/jy/tt;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, p1}, Lcom/byazt/jy/tt;->c(Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    :goto_0
    const-string p1, "start:end"

    .line 108
    .line 109
    invoke-static {v0, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/byazt/jy/tt;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/byazt/jy/tt;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_2

    .line 124
    .line 125
    iget-object p1, p0, Lcom/byazt/jy/tt;->gr:Landroid/os/Handler;

    .line 126
    .line 127
    if-eqz p1, :cond_2

    .line 128
    .line 129
    iget-object p1, p0, Lcom/byazt/jy/tt;->gr:Landroid/os/Handler;

    .line 130
    .line 131
    new-instance p2, Lcom/byazt/jy/tt$7;

    .line 132
    .line 133
    invoke-direct {p2, p0}, Lcom/byazt/jy/tt$7;-><init>(Lcom/byazt/jy/tt;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    .line 138
    .line 139
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    const-string v0, "CSJ_VIDEO_TTVideo"

    .line 2
    .line 3
    const-string v1, "stop: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/jy/tt;->gr:Landroid/os/Handler;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/jy/tt;->gr:Landroid/os/Handler;

    .line 13
    .line 14
    const/16 v1, 0x69

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
