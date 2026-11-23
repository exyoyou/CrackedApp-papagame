.class public abstract Lcom/byazt/jl/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9d,
        0x2a
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/jl/i$c;,
        Lcom/byazt/jl/i$tt;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/byazt/on/a;",
        "W::",
        "Lcom/byazt/on/sp;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final sp:Ljava/lang/String; = "i"

.field public static final yp:Landroid/graphics/Rect;


# instance fields
.field public volatile a:Landroid/graphics/Rect;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/jl/x<",
            "TR;TW;>;>;"
        }
    .end annotation
.end field

.field public da:I

.field public gt:Z

.field public final i:Landroid/os/Handler;

.field public final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public my:Lcom/byazt/on/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public n:Ljava/nio/ByteBuffer;

.field public final nu:Ljava/lang/Object;

.field public rh:Lcom/byazt/on/sp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TW;"
        }
    .end annotation
.end field

.field public volatile rl:Lcom/byazt/jl/i$tt;

.field public sl:Ljava/lang/Integer;

.field public final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/byazt/jl/i$c;",
            ">;"
        }
    .end annotation
.end field

.field public tt:I

.field public final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public uj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field public ve:I

.field public final x:Lcom/byazt/zt/tt;

.field public final z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/jl/i;->yp:Landroid/graphics/Rect;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/byazt/zt/tt;Lcom/byazt/jl/i$c;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/jl/i;->c:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/byazt/jl/i;->tt:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/byazt/jl/i;->sl:Ljava/lang/Integer;

    .line 16
    .line 17
    new-instance v1, Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/byazt/jl/i;->t:Ljava/util/Set;

    .line 23
    .line 24
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/byazt/jl/i;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    new-instance v2, Lcom/byazt/jl/i$1;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Lcom/byazt/jl/i$1;-><init>(Lcom/byazt/jl/i;)V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lcom/byazt/jl/i;->z:Ljava/lang/Runnable;

    .line 38
    .line 39
    iput v3, p0, Lcom/byazt/jl/i;->ve:I

    .line 40
    .line 41
    new-instance v2, Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/byazt/jl/i;->m:Ljava/util/Set;

    .line 47
    .line 48
    new-instance v2, Ljava/lang/Object;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lcom/byazt/jl/i;->nu:Ljava/lang/Object;

    .line 54
    .line 55
    new-instance v2, Ljava/util/WeakHashMap;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lcom/byazt/jl/i;->uj:Ljava/util/Map;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/byazt/jl/i;->uj()Lcom/byazt/on/sp;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iput-object v2, p0, Lcom/byazt/jl/i;->rh:Lcom/byazt/on/sp;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/byazt/jl/i;->my:Lcom/byazt/on/a;

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/byazt/jl/i;->gt:Z

    .line 72
    .line 73
    sget-object v0, Lcom/byazt/jl/i$tt;->c:Lcom/byazt/jl/i$tt;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/byazt/jl/i;->rl:Lcom/byazt/jl/i$tt;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/byazt/jl/i;->x:Lcom/byazt/zt/tt;

    .line 78
    .line 79
    if-eqz p2, :cond_0

    .line 80
    .line 81
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_0
    const-string p1, "thread_service"

    .line 85
    .line 86
    invoke-static {p1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lcom/byazt/dna/qp;

    .line 91
    .line 92
    invoke-interface {p1}, Lcom/byazt/dna/qp;->getIOHandler()Landroid/os/Handler;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/byazt/jl/i;->i:Landroid/os/Handler;

    .line 97
    .line 98
    return-void
.end method

.method public static synthetic a(Lcom/byazt/jl/i;)Lcom/byazt/on/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/jl/i;->my:Lcom/byazt/on/a;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/jl/i;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/jl/i;->da:I

    return p1
.end method

.method public static synthetic c(Lcom/byazt/jl/i;Lcom/byazt/on/a;)Lcom/byazt/on/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/jl/i;->my:Lcom/byazt/on/a;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/jl/i;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/jl/i;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private c()V
    .locals 8
    .annotation build Lcom/bytedance/component/sdk/annotation/WorkerThread;
    .end annotation

    const-string v0, " Set state to RUNNING,cost "

    .line 31
    iget-object v1, p0, Lcom/byazt/jl/i;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 33
    :try_start_0
    iget-object v3, p0, Lcom/byazt/jl/i;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    .line 34
    :try_start_1
    iget-object v3, p0, Lcom/byazt/jl/i;->my:Lcom/byazt/on/a;

    if-nez v3, :cond_0

    .line 35
    iget-object v3, p0, Lcom/byazt/jl/i;->x:Lcom/byazt/zt/tt;

    invoke-interface {v3}, Lcom/byazt/zt/tt;->tt()Lcom/byazt/on/a;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/byazt/jl/i;->ve(Lcom/byazt/on/a;)Lcom/byazt/on/a;

    move-result-object v3

    iput-object v3, p0, Lcom/byazt/jl/i;->my:Lcom/byazt/on/a;

    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {v3}, Lcom/byazt/on/a;->d_()V

    .line 37
    :goto_0
    iget-object v3, p0, Lcom/byazt/jl/i;->my:Lcom/byazt/on/a;

    invoke-virtual {p0, v3}, Lcom/byazt/jl/i;->tt(Lcom/byazt/on/a;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/byazt/jl/i;->c(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 38
    :try_start_2
    invoke-static {v3}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    :cond_1
    :goto_1
    sget-object v3, Lcom/byazt/jl/i;->sp:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/byazt/jl/i;->z()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/byazt/jl/i$tt;->tt:Lcom/byazt/jl/i$tt;

    iput-object v0, p0, Lcom/byazt/jl/i;->rl:Lcom/byazt/jl/i$tt;

    .line 41
    invoke-direct {p0}, Lcom/byazt/jl/i;->m()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/byazt/jl/i;->gt:Z

    if-nez v0, :cond_2

    goto :goto_2

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/byazt/jl/i;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " No need to started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_2
    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/byazt/jl/i;->tt:I

    .line 44
    iget-object v0, p0, Lcom/byazt/jl/i;->z:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 45
    iget-object v0, p0, Lcom/byazt/jl/i;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/jl/i$c;

    .line 46
    invoke-interface {v1}, Lcom/byazt/jl/i$c;->c()V

    goto :goto_3

    :cond_4
    return-void

    :catchall_1
    move-exception v3

    .line 47
    sget-object v4, Lcom/byazt/jl/i;->sp:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/byazt/jl/i;->z()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/byazt/jl/i$tt;->tt:Lcom/byazt/jl/i$tt;

    iput-object v0, p0, Lcom/byazt/jl/i;->rl:Lcom/byazt/jl/i$tt;

    .line 49
    throw v3
.end method

.method private c(Landroid/graphics/Rect;)V
    .locals 1

    .line 27
    iput-object p1, p0, Lcom/byazt/jl/i;->a:Landroid/graphics/Rect;

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int v0, v0, p1

    iget p1, p0, Lcom/byazt/jl/i;->ve:I

    mul-int p1, p1, p1

    div-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/jl/i;->n:Ljava/nio/ByteBuffer;

    .line 29
    iget-object p1, p0, Lcom/byazt/jl/i;->rh:Lcom/byazt/on/sp;

    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/byazt/jl/i;->uj()Lcom/byazt/on/sp;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/jl/i;->rh:Lcom/byazt/on/sp;

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/jl/i;Landroid/graphics/Rect;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/jl/i;->c(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/jl/i;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/jl/i;->gt:Z

    return p1
.end method

.method public static synthetic i(Lcom/byazt/jl/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/jl/i;->yp()V

    return-void
.end method

.method private m()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jl/i;->sl:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/jl/i;->tt()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public static synthetic n(Lcom/byazt/jl/i;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/jl/i;->t:Ljava/util/Set;

    return-object p0
.end method

.method private nu()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/byazt/jl/i;->da()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/jl/i;->c:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/byazt/jl/i;->m()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-gtz v0, :cond_2

    .line 24
    .line 25
    return v2

    .line 26
    :cond_2
    iget v0, p0, Lcom/byazt/jl/i;->da:I

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/byazt/jl/i;->m()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    sub-int/2addr v3, v2

    .line 33
    if-ge v0, v3, :cond_3

    .line 34
    .line 35
    return v2

    .line 36
    :cond_3
    iget v0, p0, Lcom/byazt/jl/i;->da:I

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/byazt/jl/i;->m()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    sub-int/2addr v3, v2

    .line 43
    if-ne v0, v3, :cond_4

    .line 44
    .line 45
    iget v0, p0, Lcom/byazt/jl/i;->tt:I

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/byazt/jl/i;->sp()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    sub-int/2addr v3, v2

    .line 52
    if-ge v0, v3, :cond_4

    .line 53
    .line 54
    return v2

    .line 55
    :cond_4
    iput-boolean v2, p0, Lcom/byazt/jl/i;->gt:Z

    .line 56
    .line 57
    return v1
.end method

.method private rh()J
    .locals 2
    .annotation build Lcom/bytedance/component/sdk/annotation/WorkerThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/byazt/jl/i;->tt:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/byazt/jl/i;->tt:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/byazt/jl/i;->sp()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/byazt/jl/i;->tt:I

    .line 15
    .line 16
    iget v0, p0, Lcom/byazt/jl/i;->da:I

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput v0, p0, Lcom/byazt/jl/i;->da:I

    .line 21
    .line 22
    :cond_0
    iget v0, p0, Lcom/byazt/jl/i;->tt:I

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/byazt/jl/i;->c(I)Lcom/byazt/jl/x;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-wide/16 v0, 0x0

    .line 31
    .line 32
    return-wide v0

    .line 33
    :cond_1
    invoke-virtual {p0, v0}, Lcom/byazt/jl/i;->c(Lcom/byazt/jl/x;)V

    .line 34
    .line 35
    .line 36
    iget v0, v0, Lcom/byazt/jl/x;->t:I

    .line 37
    .line 38
    int-to-long v0, v0

    .line 39
    return-wide v0
.end method

.method public static synthetic sp(Lcom/byazt/jl/i;)Lcom/byazt/zt/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/jl/i;->x:Lcom/byazt/zt/tt;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/jl/i;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/jl/i;->nu()Z

    move-result p0

    return p0
.end method

.method public static synthetic u()Landroid/graphics/Rect;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/jl/i;->yp:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic uj(Lcom/byazt/jl/i;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/jl/i;->i:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/jl/i;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/jl/i;->rh()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic x(Lcom/byazt/jl/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/jl/i;->c()V

    return-void
.end method

.method private yp()V
    .locals 4
    .annotation build Lcom/bytedance/component/sdk/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/jl/i;->i:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/jl/i;->z:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/jl/i;->c:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/jl/i;->nu:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/byazt/jl/i;->m:Ljava/util/Set;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/graphics/Bitmap;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/byazt/jl/i;->m:Ljava/util/Set;

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 49
    .line 50
    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v0, p0, Lcom/byazt/jl/i;->n:Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iput-object v1, p0, Lcom/byazt/jl/i;->n:Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/byazt/jl/i;->uj:Ljava/util/Map;

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 62
    .line 63
    .line 64
    :try_start_1
    iget-object v0, p0, Lcom/byazt/jl/i;->my:Lcom/byazt/on/a;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iput-object v1, p0, Lcom/byazt/jl/i;->my:Lcom/byazt/on/a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/byazt/jl/i;->ve()V

    .line 76
    .line 77
    .line 78
    sget-object v0, Lcom/byazt/jl/i$tt;->c:Lcom/byazt/jl/i$tt;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/byazt/jl/i;->rl:Lcom/byazt/jl/i$tt;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/byazt/jl/i;->t:Ljava/util/Set;

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lcom/byazt/jl/i$c;

    .line 99
    .line 100
    invoke-interface {v1}, Lcom/byazt/jl/i$c;->tt()V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    return-void

    .line 105
    :catchall_0
    move-exception v1

    .line 106
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    throw v1
.end method

.method private z()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/jl/i;->a:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/byazt/jl/i;->rl:Lcom/byazt/jl/i$tt;

    sget-object v1, Lcom/byazt/jl/i$tt;->uj:Lcom/byazt/jl/i$tt;

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/byazt/jl/i;->sp:Ljava/lang/String;

    const-string v1, "In finishing,do not interrupt"

    invoke-static {v0, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/byazt/jl/i;->i:Landroid/os/Handler;

    new-instance v2, Lcom/byazt/jl/i$5;

    invoke-direct {v2, p0, v0}, Lcom/byazt/jl/i$5;-><init>(Lcom/byazt/jl/i;Ljava/lang/Thread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/byazt/jl/i;->a:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    sget-object v0, Lcom/byazt/jl/i;->yp:Landroid/graphics/Rect;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/byazt/jl/i;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method public c(II)Landroid/graphics/Bitmap;
    .locals 6

    .line 6
    iget-object v0, p0, Lcom/byazt/jl/i;->nu:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/byazt/jl/i;->m:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 8
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    mul-int v3, p1, p2

    mul-int/lit8 v3, v3, 0x4

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v5

    if-lt v5, v3, :cond_2

    .line 11
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 12
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 13
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, p1, p2, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    :cond_1
    const/4 p1, 0x0

    .line 14
    invoke-virtual {v4, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :cond_2
    move-object v3, v4

    goto :goto_0

    :cond_3
    if-lez p1, :cond_5

    if-gtz p2, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 17
    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    :try_start_2
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 19
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 20
    :goto_1
    monitor-exit v0

    return-object v3

    .line 21
    :cond_5
    :goto_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public c(I)Lcom/byazt/jl/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/byazt/jl/x<",
            "TR;TW;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/byazt/jl/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/byazt/jl/i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/jl/x;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/byazt/jl/i;->nu:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/byazt/jl/i;->m:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lcom/byazt/jl/i$c;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/byazt/jl/i;->i:Landroid/os/Handler;

    new-instance v1, Lcom/byazt/jl/i$2;

    invoke-direct {v1, p0, p1}, Lcom/byazt/jl/i$2;-><init>(Lcom/byazt/jl/i;Lcom/byazt/jl/i$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract c(Lcom/byazt/jl/x;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/jl/x<",
            "TR;TW;>;)V"
        }
    .end annotation
.end method

.method public da()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/jl/i;->rl:Lcom/byazt/jl/i$tt;

    .line 2
    .line 3
    sget-object v1, Lcom/byazt/jl/i$tt;->tt:Lcom/byazt/jl/i$tt;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/jl/i;->rl:Lcom/byazt/jl/i$tt;

    .line 8
    .line 9
    sget-object v1, Lcom/byazt/jl/i$tt;->ve:Lcom/byazt/jl/i$tt;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method public i()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/jl/i;->a:Landroid/graphics/Rect;

    sget-object v1, Lcom/byazt/jl/i;->yp:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/jl/i;->rl:Lcom/byazt/jl/i$tt;

    sget-object v1, Lcom/byazt/jl/i$tt;->uj:Lcom/byazt/jl/i$tt;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/byazt/jl/i;->rl:Lcom/byazt/jl/i$tt;

    sget-object v2, Lcom/byazt/jl/i$tt;->c:Lcom/byazt/jl/i$tt;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/byazt/jl/i;->rl:Lcom/byazt/jl/i$tt;

    sget-object v2, Lcom/byazt/jl/i$tt;->ve:Lcom/byazt/jl/i$tt;

    if-ne v0, v2, :cond_2

    .line 5
    sget-object v0, Lcom/byazt/jl/i;->sp:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/byazt/jl/i;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Processing,wait for finish at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/byazt/jl/i;->rl:Lcom/byazt/jl/i$tt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_2
    iput-object v1, p0, Lcom/byazt/jl/i;->rl:Lcom/byazt/jl/i$tt;

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/jl/i;->i:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 8
    invoke-direct {p0}, Lcom/byazt/jl/i;->yp()V

    return-void

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/byazt/jl/i;->i:Landroid/os/Handler;

    new-instance v1, Lcom/byazt/jl/i$7;

    invoke-direct {v1, p0}, Lcom/byazt/jl/i$7;-><init>(Lcom/byazt/jl/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 10
    :cond_4
    :goto_0
    sget-object v0, Lcom/byazt/jl/i;->sp:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/byazt/jl/i;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "No need to stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public n()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/jl/i;->i:Landroid/os/Handler;

    new-instance v1, Lcom/byazt/jl/i$4;

    invoke-direct {v1, p0}, Lcom/byazt/jl/i$4;-><init>(Lcom/byazt/jl/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/jl/i;->i:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/byazt/jl/i$8;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/byazt/jl/i$8;-><init>(Lcom/byazt/jl/i;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public sp()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/jl/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/jl/i;->ve:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract tt()I
.end method

.method public abstract tt(Lcom/byazt/on/a;)Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public tt(Lcom/byazt/jl/i$c;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/jl/i;->i:Landroid/os/Handler;

    new-instance v1, Lcom/byazt/jl/i$3;

    invoke-direct {v1, p0, p1}, Lcom/byazt/jl/i$3;-><init>(Lcom/byazt/jl/i;Lcom/byazt/jl/i$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public tt(II)Z
    .locals 2

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/byazt/jl/i;->ve(II)I

    move-result p1

    .line 4
    iget p2, p0, Lcom/byazt/jl/i;->ve:I

    if-eq p1, p2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/byazt/jl/i;->da()Z

    move-result p2

    .line 6
    iget-object v0, p0, Lcom/byazt/jl/i;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byazt/jl/i;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/jl/i;->i:Landroid/os/Handler;

    new-instance v1, Lcom/byazt/jl/i$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/jl/i$9;-><init>(Lcom/byazt/jl/i;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract uj()Lcom/byazt/on/sp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation
.end method

.method public ve(II)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/jl/i;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/byazt/jl/i;->a()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    mul-int/lit8 p2, v0, 0x2

    if-gt p2, p1, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public abstract ve(Lcom/byazt/on/a;)Lcom/byazt/on/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/on/a;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract ve()V
.end method

.method public x()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/jl/i;->a:Landroid/graphics/Rect;

    sget-object v1, Lcom/byazt/jl/i;->yp:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/jl/i;->rl:Lcom/byazt/jl/i$tt;

    sget-object v1, Lcom/byazt/jl/i$tt;->tt:Lcom/byazt/jl/i$tt;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/byazt/jl/i;->rl:Lcom/byazt/jl/i$tt;

    sget-object v1, Lcom/byazt/jl/i$tt;->ve:Lcom/byazt/jl/i$tt;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/byazt/jl/i;->rl:Lcom/byazt/jl/i$tt;

    sget-object v2, Lcom/byazt/jl/i$tt;->uj:Lcom/byazt/jl/i$tt;

    if-ne v0, v2, :cond_2

    .line 5
    sget-object v0, Lcom/byazt/jl/i;->sp:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/byazt/jl/i;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Processing,wait for finish at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/byazt/jl/i;->rl:Lcom/byazt/jl/i$tt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_2
    iput-object v1, p0, Lcom/byazt/jl/i;->rl:Lcom/byazt/jl/i$tt;

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/jl/i;->i:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 8
    invoke-direct {p0}, Lcom/byazt/jl/i;->c()V

    return-void

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/byazt/jl/i;->i:Landroid/os/Handler;

    new-instance v1, Lcom/byazt/jl/i$6;

    invoke-direct {v1, p0}, Lcom/byazt/jl/i$6;-><init>(Lcom/byazt/jl/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 10
    :cond_4
    :goto_0
    sget-object v0, Lcom/byazt/jl/i;->sp:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/byazt/jl/i;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Already started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
