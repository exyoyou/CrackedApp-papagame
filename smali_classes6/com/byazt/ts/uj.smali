.class public Lcom/byazt/ts/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ts/ve$a;
.implements Lcom/byazt/ts/ve$c;
.implements Lcom/byazt/ts/ve$n;
.implements Lcom/byazt/ts/ve$sp;
.implements Lcom/byazt/ts/ve$tt;
.implements Lcom/byazt/ts/ve$uj;
.implements Lcom/byazt/ts/ve$ve;
.implements Lcom/byazt/fk/sp;
.implements Lcom/byazt/dna/qp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x165,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ts/uj$c;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final zm:Landroid/util/SparseIntArray;


# instance fields
.field public a:Z

.field public aw:J

.field public volatile bx:Z

.field public cu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public d:Lcom/byazt/jzl/tt;

.field public da:Z

.field public volatile eo:I

.field public gr:I

.field public gt:J

.field public gu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Z

.field public ic:Z

.field public m:Z

.field public md:Lcom/byazt/fk/u;

.field public my:J

.field public n:I

.field public final nb:Ljava/lang/Runnable;

.field public nu:J

.field public or:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/fk/sp$c;",
            ">;>;"
        }
    .end annotation
.end field

.field public final pf:Lcom/byazt/ts/uj$c;

.field public qp:Landroid/view/Surface;

.field public qy:Z

.field public rh:J

.field public rl:J

.field public sl:Z

.field public volatile sp:Lcom/byazt/ts/ve;

.field public sv:J

.field public volatile t:I

.field public tt:Landroid/graphics/SurfaceTexture;

.field public u:J

.field public uj:I

.field public ve:Landroid/view/SurfaceHolder;

.field public final x:Z

.field public volatile yp:Landroid/os/Handler;

.field public yv:Z

.field public volatile z:Z

.field public zb:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/ts/uj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    new-instance v0, Landroid/util/SparseIntArray;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/byazt/ts/uj;->zm:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/byazt/jzl/tt;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/ts/uj;->uj:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/byazt/ts/uj;->a:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/byazt/ts/uj;->x:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/byazt/ts/uj;->i:Z

    .line 15
    .line 16
    const/16 v2, 0xc9

    .line 17
    .line 18
    iput v2, p0, Lcom/byazt/ts/uj;->t:I

    .line 19
    .line 20
    const-wide/16 v2, -0x1

    .line 21
    .line 22
    iput-wide v2, p0, Lcom/byazt/ts/uj;->u:J

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/byazt/ts/uj;->z:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/byazt/ts/uj;->m:Z

    .line 27
    .line 28
    const-wide/16 v2, 0x0

    .line 29
    .line 30
    iput-wide v2, p0, Lcom/byazt/ts/uj;->nu:J

    .line 31
    .line 32
    const-wide/high16 v4, -0x8000000000000000L

    .line 33
    .line 34
    iput-wide v4, p0, Lcom/byazt/ts/uj;->rh:J

    .line 35
    .line 36
    iput-wide v2, p0, Lcom/byazt/ts/uj;->my:J

    .line 37
    .line 38
    iput-wide v2, p0, Lcom/byazt/ts/uj;->gt:J

    .line 39
    .line 40
    iput-wide v2, p0, Lcom/byazt/ts/uj;->rl:J

    .line 41
    .line 42
    iput v0, p0, Lcom/byazt/ts/uj;->gr:I

    .line 43
    .line 44
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v4, p0, Lcom/byazt/ts/uj;->p:Ljava/util/List;

    .line 50
    .line 51
    iput-object v1, p0, Lcom/byazt/ts/uj;->md:Lcom/byazt/fk/u;

    .line 52
    .line 53
    iput-boolean v0, p0, Lcom/byazt/ts/uj;->h:Z

    .line 54
    .line 55
    const/16 v4, 0xc8

    .line 56
    .line 57
    iput v4, p0, Lcom/byazt/ts/uj;->eo:I

    .line 58
    .line 59
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    .line 61
    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 62
    .line 63
    .line 64
    iput-object v4, p0, Lcom/byazt/ts/uj;->zb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    .line 66
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    .line 68
    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 69
    .line 70
    .line 71
    iput-object v4, p0, Lcom/byazt/ts/uj;->or:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    .line 73
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    .line 75
    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 76
    .line 77
    .line 78
    iput-object v4, p0, Lcom/byazt/ts/uj;->cu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    .line 80
    iput-object v1, p0, Lcom/byazt/ts/uj;->qp:Landroid/view/Surface;

    .line 81
    .line 82
    new-instance v0, Lcom/byazt/ts/uj$1;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Lcom/byazt/ts/uj$1;-><init>(Lcom/byazt/ts/uj;)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lcom/byazt/ts/uj;->nb:Ljava/lang/Runnable;

    .line 88
    .line 89
    new-instance v0, Lcom/byazt/ts/uj$c;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Lcom/byazt/ts/uj$c;-><init>(Lcom/byazt/ts/uj;)V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lcom/byazt/ts/uj;->pf:Lcom/byazt/ts/uj$c;

    .line 95
    .line 96
    iput-wide v2, p0, Lcom/byazt/ts/uj;->sv:J

    .line 97
    .line 98
    iput-wide v2, p0, Lcom/byazt/ts/uj;->aw:J

    .line 99
    .line 100
    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/byazt/ts/uj;->ic:Z

    .line 102
    .line 103
    iput-object p2, p0, Lcom/byazt/ts/uj;->d:Lcom/byazt/jzl/tt;

    .line 104
    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v2, "mda_"

    .line 108
    .line 109
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string p1, "_"

    .line 116
    .line 117
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    sget-object p1, Lcom/byazt/ts/uj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-direct {p0, p1, v1}, Lcom/byazt/ts/uj;->c(Ljava/lang/String;Landroid/os/Looper;)V

    .line 134
    .line 135
    .line 136
    const-string p1, "0501"

    .line 137
    .line 138
    invoke-direct {p0, p1}, Lcom/byazt/ts/uj;->c(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public static synthetic a(Lcom/byazt/ts/uj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ts/uj;->nu:J

    return-wide v0
.end method

.method private a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/byazt/ts/uj$8;

    invoke-direct {v1, p0}, Lcom/byazt/ts/uj$8;-><init>(Lcom/byazt/ts/uj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ts/uj;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ts/uj;->t:I

    return p1
.end method

.method public static synthetic c(Lcom/byazt/ts/uj;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/ts/uj;->my:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/byazt/ts/uj;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/ts/uj;)Lcom/byazt/ts/ve;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/ts/uj;Lcom/byazt/ts/ve;)Lcom/byazt/ts/ve;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    return-object p1
.end method

.method private c(J)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/byazt/ts/uj;->pf:Lcom/byazt/ts/uj$c;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/ts/uj$c;->c(J)V

    .line 22
    iget-boolean p1, p0, Lcom/byazt/ts/uj;->yv:Z

    if-eqz p1, :cond_0

    .line 23
    iget-object p1, p0, Lcom/byazt/ts/uj;->pf:Lcom/byazt/ts/uj$c;

    invoke-direct {p0, p1}, Lcom/byazt/ts/uj;->tt(Ljava/lang/Runnable;)V

    return-void

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/byazt/ts/uj;->md:Lcom/byazt/fk/u;

    invoke-direct {p0, p1}, Lcom/byazt/ts/uj;->c(Lcom/byazt/fk/u;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 25
    iget-object p1, p0, Lcom/byazt/ts/uj;->pf:Lcom/byazt/ts/uj$c;

    invoke-direct {p0, p1}, Lcom/byazt/ts/uj;->tt(Ljava/lang/Runnable;)V

    return-void

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/byazt/ts/uj;->pf:Lcom/byazt/ts/uj$c;

    invoke-direct {p0, p1}, Lcom/byazt/ts/uj;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(JJ)V
    .locals 8

    .line 12
    iget-object v0, p0, Lcom/byazt/ts/uj;->p:Ljava/util/List;

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

    .line 13
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/byazt/fk/sp$c;

    if-eqz v2, :cond_0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    .line 14
    invoke-interface/range {v2 .. v7}, Lcom/byazt/fk/sp$c;->onPlayPositionUpdate(Lcom/byazt/fk/sp;JJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ts/uj;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/byazt/ts/uj;->tt(II)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ts/uj;JJ)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/ts/uj;->c(JJ)V

    return-void
.end method

.method private c(Ljava/lang/Runnable;)V
    .locals 1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ts/uj;->gu:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/byazt/ts/uj;->gu:Ljava/util/ArrayList;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/byazt/ts/uj;->gu:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "CSJ_VIDEO_MEDIA"

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/lt/tt;->ve(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/ts/uj;->d:Lcom/byazt/jzl/tt;

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0, p1}, Lcom/byazt/jzl/tt;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 2

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/byazt/ts/uj;->gr:I

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/byazt/ts/uj;->z:Z

    .line 17
    new-instance p1, Lcom/byazt/nr/d;

    invoke-direct {p1, p2, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    iput-object p1, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    goto :goto_0

    .line 18
    :cond_0
    iget-object p2, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    if-nez p2, :cond_1

    const-string p2, "thread_service"

    .line 19
    invoke-static {p2}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/dna/qp;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "csj_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/byazt/dna/qp;->obtainHandler(Lcom/byazt/dna/qp$c;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 20
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/byazt/ts/uj;->ve()V

    return-void
.end method

.method private c(II)Z
    .locals 2

    .line 1
    const/16 v0, -0x3f2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ef

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ec

    if-eq p1, v0, :cond_0

    const/16 v0, -0x6e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-eq p2, v1, :cond_1

    const/16 v0, 0x2bc

    if-eq p2, v0, :cond_1

    const/16 v0, 0x320

    if-eq p2, v0, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method private c(Lcom/byazt/fk/u;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 27
    invoke-interface {p1}, Lcom/byazt/fk/u;->isAudio()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic c(Lcom/byazt/ts/uj;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/byazt/ts/uj;->m:Z

    return p1
.end method

.method public static synthetic da(Lcom/byazt/ts/uj;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ts/uj;->p:Ljava/util/List;

    return-object p0
.end method

.method private da()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/byazt/ts/uj;->da:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/byazt/ts/uj;->da:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/byazt/ts/uj;->gu:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 6
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/byazt/ts/uj;->gu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/byazt/ts/uj;->da:Z

    return-void
.end method

.method private i()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    new-instance v1, Lcom/byazt/ts/uj$9;

    invoke-direct {v1, p0}, Lcom/byazt/ts/uj$9;-><init>(Lcom/byazt/ts/uj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic i(Lcom/byazt/ts/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ts/uj;->sl()V

    return-void
.end method

.method public static synthetic n(Lcom/byazt/ts/uj;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ts/uj;->eo:I

    return p0
.end method

.method private n()V
    .locals 4

    const-string v0, "CSJ_VIDEO_MEDIA"

    const-string v1, "releaseMediaPlayer: "

    .line 2
    invoke-static {v0, v1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    invoke-interface {v0}, Lcom/byazt/ts/ve;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :catchall_0
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/byazt/ts/ve;->c(Lcom/byazt/ts/ve$tt;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    invoke-interface {v0, v1}, Lcom/byazt/ts/ve;->c(Lcom/byazt/ts/ve$sp;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    invoke-interface {v0, v1}, Lcom/byazt/ts/ve;->c(Lcom/byazt/ts/ve$c;)V

    .line 8
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    invoke-interface {v0, v1}, Lcom/byazt/ts/ve;->c(Lcom/byazt/ts/ve$uj;)V

    .line 9
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    invoke-interface {v0, v1}, Lcom/byazt/ts/ve;->c(Lcom/byazt/ts/ve$ve;)V

    .line 10
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    invoke-interface {v0, v1}, Lcom/byazt/ts/ve;->c(Lcom/byazt/ts/ve$n;)V

    .line 11
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    invoke-interface {v0, v1}, Lcom/byazt/ts/ve;->c(Lcom/byazt/ts/ve$a;)V

    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    invoke-interface {v0}, Lcom/byazt/ts/ve;->sl()V

    .line 13
    iget-object v0, p0, Lcom/byazt/ts/uj;->d:Lcom/byazt/jzl/tt;

    if-eqz v0, :cond_1

    .line 14
    iget-wide v1, p0, Lcom/byazt/ts/uj;->rh:J

    iget-object v3, p0, Lcom/byazt/ts/uj;->md:Lcom/byazt/fk/u;

    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/jzl/tt;->c(JLcom/byazt/fk/u;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    return-void
.end method

.method public static synthetic sl(Lcom/byazt/ts/uj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ts/uj;->u:J

    return-wide v0
.end method

.method private sl()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ts/uj;->gu:Ljava/util/ArrayList;

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

    .line 3
    :cond_2
    invoke-direct {p0}, Lcom/byazt/ts/uj;->da()V

    return-void
.end method

.method public static synthetic sp(Lcom/byazt/ts/uj;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ts/uj;->uj:I

    return p0
.end method

.method private sp()V
    .locals 4

    .line 2
    sget-object v0, Lcom/byazt/ts/uj;->zm:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/byazt/ts/uj;->gr:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    iget v1, p0, Lcom/byazt/ts/uj;->gr:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    .line 4
    :cond_0
    iget v3, p0, Lcom/byazt/ts/uj;->gr:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private t()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ts/uj;->gu:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/ts/uj;->gu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic t(Lcom/byazt/ts/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ts/uj;->ve()V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/ts/uj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ts/uj;->rh:J

    return-wide v0
.end method

.method public static synthetic tt(Lcom/byazt/ts/uj;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/ts/uj;->nu:J

    return-wide p1
.end method

.method private tt()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/byazt/ts/uj;->nu:J

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Lcom/byazt/ts/uj;->uj:I

    .line 6
    iput-wide v0, p0, Lcom/byazt/ts/uj;->my:J

    .line 7
    iput-boolean v2, p0, Lcom/byazt/ts/uj;->m:Z

    const-wide/high16 v0, -0x8000000000000000L

    .line 8
    iput-wide v0, p0, Lcom/byazt/ts/uj;->rh:J

    return-void
.end method

.method private tt(II)V
    .locals 13

    const/16 p2, 0x2bd

    const v0, 0x7fffffff

    const-string v1, "bufferCount = "

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "CSJ_VIDEO_MEDIA"

    if-ne p1, p2, :cond_2

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/byazt/ts/uj;->sv:J

    .line 23
    iget p1, p0, Lcom/byazt/ts/uj;->uj:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/byazt/ts/uj;->uj:I

    .line 24
    iget-object p1, p0, Lcom/byazt/ts/uj;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    .line 25
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/fk/sp$c;

    if-eqz p2, :cond_0

    .line 26
    invoke-interface {p2, p0, v0, v4, v4}, Lcom/byazt/fk/sp$c;->onBufferStart(Lcom/byazt/fk/sp;III)V

    goto :goto_0

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 27
    iget p2, p0, Lcom/byazt/ts/uj;->uj:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {v5, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/16 p2, 0x2be

    const/4 v6, 0x3

    if-ne p1, p2, :cond_6

    .line 28
    iget-wide p1, p0, Lcom/byazt/ts/uj;->sv:J

    const-wide/16 v7, 0x0

    cmp-long v9, p1, v7

    if-lez v9, :cond_3

    .line 29
    iget-wide p1, p0, Lcom/byazt/ts/uj;->aw:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/byazt/ts/uj;->sv:J

    sub-long/2addr v9, v11

    add-long/2addr p1, v9

    iput-wide p1, p0, Lcom/byazt/ts/uj;->aw:J

    .line 30
    iput-wide v7, p0, Lcom/byazt/ts/uj;->sv:J

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/byazt/ts/uj;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_4

    .line 32
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/fk/sp$c;

    if-eqz p2, :cond_4

    .line 33
    invoke-interface {p2, p0, v0}, Lcom/byazt/fk/sp$c;->onBufferEnd(Lcom/byazt/fk/sp;I)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 34
    iget p2, p0, Lcom/byazt/ts/uj;->uj:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, " mBufferTotalTime = "

    aput-object p2, p1, v2

    iget-wide v0, p0, Lcom/byazt/ts/uj;->aw:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v6

    invoke-static {v5, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 35
    :cond_6
    iget-boolean p2, p0, Lcom/byazt/ts/uj;->ic:Z

    if-eqz p2, :cond_7

    if-ne p1, v6, :cond_7

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "hasPendingPauseCommand:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/byazt/ts/uj;->bx:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/byazt/ts/uj;->sl()V

    .line 38
    invoke-direct {p0}, Lcom/byazt/ts/uj;->x()V

    .line 39
    iget-boolean p1, p0, Lcom/byazt/ts/uj;->h:Z

    invoke-virtual {p0, p1}, Lcom/byazt/ts/uj;->setQuietPlay(Z)V

    const-string p1, "onRenderStart"

    .line 40
    invoke-static {v5, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private tt(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/ts/uj;->sl:Z

    if-nez v0, :cond_1

    .line 64
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 65
    :cond_1
    invoke-direct {p0, p1}, Lcom/byazt/ts/uj;->c(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private tt(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/byazt/ts/ve;->c(Ljava/io/FileDescriptor;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/ts/uj;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/ts/uj;->i:Z

    return p1
.end method

.method public static synthetic u(Lcom/byazt/ts/uj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/ts/uj;->z:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic uj(Lcom/byazt/ts/uj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ts/uj;->my:J

    return-wide v0
.end method

.method public static synthetic uj(Lcom/byazt/ts/uj;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/ts/uj;->u:J

    return-wide p1
.end method

.method private uj()V
    .locals 1

    .line 4
    new-instance v0, Lcom/byazt/ts/uj$2;

    invoke-direct {v0, p0}, Lcom/byazt/ts/uj$2;-><init>(Lcom/byazt/ts/uj;)V

    invoke-direct {p0, v0}, Lcom/byazt/ts/uj;->tt(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/ts/uj;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/ts/uj;->h:Z

    return p1
.end method

.method public static synthetic ve(Lcom/byazt/ts/uj;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/ts/uj;->rh:J

    return-wide p1
.end method

.method private ve()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    new-instance v1, Lcom/byazt/ts/uj$12;

    invoke-direct {v1, p0}, Lcom/byazt/ts/uj$12;-><init>(Lcom/byazt/ts/uj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic ve(Lcom/byazt/ts/uj;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/byazt/ts/uj;->m:Z

    return p0
.end method

.method public static synthetic ve(Lcom/byazt/ts/uj;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/ts/uj;->bx:Z

    return p1
.end method

.method public static synthetic x(Lcom/byazt/ts/uj;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    return-object p0
.end method

.method private x()V
    .locals 4

    const-string v0, "0506"

    .line 2
    invoke-direct {p0, v0}, Lcom/byazt/ts/uj;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/byazt/ts/uj;->rl:J

    sub-long/2addr v0, v2

    .line 4
    iget-object v2, p0, Lcom/byazt/ts/uj;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/fk/sp$c;

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v3, p0, v0, v1}, Lcom/byazt/fk/sp$c;->onRenderStart(Lcom/byazt/fk/sp;J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/byazt/ts/uj;->a:Z

    return-void
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
    iget-object v0, p0, Lcom/byazt/ts/uj;->p:Ljava/util/List;

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
    iget-object v0, p0, Lcom/byazt/ts/uj;->p:Ljava/util/List;

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

.method public c()I
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xcb

    return v0

    .line 29
    :cond_0
    iget v0, p0, Lcom/byazt/ts/uj;->t:I

    return v0
.end method

.method public c(Lcom/byazt/ts/ve;)V
    .locals 1

    const/16 p1, 0xd1

    .line 34
    iput p1, p0, Lcom/byazt/ts/uj;->t:I

    .line 35
    sget-object p1, Lcom/byazt/ts/uj;->zm:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/byazt/ts/uj;->gr:I

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 36
    iget-object p1, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    iget-object v0, p0, Lcom/byazt/ts/uj;->nb:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const-string p1, "0509"

    .line 38
    invoke-direct {p0, p1}, Lcom/byazt/ts/uj;->c(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/byazt/ts/uj;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/fk/sp$c;

    if-eqz v0, :cond_1

    .line 41
    invoke-interface {v0, p0}, Lcom/byazt/fk/sp$c;->onCompletion(Lcom/byazt/fk/sp;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Lcom/byazt/ts/ve;I)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    if-eq v0, p1, :cond_0

    return-void

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/byazt/ts/uj;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/fk/sp$c;

    if-eqz v0, :cond_1

    .line 33
    invoke-interface {v0, p0, p2}, Lcom/byazt/fk/sp$c;->onBufferingUpdate(Lcom/byazt/fk/sp;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Lcom/byazt/ts/ve;IIII)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/byazt/ts/uj;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/ref/WeakReference;

    if-eqz p4, :cond_0

    .line 63
    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/byazt/fk/sp$c;

    if-eqz p4, :cond_0

    .line 64
    invoke-interface {p4, p0, p2, p3}, Lcom/byazt/fk/sp$c;->onVideoSizeChanged(Lcom/byazt/fk/sp;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/ts/ve;II)Z
    .locals 3

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "what="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " extra="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CSJ_VIDEO_MEDIA"

    invoke-static {v0, p1}, Lcom/byazt/lt/tt;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/byazt/ts/uj;->sp()V

    const/16 p1, 0xc8

    .line 44
    iput p1, p0, Lcom/byazt/ts/uj;->t:I

    .line 45
    iget-object p1, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    iget-object v0, p0, Lcom/byazt/ts/uj;->nb:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 47
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/byazt/ts/uj;->c(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 48
    invoke-direct {p0}, Lcom/byazt/ts/uj;->a()V

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/byazt/ts/uj;->zb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    return v0

    .line 50
    :cond_2
    iget-object p1, p0, Lcom/byazt/ts/uj;->zb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51
    new-instance p1, Lcom/byazt/jzl/ve;

    invoke-direct {p1, p2, p3}, Lcom/byazt/jzl/ve;-><init>(II)V

    const-string v1, "0510"

    .line 52
    invoke-direct {p0, v1}, Lcom/byazt/ts/uj;->c(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/byazt/ts/uj;->d:Lcom/byazt/jzl/tt;

    if-eqz v1, :cond_3

    const-string v2, ""

    .line 54
    invoke-interface {v1, p2, p3, v2}, Lcom/byazt/jzl/tt;->c(IILjava/lang/String;)V

    .line 55
    :cond_3
    iget-object p2, p0, Lcom/byazt/ts/uj;->p:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_4

    .line 56
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/byazt/fk/sp$c;

    if-eqz p3, :cond_4

    .line 57
    invoke-interface {p3, p0, p1}, Lcom/byazt/fk/sp$c;->onError(Lcom/byazt/fk/sp;Lcom/byazt/fk/ve;)V

    goto :goto_0

    :cond_5
    return v0
.end method

.method public getBufferCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ts/uj;->uj:I

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
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-wide v1

    .line 10
    :cond_0
    iget v0, p0, Lcom/byazt/ts/uj;->t:I

    .line 11
    .line 12
    const/16 v3, 0xce

    .line 13
    .line 14
    if-eq v0, v3, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/byazt/ts/uj;->t:I

    .line 17
    .line 18
    const/16 v3, 0xcf

    .line 19
    .line 20
    if-ne v0, v3, :cond_2

    .line 21
    .line 22
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/byazt/ts/ve;->i()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    return-wide v0

    .line 29
    :catchall_0
    :cond_2
    return-wide v1
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ts/uj;->ve:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ts/uj;->tt:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTotalBufferTime()J
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/byazt/ts/uj;->m:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/byazt/ts/uj;->my:J

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-lez v4, :cond_0

    .line 18
    .line 19
    iget-wide v2, p0, Lcom/byazt/ts/uj;->nu:J

    .line 20
    .line 21
    add-long/2addr v2, v0

    .line 22
    return-wide v2

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/byazt/ts/uj;->nu:J

    .line 24
    .line 25
    return-wide v0

    .line 26
    :cond_1
    iget-wide v0, p0, Lcom/byazt/ts/uj;->aw:J

    .line 27
    .line 28
    return-wide v0
.end method

.method public getUpdateProgressInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ts/uj;->eo:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoDuration()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/byazt/ts/uj;->gt:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget v0, p0, Lcom/byazt/ts/uj;->t:I

    .line 11
    .line 12
    const/16 v1, 0xce

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/byazt/ts/uj;->t:I

    .line 17
    .line 18
    const/16 v1, 0xcf

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/byazt/ts/ve;->da()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iput-wide v0, p0, Lcom/byazt/ts/uj;->gt:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    :catchall_0
    :cond_2
    iget-wide v0, p0, Lcom/byazt/ts/uj;->gt:J

    .line 31
    .line 32
    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/ts/ve;->yp()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/ts/ve;->u()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, Lcom/byazt/ts/uj;->t:I

    .line 6
    .line 7
    iget v3, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    iget-object v4, v1, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v4, :cond_11

    .line 13
    .line 14
    iget v4, v0, Landroid/os/Message;->what:I

    .line 15
    .line 16
    const-string v7, "0502"

    .line 17
    .line 18
    const-string v8, "CSJ_VIDEO_MEDIA"

    .line 19
    .line 20
    const/16 v9, 0xcb

    .line 21
    .line 22
    const/16 v12, 0xc9

    .line 23
    .line 24
    const/16 v13, 0xca

    .line 25
    .line 26
    const/16 v14, 0xcd

    .line 27
    .line 28
    const/16 v15, 0xd0

    .line 29
    .line 30
    const/16 v10, 0xd1

    .line 31
    .line 32
    const/16 v11, 0xce

    .line 33
    .line 34
    const/16 v6, 0xcf

    .line 35
    .line 36
    packed-switch v4, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    :pswitch_0
    goto/16 :goto_6

    .line 40
    .line 41
    :pswitch_1
    :try_start_0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 44
    .line 45
    new-instance v4, Landroid/view/Surface;

    .line 46
    .line 47
    invoke-direct {v4, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 48
    .line 49
    .line 50
    iput-object v4, v1, Lcom/byazt/ts/uj;->qp:Landroid/view/Surface;

    .line 51
    .line 52
    iget-object v0, v1, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 53
    .line 54
    iget-object v4, v1, Lcom/byazt/ts/uj;->qp:Landroid/view/Surface;

    .line 55
    .line 56
    invoke-interface {v0, v4}, Lcom/byazt/ts/ve;->c(Landroid/view/Surface;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v7}, Lcom/byazt/ts/uj;->c(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, v1, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 63
    .line 64
    invoke-interface {v0, v5}, Lcom/byazt/ts/ve;->tt(Z)V

    .line 65
    .line 66
    .line 67
    iget-object v0, v1, Lcom/byazt/ts/uj;->cu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70
    .line 71
    .line 72
    iget-object v0, v1, Lcom/byazt/ts/uj;->zb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_11

    .line 79
    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/byazt/ts/uj;->sl()V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_6

    .line 84
    .line 85
    :catchall_0
    nop

    .line 86
    goto/16 :goto_6

    .line 87
    .line 88
    :pswitch_2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Landroid/view/SurfaceHolder;

    .line 91
    .line 92
    iget-object v4, v1, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 93
    .line 94
    invoke-interface {v4, v0}, Lcom/byazt/ts/ve;->c(Landroid/view/SurfaceHolder;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v7}, Lcom/byazt/ts/uj;->c(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, v1, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 101
    .line 102
    invoke-interface {v0, v5}, Lcom/byazt/ts/ve;->tt(Z)V

    .line 103
    .line 104
    .line 105
    iget-object v0, v1, Lcom/byazt/ts/uj;->or:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    .line 107
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 108
    .line 109
    .line 110
    iget-object v0, v1, Lcom/byazt/ts/uj;->zb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_11

    .line 117
    .line 118
    invoke-direct/range {p0 .. p0}, Lcom/byazt/ts/uj;->sl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .line 120
    .line 121
    goto/16 :goto_6

    .line 122
    .line 123
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/byazt/ts/uj;->tt()V

    .line 124
    .line 125
    .line 126
    iget v4, v1, Lcom/byazt/ts/uj;->t:I

    .line 127
    .line 128
    if-eq v4, v12, :cond_0

    .line 129
    .line 130
    iget v4, v1, Lcom/byazt/ts/uj;->t:I

    .line 131
    .line 132
    if-ne v4, v9, :cond_6

    .line 133
    .line 134
    :cond_0
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v0, Lcom/byazt/jzl/a;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/byazt/jzl/a;->getCacheParentDir()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_1

    .line 147
    .line 148
    invoke-static {}, Lcom/byazt/oy/tt;->c()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v0, v4}, Lcom/byazt/jzl/a;->setCacheParentDir(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_1
    new-instance v4, Ljava/io/File;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/byazt/jzl/a;->getCacheParentDir()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {v0}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    if-eqz v6, :cond_3

    .line 173
    .line 174
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    invoke-static {}, Lcom/byazt/oy/tt;->tt()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_2

    .line 182
    .line 183
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-direct {v1, v0}, Lcom/byazt/ts/uj;->tt(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_2
    iget-object v0, v1, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-interface {v0, v4}, Lcom/byazt/ts/ve;->c(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {v0}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    iget-object v4, v1, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 205
    .line 206
    iget-object v6, v1, Lcom/byazt/ts/uj;->d:Lcom/byazt/jzl/tt;

    .line 207
    .line 208
    invoke-interface {v4, v0, v6}, Lcom/byazt/ts/ve;->c(Lcom/byazt/jzl/a;Lcom/byazt/jzl/tt;)V

    .line 209
    .line 210
    .line 211
    :goto_0
    const-string v0, "0503"

    .line 212
    .line 213
    invoke-direct {v1, v0}, Lcom/byazt/ts/uj;->c(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iput v13, v1, Lcom/byazt/ts/uj;->t:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    .line 218
    goto/16 :goto_6

    .line 219
    .line 220
    :pswitch_4
    iget v4, v1, Lcom/byazt/ts/uj;->t:I

    .line 221
    .line 222
    if-eq v4, v11, :cond_4

    .line 223
    .line 224
    iget v4, v1, Lcom/byazt/ts/uj;->t:I

    .line 225
    .line 226
    if-eq v4, v6, :cond_4

    .line 227
    .line 228
    iget v4, v1, Lcom/byazt/ts/uj;->t:I

    .line 229
    .line 230
    if-ne v4, v10, :cond_6

    .line 231
    .line 232
    :cond_4
    :try_start_2
    iget-object v4, v1, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 233
    .line 234
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v0, Ljava/lang/Long;

    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 239
    .line 240
    .line 241
    move-result-wide v6

    .line 242
    iget v0, v1, Lcom/byazt/ts/uj;->n:I

    .line 243
    .line 244
    invoke-interface {v4, v6, v7, v0}, Lcom/byazt/ts/ve;->c(JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    .line 246
    .line 247
    goto/16 :goto_6

    .line 248
    .line 249
    :pswitch_5
    iget v0, v1, Lcom/byazt/ts/uj;->t:I

    .line 250
    .line 251
    if-eq v0, v14, :cond_5

    .line 252
    .line 253
    iget v0, v1, Lcom/byazt/ts/uj;->t:I

    .line 254
    .line 255
    if-eq v0, v11, :cond_5

    .line 256
    .line 257
    iget v0, v1, Lcom/byazt/ts/uj;->t:I

    .line 258
    .line 259
    if-eq v0, v15, :cond_5

    .line 260
    .line 261
    iget v0, v1, Lcom/byazt/ts/uj;->t:I

    .line 262
    .line 263
    if-eq v0, v6, :cond_5

    .line 264
    .line 265
    iget v0, v1, Lcom/byazt/ts/uj;->t:I

    .line 266
    .line 267
    if-ne v0, v10, :cond_6

    .line 268
    .line 269
    :cond_5
    :try_start_3
    iget-object v0, v1, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 270
    .line 271
    invoke-interface {v0}, Lcom/byazt/ts/ve;->a()V

    .line 272
    .line 273
    .line 274
    const-string v0, "0508"

    .line 275
    .line 276
    invoke-direct {v1, v0}, Lcom/byazt/ts/uj;->c(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iput v15, v1, Lcom/byazt/ts/uj;->t:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    .line 281
    goto/16 :goto_6

    .line 282
    .line 283
    :pswitch_6
    iget v0, v1, Lcom/byazt/ts/uj;->t:I

    .line 284
    .line 285
    if-eq v0, v13, :cond_7

    .line 286
    .line 287
    iget v0, v1, Lcom/byazt/ts/uj;->t:I

    .line 288
    .line 289
    if-ne v0, v15, :cond_6

    .line 290
    .line 291
    goto :goto_1

    .line 292
    :cond_6
    const/4 v6, 0x1

    .line 293
    goto/16 :goto_8

    .line 294
    .line 295
    :cond_7
    :goto_1
    :try_start_4
    iget-object v0, v1, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 296
    .line 297
    invoke-interface {v0}, Lcom/byazt/ts/ve;->x()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 298
    .line 299
    .line 300
    goto/16 :goto_6

    .line 301
    .line 302
    :catchall_1
    move-exception v0

    .line 303
    const-string v4, "OP_PREPARE_ASYNC error: "

    .line 304
    .line 305
    invoke-static {v8, v4, v0}, Lcom/byazt/lt/tt;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_6

    .line 309
    .line 310
    :pswitch_7
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/byazt/ts/uj;->n()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 311
    .line 312
    .line 313
    goto :goto_2

    .line 314
    :catchall_2
    move-exception v0

    .line 315
    move-object v4, v0

    .line 316
    const-string v0, "OP_RELEASE error: "

    .line 317
    .line 318
    invoke-static {v8, v0, v4}, Lcom/byazt/lt/tt;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 319
    .line 320
    .line 321
    :goto_2
    iget-object v0, v1, Lcom/byazt/ts/uj;->p:Ljava/util/List;

    .line 322
    .line 323
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    if-eqz v4, :cond_9

    .line 332
    .line 333
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 338
    .line 339
    if-eqz v4, :cond_8

    .line 340
    .line 341
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    check-cast v4, Lcom/byazt/fk/sp$c;

    .line 346
    .line 347
    if-eqz v4, :cond_8

    .line 348
    .line 349
    invoke-interface {v4, v1}, Lcom/byazt/fk/sp$c;->onRelease(Lcom/byazt/fk/sp;)V

    .line 350
    .line 351
    .line 352
    goto :goto_3

    .line 353
    :cond_9
    iput v9, v1, Lcom/byazt/ts/uj;->t:I

    .line 354
    .line 355
    goto/16 :goto_6

    .line 356
    .line 357
    :pswitch_8
    :try_start_6
    iget-object v0, v1, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 358
    .line 359
    invoke-interface {v0}, Lcom/byazt/ts/ve;->t()V

    .line 360
    .line 361
    .line 362
    iput v12, v1, Lcom/byazt/ts/uj;->t:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 363
    .line 364
    goto/16 :goto_6

    .line 365
    .line 366
    :pswitch_9
    iget-boolean v0, v1, Lcom/byazt/ts/uj;->m:Z

    .line 367
    .line 368
    if-eqz v0, :cond_a

    .line 369
    .line 370
    iget-wide v7, v1, Lcom/byazt/ts/uj;->nu:J

    .line 371
    .line 372
    iget-wide v12, v1, Lcom/byazt/ts/uj;->my:J

    .line 373
    .line 374
    add-long/2addr v7, v12

    .line 375
    iput-wide v7, v1, Lcom/byazt/ts/uj;->nu:J

    .line 376
    .line 377
    :cond_a
    const/4 v4, 0x0

    .line 378
    iput-boolean v4, v1, Lcom/byazt/ts/uj;->m:Z

    .line 379
    .line 380
    const-wide/16 v7, 0x0

    .line 381
    .line 382
    iput-wide v7, v1, Lcom/byazt/ts/uj;->my:J

    .line 383
    .line 384
    const-wide/high16 v7, -0x8000000000000000L

    .line 385
    .line 386
    iput-wide v7, v1, Lcom/byazt/ts/uj;->rh:J

    .line 387
    .line 388
    iget v0, v1, Lcom/byazt/ts/uj;->t:I

    .line 389
    .line 390
    if-eq v0, v11, :cond_b

    .line 391
    .line 392
    iget v0, v1, Lcom/byazt/ts/uj;->t:I

    .line 393
    .line 394
    if-eq v0, v6, :cond_b

    .line 395
    .line 396
    iget v0, v1, Lcom/byazt/ts/uj;->t:I

    .line 397
    .line 398
    if-ne v0, v10, :cond_6

    .line 399
    .line 400
    :cond_b
    :try_start_7
    iget-object v0, v1, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 401
    .line 402
    invoke-interface {v0}, Lcom/byazt/ts/ve;->sp()V

    .line 403
    .line 404
    .line 405
    const-string v0, "0507"

    .line 406
    .line 407
    invoke-direct {v1, v0}, Lcom/byazt/ts/uj;->c(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    iput v6, v1, Lcom/byazt/ts/uj;->t:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 411
    .line 412
    const/4 v4, 0x0

    .line 413
    :try_start_8
    iput-boolean v4, v1, Lcom/byazt/ts/uj;->bx:Z

    .line 414
    .line 415
    iget-object v0, v1, Lcom/byazt/ts/uj;->p:Ljava/util/List;

    .line 416
    .line 417
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    :cond_c
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 422
    .line 423
    .line 424
    move-result v6

    .line 425
    if-eqz v6, :cond_12

    .line 426
    .line 427
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v6

    .line 431
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 432
    .line 433
    if-eqz v6, :cond_c

    .line 434
    .line 435
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v6

    .line 439
    check-cast v6, Lcom/byazt/fk/sp$c;

    .line 440
    .line 441
    if-eqz v6, :cond_c

    .line 442
    .line 443
    invoke-interface {v6, v1}, Lcom/byazt/fk/sp$c;->onPause(Lcom/byazt/fk/sp;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 444
    .line 445
    .line 446
    goto :goto_4

    .line 447
    :catchall_3
    const/4 v4, 0x0

    .line 448
    :catchall_4
    nop

    .line 449
    goto :goto_7

    .line 450
    :pswitch_a
    const/4 v4, 0x0

    .line 451
    iget v0, v1, Lcom/byazt/ts/uj;->t:I

    .line 452
    .line 453
    if-eq v0, v14, :cond_d

    .line 454
    .line 455
    iget v0, v1, Lcom/byazt/ts/uj;->t:I

    .line 456
    .line 457
    if-eq v0, v6, :cond_d

    .line 458
    .line 459
    iget v0, v1, Lcom/byazt/ts/uj;->t:I

    .line 460
    .line 461
    if-ne v0, v10, :cond_6

    .line 462
    .line 463
    :cond_d
    :try_start_9
    const-string v0, "0505"

    .line 464
    .line 465
    invoke-direct {v1, v0}, Lcom/byazt/ts/uj;->c(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    iget-object v0, v1, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 469
    .line 470
    invoke-interface {v0}, Lcom/byazt/ts/ve;->n()V

    .line 471
    .line 472
    .line 473
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 474
    .line 475
    .line 476
    move-result-wide v6

    .line 477
    iput-wide v6, v1, Lcom/byazt/ts/uj;->rl:J

    .line 478
    .line 479
    iput v11, v1, Lcom/byazt/ts/uj;->t:I

    .line 480
    .line 481
    iget-wide v6, v1, Lcom/byazt/ts/uj;->u:J

    .line 482
    .line 483
    const-wide/16 v8, 0x0

    .line 484
    .line 485
    cmp-long v0, v6, v8

    .line 486
    .line 487
    if-lez v0, :cond_e

    .line 488
    .line 489
    iget-object v0, v1, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 490
    .line 491
    iget-wide v6, v1, Lcom/byazt/ts/uj;->u:J

    .line 492
    .line 493
    iget v8, v1, Lcom/byazt/ts/uj;->n:I

    .line 494
    .line 495
    invoke-interface {v0, v6, v7, v8}, Lcom/byazt/ts/ve;->c(JI)V

    .line 496
    .line 497
    .line 498
    const-wide/16 v6, -0x1

    .line 499
    .line 500
    iput-wide v6, v1, Lcom/byazt/ts/uj;->u:J

    .line 501
    .line 502
    :cond_e
    iget-object v0, v1, Lcom/byazt/ts/uj;->md:Lcom/byazt/fk/u;

    .line 503
    .line 504
    if-eqz v0, :cond_f

    .line 505
    .line 506
    iget-boolean v0, v1, Lcom/byazt/ts/uj;->h:Z

    .line 507
    .line 508
    invoke-virtual {v1, v0}, Lcom/byazt/ts/uj;->setQuietPlay(Z)V

    .line 509
    .line 510
    .line 511
    :cond_f
    iget-object v0, v1, Lcom/byazt/ts/uj;->p:Ljava/util/List;

    .line 512
    .line 513
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    :cond_10
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 518
    .line 519
    .line 520
    move-result v6

    .line 521
    if-eqz v6, :cond_12

    .line 522
    .line 523
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v6

    .line 527
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 528
    .line 529
    if-eqz v6, :cond_10

    .line 530
    .line 531
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v6

    .line 535
    check-cast v6, Lcom/byazt/fk/sp$c;

    .line 536
    .line 537
    if-eqz v6, :cond_10

    .line 538
    .line 539
    invoke-interface {v6, v1}, Lcom/byazt/fk/sp$c;->onStart(Lcom/byazt/fk/sp;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 540
    .line 541
    .line 542
    goto :goto_5

    .line 543
    :cond_11
    :goto_6
    const/4 v4, 0x0

    .line 544
    :cond_12
    :goto_7
    const/4 v6, 0x0

    .line 545
    :goto_8
    if-eqz v6, :cond_16

    .line 546
    .line 547
    const/16 v0, 0xc8

    .line 548
    .line 549
    iput v0, v1, Lcom/byazt/ts/uj;->t:I

    .line 550
    .line 551
    iget-boolean v0, v1, Lcom/byazt/ts/uj;->i:Z

    .line 552
    .line 553
    if-nez v0, :cond_16

    .line 554
    .line 555
    new-instance v0, Lcom/byazt/jzl/ve;

    .line 556
    .line 557
    const/16 v4, 0x134

    .line 558
    .line 559
    invoke-direct {v0, v4, v3}, Lcom/byazt/jzl/ve;-><init>(II)V

    .line 560
    .line 561
    .line 562
    new-instance v6, Ljava/lang/StringBuilder;

    .line 563
    .line 564
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    const-string v2, ","

    .line 571
    .line 572
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    invoke-virtual {v0, v2}, Lcom/byazt/jzl/ve;->setMsg(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    const-string v2, "0510"

    .line 586
    .line 587
    invoke-direct {v1, v2}, Lcom/byazt/ts/uj;->c(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    iget-object v2, v1, Lcom/byazt/ts/uj;->d:Lcom/byazt/jzl/tt;

    .line 591
    .line 592
    if-eqz v2, :cond_13

    .line 593
    .line 594
    const-string v6, "state error"

    .line 595
    .line 596
    invoke-interface {v2, v4, v3, v6}, Lcom/byazt/jzl/tt;->c(IILjava/lang/String;)V

    .line 597
    .line 598
    .line 599
    :cond_13
    iget-object v2, v1, Lcom/byazt/ts/uj;->p:Ljava/util/List;

    .line 600
    .line 601
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    :cond_14
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 606
    .line 607
    .line 608
    move-result v3

    .line 609
    if-eqz v3, :cond_15

    .line 610
    .line 611
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 616
    .line 617
    if-eqz v3, :cond_14

    .line 618
    .line 619
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v3

    .line 623
    check-cast v3, Lcom/byazt/fk/sp$c;

    .line 624
    .line 625
    if-eqz v3, :cond_14

    .line 626
    .line 627
    invoke-interface {v3, v1, v0}, Lcom/byazt/fk/sp$c;->onError(Lcom/byazt/fk/sp;Lcom/byazt/fk/ve;)V

    .line 628
    .line 629
    .line 630
    goto :goto_9

    .line 631
    :cond_15
    iput-boolean v5, v1, Lcom/byazt/ts/uj;->i:Z

    .line 632
    .line 633
    :cond_16
    return-void

    .line 634
    nop

    .line 635
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isCompleted()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/ts/uj;->t:I

    .line 2
    .line 3
    const/16 v1, 0xd1

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

.method public isFirstFrameSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ts/uj;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLooping()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/byazt/ts/ve;->z()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_1
    return v1
.end method

.method public isPaused()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/ts/uj;->t:I

    .line 2
    .line 3
    const/16 v1, 0xcf

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/byazt/ts/uj;->bx:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 16
    .line 17
    const/16 v1, 0x64

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/ts/uj;->t:I

    .line 2
    .line 3
    const/16 v1, 0xce

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 12
    .line 13
    const/16 v1, 0x64

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/ts/uj;->bx:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public isPrepared()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/ts/uj;->t:I

    .line 2
    .line 3
    const/16 v1, 0xcd

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

.method public isReleased()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ts/uj;->sl:Z

    .line 2
    .line 3
    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isPrepared()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isPlaying()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isPaused()Z

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

.method public pause()V
    .locals 2

    .line 1
    const-string v0, "CSJ_VIDEO_MEDIA"

    .line 2
    .line 3
    const-string v1, "pause: from outer"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 16
    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 20
    .line 21
    const/16 v1, 0x64

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/byazt/ts/uj;->bx:Z

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/byazt/ts/uj;->ic:Z

    .line 30
    .line 31
    const/16 v1, 0x65

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/byazt/ts/uj;->qy:Z

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/ts/uj;->md:Lcom/byazt/fk/u;

    .line 40
    .line 41
    invoke-direct {p0, v0}, Lcom/byazt/ts/uj;->c(Lcom/byazt/fk/u;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Lcom/byazt/ts/uj$16;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/byazt/ts/uj$16;-><init>(Lcom/byazt/ts/uj;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v0}, Lcom/byazt/ts/uj;->c(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 58
    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    iget-boolean v0, p0, Lcom/byazt/ts/uj;->a:Z

    .line 68
    .line 69
    if-nez v0, :cond_5

    .line 70
    .line 71
    iget-object v0, p0, Lcom/byazt/ts/uj;->md:Lcom/byazt/fk/u;

    .line 72
    .line 73
    invoke-direct {p0, v0}, Lcom/byazt/ts/uj;->c(Lcom/byazt/fk/u;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    new-instance v0, Lcom/byazt/ts/uj$17;

    .line 81
    .line 82
    invoke-direct {v0, p0}, Lcom/byazt/ts/uj$17;-><init>(Lcom/byazt/ts/uj;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, v0}, Lcom/byazt/ts/uj;->c(Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 96
    .line 97
    .line 98
    :cond_6
    :goto_2
    return-void
.end method

.method public play()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/ts/uj;->zb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v1, Lcom/byazt/ts/uj$15;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/byazt/ts/uj$15;-><init>(Lcom/byazt/ts/uj;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/byazt/ts/uj;->sl:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/byazt/ts/uj;->t()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 29
    .line 30
    const/16 v1, 0x67

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-direct {p0}, Lcom/byazt/ts/uj;->a()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    invoke-direct {p0}, Lcom/byazt/ts/uj;->a()V

    .line 40
    .line 41
    .line 42
    :cond_2
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
    iget-object v0, p0, Lcom/byazt/ts/uj;->p:Ljava/util/List;

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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "unused"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/byazt/ts/uj$18;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/byazt/ts/uj$18;-><init>(Lcom/byazt/ts/uj;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/byazt/ts/uj;->tt(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public restart()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget v0, p0, Lcom/byazt/ts/uj;->t:I

    .line 14
    .line 15
    const/16 v1, 0xce

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/byazt/ts/uj;->tt()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/byazt/ts/uj;->bx:Z

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/ts/uj;->pf:Lcom/byazt/ts/uj$c;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/byazt/ts/uj$c;->c(Z)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    invoke-direct {p0, v0, v1}, Lcom/byazt/ts/uj;->c(J)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/byazt/ts/uj;->nb:Ljava/lang/Runnable;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/byazt/ts/uj;->nb:Ljava/lang/Runnable;

    .line 50
    .line 51
    iget v3, p0, Lcom/byazt/ts/uj;->eo:I

    .line 52
    .line 53
    int-to-long v3, v3

    .line 54
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Lcom/byazt/ts/uj;->zb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/byazt/ts/uj;->or:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/byazt/ts/uj;->cu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    :cond_3
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 83
    .line 84
    new-instance v1, Lcom/byazt/ts/uj$13;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lcom/byazt/ts/uj$13;-><init>(Lcom/byazt/ts/uj;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    .line 91
    .line 92
    :cond_4
    return-void
.end method

.method public seekTo(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lcom/byazt/ts/uj;->t:I

    .line 9
    .line 10
    const/16 v1, 0xcf

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/byazt/ts/uj;->t:I

    .line 15
    .line 16
    const/16 v1, 0xce

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lcom/byazt/ts/uj;->t:I

    .line 21
    .line 22
    const/16 v1, 0xd1

    .line 23
    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    .line 26
    :cond_1
    new-instance v0, Lcom/byazt/ts/uj$4;

    .line 27
    .line 28
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/ts/uj$4;-><init>(Lcom/byazt/ts/uj;J)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Lcom/byazt/ts/uj;->tt(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public setDataSource(Lcom/byazt/fk/u;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/byazt/ts/uj;->md:Lcom/byazt/fk/u;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/byazt/fk/u;->isAudio()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/byazt/ts/uj;->ic:Z

    .line 19
    .line 20
    :cond_1
    new-instance v0, Lcom/byazt/ts/uj$7;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/byazt/ts/uj$7;-><init>(Lcom/byazt/ts/uj;Lcom/byazt/fk/u;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/byazt/ts/uj;->tt(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/byazt/ts/uj;->ve:Landroid/view/SurfaceHolder;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lcom/byazt/ts/uj;->setSurfaceValid(Z)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/byazt/ts/uj$6;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lcom/byazt/ts/uj$6;-><init>(Lcom/byazt/ts/uj;Landroid/view/SurfaceHolder;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/byazt/ts/uj;->tt(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setLoop(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/byazt/ts/ve;->n(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setPlaySpeedRatio(F)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/byazt/oy/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/oy/c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/byazt/oy/c;->c(F)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lcom/byazt/ts/ve;->c(Lcom/byazt/oy/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public setQuietPlay(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string p1, "CSJ_VIDEO_MEDIA"

    .line 13
    .line 14
    const-string v0, "quietPlay set opHandler is null"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v1, Lcom/byazt/ts/uj$10;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lcom/byazt/ts/uj$10;-><init>(Lcom/byazt/ts/uj;Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setSeekMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ts/uj;->n:I

    .line 2
    .line 3
    return-void
.end method

.method public setSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/byazt/ts/uj;->tt:Landroid/graphics/SurfaceTexture;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lcom/byazt/ts/uj;->setSurfaceValid(Z)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/byazt/ts/uj$5;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lcom/byazt/ts/uj$5;-><init>(Lcom/byazt/ts/uj;Landroid/graphics/SurfaceTexture;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/byazt/ts/uj;->tt(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setSurfaceValid(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-boolean p1, p0, Lcom/byazt/ts/uj;->yv:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lcom/byazt/ts/ve;->c(Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 25
    .line 26
    new-instance v1, Lcom/byazt/ts/uj$11;

    .line 27
    .line 28
    invoke-direct {v1, p0, p1}, Lcom/byazt/ts/uj$11;-><init>(Lcom/byazt/ts/uj;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public setUpdateProgressInterval(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p1, p0, Lcom/byazt/ts/uj;->eo:I

    .line 9
    .line 10
    return-void
.end method

.method public start(ZJZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/byazt/ts/uj;->ve()V

    .line 9
    .line 10
    .line 11
    iput-boolean p4, p0, Lcom/byazt/ts/uj;->h:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/byazt/ts/uj;->bx:Z

    .line 15
    .line 16
    invoke-virtual {p0, p4}, Lcom/byazt/ts/uj;->setQuietPlay(Z)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iput-wide p2, p0, Lcom/byazt/ts/uj;->u:J

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/byazt/ts/uj;->uj()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/byazt/ts/uj;->c(J)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object p1, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/byazt/ts/uj;->nb:Ljava/lang/Runnable;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 42
    .line 43
    iget-object p2, p0, Lcom/byazt/ts/uj;->nb:Ljava/lang/Runnable;

    .line 44
    .line 45
    iget p3, p0, Lcom/byazt/ts/uj;->eo:I

    .line 46
    .line 47
    int-to-long p3, p3

    .line 48
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object p1, p0, Lcom/byazt/ts/uj;->zb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    const/4 p2, 0x1

    .line 54
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/byazt/ts/uj;->or:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    iget-object p1, p0, Lcom/byazt/ts/uj;->cu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    :cond_3
    iget-object p1, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    iget-object p1, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    .line 78
    .line 79
    new-instance p2, Lcom/byazt/ts/uj$14;

    .line 80
    .line 81
    invoke-direct {p2, p0}, Lcom/byazt/ts/uj$14;-><init>(Lcom/byazt/ts/uj;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    :cond_4
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/byazt/ts/uj$3;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/byazt/ts/uj$3;-><init>(Lcom/byazt/ts/uj;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/byazt/ts/uj;->tt(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public tt(Lcom/byazt/ts/ve;)V
    .locals 4

    .line 41
    invoke-virtual {p0}, Lcom/byazt/ts/uj;->isReleased()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0xcd

    .line 42
    iput p1, p0, Lcom/byazt/ts/uj;->t:I

    .line 43
    :try_start_0
    iget-object p1, p0, Lcom/byazt/ts/uj;->md:Lcom/byazt/fk/u;

    if-eqz p1, :cond_1

    .line 44
    invoke-interface {p1}, Lcom/byazt/fk/u;->getPlaySpeedRatio()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 45
    new-instance v0, Lcom/byazt/oy/c;

    invoke-direct {v0}, Lcom/byazt/oy/c;-><init>()V

    .line 46
    invoke-virtual {v0, p1}, Lcom/byazt/oy/c;->c(F)V

    .line 47
    iget-object p1, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    invoke-interface {p1, v0}, Lcom/byazt/ts/ve;->c(Lcom/byazt/oy/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 48
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    const-string v0, "CSJ_VIDEO_MEDIA"

    if-eqz p1, :cond_3

    .line 49
    iget-boolean p1, p0, Lcom/byazt/ts/uj;->bx:Z

    if-eqz p1, :cond_2

    .line 50
    invoke-direct {p0}, Lcom/byazt/ts/uj;->i()V

    goto :goto_1

    :cond_2
    const-string p1, "onPrepared op_Start"

    .line 51
    invoke-static {v0, p1}, Lcom/byazt/lt/tt;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byazt/ts/uj;->yp:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 53
    :cond_3
    :goto_1
    sget-object p1, Lcom/byazt/ts/uj;->zm:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/byazt/ts/uj;->gr:I

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onPrepared:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/byazt/ts/uj;->ic:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/byazt/ts/uj;->qy:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/lt/tt;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-boolean p1, p0, Lcom/byazt/ts/uj;->ic:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/byazt/ts/uj;->qy:Z

    if-nez p1, :cond_4

    .line 56
    invoke-direct {p0}, Lcom/byazt/ts/uj;->x()V

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/byazt/ts/uj;->qy:Z

    :cond_4
    const-string p1, "0504"

    .line 58
    invoke-direct {p0, p1}, Lcom/byazt/ts/uj;->c(Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/byazt/ts/uj;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    .line 60
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/fk/sp$c;

    if-eqz v0, :cond_5

    .line 61
    invoke-interface {v0, p0}, Lcom/byazt/fk/sp$c;->onPrepared(Lcom/byazt/fk/sp;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public tt(Lcom/byazt/ts/ve;II)Z
    .locals 3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "what,extra:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSJ_VIDEO_MEDIA"

    invoke-static {v1, v0}, Lcom/byazt/lt/tt;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/byazt/ts/uj;->sp:Lcom/byazt/ts/ve;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/16 p1, -0x3ec

    if-ne p3, p1, :cond_3

    .line 14
    new-instance p1, Lcom/byazt/jzl/ve;

    invoke-direct {p1, p2, p3}, Lcom/byazt/jzl/ve;-><init>(II)V

    const-string v0, "0510"

    .line 15
    invoke-direct {p0, v0}, Lcom/byazt/ts/uj;->c(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/byazt/ts/uj;->d:Lcom/byazt/jzl/tt;

    if-eqz v0, :cond_1

    const-string v2, ""

    .line 17
    invoke-interface {v0, p2, p3, v2}, Lcom/byazt/jzl/tt;->c(IILjava/lang/String;)V

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/byazt/ts/uj;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/fk/sp$c;

    if-eqz v2, :cond_2

    .line 20
    invoke-interface {v2, p0, p1}, Lcom/byazt/fk/sp$c;->onError(Lcom/byazt/fk/sp;Lcom/byazt/fk/ve;)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/byazt/ts/uj;->tt(II)V

    return v1
.end method

.method public ve(Lcom/byazt/ts/ve;)V
    .locals 2

    .line 6
    iget-object p1, p0, Lcom/byazt/ts/uj;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/fk/sp$c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 8
    invoke-interface {v0, p0, v1}, Lcom/byazt/fk/sp$c;->onSeekCompletion(Lcom/byazt/fk/sp;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
