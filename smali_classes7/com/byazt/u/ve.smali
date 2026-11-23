.class public Lcom/byazt/u/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/u/a;
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x43,
        0x36
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "ve"


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/byazt/u/tt;",
            ">;"
        }
    .end annotation
.end field

.field public cu:J

.field public d:Z

.field public da:Z

.field public eo:Ljava/lang/String;

.field public gr:Lcom/byazt/hs/i;

.field public final gt:Lcom/byazt/zz/sp;

.field public volatile gu:Lcom/byazt/m/BaseException;

.field public h:Z

.field public i:Z

.field public m:Lcom/byazt/t/DownloadInfo;

.field public volatile md:I

.field public my:Lcom/byazt/zz/sp;

.field public n:Ljava/util/concurrent/atomic/AtomicInteger;

.field public nb:I

.field public nu:Lcom/byazt/zz/x;

.field public or:J

.field public p:Lcom/byazt/c/rh;

.field public volatile pf:Lcom/byazt/h/sl;

.field public final qp:Lcom/byazt/k/c;

.field public final qy:Lcom/byazt/zz/a;

.field public final rh:Lcom/byazt/zz/x;

.field public rl:Lcom/byazt/zz/my;

.field public sl:Z

.field public volatile sp:Lcom/byazt/zz/n;

.field public t:Z

.field public tt:Ljava/util/concurrent/Future;

.field public final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile uj:Z

.field public final ve:Lcom/byazt/t/DownloadTask;

.field public x:Z

.field public volatile yp:Lcom/byazt/ev/x;

.field public yv:Lcom/byazt/c/gu;

.field public final z:Lcom/byazt/zz/da;

.field public zb:Z

.field public zm:Lcom/byazt/hs/sp;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/byazt/t/DownloadTask;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/u/ve;->uj:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/byazt/u/ve;->a:Ljava/util/ArrayList;

    .line 13
    .line 14
    sget-object v1, Lcom/byazt/ev/x;->c:Lcom/byazt/ev/x;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    iput v1, p0, Lcom/byazt/u/ve;->md:I

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/byazt/u/ve;->h:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/byazt/u/ve;->d:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/byazt/u/ve;->zb:Z

    .line 26
    .line 27
    iput v0, p0, Lcom/byazt/u/ve;->nb:I

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/byazt/u/ve;->pf:Lcom/byazt/h/sl;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/byazt/u/ve;->ve:Lcom/byazt/t/DownloadTask;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->getDownloadInfo()Lcom/byazt/t/DownloadInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->getChunkStrategy()Lcom/byazt/zz/x;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/byazt/u/ve;->nu:Lcom/byazt/zz/x;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->getChunkAdjustCalculator()Lcom/byazt/zz/sp;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/byazt/u/ve;->my:Lcom/byazt/zz/sp;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->getForbiddenHandler()Lcom/byazt/c/gu;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/byazt/u/ve;->yv:Lcom/byazt/c/gu;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->getDiskSpaceHandler()Lcom/byazt/c/rh;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/byazt/u/ve;->p:Lcom/byazt/c/rh;

    .line 65
    .line 66
    invoke-direct {p0, p1}, Lcom/byazt/u/ve;->c(Lcom/byazt/t/DownloadTask;)Lcom/byazt/zz/my;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/byazt/u/ve;->rl:Lcom/byazt/zz/my;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/byazt/u/ve;->qp:Lcom/byazt/k/c;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/byazt/u/ve;->qp:Lcom/byazt/k/c;

    .line 90
    .line 91
    :goto_0
    invoke-direct {p0}, Lcom/byazt/u/ve;->x()V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/byazt/zz/ve;->zm()Lcom/byazt/zz/da;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 99
    .line 100
    invoke-static {}, Lcom/byazt/zz/ve;->nb()Lcom/byazt/zz/x;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/byazt/u/ve;->rh:Lcom/byazt/zz/x;

    .line 105
    .line 106
    invoke-static {}, Lcom/byazt/zz/ve;->bx()Lcom/byazt/zz/sp;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/byazt/u/ve;->gt:Lcom/byazt/zz/sp;

    .line 111
    .line 112
    new-instance v0, Lcom/byazt/zz/a;

    .line 113
    .line 114
    invoke-direct {v0, p1, p2}, Lcom/byazt/zz/a;-><init>(Lcom/byazt/t/DownloadTask;Landroid/os/Handler;)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    .line 118
    .line 119
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 120
    .line 121
    const/4 p2, 0x1

    .line 122
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 123
    .line 124
    .line 125
    iput-object p1, p0, Lcom/byazt/u/ve;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    .line 127
    return-void
.end method

.method private c(JLjava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/byazt/t/tt;",
            ">;)I"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/byazt/u/ve;->h()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 17
    iget-boolean v0, p0, Lcom/byazt/u/ve;->i:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 18
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_1

    .line 19
    :cond_0
    iget-object p3, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p3}, Lcom/byazt/t/DownloadInfo;->getChunkCount()I

    move-result p3

    goto :goto_1

    .line 20
    :cond_1
    iget-object p3, p0, Lcom/byazt/u/ve;->nu:Lcom/byazt/zz/x;

    if-eqz p3, :cond_2

    .line 21
    invoke-interface {p3, p1, p2}, Lcom/byazt/zz/x;->c(J)I

    move-result p3

    goto :goto_0

    .line 22
    :cond_2
    iget-object p3, p0, Lcom/byazt/u/ve;->rh:Lcom/byazt/zz/x;

    invoke-interface {p3, p1, p2}, Lcom/byazt/zz/x;->c(J)I

    move-result p3

    .line 23
    :goto_0
    invoke-static {}, Lcom/byazt/hs/sl;->c()Lcom/byazt/hs/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hs/sl;->tt()Lcom/byazt/hs/t;

    move-result-object v0

    .line 24
    sget-object v3, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "NetworkQuality is : %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v3, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/byazt/t/DownloadInfo;->setNetworkQuality(Ljava/lang/String;)V

    .line 26
    iget-object v3, p0, Lcom/byazt/u/ve;->my:Lcom/byazt/zz/sp;

    if-eqz v3, :cond_3

    .line 27
    invoke-interface {v3, p3, v0}, Lcom/byazt/zz/sp;->c(ILcom/byazt/hs/t;)I

    move-result p3

    goto :goto_1

    .line 28
    :cond_3
    iget-object v3, p0, Lcom/byazt/u/ve;->gt:Lcom/byazt/zz/sp;

    invoke-interface {v3, p3, v0}, Lcom/byazt/zz/sp;->c(ILcom/byazt/hs/t;)I

    move-result p3

    :goto_1
    if-gtz p3, :cond_5

    :cond_4
    const/4 p3, 0x1

    .line 29
    :cond_5
    invoke-static {}, Lcom/byazt/x/c;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "chunk count : %s for %s contentLen:%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return p3
.end method

.method public static c(Lcom/byazt/t/DownloadInfo;J)Lcom/byazt/t/tt;
    .locals 3

    .line 67
    new-instance v0, Lcom/byazt/t/tt$c;

    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/byazt/t/tt$c;-><init>(I)V

    const/4 v1, -0x1

    .line 68
    invoke-virtual {v0, v1}, Lcom/byazt/t/tt$c;->c(I)Lcom/byazt/t/tt$c;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/byazt/t/tt$c;->c(J)Lcom/byazt/t/tt$c;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p1, p2}, Lcom/byazt/t/tt$c;->n(J)Lcom/byazt/t/tt$c;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p1, p2}, Lcom/byazt/t/tt$c;->tt(J)Lcom/byazt/t/tt$c;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/byazt/t/tt$c;->ve(J)Lcom/byazt/t/tt$c;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/t/tt$c;->uj(J)Lcom/byazt/t/tt$c;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Lcom/byazt/t/tt$c;->c()Lcom/byazt/t/tt;

    move-result-object p0

    return-object p0
.end method

.method private c(Lcom/byazt/t/tt;I)Lcom/byazt/t/tt;
    .locals 8

    .line 365
    invoke-virtual {p1}, Lcom/byazt/t/tt;->uj()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 366
    invoke-virtual {p1, v0}, Lcom/byazt/t/tt;->ve(Z)J

    move-result-wide v2

    .line 367
    sget-object v4, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "reuseChunk retainLen:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " chunkIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Lcom/byazt/t/tt;->a()Z

    move-result v4

    if-nez v4, :cond_1

    sget-wide v4, Lcom/byazt/ev/n;->a:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->isNeedReuseChunkRunnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getChunkCount()I

    move-result v2

    iget-object v3, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/byazt/t/tt;->c(IJ)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 370
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/t/tt;

    .line 371
    iget-object v4, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    invoke-interface {v4, v3}, Lcom/byazt/zz/da;->tt(Lcom/byazt/t/tt;)V

    goto :goto_0

    .line 372
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/t/tt;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_7

    .line 373
    invoke-virtual {p1}, Lcom/byazt/t/tt;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    .line 374
    :goto_2
    invoke-virtual {p1}, Lcom/byazt/t/tt;->sp()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 375
    invoke-virtual {p1}, Lcom/byazt/t/tt;->sp()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/t/tt;

    if-eqz v3, :cond_5

    .line 376
    sget-object v4, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "check can checkUnCompletedChunk -- chunkIndex:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/byazt/t/tt;->my()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " currentOffset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/byazt/t/tt;->yp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "  startOffset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/byazt/t/tt;->t()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " contentLen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/byazt/t/tt;->nu()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {v3}, Lcom/byazt/t/tt;->my()I

    move-result v4

    if-ltz v4, :cond_4

    invoke-virtual {v3}, Lcom/byazt/t/tt;->i()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/byazt/t/tt;->ve()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    move-object v1, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 378
    invoke-virtual {p1}, Lcom/byazt/t/tt;->yp()J

    move-result-wide v2

    .line 379
    sget-object v4, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unComplete chunk "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/t/tt;->my()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " curOffset:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " reuseChunk chunkIndex:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for subChunk:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/byazt/t/tt;->my()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object p1, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    invoke-virtual {v1}, Lcom/byazt/t/tt;->sl()I

    move-result v2

    invoke-virtual {v1}, Lcom/byazt/t/tt;->my()I

    move-result v3

    invoke-virtual {v1}, Lcom/byazt/t/tt;->tt()I

    move-result v4

    invoke-interface {p1, v2, v3, v4, p2}, Lcom/byazt/zz/da;->c(IIII)V

    .line 381
    invoke-virtual {v1, p2}, Lcom/byazt/t/tt;->ve(I)V

    .line 382
    invoke-virtual {v1, v0}, Lcom/byazt/t/tt;->c(Z)V

    :cond_7
    return-object v1
.end method

.method private c(Lcom/byazt/t/DownloadTask;)Lcom/byazt/zz/my;
    .locals 1

    .line 383
    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->getRetryDelayTimeCalculator()Lcom/byazt/zz/my;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 384
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadTask;->getDownloadInfo()Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 385
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getRetryDelayTimeArray()Ljava/lang/String;

    move-result-object p1

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    new-instance v0, Lcom/byazt/b/nu;

    invoke-direct {v0, p1}, Lcom/byazt/b/nu;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 388
    :cond_1
    invoke-static {}, Lcom/byazt/zz/ve;->sv()Lcom/byazt/zz/my;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/byazt/t/tt;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/t/tt;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getExtraHeaders()Ljava/util/List;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->geteTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/byazt/w/a;->c(Ljava/util/List;Ljava/lang/String;Lcom/byazt/t/tt;)Ljava/util/List;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isExpiredRedownload()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/byazt/u/ve;->zb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/byazt/t/ve;

    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v1

    const-string v2, "if-modified-since"

    invoke-direct {v0, v2, v1}, Lcom/byazt/t/ve;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Lcom/byazt/t/ve;

    const-string v1, "download-tc21-1-15"

    invoke-direct {v0, v1, v1}, Lcom/byazt/t/ve;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dcache::add head IF_MODIFIED_SINCE="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private c(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/byazt/t/tt;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    .line 81
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/byazt/u/ve;->c(Ljava/util/List;J)V

    return-void

    .line 83
    :cond_0
    new-instance p1, Lcom/byazt/m/BaseException;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/16 v0, 0x409

    invoke-direct {p1, v0, p2}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method private c(JI)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    int-to-long v4, v3

    .line 84
    div-long v4, v1, v4

    .line 85
    iget-object v6, v0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v6

    .line 86
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-wide v11, v8

    :goto_0
    if-ge v10, v3, :cond_1

    add-int/lit8 v13, v3, -0x1

    if-ne v10, v13, :cond_0

    move-wide v13, v8

    goto :goto_1

    :cond_0
    add-long v13, v11, v4

    const-wide/16 v15, 0x1

    sub-long/2addr v13, v15

    .line 87
    :goto_1
    new-instance v15, Lcom/byazt/t/tt$c;

    invoke-direct {v15, v6}, Lcom/byazt/t/tt$c;-><init>(I)V

    .line 88
    invoke-virtual {v15, v10}, Lcom/byazt/t/tt$c;->c(I)Lcom/byazt/t/tt$c;

    move-result-object v15

    .line 89
    invoke-virtual {v15, v11, v12}, Lcom/byazt/t/tt$c;->c(J)Lcom/byazt/t/tt$c;

    move-result-object v15

    .line 90
    invoke-virtual {v15, v11, v12}, Lcom/byazt/t/tt$c;->n(J)Lcom/byazt/t/tt$c;

    move-result-object v15

    .line 91
    invoke-virtual {v15, v11, v12}, Lcom/byazt/t/tt$c;->tt(J)Lcom/byazt/t/tt$c;

    move-result-object v15

    .line 92
    invoke-virtual {v15, v13, v14}, Lcom/byazt/t/tt$c;->ve(J)Lcom/byazt/t/tt$c;

    move-result-object v13

    .line 93
    invoke-virtual {v13}, Lcom/byazt/t/tt$c;->c()Lcom/byazt/t/tt;

    move-result-object v13

    .line 94
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v14, v0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    invoke-interface {v14, v13}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/tt;)V

    add-long/2addr v11, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 96
    :cond_1
    iget-object v4, v0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v4, v3}, Lcom/byazt/t/DownloadInfo;->setChunkCount(I)V

    .line 97
    iget-object v4, v0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    invoke-interface {v4, v6, v3}, Lcom/byazt/zz/da;->c(II)Lcom/byazt/t/DownloadInfo;

    .line 98
    invoke-direct {v0, v7, v1, v2}, Lcom/byazt/u/ve;->c(Ljava/util/List;J)V

    return-void
.end method

.method private c(Lcom/byazt/t/tt;Ljava/lang/String;Lcom/byazt/hs/i;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/byazt/t/tt;->yp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/byazt/t/tt;->c(J)V

    .line 142
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadInfo;->setChunkCount(I)V

    .line 143
    iget-object v0, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/byazt/zz/da;->c(II)Lcom/byazt/t/DownloadInfo;

    .line 144
    new-instance v0, Lcom/byazt/zz/n;

    iget-object v4, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    move-object v3, v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/byazt/zz/n;-><init>(Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Lcom/byazt/hs/i;Lcom/byazt/t/tt;Lcom/byazt/u/a;)V

    iput-object v0, p0, Lcom/byazt/u/ve;->sp:Lcom/byazt/zz/n;

    .line 145
    invoke-direct {p0}, Lcom/byazt/u/ve;->gt()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/u/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/u/ve;->nb()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/u/ve;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/u/ve;->c(Ljava/util/List;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/i;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/byazt/zz/da;->uj(I)V

    .line 182
    iget-object v0, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/byazt/zz/da;->u(I)V

    .line 183
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-static {v0}, Lcom/byazt/w/a;->c(Lcom/byazt/t/DownloadInfo;)V

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/byazt/u/ve;->i:Z

    .line 185
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo;->resetDataForEtagEndure(Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-interface {p1, v0}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/DownloadInfo;)Z

    .line 187
    new-instance p1, Lcom/byazt/m/i;

    invoke-direct {p1, p2}, Lcom/byazt/m/i;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;,
            Lcom/byazt/m/i;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/byazt/u/ve;->gr:Lcom/byazt/hs/i;

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getChunkCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 40
    invoke-static {}, Lcom/byazt/no/c;->c()Lcom/byazt/no/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/no/c;->tt(Ljava/lang/String;Ljava/util/List;)Lcom/byazt/no/uj;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 41
    iget-object p1, p0, Lcom/byazt/u/ve;->gr:Lcom/byazt/hs/i;

    invoke-virtual {p0, p1}, Lcom/byazt/u/ve;->c(Lcom/byazt/hs/sp;)V

    .line 42
    iget-object p1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/byazt/t/DownloadInfo;->setPreconnectLevel(I)V

    .line 43
    iput-object v0, p0, Lcom/byazt/u/ve;->gr:Lcom/byazt/hs/i;

    goto/16 :goto_4

    .line 44
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isNeedDefaultHttpServiceBackUp()Z

    move-result v2

    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 45
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getMaxBytes()I

    move-result v3

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/byazt/u/ve;->qp:Lcom/byazt/k/c;

    const-string v4, "net_lib_strategy"

    .line 46
    invoke-virtual {v0, v4}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result v7

    iget-object v0, p0, Lcom/byazt/u/ve;->qp:Lcom/byazt/k/c;

    const-string v4, "monitor_download_connect"

    const/4 v6, 0x0

    .line 47
    invoke-virtual {v0, v4, v6}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    iget-object v9, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    move-object v4, p1

    move-object v6, p2

    .line 48
    invoke-static/range {v2 .. v9}, Lcom/byazt/zz/ve;->c(ZILjava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/byazt/t/DownloadInfo;)Lcom/byazt/hs/i;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/u/ve;->gr:Lcom/byazt/hs/i;
    :try_end_0
    .catch Lcom/byazt/m/BaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    .line 49
    :try_start_1
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isExpiredRedownload()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/byazt/w/a;->sp(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, Lcom/byazt/w/a;->ve(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 50
    sget-object p1, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "dcache=execepiton responseCode=304 lastModified not changed, use local file.. old cacheControl="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 51
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getCacheControl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 52
    invoke-static {p1, p2}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getCacheControl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/w/a;->i(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_4

    .line 54
    iget-object p1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object p1

    const-string p2, "default_304_max_age"

    const/16 v0, 0x12c

    invoke-virtual {p1, p2, v0}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p1

    int-to-long p1, p1

    .line 55
    :cond_4
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/t/DownloadInfo;->setCacheExpiredTime(J)V

    .line 56
    new-instance p1, Lcom/byazt/m/c;

    iget-object p2, p0, Lcom/byazt/u/ve;->eo:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/byazt/m/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_5
    invoke-static {p1}, Lcom/byazt/w/a;->a(Ljava/lang/Throwable;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v0, ""

    if-eqz p2, :cond_6

    :try_start_2
    const-string p1, "http code 416"

    .line 58
    invoke-direct {p0, v0, p1}, Lcom/byazt/u/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 59
    :cond_6
    invoke-static {p1}, Lcom/byazt/w/a;->n(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p1, "http code 412"

    .line 60
    invoke-direct {p0, v0, p1}, Lcom/byazt/u/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string p2, "CreateFirstConnection"

    .line 61
    invoke-static {p1, p2}, Lcom/byazt/w/a;->c(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    :goto_2
    iget-object p1, p0, Lcom/byazt/u/ve;->gr:Lcom/byazt/hs/i;

    :goto_3
    invoke-virtual {p0, p1}, Lcom/byazt/u/ve;->c(Lcom/byazt/hs/sp;)V

    .line 63
    :goto_4
    iget-object p1, p0, Lcom/byazt/u/ve;->gr:Lcom/byazt/hs/i;

    if-eqz p1, :cond_8

    return-void

    .line 64
    :cond_8
    new-instance p1, Lcom/byazt/m/BaseException;

    new-instance p2, Ljava/io/IOException;

    const-string v0, "download can\'t continue, firstConnection is null"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3fe

    invoke-direct {p1, v0, p2}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :catch_0
    move-exception p1

    .line 65
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 66
    iget-object p2, p0, Lcom/byazt/u/ve;->gr:Lcom/byazt/hs/i;

    invoke-virtual {p0, p2}, Lcom/byazt/u/ve;->c(Lcom/byazt/hs/sp;)V

    throw p1
.end method

.method private c(Ljava/lang/String;Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;,
            Lcom/byazt/m/i;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/u/ve;->tt(Ljava/lang/String;Ljava/util/List;J)V

    .line 32
    iget-object v0, p0, Lcom/byazt/u/ve;->zm:Lcom/byazt/hs/sp;

    if-eqz v0, :cond_0

    .line 33
    :try_start_0
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/byazt/u/ve;->c(Ljava/lang/String;Lcom/byazt/hs/sp;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/byazt/u/ve;->d:Z

    .line 35
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/byazt/u/ve;->zm:Lcom/byazt/hs/sp;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/byazt/u/ve;->d:Z

    if-eqz v0, :cond_2

    .line 36
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/byazt/u/ve;->c(Ljava/lang/String;Ljava/util/List;)V

    .line 37
    iget-object p2, p0, Lcom/byazt/u/ve;->gr:Lcom/byazt/hs/i;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/byazt/u/ve;->c(Ljava/lang/String;Lcom/byazt/hs/sp;J)V

    :cond_2
    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 278
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    iget-object v1, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    sget-object v2, Lcom/byazt/ev/x;->sp:Lcom/byazt/ev/x;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/byazt/t/DownloadInfo;->setForbiddenBackupUrls(Ljava/util/List;Z)V

    .line 280
    invoke-static {}, Lcom/byazt/zz/ve;->d()Lcom/byazt/b/c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 281
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/b/c;->t(I)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private c(Ljava/util/List;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/t/tt;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    .line 99
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/t/tt;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/byazt/t/tt;->m()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 101
    invoke-virtual {v0}, Lcom/byazt/t/tt;->yp()J

    move-result-wide v1

    sub-long v1, p2, v1

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/t/tt;->m()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/byazt/t/tt;->yp()J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    :goto_1
    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/byazt/t/tt;->c(J)V

    .line 104
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->isNeedReuseFirstConnection()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/byazt/u/ve;->gr:Lcom/byazt/hs/i;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->isHeadConnectionAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/byazt/u/ve;->d:Z

    if-eqz v1, :cond_4

    .line 105
    :cond_2
    invoke-virtual {v0}, Lcom/byazt/t/tt;->my()I

    move-result v1

    if-nez v1, :cond_3

    .line 106
    new-instance v1, Lcom/byazt/u/tt;

    iget-object v2, p0, Lcom/byazt/u/ve;->ve:Lcom/byazt/t/DownloadTask;

    iget-object v3, p0, Lcom/byazt/u/ve;->gr:Lcom/byazt/hs/i;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/byazt/u/tt;-><init>(Lcom/byazt/t/tt;Lcom/byazt/t/DownloadTask;Lcom/byazt/hs/i;Lcom/byazt/u/a;)V

    .line 107
    iget-object v0, p0, Lcom/byazt/u/ve;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {v0}, Lcom/byazt/t/tt;->my()I

    move-result v1

    if-lez v1, :cond_0

    .line 109
    new-instance v1, Lcom/byazt/u/tt;

    iget-object v2, p0, Lcom/byazt/u/ve;->ve:Lcom/byazt/t/DownloadTask;

    invoke-direct {v1, v0, v2, p0}, Lcom/byazt/u/tt;-><init>(Lcom/byazt/t/tt;Lcom/byazt/t/DownloadTask;Lcom/byazt/u/a;)V

    .line 110
    iget-object v0, p0, Lcom/byazt/u/ve;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_4
    new-instance v1, Lcom/byazt/u/tt;

    iget-object v2, p0, Lcom/byazt/u/ve;->ve:Lcom/byazt/t/DownloadTask;

    invoke-direct {v1, v0, v2, p0}, Lcom/byazt/u/tt;-><init>(Lcom/byazt/t/tt;Lcom/byazt/t/DownloadTask;Lcom/byazt/u/a;)V

    .line 112
    iget-object v0, p0, Lcom/byazt/u/ve;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/16 p1, 0x40

    .line 113
    invoke-static {p1}, Lcom/byazt/w/c;->c(I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 114
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/byazt/u/ve;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    iget-object p2, p0, Lcom/byazt/u/ve;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/byazt/u/tt;

    .line 116
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    sget-object v1, Lcom/byazt/ev/x;->ve:Lcom/byazt/ev/x;

    if-ne v0, v1, :cond_6

    .line 117
    invoke-virtual {p3}, Lcom/byazt/u/tt;->tt()V

    goto :goto_2

    .line 118
    :cond_6
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    sget-object v1, Lcom/byazt/ev/x;->tt:Lcom/byazt/ev/x;

    if-ne v0, v1, :cond_7

    .line 119
    invoke-virtual {p3}, Lcom/byazt/u/tt;->c()V

    goto :goto_2

    .line 120
    :cond_7
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    .line 121
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    .line 122
    :try_start_0
    invoke-static {p1}, Lcom/byazt/b/n;->uj(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_3
    if-eqz p2, :cond_a

    .line 123
    invoke-direct {p0}, Lcom/byazt/u/ve;->qy()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p3, :cond_9

    return-void

    .line 124
    :cond_9
    :try_start_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p2

    .line 125
    :try_start_2
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 126
    :goto_4
    invoke-static {p1}, Lcom/byazt/b/n;->n(Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p2

    goto :goto_3

    :cond_a
    if-eqz p1, :cond_c

    .line 127
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c

    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_1
    :cond_b
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Future;

    if-eqz p2, :cond_b

    .line 129
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez p3, :cond_b

    .line 130
    :try_start_3
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_2
    :cond_c
    return-void

    .line 131
    :cond_d
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/byazt/u/ve;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    iget-object p2, p0, Lcom/byazt/u/ve;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/byazt/u/tt;

    .line 133
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    sget-object v1, Lcom/byazt/ev/x;->ve:Lcom/byazt/ev/x;

    if-ne v0, v1, :cond_e

    .line 134
    invoke-virtual {p3}, Lcom/byazt/u/tt;->tt()V

    goto :goto_6

    .line 135
    :cond_e
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    sget-object v1, Lcom/byazt/ev/x;->tt:Lcom/byazt/ev/x;

    if-ne v0, v1, :cond_f

    .line 136
    invoke-virtual {p3}, Lcom/byazt/u/tt;->c()V

    goto :goto_6

    .line 137
    :cond_f
    invoke-static {p3}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 138
    :cond_10
    invoke-direct {p0}, Lcom/byazt/u/ve;->qy()Z

    move-result p2

    if-eqz p2, :cond_11

    return-void

    .line 139
    :cond_11
    :try_start_4
    invoke-static {p1}, Lcom/byazt/b/n;->ve(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 140
    new-instance p2, Lcom/byazt/m/BaseException;

    const/16 p3, 0x3fc

    invoke-direct {p2, p3, p1}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

.method private c(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/16 v0, 0x19c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 179
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/byazt/u/ve;->sl:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/byazt/u/ve;->da:Z

    if-eqz p2, :cond_2

    :cond_1
    return v1

    :cond_2
    const/16 p2, 0xc9

    if-eq p1, p2, :cond_3

    const/16 p2, 0x1a0

    if-ne p1, p2, :cond_4

    .line 180
    :cond_3
    iget-object p1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-lez p3, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private cu()V
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "clearCurrentDownloadData::"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/lang/Throwable;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-interface {v0, v1}, Lcom/byazt/zz/da;->uj(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-interface {v0, v1}, Lcom/byazt/zz/da;->u(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/byazt/w/a;->c(Lcom/byazt/t/DownloadInfo;)V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/byazt/u/ve;->i:Z

    .line 58
    .line 59
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 60
    .line 61
    const-string v1, ""

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadInfo;->resetDataForEtagEndure(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 69
    .line 70
    invoke-interface {v0, v1}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/DownloadInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private d()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    :try_start_0
    iget-object v3, v0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 6
    .line 7
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getTempPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {v3}, Lcom/byazt/w/a;->uj(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3
    :try_end_0
    .catch Lcom/byazt/m/BaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    nop

    .line 17
    move-wide v3, v1

    .line 18
    :goto_0
    sget-object v5, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v7, "checkSpaceOverflowInProgress: available = "

    .line 23
    .line 24
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v3, v4}, Lcom/byazt/w/a;->c(J)D

    .line 28
    .line 29
    .line 30
    move-result-wide v7

    .line 31
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v7, "MB"

    .line 35
    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-static {v5, v6}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    cmp-long v6, v3, v1

    .line 47
    .line 48
    if-lez v6, :cond_1

    .line 49
    .line 50
    iget-object v6, v0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    .line 53
    .line 54
    .line 55
    move-result-wide v8

    .line 56
    iget-object v6, v0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    .line 59
    .line 60
    .line 61
    move-result-wide v10

    .line 62
    sub-long/2addr v8, v10

    .line 63
    cmp-long v6, v3, v8

    .line 64
    .line 65
    if-gez v6, :cond_1

    .line 66
    .line 67
    iget-object v6, v0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 68
    .line 69
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    invoke-static {v6}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    const-string v10, "space_fill_min_keep_mb"

    .line 78
    .line 79
    const/16 v11, 0x64

    .line 80
    .line 81
    invoke-virtual {v6, v10, v11}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-lez v6, :cond_1

    .line 86
    .line 87
    int-to-long v10, v6

    .line 88
    const-wide/32 v12, 0x100000

    .line 89
    .line 90
    .line 91
    mul-long v10, v10, v12

    .line 92
    .line 93
    sub-long v10, v3, v10

    .line 94
    .line 95
    new-instance v14, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v15, "checkSpaceOverflowInProgress: minKeep  = "

    .line 98
    .line 99
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v6, "MB, canDownload = "

    .line 106
    .line 107
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-static {v10, v11}, Lcom/byazt/w/a;->c(J)D

    .line 111
    .line 112
    .line 113
    move-result-wide v12

    .line 114
    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-static {v5, v6}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    cmp-long v5, v10, v1

    .line 128
    .line 129
    if-lez v5, :cond_0

    .line 130
    .line 131
    iget-object v1, v0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    .line 134
    .line 135
    .line 136
    move-result-wide v1

    .line 137
    const-wide/32 v3, 0x100000

    .line 138
    .line 139
    .line 140
    add-long/2addr v10, v3

    .line 141
    add-long/2addr v1, v10

    .line 142
    iput-wide v1, v0, Lcom/byazt/u/ve;->or:J

    .line 143
    .line 144
    return-void

    .line 145
    :cond_0
    iput-wide v1, v0, Lcom/byazt/u/ve;->or:J

    .line 146
    .line 147
    new-instance v1, Lcom/byazt/m/uj;

    .line 148
    .line 149
    invoke-direct {v1, v3, v4, v8, v9}, Lcom/byazt/m/uj;-><init>(JJ)V

    .line 150
    .line 151
    .line 152
    throw v1

    .line 153
    :cond_1
    iput-wide v1, v0, Lcom/byazt/u/ve;->or:J

    .line 154
    .line 155
    return-void
.end method

.method private da()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/c;
        }
    .end annotation

    .line 1
    const-string v0, "fix_file_exist_update_download_info"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 5
    .line 6
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    iget-object v3, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 11
    .line 12
    if-eqz v3, :cond_7

    .line 13
    .line 14
    const/16 v3, 0x800

    .line 15
    .line 16
    invoke-static {v3}, Lcom/byazt/w/c;->c(I)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    iget-object v3, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 23
    .line 24
    invoke-interface {v3}, Lcom/byazt/zz/da;->n()Z

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v3, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 28
    .line 29
    invoke-interface {v3, v2}, Lcom/byazt/zz/da;->tt(I)Lcom/byazt/t/DownloadInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v3, :cond_6

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->isNewTask()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    iget-object v5, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 44
    .line 45
    invoke-virtual {v5}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    iget-object v6, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 50
    .line 51
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getMd5()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    iget-object v7, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 56
    .line 57
    invoke-virtual {v7, v3, v4}, Lcom/byazt/t/DownloadInfo;->copyFromCacheData(Lcom/byazt/t/DownloadInfo;Z)V

    .line 58
    .line 59
    .line 60
    const/16 v7, 0x1000

    .line 61
    .line 62
    invoke-static {v7}, Lcom/byazt/w/c;->c(I)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_2

    .line 67
    .line 68
    iget-object v7, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;
    :try_end_0
    .catch Lcom/byazt/m/c; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 69
    .line 70
    if-eq v3, v7, :cond_2

    .line 71
    .line 72
    const/4 v7, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const/4 v7, 0x0

    .line 75
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_4

    .line 84
    .line 85
    invoke-static {v3, v1, v6}, Lcom/byazt/w/a;->c(Lcom/byazt/t/DownloadInfo;ZLjava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v5
    :try_end_1
    .catch Lcom/byazt/m/c; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    if-nez v5, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    :try_start_2
    new-instance v1, Lcom/byazt/m/c;

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-direct {v1, v2}, Lcom/byazt/m/c;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v1
    :try_end_2
    .catch Lcom/byazt/m/c; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :catchall_0
    move-exception v2

    .line 103
    move v1, v7

    .line 104
    goto :goto_5

    .line 105
    :catch_0
    move-exception v2

    .line 106
    move v1, v7

    .line 107
    goto/16 :goto_7

    .line 108
    .line 109
    :cond_4
    :goto_1
    :try_start_3
    invoke-static {v3}, Lcom/byazt/zz/ve;->c(Lcom/byazt/t/DownloadInfo;)I

    .line 110
    .line 111
    .line 112
    move-result v3
    :try_end_3
    .catch Lcom/byazt/m/c; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    if-eq v3, v2, :cond_5

    .line 114
    .line 115
    :try_start_4
    iget-object v3, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 116
    .line 117
    invoke-interface {v3, v2}, Lcom/byazt/zz/da;->a(I)Z
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/byazt/m/c; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :catch_1
    move-exception v2

    .line 122
    :try_start_5
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Lcom/byazt/m/c; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_5
    move v4, v7

    .line 127
    goto :goto_3

    .line 128
    :catchall_1
    move-exception v2

    .line 129
    move v1, v7

    .line 130
    goto :goto_4

    .line 131
    :catch_2
    move-exception v2

    .line 132
    move v1, v7

    .line 133
    goto :goto_6

    .line 134
    :cond_6
    :goto_2
    :try_start_6
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->reset()V
    :try_end_6
    .catch Lcom/byazt/m/c; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_7
    const/4 v4, 0x0

    .line 141
    :goto_3
    :try_start_7
    invoke-direct {p0}, Lcom/byazt/u/ve;->x()V
    :try_end_7
    .catch Lcom/byazt/m/c; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 142
    .line 143
    .line 144
    if-eqz v4, :cond_b

    .line 145
    .line 146
    :try_start_8
    iget-object v0, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 147
    .line 148
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 149
    .line 150
    invoke-interface {v0, v1}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/DownloadInfo;)Z
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_3

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :catch_3
    move-exception v0

    .line 155
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :catchall_2
    move-exception v2

    .line 160
    move v1, v4

    .line 161
    goto :goto_4

    .line 162
    :catch_4
    move-exception v2

    .line 163
    move v1, v4

    .line 164
    goto :goto_6

    .line 165
    :catchall_3
    move-exception v2

    .line 166
    :goto_4
    const/4 v4, 0x0

    .line 167
    :goto_5
    :try_start_9
    iget-object v3, p0, Lcom/byazt/u/ve;->ve:Lcom/byazt/t/DownloadTask;

    .line 168
    .line 169
    if-eqz v3, :cond_8

    .line 170
    .line 171
    iget-object v5, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 172
    .line 173
    if-eqz v5, :cond_8

    .line 174
    .line 175
    invoke-virtual {v3}, Lcom/byazt/t/DownloadTask;->getMonitorDepend()Lcom/byazt/c/gr;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    iget-object v5, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 180
    .line 181
    new-instance v6, Lcom/byazt/m/BaseException;

    .line 182
    .line 183
    const-string v7, "checkTaskCache"

    .line 184
    .line 185
    invoke-static {v2, v7}, Lcom/byazt/w/a;->tt(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    const/16 v7, 0x3eb

    .line 190
    .line 191
    invoke-direct {v6, v7, v2}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 195
    .line 196
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    invoke-static {v3, v5, v6, v2}, Lcom/byazt/zl/c;->c(Lcom/byazt/c/gr;Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 201
    .line 202
    .line 203
    :cond_8
    if-eqz v1, :cond_b

    .line 204
    .line 205
    if-eqz v4, :cond_9

    .line 206
    .line 207
    :try_start_a
    iget-object v1, p0, Lcom/byazt/u/ve;->qp:Lcom/byazt/k/c;

    .line 208
    .line 209
    invoke-virtual {v1, v0}, Lcom/byazt/k/c;->c(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_a

    .line 214
    .line 215
    :cond_9
    iget-object v0, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 216
    .line 217
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 218
    .line 219
    invoke-interface {v0, v1}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/DownloadInfo;)Z
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_5

    .line 220
    .line 221
    .line 222
    :cond_a
    return-void

    .line 223
    :catch_5
    move-exception v0

    .line 224
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 225
    .line 226
    .line 227
    :cond_b
    return-void

    .line 228
    :catch_6
    move-exception v2

    .line 229
    :goto_6
    const/4 v4, 0x0

    .line 230
    :goto_7
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 231
    :catchall_4
    move-exception v2

    .line 232
    if-eqz v1, :cond_d

    .line 233
    .line 234
    if-eqz v4, :cond_c

    .line 235
    .line 236
    :try_start_c
    iget-object v1, p0, Lcom/byazt/u/ve;->qp:Lcom/byazt/k/c;

    .line 237
    .line 238
    invoke-virtual {v1, v0}, Lcom/byazt/k/c;->c(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_d

    .line 243
    .line 244
    :cond_c
    iget-object v0, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 245
    .line 246
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 247
    .line 248
    invoke-interface {v0, v1}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/DownloadInfo;)Z
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_7

    .line 249
    .line 250
    .line 251
    goto :goto_8

    .line 252
    :catch_7
    move-exception v0

    .line 253
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 254
    .line 255
    .line 256
    :cond_d
    :goto_8
    throw v2
.end method

.method private eo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isOnlyWifi()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/byazt/w/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/byazt/m/a;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    aput-object v1, v2, v3

    .line 29
    .line 30
    const-string v1, "download task need permission:%s"

    .line 31
    .line 32
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/16 v2, 0x3fb

    .line 37
    .line 38
    invoke-direct {v0, v2, v1}, Lcom/byazt/m/a;-><init>(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isDownloadWithWifiValid()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isPauseReserveWithWifiValid()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    new-instance v0, Lcom/byazt/m/n;

    .line 60
    .line 61
    invoke-direct {v0}, Lcom/byazt/m/n;-><init>()V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_3
    new-instance v0, Lcom/byazt/m/ve;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/byazt/m/ve;-><init>()V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method private gr()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getChunkCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-gt v0, v2, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    cmp-long v0, v3, v5

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    cmp-long v0, v3, v5

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    return v2

    .line 40
    :cond_0
    return v1

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-interface {v0, v3}, Lcom/byazt/zz/da;->ve(I)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_6

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-gt v3, v2, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_5

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lcom/byazt/t/tt;

    .line 77
    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/byazt/t/tt;->i()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_3

    .line 85
    .line 86
    :cond_4
    return v1

    .line 87
    :cond_5
    return v2

    .line 88
    :cond_6
    :goto_0
    return v1
.end method

.method private gt()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->sp:Lcom/byazt/zz/n;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 6
    .line 7
    sget-object v1, Lcom/byazt/ev/x;->ve:Lcom/byazt/ev/x;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 12
    .line 13
    const/4 v1, -0x4

    .line 14
    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadInfo;->setStatus(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/u/ve;->sp:Lcom/byazt/zz/n;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/zz/n;->ve()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 24
    .line 25
    sget-object v1, Lcom/byazt/ev/x;->tt:Lcom/byazt/ev/x;

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 30
    .line 31
    const/4 v1, -0x2

    .line 32
    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadInfo;->setStatus(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/u/ve;->sp:Lcom/byazt/zz/n;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/byazt/zz/n;->tt()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/byazt/u/ve;->sp:Lcom/byazt/zz/n;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/byazt/zz/n;->uj()V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method private gu()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 2
    .line 3
    sget-object v1, Lcom/byazt/ev/x;->uj:Lcom/byazt/ev/x;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/byazt/u/ve;->gu:Lcom/byazt/m/BaseException;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/byazt/zz/a;->c(Lcom/byazt/m/BaseException;)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 18
    .line 19
    sget-object v1, Lcom/byazt/ev/x;->ve:Lcom/byazt/ev/x;

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/byazt/zz/a;->ve()V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 31
    .line 32
    sget-object v1, Lcom/byazt/ev/x;->tt:Lcom/byazt/ev/x;

    .line 33
    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/byazt/zz/a;->uj()V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 44
    .line 45
    sget-object v1, Lcom/byazt/ev/x;->n:Lcom/byazt/ev/x;

    .line 46
    .line 47
    if-ne v0, v1, :cond_3

    .line 48
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/byazt/zz/a;->sp()V
    :try_end_0
    .catch Lcom/byazt/m/BaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :catch_0
    move-exception v0

    .line 57
    iget-object v1, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lcom/byazt/zz/a;->c(Lcom/byazt/m/BaseException;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 64
    .line 65
    sget-object v1, Lcom/byazt/ev/x;->x:Lcom/byazt/ev/x;

    .line 66
    .line 67
    if-ne v0, v1, :cond_4

    .line 68
    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/byazt/u/ve;->eo:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/byazt/zz/a;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/byazt/m/BaseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    iget-object v1, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Lcom/byazt/zz/a;->c(Lcom/byazt/m/BaseException;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 85
    .line 86
    sget-object v1, Lcom/byazt/ev/x;->i:Lcom/byazt/ev/x;

    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    if-ne v0, v1, :cond_5

    .line 90
    .line 91
    iget-object v0, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/byazt/u/ve;->gu:Lcom/byazt/m/BaseException;

    .line 94
    .line 95
    invoke-virtual {v0, v1, v3}, Lcom/byazt/zz/a;->c(Lcom/byazt/m/BaseException;Z)V

    .line 96
    .line 97
    .line 98
    return v3

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 100
    .line 101
    sget-object v1, Lcom/byazt/ev/x;->sp:Lcom/byazt/ev/x;

    .line 102
    .line 103
    if-ne v0, v1, :cond_6

    .line 104
    .line 105
    return v2

    .line 106
    :cond_6
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 107
    .line 108
    sget-object v1, Lcom/byazt/ev/x;->a:Lcom/byazt/ev/x;

    .line 109
    .line 110
    if-ne v0, v1, :cond_8

    .line 111
    .line 112
    invoke-direct {p0}, Lcom/byazt/u/ve;->gr()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_8

    .line 117
    .line 118
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 119
    .line 120
    const-string v4, "doTaskStatusHandle retryDelay"

    .line 121
    .line 122
    invoke-static {v0, v4}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0}, Lcom/byazt/u/ve;->yv()V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 129
    .line 130
    if-ne v0, v1, :cond_7

    .line 131
    .line 132
    return v2

    .line 133
    :cond_7
    return v3

    .line 134
    :cond_8
    :try_start_2
    invoke-direct {p0}, Lcom/byazt/u/ve;->zm()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_9

    .line 139
    .line 140
    return v3

    .line 141
    :cond_9
    iget-object v0, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/byazt/zz/a;->a()V

    .line 144
    .line 145
    .line 146
    invoke-static {}, Lcom/byazt/b/rh;->c()Lcom/byazt/b/rh;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/byazt/b/rh;->uj()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    new-instance v1, Lcom/byazt/m/BaseException;

    .line 156
    .line 157
    const-string v3, "doTaskStatusHandle onComplete"

    .line 158
    .line 159
    invoke-static {v0, v3}, Lcom/byazt/w/a;->tt(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const/16 v3, 0x3f0

    .line 164
    .line 165
    invoke-direct {v1, v3, v0}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v1}, Lcom/byazt/u/ve;->tt(Lcom/byazt/m/BaseException;)V

    .line 169
    .line 170
    .line 171
    :goto_0
    return v2
.end method

.method private h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isExpiredRedownload()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/byazt/u/ve;->i:Z

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getChunkCount()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-le v0, v2, :cond_2

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isChunkDowngradeRetryUsed()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-boolean v0, p0, Lcom/byazt/u/ve;->da:Z

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/byazt/u/ve;->t:Z

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    :goto_0
    return v1
.end method

.method private i()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->canSkipStatusHandler()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const/4 v1, -0x2

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v1, -0x4

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Lcom/byazt/m/BaseException;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "The download Task can\'t start, because its status is not prepare:"

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/16 v2, 0x3e8

    .line 41
    .line 42
    invoke-direct {v1, v2, v0}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/byazt/u/ve;->tt(Lcom/byazt/m/BaseException;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    return v0

    .line 50
    :cond_1
    return v1
.end method

.method private m()V
    .locals 7

    .line 1
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "endDownloadRunnable::runStatus="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 23
    .line 24
    sget-object v1, Lcom/byazt/ev/x;->tt:Lcom/byazt/ev/x;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 31
    .line 32
    sget-object v1, Lcom/byazt/ev/x;->ve:Lcom/byazt/ev/x;

    .line 33
    .line 34
    if-eq v0, v1, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/byazt/u/ve;->gu()Z

    .line 40
    .line 41
    .line 42
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/4 v4, 0x0

    .line 44
    goto :goto_2

    .line 45
    :catch_0
    move-exception v1

    .line 46
    instance-of v4, v1, Lcom/byazt/m/BaseException;

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    iget-object v4, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    .line 51
    .line 52
    check-cast v1, Lcom/byazt/m/BaseException;

    .line 53
    .line 54
    invoke-virtual {v4, v1}, Lcom/byazt/zz/a;->c(Lcom/byazt/m/BaseException;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v4, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    .line 59
    .line 60
    new-instance v5, Lcom/byazt/m/BaseException;

    .line 61
    .line 62
    const/16 v6, 0x416

    .line 63
    .line 64
    invoke-direct {v5, v6, v1}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v5}, Lcom/byazt/zz/a;->c(Lcom/byazt/m/BaseException;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    const/4 v1, 0x1

    .line 71
    const/4 v4, 0x1

    .line 72
    :goto_2
    if-nez v1, :cond_3

    .line 73
    .line 74
    if-eqz v4, :cond_2

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_2
    iput-boolean v2, p0, Lcom/byazt/u/ve;->h:Z

    .line 78
    .line 79
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 80
    .line 81
    const-string v1, "jump to restart"

    .line 82
    .line 83
    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/byazt/u/ve;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 90
    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    :try_start_1
    invoke-static {}, Lcom/byazt/zz/ve;->d()Lcom/byazt/b/c;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Lcom/byazt/b/c;->c(Lcom/byazt/u/ve;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    :cond_4
    return-void

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/byazt/u/ve;->ve:Lcom/byazt/t/DownloadTask;

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/byazt/t/DownloadTask;->getMonitorDepend()Lcom/byazt/c/gr;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 115
    .line 116
    new-instance v4, Lcom/byazt/m/BaseException;

    .line 117
    .line 118
    const-string v5, "removeDownloadRunnable"

    .line 119
    .line 120
    invoke-static {v0, v5}, Lcom/byazt/w/a;->tt(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const/16 v5, 0x3f6

    .line 125
    .line 126
    invoke-direct {v4, v5, v0}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 130
    .line 131
    if-eqz v0, :cond_5

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    :cond_5
    invoke-static {v1, v2, v4, v3}, Lcom/byazt/zl/c;->c(Lcom/byazt/c/gr;Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;I)V

    .line 138
    .line 139
    .line 140
    :cond_6
    :goto_4
    return-void
.end method

.method private md()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/i;,
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/byazt/zz/ve;->c(Lcom/byazt/t/DownloadInfo;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->isDownloaded()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->isExpiredRedownload()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    iget-boolean v2, p0, Lcom/byazt/u/ve;->zb:Z

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Lcom/byazt/m/BaseException;

    .line 35
    .line 36
    const/16 v1, 0x3f1

    .line 37
    .line 38
    const-string v2, "file has downloaded"

    .line 39
    .line 40
    invoke-direct {v0, v1, v2}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 45
    .line 46
    invoke-interface {v2, v1}, Lcom/byazt/zz/da;->tt(I)Lcom/byazt/t/DownloadInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    invoke-static {}, Lcom/byazt/zz/ve;->d()Lcom/byazt/b/c;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_4

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eq v4, v0, :cond_4

    .line 63
    .line 64
    iget-object v4, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Lcom/byazt/t/DownloadInfo;->equalsTask(Lcom/byazt/t/DownloadInfo;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-virtual {v3, v4}, Lcom/byazt/b/c;->c(I)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_3

    .line 81
    .line 82
    iget-object v3, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 83
    .line 84
    invoke-interface {v3, v1}, Lcom/byazt/zz/da;->ve(I)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    iget-object v4, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 89
    .line 90
    invoke-static {v4}, Lcom/byazt/w/a;->c(Lcom/byazt/t/DownloadInfo;)V

    .line 91
    .line 92
    .line 93
    iget-object v4, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 94
    .line 95
    invoke-interface {v4, v1}, Lcom/byazt/zz/da;->a(I)Z

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->isBreakpointAvailable()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 105
    .line 106
    const/4 v4, 0x0

    .line 107
    invoke-virtual {v1, v2, v4}, Lcom/byazt/t/DownloadInfo;->copyFromCacheData(Lcom/byazt/t/DownloadInfo;Z)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 111
    .line 112
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 113
    .line 114
    invoke-interface {v1, v2}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/DownloadInfo;)Z

    .line 115
    .line 116
    .line 117
    if-eqz v3, :cond_2

    .line 118
    .line 119
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_2

    .line 128
    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Lcom/byazt/t/tt;

    .line 134
    .line 135
    invoke-virtual {v2, v0}, Lcom/byazt/t/tt;->tt(I)V

    .line 136
    .line 137
    .line 138
    iget-object v3, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 139
    .line 140
    invoke-interface {v3, v2}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/tt;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    new-instance v0, Lcom/byazt/m/i;

    .line 145
    .line 146
    const-string v1, "retry task because id generator changed"

    .line 147
    .line 148
    invoke-direct {v0, v1}, Lcom/byazt/m/i;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v0

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 153
    .line 154
    invoke-interface {v1, v0}, Lcom/byazt/zz/da;->a(I)Z

    .line 155
    .line 156
    .line 157
    new-instance v0, Lcom/byazt/m/BaseException;

    .line 158
    .line 159
    const/16 v1, 0x401

    .line 160
    .line 161
    const-string v2, "another same task is downloading"

    .line 162
    .line 163
    invoke-direct {v0, v1, v2}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :cond_4
    return-void
.end method

.method private my()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/u/ve;->nu()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/u/ve;->rh()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private nb()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/u/ve;->qy()Z

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
    invoke-static {}, Lcom/byazt/zz/ve;->d()Lcom/byazt/b/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/byazt/b/c;->t(I)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method private nu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->zm:Lcom/byazt/hs/sp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/hs/sp;->ve()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/byazt/u/ve;->zm:Lcom/byazt/hs/sp;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private or()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/w/a;->a(Lcom/byazt/t/DownloadInfo;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    sget-object v4, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v6, "checkTaskCanResume: offset = "

    .line 22
    .line 23
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v6, ", curBytes = "

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v4, v2}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 45
    .line 46
    invoke-virtual {v2, v0, v1}, Lcom/byazt/t/DownloadInfo;->setCurBytes(J)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v2, 0x0

    .line 50
    .line 51
    cmp-long v4, v0, v2

    .line 52
    .line 53
    if-lez v4, :cond_1

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    .line 58
    :goto_0
    iput-boolean v0, p0, Lcom/byazt/u/ve;->i:Z

    .line 59
    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    iget-boolean v0, p0, Lcom/byazt/u/ve;->zb:Z

    .line 63
    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 67
    .line 68
    const-string v1, "checkTaskCanResume: deleteAllDownloadFiles"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-interface {v0, v1}, Lcom/byazt/zz/da;->uj(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-interface {v0, v1}, Lcom/byazt/zz/da;->u(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/byazt/w/a;->c(Lcom/byazt/t/DownloadInfo;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    return-void
.end method

.method private p()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->rl:Lcom/byazt/zz/my;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getCurRetryTimeInTotal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getTotalRetryCount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/byazt/zz/my;->c(II)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0
.end method

.method private pf()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private qp()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/u/ve;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/byazt/u/tt;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/byazt/u/tt;->tt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    sget-object v1, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "cancelAllChunkRunnable: "

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private qy()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/u/ve;->rl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x2

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/byazt/u/ve;->rl()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    sget-object v0, Lcom/byazt/ev/x;->tt:Lcom/byazt/ev/x;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, -0x4

    .line 45
    if-ne v0, v1, :cond_3

    .line 46
    .line 47
    sget-object v0, Lcom/byazt/ev/x;->ve:Lcom/byazt/ev/x;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 50
    .line 51
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 52
    return v0
.end method

.method private rh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->gr:Lcom/byazt/hs/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/hs/i;->uj()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/byazt/u/ve;->gr:Lcom/byazt/hs/i;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private rl()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 2
    .line 3
    sget-object v1, Lcom/byazt/ev/x;->ve:Lcom/byazt/ev/x;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 8
    .line 9
    sget-object v1, Lcom/byazt/ev/x;->tt:Lcom/byazt/ev/x;

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

.method private sl()V
    .locals 7

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-wide v3, p0, Lcom/byazt/u/ve;->cu:J

    .line 13
    .line 14
    cmp-long v5, v3, v0

    .line 15
    .line 16
    if-lez v5, :cond_0

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    iget-wide v5, p0, Lcom/byazt/u/ve;->cu:J

    .line 23
    .line 24
    sub-long/2addr v3, v5

    .line 25
    invoke-virtual {v2, v3, v4}, Lcom/byazt/t/DownloadInfo;->increaseDownloadPrepareTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    :catchall_0
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/byazt/u/ve;->ve:Lcom/byazt/t/DownloadTask;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/byazt/t/DownloadTask;->getInterceptor()Lcom/byazt/c/IDownloadInterceptor;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-interface {v2}, Lcom/byazt/c/IDownloadInterceptor;->intercepte()Z

    .line 37
    .line 38
    .line 39
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/byazt/zz/a;->n()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_1
    move-exception v2

    .line 49
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-direct {p0}, Lcom/byazt/u/ve;->i()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Lcom/byazt/u/ve;->ve:Lcom/byazt/t/DownloadTask;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/byazt/t/DownloadTask;->getMonitorDepend()Lcom/byazt/c/gr;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 65
    .line 66
    new-instance v2, Lcom/byazt/m/BaseException;

    .line 67
    .line 68
    const/16 v3, 0x3eb

    .line 69
    .line 70
    const-string v4, "task status is invalid"

    .line 71
    .line 72
    invoke-direct {v2, v3, v4}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 76
    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const/4 v3, 0x0

    .line 85
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/zl/c;->c(Lcom/byazt/c/gr;Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;I)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/byazt/u/ve;->t()V

    .line 90
    .line 91
    .line 92
    iget-boolean v2, p0, Lcom/byazt/u/ve;->h:Z

    .line 93
    .line 94
    if-eqz v2, :cond_7

    .line 95
    .line 96
    iget v2, p0, Lcom/byazt/u/ve;->md:I

    .line 97
    .line 98
    if-lez v2, :cond_4

    .line 99
    .line 100
    iget v2, p0, Lcom/byazt/u/ve;->md:I

    .line 101
    .line 102
    add-int/lit8 v2, v2, -0x1

    .line 103
    .line 104
    iput v2, p0, Lcom/byazt/u/ve;->md:I

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    iget-object v4, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    .line 116
    .line 117
    .line 118
    move-result-wide v4

    .line 119
    cmp-long v6, v2, v4

    .line 120
    .line 121
    if-eqz v6, :cond_5

    .line 122
    .line 123
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getErrorBytesLog()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    .line 135
    .line 136
    new-instance v1, Lcom/byazt/m/a;

    .line 137
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v3, "current bytes is not equals to total bytes, bytes invalid retry status is : "

    .line 141
    .line 142
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v3, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getByteInvalidRetryStatus()Lcom/byazt/ev/tt;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    const/16 v3, 0x403

    .line 159
    .line 160
    invoke-direct {v1, v3, v2}, Lcom/byazt/m/a;-><init>(ILjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Lcom/byazt/zz/a;->c(Lcom/byazt/m/BaseException;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_5
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 168
    .line 169
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    .line 170
    .line 171
    .line 172
    move-result-wide v2

    .line 173
    cmp-long v4, v2, v0

    .line 174
    .line 175
    if-gtz v4, :cond_6

    .line 176
    .line 177
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 178
    .line 179
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getErrorBytesLog()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    .line 189
    .line 190
    new-instance v1, Lcom/byazt/m/a;

    .line 191
    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v3, "curBytes is 0, bytes invalid retry status is : "

    .line 195
    .line 196
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-object v3, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 200
    .line 201
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getByteInvalidRetryStatus()Lcom/byazt/ev/tt;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    const/16 v3, 0x402

    .line 213
    .line 214
    invoke-direct {v1, v3, v2}, Lcom/byazt/m/a;-><init>(ILjava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v1}, Lcom/byazt/zz/a;->c(Lcom/byazt/m/BaseException;)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_6
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 222
    .line 223
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    .line 224
    .line 225
    .line 226
    move-result-wide v2

    .line 227
    cmp-long v4, v2, v0

    .line 228
    .line 229
    if-gtz v4, :cond_3

    .line 230
    .line 231
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 232
    .line 233
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 234
    .line 235
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getErrorBytesLog()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-object v0, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    .line 243
    .line 244
    new-instance v1, Lcom/byazt/m/a;

    .line 245
    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    const-string v3, "TotalBytes is 0, bytes invalid retry status is : "

    .line 249
    .line 250
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object v3, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 254
    .line 255
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getByteInvalidRetryStatus()Lcom/byazt/ev/tt;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    const/16 v3, 0x414

    .line 267
    .line 268
    invoke-direct {v1, v3, v2}, Lcom/byazt/m/a;-><init>(ILjava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v1}, Lcom/byazt/zz/a;->c(Lcom/byazt/m/BaseException;)V

    .line 272
    .line 273
    .line 274
    :cond_7
    return-void
.end method

.method private t()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lcom/byazt/ev/x;->c:Lcom/byazt/ev/x;

    .line 4
    .line 5
    iput-object v0, v1, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 6
    .line 7
    iget-object v0, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->updateStartDownloadTime()V

    .line 10
    .line 11
    .line 12
    iget-object v0, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->resetRealStartDownloadTime()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    iget-object v0, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 22
    .line 23
    const-wide/16 v4, -0x1

    .line 24
    .line 25
    invoke-virtual {v0, v4, v5}, Lcom/byazt/t/DownloadInfo;->setFirstSpeedTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 26
    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    const/4 v5, 0x0

    .line 30
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->da()V
    :try_end_1
    .catch Lcom/byazt/m/c; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    move-object v6, v0

    .line 37
    :try_start_2
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v7, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v8, "file exist "

    .line 42
    .line 43
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6}, Lcom/byazt/m/c;->c()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-static {v0, v7}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6}, Lcom/byazt/m/c;->c()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, v1, Lcom/byazt/u/ve;->eo:Ljava/lang/String;

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    :goto_0
    iget-boolean v6, v1, Lcom/byazt/u/ve;->h:Z

    .line 68
    .line 69
    if-nez v6, :cond_0

    .line 70
    .line 71
    iget-object v6, v1, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/byazt/zz/a;->tt()V

    .line 74
    .line 75
    .line 76
    :cond_0
    iput-boolean v5, v1, Lcom/byazt/u/ve;->h:Z

    .line 77
    .line 78
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->qy()Z

    .line 79
    .line 80
    .line 81
    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 82
    if-eqz v6, :cond_1

    .line 83
    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->m()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_1
    :try_start_3
    iget-object v6, v1, Lcom/byazt/u/ve;->eo:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_3

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    iget-object v0, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isExpiredRedownload()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    iget-object v0, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/byazt/w/a;->uj(Lcom/byazt/t/DownloadInfo;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput-boolean v0, v1, Lcom/byazt/u/ve;->zb:Z

    .line 113
    .line 114
    :cond_2
    iget-boolean v0, v1, Lcom/byazt/u/ve;->zb:Z

    .line 115
    .line 116
    if-nez v0, :cond_3

    .line 117
    .line 118
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->u()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 119
    .line 120
    .line 121
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->m()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_3
    :goto_1
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->qy()Z

    .line 126
    .line 127
    .line 128
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->m()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_4
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->zb()V

    .line 136
    .line 137
    .line 138
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->md()V

    .line 139
    .line 140
    .line 141
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->eo()V

    .line 142
    .line 143
    .line 144
    iget-object v0, v1, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 145
    .line 146
    iget-object v8, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 147
    .line 148
    invoke-virtual {v8}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    invoke-interface {v0, v8}, Lcom/byazt/zz/da;->ve(I)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->or()V

    .line 157
    .line 158
    .line 159
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->yp()Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    if-eqz v8, :cond_5

    .line 164
    .line 165
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 166
    .line 167
    const-string v8, "downloadSegments return"

    .line 168
    .line 169
    invoke-static {v0, v8}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/byazt/m/c; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/byazt/m/BaseException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/byazt/m/i; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 170
    .line 171
    .line 172
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->my()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 173
    .line 174
    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->m()V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_5
    :try_start_7
    iget-object v8, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 180
    .line 181
    invoke-virtual {v8}, Lcom/byazt/t/DownloadInfo;->getConnectionUrl()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->qy()Z

    .line 186
    .line 187
    .line 188
    move-result v9
    :try_end_7
    .catch Lcom/byazt/m/c; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/byazt/m/BaseException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/byazt/m/i; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 189
    if-eqz v9, :cond_6

    .line 190
    .line 191
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->my()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 192
    .line 193
    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->m()V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :cond_6
    :try_start_9
    iget-boolean v9, v1, Lcom/byazt/u/ve;->i:Z

    .line 199
    .line 200
    if-eqz v9, :cond_7

    .line 201
    .line 202
    iget-object v9, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 203
    .line 204
    invoke-static {v9}, Lcom/byazt/w/a;->n(Lcom/byazt/t/DownloadInfo;)J

    .line 205
    .line 206
    .line 207
    move-result-wide v9

    .line 208
    goto :goto_2

    .line 209
    :cond_7
    const-wide/16 v9, 0x0

    .line 210
    .line 211
    :goto_2
    iget-object v11, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 212
    .line 213
    invoke-static {v11, v9, v10}, Lcom/byazt/u/ve;->c(Lcom/byazt/t/DownloadInfo;J)Lcom/byazt/t/tt;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    invoke-direct {v1, v11}, Lcom/byazt/u/ve;->c(Lcom/byazt/t/tt;)Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    iget-object v13, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 222
    .line 223
    invoke-static {v12, v13}, Lcom/byazt/w/a;->c(Ljava/util/List;Lcom/byazt/t/DownloadInfo;)V

    .line 224
    .line 225
    .line 226
    iget-object v13, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 227
    .line 228
    invoke-static {v12, v13}, Lcom/byazt/w/a;->tt(Ljava/util/List;Lcom/byazt/t/DownloadInfo;)V

    .line 229
    .line 230
    .line 231
    iget-object v13, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 232
    .line 233
    invoke-virtual {v13, v5}, Lcom/byazt/t/DownloadInfo;->setPreconnectLevel(I)V

    .line 234
    .line 235
    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 237
    .line 238
    .line 239
    move-result-wide v13
    :try_end_9
    .catch Lcom/byazt/m/c; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/byazt/m/BaseException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/byazt/m/i; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 240
    :try_start_a
    invoke-direct {v1, v8, v12, v9, v10}, Lcom/byazt/u/ve;->c(Ljava/lang/String;Ljava/util/List;J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 241
    .line 242
    .line 243
    :try_start_b
    iget-object v9, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 244
    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 246
    .line 247
    .line 248
    move-result-wide v15

    .line 249
    sub-long v6, v15, v13

    .line 250
    .line 251
    invoke-virtual {v9, v6, v7}, Lcom/byazt/t/DownloadInfo;->increaseAllConnectTime(J)V

    .line 252
    .line 253
    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->qy()Z

    .line 255
    .line 256
    .line 257
    move-result v6
    :try_end_b
    .catch Lcom/byazt/m/c; {:try_start_b .. :try_end_b} :catch_3
    .catch Lcom/byazt/m/BaseException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lcom/byazt/m/i; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 258
    if-eqz v6, :cond_8

    .line 259
    .line 260
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->my()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 261
    .line 262
    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->m()V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :cond_8
    :try_start_d
    iget-object v6, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 268
    .line 269
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    .line 270
    .line 271
    .line 272
    move-result-wide v6

    .line 273
    invoke-virtual {v1, v6, v7}, Lcom/byazt/u/ve;->c(J)V

    .line 274
    .line 275
    .line 276
    invoke-direct {v1, v6, v7, v0}, Lcom/byazt/u/ve;->c(JLjava/util/List;)I

    .line 277
    .line 278
    .line 279
    move-result v9

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->qy()Z

    .line 281
    .line 282
    .line 283
    move-result v10
    :try_end_d
    .catch Lcom/byazt/m/c; {:try_start_d .. :try_end_d} :catch_3
    .catch Lcom/byazt/m/BaseException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lcom/byazt/m/i; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 284
    if-eqz v10, :cond_9

    .line 285
    .line 286
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->my()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 287
    .line 288
    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->m()V

    .line 290
    .line 291
    .line 292
    return-void

    .line 293
    :cond_9
    if-lez v9, :cond_12

    .line 294
    .line 295
    if-ne v9, v4, :cond_a

    .line 296
    .line 297
    const/4 v10, 0x1

    .line 298
    goto :goto_3

    .line 299
    :cond_a
    const/4 v10, 0x0

    .line 300
    :goto_3
    :try_start_f
    iput-boolean v10, v1, Lcom/byazt/u/ve;->x:Z

    .line 301
    .line 302
    if-eqz v10, :cond_d

    .line 303
    .line 304
    iget-object v0, v1, Lcom/byazt/u/ve;->gr:Lcom/byazt/hs/i;
    :try_end_f
    .catch Lcom/byazt/m/c; {:try_start_f .. :try_end_f} :catch_3
    .catch Lcom/byazt/m/BaseException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lcom/byazt/m/i; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 305
    .line 306
    if-nez v0, :cond_b

    .line 307
    .line 308
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 309
    .line 310
    .line 311
    move-result-wide v13

    .line 312
    invoke-direct {v1, v8, v12}, Lcom/byazt/u/ve;->c(Ljava/lang/String;Ljava/util/List;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 313
    .line 314
    .line 315
    :try_start_11
    iget-object v0, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 316
    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 318
    .line 319
    .line 320
    move-result-wide v6

    .line 321
    sub-long/2addr v6, v13

    .line 322
    invoke-virtual {v0, v6, v7}, Lcom/byazt/t/DownloadInfo;->increaseAllConnectTime(J)V

    .line 323
    .line 324
    .line 325
    goto :goto_4

    .line 326
    :catchall_0
    move-exception v0

    .line 327
    iget-object v6, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 328
    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 330
    .line 331
    .line 332
    move-result-wide v7

    .line 333
    sub-long/2addr v7, v13

    .line 334
    invoke-virtual {v6, v7, v8}, Lcom/byazt/t/DownloadInfo;->increaseAllConnectTime(J)V

    .line 335
    .line 336
    .line 337
    throw v0

    .line 338
    :cond_b
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->qy()Z

    .line 339
    .line 340
    .line 341
    move-result v0
    :try_end_11
    .catch Lcom/byazt/m/c; {:try_start_11 .. :try_end_11} :catch_3
    .catch Lcom/byazt/m/BaseException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Lcom/byazt/m/i; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 342
    if-eqz v0, :cond_c

    .line 343
    .line 344
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->my()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 345
    .line 346
    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->m()V

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :cond_c
    :try_start_13
    iget-object v0, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 352
    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 354
    .line 355
    .line 356
    move-result-wide v6

    .line 357
    sub-long/2addr v6, v2

    .line 358
    invoke-virtual {v0, v6, v7}, Lcom/byazt/t/DownloadInfo;->setFirstSpeedTime(J)V

    .line 359
    .line 360
    .line 361
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->z()V

    .line 362
    .line 363
    .line 364
    iget-object v0, v1, Lcom/byazt/u/ve;->gr:Lcom/byazt/hs/i;

    .line 365
    .line 366
    invoke-direct {v1, v11, v8, v0}, Lcom/byazt/u/ve;->c(Lcom/byazt/t/tt;Ljava/lang/String;Lcom/byazt/hs/i;)V

    .line 367
    .line 368
    .line 369
    goto :goto_5

    .line 370
    :cond_d
    iget-object v8, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 371
    .line 372
    invoke-virtual {v8}, Lcom/byazt/t/DownloadInfo;->isNeedReuseFirstConnection()Z

    .line 373
    .line 374
    .line 375
    move-result v8

    .line 376
    if-nez v8, :cond_e

    .line 377
    .line 378
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->rh()V

    .line 379
    .line 380
    .line 381
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->qy()Z

    .line 382
    .line 383
    .line 384
    move-result v8
    :try_end_13
    .catch Lcom/byazt/m/c; {:try_start_13 .. :try_end_13} :catch_3
    .catch Lcom/byazt/m/BaseException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Lcom/byazt/m/i; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 385
    if-eqz v8, :cond_f

    .line 386
    .line 387
    :try_start_14
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->my()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 388
    .line 389
    .line 390
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->m()V

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :cond_f
    :try_start_15
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->z()V

    .line 395
    .line 396
    .line 397
    iget-object v8, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 398
    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 400
    .line 401
    .line 402
    move-result-wide v10

    .line 403
    sub-long/2addr v10, v2

    .line 404
    invoke-virtual {v8, v10, v11}, Lcom/byazt/t/DownloadInfo;->setFirstSpeedTime(J)V

    .line 405
    .line 406
    .line 407
    iget-boolean v8, v1, Lcom/byazt/u/ve;->i:Z

    .line 408
    .line 409
    if-eqz v8, :cond_10

    .line 410
    .line 411
    invoke-direct {v1, v9, v0}, Lcom/byazt/u/ve;->c(ILjava/util/List;)V

    .line 412
    .line 413
    .line 414
    goto :goto_5

    .line 415
    :cond_10
    invoke-direct {v1, v6, v7, v9}, Lcom/byazt/u/ve;->c(JI)V
    :try_end_15
    .catch Lcom/byazt/m/c; {:try_start_15 .. :try_end_15} :catch_3
    .catch Lcom/byazt/m/BaseException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Lcom/byazt/m/i; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 416
    .line 417
    .line 418
    :cond_11
    :goto_5
    :try_start_16
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->my()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 419
    .line 420
    .line 421
    goto/16 :goto_8

    .line 422
    .line 423
    :cond_12
    :try_start_17
    new-instance v0, Lcom/byazt/m/BaseException;

    .line 424
    .line 425
    const-string v6, "chunkCount is 0"

    .line 426
    .line 427
    const/16 v7, 0x408

    .line 428
    .line 429
    invoke-direct {v0, v7, v6}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 430
    .line 431
    .line 432
    throw v0

    .line 433
    :catchall_1
    move-exception v0

    .line 434
    move-object v6, v0

    .line 435
    iget-object v0, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 436
    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 438
    .line 439
    .line 440
    move-result-wide v7

    .line 441
    sub-long/2addr v7, v13

    .line 442
    invoke-virtual {v0, v7, v8}, Lcom/byazt/t/DownloadInfo;->increaseAllConnectTime(J)V

    .line 443
    .line 444
    .line 445
    throw v6
    :try_end_17
    .catch Lcom/byazt/m/c; {:try_start_17 .. :try_end_17} :catch_3
    .catch Lcom/byazt/m/BaseException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Lcom/byazt/m/i; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 446
    :catchall_2
    move-exception v0

    .line 447
    :try_start_18
    sget-object v2, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 448
    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    const-string v4, "downloadInner: throwable =  "

    .line 452
    .line 453
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    invoke-static {v2, v3}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    iget-object v2, v1, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 467
    .line 468
    sget-object v3, Lcom/byazt/ev/x;->tt:Lcom/byazt/ev/x;

    .line 469
    .line 470
    if-eq v2, v3, :cond_11

    .line 471
    .line 472
    new-instance v2, Lcom/byazt/m/BaseException;

    .line 473
    .line 474
    const/16 v3, 0x415

    .line 475
    .line 476
    invoke-direct {v2, v3, v0}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/Throwable;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1, v2}, Lcom/byazt/u/ve;->tt(Lcom/byazt/m/BaseException;)V

    .line 480
    .line 481
    .line 482
    goto :goto_5

    .line 483
    :catch_1
    move-exception v0

    .line 484
    sget-object v6, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 485
    .line 486
    new-instance v7, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    const-string v8, "downloadInner: retry throwable for "

    .line 489
    .line 490
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0}, Lcom/byazt/m/i;->c()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v8

    .line 497
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v7

    .line 504
    invoke-static {v6, v7}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    iget-object v6, v1, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 508
    .line 509
    sget-object v7, Lcom/byazt/ev/x;->tt:Lcom/byazt/ev/x;

    .line 510
    .line 511
    if-eq v6, v7, :cond_11

    .line 512
    .line 513
    iget-object v6, v1, Lcom/byazt/u/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 514
    .line 515
    const/4 v7, 0x5

    .line 516
    if-eqz v6, :cond_14

    .line 517
    .line 518
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 519
    .line 520
    .line 521
    move-result v6

    .line 522
    if-lez v6, :cond_14

    .line 523
    .line 524
    iget-object v0, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 525
    .line 526
    iget-object v6, v1, Lcom/byazt/u/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 527
    .line 528
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 529
    .line 530
    .line 531
    move-result v6

    .line 532
    invoke-virtual {v0, v6}, Lcom/byazt/t/DownloadInfo;->updateCurRetryTime(I)V

    .line 533
    .line 534
    .line 535
    iget-object v0, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 536
    .line 537
    invoke-virtual {v0, v7}, Lcom/byazt/t/DownloadInfo;->setStatus(I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 538
    .line 539
    .line 540
    :cond_13
    :goto_6
    :try_start_19
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->my()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 541
    .line 542
    .line 543
    goto/16 :goto_1

    .line 544
    .line 545
    :cond_14
    :try_start_1a
    iget-object v6, v1, Lcom/byazt/u/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 546
    .line 547
    if-eqz v6, :cond_16

    .line 548
    .line 549
    iget-object v6, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 550
    .line 551
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->trySwitchToNextBackupUrl()Z

    .line 552
    .line 553
    .line 554
    move-result v6

    .line 555
    if-eqz v6, :cond_15

    .line 556
    .line 557
    iget-object v0, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 558
    .line 559
    invoke-virtual {v0, v7}, Lcom/byazt/t/DownloadInfo;->setStatus(I)V

    .line 560
    .line 561
    .line 562
    iget-object v0, v1, Lcom/byazt/u/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 563
    .line 564
    iget-object v6, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 565
    .line 566
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getRetryCount()I

    .line 567
    .line 568
    .line 569
    move-result v6

    .line 570
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 571
    .line 572
    .line 573
    iget-object v0, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 574
    .line 575
    iget-object v6, v1, Lcom/byazt/u/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 576
    .line 577
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 578
    .line 579
    .line 580
    move-result v6

    .line 581
    invoke-virtual {v0, v6}, Lcom/byazt/t/DownloadInfo;->updateCurRetryTime(I)V

    .line 582
    .line 583
    .line 584
    goto :goto_6

    .line 585
    :cond_15
    new-instance v2, Lcom/byazt/m/BaseException;

    .line 586
    .line 587
    const-string v3, "retry for Throwable, but retry Time %s all used, last error is %s"

    .line 588
    .line 589
    const/4 v6, 0x2

    .line 590
    new-array v6, v6, [Ljava/lang/Object;

    .line 591
    .line 592
    iget-object v7, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 593
    .line 594
    invoke-virtual {v7}, Lcom/byazt/t/DownloadInfo;->getRetryCount()I

    .line 595
    .line 596
    .line 597
    move-result v7

    .line 598
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v7

    .line 602
    aput-object v7, v6, v5

    .line 603
    .line 604
    invoke-virtual {v0}, Lcom/byazt/m/i;->c()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    aput-object v0, v6, v4

    .line 609
    .line 610
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    const/16 v3, 0x3fa

    .line 615
    .line 616
    invoke-direct {v2, v3, v0}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v1, v2}, Lcom/byazt/u/ve;->tt(Lcom/byazt/m/BaseException;)V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_5

    .line 623
    .line 624
    :cond_16
    new-instance v2, Lcom/byazt/m/BaseException;

    .line 625
    .line 626
    new-instance v3, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    const-string v4, "retry for Throwable, but retain retry time is NULL, last error is"

    .line 629
    .line 630
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v0}, Lcom/byazt/m/i;->c()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    const/16 v3, 0x413

    .line 645
    .line 646
    invoke-direct {v2, v3, v0}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v1, v2}, Lcom/byazt/u/ve;->tt(Lcom/byazt/m/BaseException;)V

    .line 650
    .line 651
    .line 652
    goto/16 :goto_5

    .line 653
    .line 654
    :catch_2
    move-exception v0

    .line 655
    sget-object v6, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 656
    .line 657
    new-instance v7, Ljava/lang/StringBuilder;

    .line 658
    .line 659
    const-string v8, "downloadInner: baseException = "

    .line 660
    .line 661
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v7

    .line 671
    invoke-static {v6, v7}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    iget-object v6, v1, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 675
    .line 676
    sget-object v7, Lcom/byazt/ev/x;->tt:Lcom/byazt/ev/x;

    .line 677
    .line 678
    if-eq v6, v7, :cond_11

    .line 679
    .line 680
    invoke-virtual {v0}, Lcom/byazt/m/BaseException;->getErrorCode()I

    .line 681
    .line 682
    .line 683
    move-result v6

    .line 684
    const/16 v7, 0x401

    .line 685
    .line 686
    if-eq v6, v7, :cond_1a

    .line 687
    .line 688
    invoke-virtual {v0}, Lcom/byazt/m/BaseException;->getErrorCode()I

    .line 689
    .line 690
    .line 691
    move-result v6

    .line 692
    const/16 v7, 0x3f1

    .line 693
    .line 694
    if-ne v6, v7, :cond_17

    .line 695
    .line 696
    goto :goto_7

    .line 697
    :cond_17
    invoke-virtual {v1, v0}, Lcom/byazt/u/ve;->c(Lcom/byazt/m/BaseException;)Z

    .line 698
    .line 699
    .line 700
    move-result v6

    .line 701
    if-eqz v6, :cond_19

    .line 702
    .line 703
    invoke-static {v0}, Lcom/byazt/w/a;->c(Lcom/byazt/m/BaseException;)Z

    .line 704
    .line 705
    .line 706
    move-result v6

    .line 707
    if-eqz v6, :cond_18

    .line 708
    .line 709
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->cu()V

    .line 710
    .line 711
    .line 712
    :cond_18
    const-wide/16 v6, 0x0

    .line 713
    .line 714
    invoke-virtual {v1, v0, v6, v7}, Lcom/byazt/u/ve;->c(Lcom/byazt/m/BaseException;J)Lcom/byazt/m/x;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    sget-object v6, Lcom/byazt/m/x;->c:Lcom/byazt/m/x;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 719
    .line 720
    if-ne v0, v6, :cond_13

    .line 721
    .line 722
    :try_start_1b
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->my()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 723
    .line 724
    .line 725
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->m()V

    .line 726
    .line 727
    .line 728
    return-void

    .line 729
    :cond_19
    :try_start_1c
    invoke-virtual {v1, v0}, Lcom/byazt/u/ve;->tt(Lcom/byazt/m/BaseException;)V

    .line 730
    .line 731
    .line 732
    goto/16 :goto_5

    .line 733
    .line 734
    :cond_1a
    :goto_7
    sget-object v0, Lcom/byazt/ev/x;->n:Lcom/byazt/ev/x;

    .line 735
    .line 736
    iput-object v0, v1, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 737
    .line 738
    :try_start_1d
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->my()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    .line 739
    .line 740
    .line 741
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->m()V

    .line 742
    .line 743
    .line 744
    return-void

    .line 745
    :catch_3
    :try_start_1e
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->u()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    .line 746
    .line 747
    .line 748
    goto/16 :goto_5

    .line 749
    .line 750
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->m()V

    .line 751
    .line 752
    .line 753
    return-void

    .line 754
    :catchall_3
    move-exception v0

    .line 755
    :try_start_1f
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->my()V

    .line 756
    .line 757
    .line 758
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    .line 759
    :catchall_4
    move-exception v0

    .line 760
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->m()V

    .line 761
    .line 762
    .line 763
    throw v0
.end method

.method private tt(Ljava/lang/String;Ljava/util/List;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;,
            Lcom/byazt/m/i;
        }
    .end annotation

    .line 11
    iget-object p3, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p3}, Lcom/byazt/t/DownloadInfo;->getChunkCount()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    .line 12
    invoke-static {}, Lcom/byazt/no/c;->c()Lcom/byazt/no/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/byazt/no/c;->c(Ljava/lang/String;Ljava/util/List;)Lcom/byazt/no/ve;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 13
    iput-object p3, p0, Lcom/byazt/u/ve;->zm:Lcom/byazt/hs/sp;

    .line 14
    iget-object p3, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p3, p4}, Lcom/byazt/t/DownloadInfo;->setPreconnectLevel(I)V

    .line 15
    :cond_0
    iget-object p3, p0, Lcom/byazt/u/ve;->zm:Lcom/byazt/hs/sp;

    if-nez p3, :cond_2

    iget-boolean p3, p0, Lcom/byazt/u/ve;->d:Z

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p3}, Lcom/byazt/t/DownloadInfo;->isHeadConnectionAvailable()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 16
    :try_start_0
    iget-object p3, p0, Lcom/byazt/u/ve;->qp:Lcom/byazt/k/c;

    const-string v0, "net_lib_strategy"

    .line 17
    invoke-virtual {p3, v0}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result p3

    iget-object v0, p0, Lcom/byazt/u/ve;->qp:Lcom/byazt/k/c;

    const-string v1, "monitor_download_connect"

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 19
    invoke-static {p1, p2, p3, p4, v0}, Lcom/byazt/zz/ve;->c(Ljava/lang/String;Ljava/util/List;IZLcom/byazt/t/DownloadInfo;)Lcom/byazt/hs/sp;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/u/ve;->zm:Lcom/byazt/hs/sp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 20
    iget-object p2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-static {p1}, Lcom/byazt/w/a;->da(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/byazt/t/DownloadInfo;->setHeadConnectionException(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private u()V
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "finishWithFileExist"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "fix_end_for_file_exist_error"

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->tt(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/u/ve;->eo:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    sget-object v0, Lcom/byazt/ev/x;->n:Lcom/byazt/ev/x;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    sget-object v0, Lcom/byazt/ev/x;->x:Lcom/byazt/ev/x;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/byazt/u/ve;->eo:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getTargetFilePath()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    sget-object v0, Lcom/byazt/ev/x;->n:Lcom/byazt/ev/x;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    sget-object v0, Lcom/byazt/ev/x;->x:Lcom/byazt/ev/x;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 67
    .line 68
    return-void
.end method

.method private uj(Lcom/byazt/m/BaseException;)Z
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/byazt/u/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/byazt/m/BaseException;->getErrorCode()I

    move-result v0

    const/16 v3, 0x42e

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->trySwitchToNextBackupUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/byazt/u/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getBackUpUrlRetryCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 7
    iget-object p1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    iget-object v0, p0, Lcom/byazt/u/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/t/DownloadInfo;->updateCurRetryTime(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/byazt/m/BaseException;->getErrorCode()I

    move-result v0

    const/16 v3, 0x3f3

    if-eq v0, v3, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->canReplaceHttpForRetry()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    iget-object p1, p0, Lcom/byazt/u/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getRetryCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 11
    iget-object p1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    iget-object v0, p0, Lcom/byazt/u/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/t/DownloadInfo;->updateCurRetryTime(I)V

    .line 12
    iget-object p1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1, v1}, Lcom/byazt/t/DownloadInfo;->setHttpsToHttpRetryUsed(Z)V

    :goto_0
    const/4 v1, 0x0

    .line 13
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    sget-object v0, Lcom/byazt/ev/x;->a:Lcom/byazt/ev/x;

    if-eq p1, v0, :cond_4

    if-eqz v1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    iget-object v0, p0, Lcom/byazt/u/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/t/DownloadInfo;->updateCurRetryTime(I)V

    :cond_4
    return v2

    .line 15
    :cond_5
    new-instance v0, Lcom/byazt/m/BaseException;

    invoke-virtual {p1}, Lcom/byazt/m/BaseException;->getErrorCode()I

    move-result v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/byazt/u/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getRetryCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/byazt/m/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "retry for exception, but current retry time : %s , retry Time %s all used, last error is %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/byazt/u/ve;->tt(Lcom/byazt/m/BaseException;)V

    return v1

    .line 16
    :cond_6
    new-instance v0, Lcom/byazt/m/BaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "retry for exception, but retain retry time is null, last error is :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/m/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x413

    invoke-direct {v0, v2, p1}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/byazt/u/ve;->tt(Lcom/byazt/m/BaseException;)V

    return v1
.end method

.method private x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getRetryCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getCurRetryTime()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sub-int/2addr v0, v1

    .line 17
    if-gez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/byazt/u/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/byazt/u/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private yp()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isExpiredRedownload()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getChunkCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v0, v2, :cond_8

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getThrottleNetSpeed()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    const-wide/16 v5, 0x0

    .line 27
    .line 28
    cmp-long v0, v3, v5

    .line 29
    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v3, "segment_config"

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Lcom/byazt/k/c;->uj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v3, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-interface {v3, v4}, Lcom/byazt/zz/da;->yp(I)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iget-object v4, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    .line 64
    .line 65
    .line 66
    move-result-wide v7

    .line 67
    cmp-long v4, v7, v5

    .line 68
    .line 69
    if-lez v4, :cond_4

    .line 70
    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    if-nez v0, :cond_4

    .line 81
    .line 82
    new-instance v0, Lorg/json/JSONObject;

    .line 83
    .line 84
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    :goto_0
    return v1

    .line 89
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 90
    .line 91
    return v1

    .line 92
    :cond_5
    invoke-static {v0}, Lcom/byazt/h/yp;->c(Lorg/json/JSONObject;)Lcom/byazt/h/yp;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    new-instance v1, Lcom/byazt/h/sl;

    .line 97
    .line 98
    iget-object v4, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 99
    .line 100
    invoke-direct {v1, v4, v0, p0}, Lcom/byazt/h/sl;-><init>(Lcom/byazt/t/DownloadInfo;Lcom/byazt/h/yp;Lcom/byazt/u/a;)V

    .line 101
    .line 102
    .line 103
    iput-object v1, p0, Lcom/byazt/u/ve;->pf:Lcom/byazt/h/sl;

    .line 104
    .line 105
    invoke-direct {p0}, Lcom/byazt/u/ve;->qy()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 112
    .line 113
    const-string v1, "downloadSegments: is stopped by user"

    .line 114
    .line 115
    invoke-static {v0, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 119
    .line 120
    sget-object v1, Lcom/byazt/ev/x;->ve:Lcom/byazt/ev/x;

    .line 121
    .line 122
    if-ne v0, v1, :cond_6

    .line 123
    .line 124
    iget-object v0, p0, Lcom/byazt/u/ve;->pf:Lcom/byazt/h/sl;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/byazt/h/sl;->c()V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_6
    iget-object v0, p0, Lcom/byazt/u/ve;->pf:Lcom/byazt/h/sl;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/byazt/h/sl;->tt()V

    .line 133
    .line 134
    .line 135
    :goto_2
    return v2

    .line 136
    :cond_7
    iget-object v0, p0, Lcom/byazt/u/ve;->pf:Lcom/byazt/h/sl;

    .line 137
    .line 138
    invoke-virtual {v0, v3}, Lcom/byazt/h/sl;->c(Ljava/util/List;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    return v0

    .line 143
    :cond_8
    :goto_3
    return v1
.end method

.method private yv()V
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/ev/x;->c:Lcom/byazt/ev/x;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 4
    .line 5
    return-void
.end method

.method private z()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "reset_retain_retry_times"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lcom/byazt/u/ve;->nb:I

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    if-ge v0, v2, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/u/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->isBackUpUrlUsed()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getBackUpUrlRetryCount()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getRetryCount()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 50
    .line 51
    .line 52
    iget v0, p0, Lcom/byazt/u/ve;->nb:I

    .line 53
    .line 54
    add-int/2addr v0, v1

    .line 55
    iput v0, p0, Lcom/byazt/u/ve;->nb:I

    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method private zb()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_9

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_8

    .line 24
    .line 25
    new-instance v0, Ljava/io/File;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_7

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_7

    .line 53
    .line 54
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {v2}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "opt_mkdir_failed"

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-virtual {v2, v3, v4}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const/16 v3, 0x406

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    const-string v6, "download savePath directory can not created:"

    .line 75
    .line 76
    if-ne v2, v5, :cond_3

    .line 77
    .line 78
    :goto_0
    if-nez v1, :cond_0

    .line 79
    .line 80
    add-int/lit8 v2, v4, 0x1

    .line 81
    .line 82
    const/4 v5, 0x3

    .line 83
    if-ge v4, v5, :cond_0

    .line 84
    .line 85
    const-wide/16 v4, 0xa

    .line 86
    .line 87
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    move v4, v2

    .line 95
    goto :goto_0

    .line 96
    :catch_0
    nop

    .line 97
    :cond_0
    if-nez v1, :cond_2

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_2

    .line 104
    .line 105
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/byazt/w/a;->uj(Ljava/lang/String;)J

    .line 112
    .line 113
    .line 114
    move-result-wide v0

    .line 115
    const-wide/16 v4, 0x4000

    .line 116
    .line 117
    cmp-long v2, v0, v4

    .line 118
    .line 119
    if-gez v2, :cond_1

    .line 120
    .line 121
    new-instance v0, Lcom/byazt/m/BaseException;

    .line 122
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    const/16 v2, 0x3ee

    .line 142
    .line 143
    invoke-direct {v0, v2, v1}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_1
    new-instance v0, Lcom/byazt/m/BaseException;

    .line 148
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 155
    .line 156
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-direct {v0, v3, v1}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :cond_2
    return-void

    .line 172
    :cond_3
    new-instance v0, Lcom/byazt/m/BaseException;

    .line 173
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 180
    .line 181
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-direct {v0, v3, v1}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v0

    .line 196
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-nez v1, :cond_7

    .line 201
    .line 202
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 203
    .line 204
    invoke-static {v1}, Lcom/byazt/w/uj;->tt(Lcom/byazt/t/DownloadInfo;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    const/16 v2, 0x407

    .line 209
    .line 210
    if-eqz v1, :cond_6

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_7

    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_5

    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_5
    new-instance v0, Lcom/byazt/m/BaseException;

    .line 229
    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v3, "download savePath is not directory:path="

    .line 233
    .line 234
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    iget-object v3, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 238
    .line 239
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-direct {v0, v2, v1}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v0

    .line 254
    :cond_6
    new-instance v0, Lcom/byazt/m/BaseException;

    .line 255
    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string v3, "download savePath is not a directory:"

    .line 259
    .line 260
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object v3, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 264
    .line 265
    invoke-virtual {v3}, Lcom/byazt/t/DownloadInfo;->getSavePath()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-direct {v0, v2, v1}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw v0

    .line 280
    :cond_7
    :goto_1
    return-void

    .line 281
    :cond_8
    new-instance v0, Lcom/byazt/m/BaseException;

    .line 282
    .line 283
    const/16 v1, 0x405

    .line 284
    .line 285
    const-string v2, "download name can not be empty"

    .line 286
    .line 287
    invoke-direct {v0, v1, v2}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw v0

    .line 291
    :cond_9
    new-instance v0, Lcom/byazt/m/BaseException;

    .line 292
    .line 293
    const/16 v1, 0x404

    .line 294
    .line 295
    const-string v2, "download savePath can not be empty"

    .line 296
    .line 297
    invoke-direct {v0, v1, v2}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw v0
.end method

.method private zm()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isChunked()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/byazt/t/DownloadInfo;->setTotalBytes(J)V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "checkCompletedByteValid: downloadInfo.getCurBytes() = "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, ",  downloadInfo.getTotalBytes() = "

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    const-wide/16 v2, 0x0

    .line 64
    .line 65
    cmp-long v4, v0, v2

    .line 66
    .line 67
    if-lez v4, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isIgnoreDataVerify()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_1

    .line 76
    .line 77
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    cmp-long v4, v0, v2

    .line 84
    .line 85
    if-lez v4, :cond_2

    .line 86
    .line 87
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    cmp-long v4, v0, v2

    .line 100
    .line 101
    if-eqz v4, :cond_1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, 0x1

    .line 105
    return v0

    .line 106
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 107
    .line 108
    sget-object v1, Lcom/byazt/ev/tt;->tt:Lcom/byazt/ev/tt;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadInfo;->setByteInvalidRetryStatus(Lcom/byazt/ev/tt;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->reset()V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 121
    .line 122
    invoke-interface {v0, v1}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/DownloadInfo;)Z

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 126
    .line 127
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-interface {v0, v1}, Lcom/byazt/zz/da;->uj(I)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    .line 137
    .line 138
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    invoke-interface {v0, v1}, Lcom/byazt/zz/da;->u(I)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 148
    .line 149
    invoke-static {v0}, Lcom/byazt/w/a;->c(Lcom/byazt/t/DownloadInfo;)V

    .line 150
    .line 151
    .line 152
    const/4 v0, 0x0

    .line 153
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/byazt/u/ve;->cu:J

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/zz/a;->c()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public c(Lcom/byazt/m/BaseException;J)Lcom/byazt/m/x;
    .locals 9

    .line 298
    iput-object p1, p0, Lcom/byazt/u/ve;->gu:Lcom/byazt/m/BaseException;

    .line 299
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    neg-long p2, p2

    invoke-virtual {v0, p2, p3}, Lcom/byazt/t/DownloadInfo;->increaseCurBytes(J)V

    .line 300
    iget-object p2, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    iget-object p3, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-interface {p2, p3}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/DownloadInfo;)Z

    .line 301
    invoke-direct {p0}, Lcom/byazt/u/ve;->rl()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 302
    sget-object p1, Lcom/byazt/m/x;->c:Lcom/byazt/m/x;

    return-object p1

    :cond_0
    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    .line 303
    invoke-virtual {p1}, Lcom/byazt/m/BaseException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x417

    if-ne v0, v1, :cond_3

    .line 304
    iget-object v0, p0, Lcom/byazt/u/ve;->yv:Lcom/byazt/c/gu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->isForbiddenRetryed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 305
    :cond_1
    new-instance v0, Lcom/byazt/u/ve$1;

    invoke-direct {v0, p0}, Lcom/byazt/u/ve$1;-><init>(Lcom/byazt/u/ve;)V

    .line 306
    iget-object v1, p0, Lcom/byazt/u/ve;->yv:Lcom/byazt/c/gu;

    invoke-interface {v1, v0}, Lcom/byazt/c/gu;->c(Lcom/byazt/c/qy;)Z

    move-result v1

    .line 307
    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->setForbiddenRetryed()V

    if-eqz v1, :cond_d

    .line 308
    invoke-virtual {v0}, Lcom/byazt/c/tt;->c()Z

    move-result v0

    if-nez v0, :cond_9

    .line 309
    invoke-direct {p0}, Lcom/byazt/u/ve;->qp()V

    .line 310
    iget-object p1, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    invoke-virtual {p1}, Lcom/byazt/zz/a;->x()V

    .line 311
    sget-object p1, Lcom/byazt/ev/x;->sp:Lcom/byazt/ev/x;

    iput-object p1, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 312
    sget-object p1, Lcom/byazt/m/x;->c:Lcom/byazt/m/x;

    return-object p1

    .line 313
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/byazt/u/ve;->uj(Lcom/byazt/m/BaseException;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 314
    sget-object p1, Lcom/byazt/m/x;->c:Lcom/byazt/m/x;

    return-object p1

    .line 315
    :cond_3
    invoke-static {p1}, Lcom/byazt/w/a;->x(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 316
    iget-object v0, p0, Lcom/byazt/u/ve;->p:Lcom/byazt/c/rh;

    if-nez v0, :cond_4

    .line 317
    invoke-virtual {p0, p1}, Lcom/byazt/u/ve;->tt(Lcom/byazt/m/BaseException;)V

    .line 318
    sget-object p1, Lcom/byazt/m/x;->c:Lcom/byazt/m/x;

    return-object p1

    .line 319
    :cond_4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 320
    new-instance v6, Lcom/byazt/u/ve$2;

    invoke-direct {v6, p0, v0}, Lcom/byazt/u/ve$2;-><init>(Lcom/byazt/u/ve;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 321
    instance-of v1, p1, Lcom/byazt/m/uj;

    if-eqz v1, :cond_5

    .line 322
    move-object v1, p1

    check-cast v1, Lcom/byazt/m/uj;

    invoke-virtual {v1}, Lcom/byazt/m/uj;->c()J

    move-result-wide v2

    .line 323
    invoke-virtual {v1}, Lcom/byazt/m/uj;->tt()J

    move-result-wide v4

    goto :goto_1

    .line 324
    :cond_5
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    move-wide v7, v1

    move-wide v2, v3

    move-wide v4, v7

    .line 325
    :goto_1
    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/byazt/u/ve;->p:Lcom/byazt/c/rh;

    invoke-interface/range {v1 .. v6}, Lcom/byazt/c/rh;->c(JJLcom/byazt/c/nu;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 327
    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v1

    const-string v2, "not_delete_when_clean_space"

    invoke-virtual {v1, v2, p3}, Lcom/byazt/k/c;->tt(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 328
    invoke-direct {p0}, Lcom/byazt/u/ve;->zm()Z

    .line 329
    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_8

    .line 330
    iget-object p1, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    sget-object p2, Lcom/byazt/ev/x;->sp:Lcom/byazt/ev/x;

    if-eq p1, p2, :cond_7

    .line 331
    iput-object p2, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 332
    invoke-direct {p0}, Lcom/byazt/u/ve;->qp()V

    .line 333
    iget-object p1, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    invoke-virtual {p1}, Lcom/byazt/zz/a;->x()V

    .line 334
    :cond_7
    sget-object p1, Lcom/byazt/m/x;->c:Lcom/byazt/m/x;

    monitor-exit p0

    return-object p1

    .line 335
    :cond_8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    invoke-direct {p0, p1}, Lcom/byazt/u/ve;->uj(Lcom/byazt/m/BaseException;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 337
    sget-object p1, Lcom/byazt/m/x;->c:Lcom/byazt/m/x;

    return-object p1

    :cond_9
    const/4 v0, 0x1

    goto :goto_2

    .line 338
    :cond_a
    :try_start_1
    iget-object p2, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    sget-object p3, Lcom/byazt/ev/x;->sp:Lcom/byazt/ev/x;

    if-ne p2, p3, :cond_b

    .line 339
    sget-object p1, Lcom/byazt/m/x;->c:Lcom/byazt/m/x;

    monitor-exit p0

    return-object p1

    .line 340
    :cond_b
    invoke-virtual {p0, p1}, Lcom/byazt/u/ve;->tt(Lcom/byazt/m/BaseException;)V

    .line 341
    sget-object p1, Lcom/byazt/m/x;->c:Lcom/byazt/m/x;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 342
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 343
    :cond_c
    invoke-direct {p0, p1}, Lcom/byazt/u/ve;->uj(Lcom/byazt/m/BaseException;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 344
    sget-object p1, Lcom/byazt/m/x;->c:Lcom/byazt/m/x;

    return-object p1

    :cond_d
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_e

    .line 345
    invoke-direct {p0}, Lcom/byazt/u/ve;->pf()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 346
    invoke-direct {p0}, Lcom/byazt/u/ve;->qp()V

    .line 347
    :cond_e
    iget-object v0, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    iget-object v1, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    sget-object v2, Lcom/byazt/ev/x;->a:Lcom/byazt/ev/x;

    if-ne v1, v2, :cond_f

    goto :goto_3

    :cond_f
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {v0, p1, p2}, Lcom/byazt/zz/a;->c(Lcom/byazt/m/BaseException;Z)V

    .line 348
    iget-object p1, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    if-ne p1, v2, :cond_10

    sget-object p1, Lcom/byazt/m/x;->c:Lcom/byazt/m/x;

    return-object p1

    :cond_10
    sget-object p1, Lcom/byazt/m/x;->tt:Lcom/byazt/m/x;

    return-object p1
.end method

.method public c(Lcom/byazt/t/tt;Lcom/byazt/m/BaseException;J)Lcom/byazt/m/x;
    .locals 2

    .line 282
    invoke-direct {p0}, Lcom/byazt/u/ve;->rl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    sget-object p1, Lcom/byazt/m/x;->c:Lcom/byazt/m/x;

    return-object p1

    :cond_0
    if-eqz p2, :cond_2

    .line 284
    invoke-virtual {p2}, Lcom/byazt/m/BaseException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_1

    invoke-static {p2}, Lcom/byazt/w/a;->x(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/byazt/u/ve;->c(Lcom/byazt/m/BaseException;J)Lcom/byazt/m/x;

    move-result-object p1

    return-object p1

    .line 286
    :cond_2
    iput-object p2, p0, Lcom/byazt/u/ve;->gu:Lcom/byazt/m/BaseException;

    .line 287
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    neg-long p3, p3

    invoke-virtual {v0, p3, p4}, Lcom/byazt/t/DownloadInfo;->increaseCurBytes(J)V

    .line 288
    iget-object p3, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    iget-object p4, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-interface {p3, p4}, Lcom/byazt/zz/da;->c(Lcom/byazt/t/DownloadInfo;)Z

    .line 289
    invoke-direct {p0, p2}, Lcom/byazt/u/ve;->uj(Lcom/byazt/m/BaseException;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 290
    sget-object p1, Lcom/byazt/m/x;->c:Lcom/byazt/m/x;

    return-object p1

    .line 291
    :cond_3
    iget-object p3, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    iget-object p4, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    sget-object v0, Lcom/byazt/ev/x;->a:Lcom/byazt/ev/x;

    if-ne p4, v0, :cond_4

    const/4 p4, 0x1

    goto :goto_0

    :cond_4
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p3, p1, p2, p4}, Lcom/byazt/zz/a;->c(Lcom/byazt/t/tt;Lcom/byazt/m/BaseException;Z)V

    .line 292
    iget-object p1, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isNeedRetryDelay()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 293
    invoke-direct {p0}, Lcom/byazt/u/ve;->p()J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-lez v0, :cond_5

    .line 294
    sget-object p3, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "onSingleChunkRetry with delay time "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 296
    sget-object p2, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "onSingleChunkRetry:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_5
    :goto_1
    sget-object p1, Lcom/byazt/m/x;->tt:Lcom/byazt/m/x;

    return-object p1
.end method

.method public declared-synchronized c(I)Lcom/byazt/t/tt;
    .locals 4

    monitor-enter p0

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getChunkCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 350
    monitor-exit p0

    return-object v2

    .line 351
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/byazt/u/ve;->z:Lcom/byazt/zz/da;

    iget-object v1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/byazt/zz/da;->ve(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 352
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 353
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 354
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/t/tt;

    if-eqz v3, :cond_2

    .line 355
    invoke-direct {p0, v3, p1}, Lcom/byazt/u/ve;->c(Lcom/byazt/t/tt;I)Lcom/byazt/t/tt;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 356
    monitor-exit p0

    return-object v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_3
    monitor-exit p0

    return-object v2

    .line 358
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()V
    .locals 2

    .line 3
    sget-object v0, Lcom/byazt/ev/x;->tt:Lcom/byazt/ev/x;

    iput-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 4
    iget-object v1, p0, Lcom/byazt/u/ve;->pf:Lcom/byazt/h/sl;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/byazt/u/ve;->pf:Lcom/byazt/h/sl;

    invoke-virtual {v1}, Lcom/byazt/h/sl;->tt()V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/byazt/u/ve;->sp:Lcom/byazt/zz/n;

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/byazt/u/ve;->sp:Lcom/byazt/zz/n;

    invoke-virtual {v1}, Lcom/byazt/zz/n;->tt()V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/byazt/u/ve;->pf:Lcom/byazt/h/sl;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/byazt/u/ve;->sp:Lcom/byazt/zz/n;

    if-nez v1, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/byazt/u/ve;->my()V

    .line 10
    iput-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 11
    invoke-direct {p0}, Lcom/byazt/u/ve;->m()V

    .line 12
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/u/ve;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/u/tt;

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v1}, Lcom/byazt/u/tt;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 15
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(J)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    const-string v0, "MB"

    const-string v4, ", mustSetLength = "

    .line 146
    iget-object v5, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v5}, Lcom/byazt/t/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v5

    .line 147
    iget-object v6, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getTempName()Ljava/lang/String;

    move-result-object v6

    .line 148
    invoke-static/range {p1 .. p2}, Lcom/byazt/w/a;->tt(J)Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object v7, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    const/4 v8, -0x1

    invoke-static {v7, v5, v6, v8}, Lcom/byazt/w/a;->c(Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Ljava/lang/String;I)Lcom/byazt/t/n;

    move-result-object v7

    const/4 v8, 0x0

    .line 150
    :try_start_0
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    sub-long v12, v2, v10

    .line 151
    invoke-static {v5}, Lcom/byazt/w/a;->uj(Ljava/lang/String;)J

    move-result-wide v5

    .line 152
    iget-object v14, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v14}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v14

    invoke-static {v14}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v14

    const-string v15, "space_fill_part_download"

    .line 153
    invoke-virtual {v14, v15, v8}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v8, " 0"

    const-string v16, "="

    const-string v17, "<"

    const-string v9, "availableSpace "

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-ne v15, v6, :cond_7

    .line 154
    :try_start_1
    iput-wide v4, v1, Lcom/byazt/u/ve;->or:J

    cmp-long v6, v12, v4

    if-gtz v6, :cond_1

    .line 155
    iget-object v6, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v12

    iget-object v6, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v21

    sub-long v12, v12, v21

    :cond_1
    cmp-long v6, v19, v12

    if-gez v6, :cond_a

    .line 156
    sget-object v6, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v4, "checkSpaceOverflow: contentLength = "

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p2}, Lcom/byazt/w/a;->c(J)D

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, "MB, downloaded = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {v10, v11}, Lcom/byazt/w/a;->c(J)D

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, "MB, required = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {v12, v13}, Lcom/byazt/w/a;->c(J)D

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, "MB, available = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static/range {v19 .. v20}, Lcom/byazt/w/a;->c(J)D

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-static {v6, v4}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v15, v19, v4

    if-lez v15, :cond_4

    const-string v4, "space_fill_min_keep_mb"

    const/16 v5, 0x64

    .line 161
    invoke-virtual {v14, v4, v5}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_3

    int-to-long v8, v4

    const-wide/32 v14, 0x100000

    mul-long v8, v8, v14

    sub-long v8, v19, v8

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v14, "checkSpaceOverflow: minKeep = "

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "MB, canDownload = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-static {v8, v9}, Lcom/byazt/w/a;->c(J)D

    move-result-wide v14

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v6, v0}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v0, v8, v4

    if-lez v0, :cond_2

    .line 165
    iget-object v0, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v4

    add-long/2addr v4, v8

    iput-wide v4, v1, Lcom/byazt/u/ve;->or:J

    move-wide v5, v8

    goto :goto_0

    .line 166
    :cond_2
    new-instance v0, Lcom/byazt/m/uj;

    move-wide/from16 v4, v19

    invoke-direct {v0, v4, v5, v12, v13}, Lcom/byazt/m/uj;-><init>(JJ)V

    throw v0

    :cond_3
    move-wide/from16 v4, v19

    move-wide v5, v4

    :goto_0
    cmp-long v0, v10, v2

    if-gez v0, :cond_a

    add-long/2addr v5, v10

    cmp-long v0, v5, v2

    if-lez v0, :cond_b

    goto :goto_3

    :cond_4
    const-string v0, "download_when_space_negative"

    const/4 v4, 0x0

    .line 167
    invoke-virtual {v14, v0, v4}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    move-wide v5, v2

    const/4 v4, 0x0

    goto :goto_4

    .line 168
    :cond_5
    new-instance v0, Lcom/byazt/m/BaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v15, :cond_6

    move-object/from16 v3, v16

    goto :goto_1

    :cond_6
    move-object/from16 v3, v17

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x41c

    invoke-direct {v0, v3, v2}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_7
    move-wide v14, v4

    move-wide/from16 v4, v19

    cmp-long v0, v4, v14

    if-gtz v0, :cond_9

    .line 169
    new-instance v2, Lcom/byazt/m/BaseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_8

    move-object/from16 v0, v16

    goto :goto_2

    :cond_8
    move-object/from16 v0, v17

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x41c

    invoke-direct {v2, v3, v0}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_9
    cmp-long v0, v4, v12

    if-ltz v0, :cond_f

    :cond_a
    :goto_3
    move-wide v5, v2

    :cond_b
    const/4 v4, 0x1

    .line 170
    :goto_4
    :try_start_2
    invoke-virtual {v7, v2, v3}, Lcom/byazt/t/n;->tt(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    const/4 v2, 0x1

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v8, v0

    .line 171
    :try_start_3
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "checkSpaceOverflow: setLength1 e = "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v18

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v9, 0x410

    cmp-long v0, v5, v2

    if-gez v0, :cond_d

    const-wide/16 v2, 0x0

    cmp-long v0, v5, v2

    if-lez v0, :cond_d

    cmp-long v0, v5, v10

    if-lez v0, :cond_d

    .line 172
    :try_start_4
    invoke-virtual {v7, v5, v6}, Lcom/byazt/t/n;->tt(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 173
    :try_start_5
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "checkSpaceOverflow: setLength2 ex = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_c

    goto :goto_5

    .line 174
    :cond_c
    new-instance v0, Lcom/byazt/m/BaseException;

    invoke-direct {v0, v9, v2}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_d
    if-nez v4, :cond_e

    goto :goto_5

    :goto_6
    new-array v0, v2, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v7, v0, v2

    .line 175
    invoke-static {v0}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    return-void

    .line 176
    :cond_e
    :try_start_6
    new-instance v0, Lcom/byazt/m/BaseException;

    invoke-direct {v0, v9, v8}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 177
    :cond_f
    new-instance v0, Lcom/byazt/m/uj;

    invoke-direct {v0, v4, v5, v12, v13}, Lcom/byazt/m/uj;-><init>(JJ)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    .line 178
    invoke-static {v2}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    throw v0
.end method

.method public c(Lcom/byazt/hs/sp;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 359
    :try_start_0
    invoke-interface {p1}, Lcom/byazt/hs/sp;->tt()I

    move-result p1

    .line 360
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo;->setHttpStatusCode(I)V

    .line 361
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-static {p1}, Lcom/byazt/w/tt;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/byazt/t/DownloadInfo;->setHttpStatusMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 362
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 363
    iget-object p1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/byazt/t/DownloadInfo;->setHttpStatusCode(I)V

    .line 364
    iget-object p1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/byazt/t/DownloadInfo;->setHttpStatusMessage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/m/BaseException;Z)V
    .locals 2

    .line 272
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    const-string v1, "onAllChunkRetryWithReset"

    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/byazt/ev/x;->i:Lcom/byazt/ev/x;

    iput-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 274
    iput-object p1, p0, Lcom/byazt/u/ve;->gu:Lcom/byazt/m/BaseException;

    .line 275
    invoke-direct {p0}, Lcom/byazt/u/ve;->qp()V

    if-eqz p2, :cond_0

    .line 276
    invoke-direct {p0, p1}, Lcom/byazt/u/ve;->uj(Lcom/byazt/m/BaseException;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/byazt/u/ve;->cu()V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/u/tt;)V
    .locals 1

    .line 261
    iget-boolean v0, p0, Lcom/byazt/u/ve;->x:Z

    if-nez v0, :cond_0

    .line 262
    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/byazt/u/ve;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 264
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/hs/sp;J)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;,
            Lcom/byazt/m/i;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    const-string v5, " before="

    const-string v6, " cur="

    const-string v7, "dcache=responseCode="

    if-nez v2, :cond_0

    return-void

    .line 188
    :cond_0
    :try_start_0
    new-instance v8, Lcom/byazt/t/uj;

    move-object/from16 v9, p1

    invoke-direct {v8, v9, v2}, Lcom/byazt/t/uj;-><init>(Ljava/lang/String;Lcom/byazt/hs/sp;)V

    .line 189
    iget v9, v8, Lcom/byazt/t/uj;->ve:I

    .line 190
    invoke-virtual {v8}, Lcom/byazt/t/uj;->uj()Ljava/lang/String;

    move-result-object v10

    .line 191
    iget-object v11, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v11}, Lcom/byazt/t/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 192
    iget-object v11, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v11, v10}, Lcom/byazt/t/DownloadInfo;->setMimeType(Ljava/lang/String;)V

    .line 193
    :cond_1
    invoke-virtual {v8}, Lcom/byazt/t/uj;->tt()Z

    move-result v10

    iput-boolean v10, v1, Lcom/byazt/u/ve;->da:Z

    .line 194
    iget-object v11, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v11, v10}, Lcom/byazt/t/DownloadInfo;->setSupportPartial(Z)V

    .line 195
    invoke-virtual {v8}, Lcom/byazt/t/uj;->c()Z

    move-result v10

    iput-boolean v10, v1, Lcom/byazt/u/ve;->sl:Z

    .line 196
    iget-object v10, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v10}, Lcom/byazt/t/DownloadInfo;->geteTag()Ljava/lang/String;

    move-result-object v10

    .line 197
    invoke-virtual {v8}, Lcom/byazt/t/uj;->ve()Ljava/lang/String;

    move-result-object v11

    .line 198
    invoke-virtual {v8}, Lcom/byazt/t/uj;->a()Ljava/lang/String;

    move-result-object v12

    .line 199
    invoke-virtual {v8}, Lcom/byazt/t/uj;->sp()Ljava/lang/String;

    move-result-object v13

    .line 200
    sget-object v14, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " last_modified="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " CACHE_CONTROL="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " max-age="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p1, v10

    move-object v2, v11

    invoke-virtual {v8}, Lcom/byazt/t/uj;->sl()J

    move-result-wide v10

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " isDeleteCacheIfCheckFailed="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v10}, Lcom/byazt/t/DownloadInfo;->isDeleteCacheIfCheckFailed()Z

    move-result v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "dcache=firstOffset="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v11}, Lcom/byazt/t/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v2

    invoke-virtual {v8}, Lcom/byazt/t/uj;->da()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v5, 0x0

    if-nez v2, :cond_2

    .line 203
    iget-object v2, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2, v13}, Lcom/byazt/t/DownloadInfo;->setCacheControl(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v8}, Lcom/byazt/t/uj;->sl()J

    move-result-wide v2

    cmp-long v10, v2, v5

    if-lez v10, :cond_2

    .line 205
    iget-object v2, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8}, Lcom/byazt/t/uj;->sl()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    add-long/2addr v10, v15

    invoke-virtual {v2, v10, v11}, Lcom/byazt/t/DownloadInfo;->setCacheExpiredTime(J)V

    .line 206
    :cond_2
    iget-object v2, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->isExpiredRedownload()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, v1, Lcom/byazt/u/ve;->zb:Z

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/byazt/u/ve;->eo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0x130

    if-ne v9, v2, :cond_3

    :goto_0
    const/4 v10, 0x1

    goto :goto_1

    .line 207
    :cond_3
    iget-object v2, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v10, 0x0

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->isDeleteCacheIfCheckFailed()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 208
    :cond_4
    iget-object v2, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    if-nez v10, :cond_6

    .line 209
    iget-object v2, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-static {v2}, Lcom/byazt/w/a;->c(Lcom/byazt/t/DownloadInfo;)V

    goto :goto_2

    .line 210
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lastModified not changed, use local file  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v2, Lcom/byazt/m/c;

    iget-object v3, v1, Lcom/byazt/u/ve;->eo:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/byazt/m/c;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/byazt/m/BaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/byazt/m/i; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_2
    const-string v2, ""

    cmp-long v7, p3, v5

    if-lez v7, :cond_8

    .line 212
    :try_start_1
    iget-object v10, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v10}, Lcom/byazt/t/DownloadInfo;->isExpiredRedownload()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 213
    iget-object v10, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v10}, Lcom/byazt/t/DownloadInfo;->getLastModified()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "dcache cdn file change, so retry"

    .line 214
    invoke-static {v14, v10}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "cdn file changed"

    .line 215
    invoke-direct {v1, v2, v10}, Lcom/byazt/u/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_8
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 217
    iget-object v10, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v10, v12}, Lcom/byazt/t/DownloadInfo;->setLastModified(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v10, p1

    .line 218
    invoke-direct {v1, v9, v10, v4}, Lcom/byazt/u/ve;->c(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v11

    const/16 v12, 0x3ea

    if-eqz v11, :cond_c

    move-object/from16 v11, p2

    .line 219
    instance-of v13, v11, Lcom/byazt/hs/i;

    if-eqz v13, :cond_b

    .line 220
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    move-object v4, v2

    :cond_a
    const-string v10, "eTag of server file changed"

    .line 221
    invoke-direct {v1, v4, v10}, Lcom/byazt/u/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 222
    :cond_b
    new-instance v3, Lcom/byazt/m/tt;

    invoke-direct {v3, v12, v9, v2}, Lcom/byazt/m/tt;-><init>(IILjava/lang/String;)V

    throw v3

    :cond_c
    move-object/from16 v11, p2

    .line 223
    :goto_3
    iget-boolean v10, v1, Lcom/byazt/u/ve;->da:Z

    const/16 v13, 0x3ec

    if-nez v10, :cond_f

    iget-boolean v10, v1, Lcom/byazt/u/ve;->sl:Z

    if-eqz v10, :cond_d

    goto :goto_4

    :cond_d
    const/16 v2, 0x193

    if-ne v9, v2, :cond_e

    .line 224
    new-instance v2, Lcom/byazt/m/BaseException;

    const-string v3, "response code error : 403"

    const/16 v4, 0x417

    invoke-direct {v2, v4, v3}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 225
    :cond_e
    new-instance v2, Lcom/byazt/m/tt;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "response code error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v13, v9, v3}, Lcom/byazt/m/tt;-><init>(IILjava/lang/String;)V

    throw v2

    .line 226
    :cond_f
    :goto_4
    iget-boolean v10, v1, Lcom/byazt/u/ve;->sl:Z

    if-eqz v10, :cond_11

    if-lez v7, :cond_11

    .line 227
    instance-of v7, v11, Lcom/byazt/hs/i;

    if-eqz v7, :cond_10

    const-string v7, "http head request not support"

    .line 228
    invoke-direct {v1, v2, v7}, Lcom/byazt/u/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 229
    :cond_10
    new-instance v2, Lcom/byazt/m/BaseException;

    const-string v3, "isResponseFromBegin but firstOffset > 0"

    invoke-direct {v2, v13, v3}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_11
    :goto_5
    move-object v7, v4

    .line 230
    invoke-virtual {v8}, Lcom/byazt/t/uj;->x()J

    move-result-wide v3

    .line 231
    instance-of v10, v11, Lcom/byazt/hs/i;

    if-nez v10, :cond_13

    cmp-long v10, v3, v5

    if-gez v10, :cond_13

    iget-object v10, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 232
    invoke-static {v10}, Lcom/byazt/w/uj;->c(Lcom/byazt/t/DownloadInfo;)Z

    move-result v10

    if-nez v10, :cond_12

    goto :goto_6

    .line 233
    :cond_12
    new-instance v3, Lcom/byazt/m/BaseException;

    invoke-direct {v3, v13, v2}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 234
    :cond_13
    :goto_6
    iget-object v10, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v10}, Lcom/byazt/t/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 235
    iget-object v10, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v10}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/byazt/w/a;->c(Lcom/byazt/hs/sp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_14
    move-object v10, v2

    .line 236
    :goto_7
    invoke-virtual {v8}, Lcom/byazt/t/uj;->i()Z

    move-result v8

    iput-boolean v8, v1, Lcom/byazt/u/ve;->t:Z

    if-nez v8, :cond_16

    cmp-long v15, v3, v5

    if-nez v15, :cond_16

    .line 237
    instance-of v15, v11, Lcom/byazt/hs/i;

    if-eqz v15, :cond_15

    goto :goto_8

    .line 238
    :cond_15
    new-instance v3, Lcom/byazt/m/BaseException;

    invoke-direct {v3, v13, v2}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_16
    :goto_8
    if-nez v8, :cond_18

    const-string v8, "Content-Range"

    .line 239
    invoke-static {v11, v8}, Lcom/byazt/w/a;->tt(Lcom/byazt/hs/sp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 240
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "firstConnection: contentRange = "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_17

    iget-object v13, v1, Lcom/byazt/u/ve;->qp:Lcom/byazt/k/c;

    const-string v15, "fix_get_total_bytes"

    const/4 v12, 0x1

    invoke-virtual {v13, v15, v12}, Lcom/byazt/k/c;->tt(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 242
    invoke-static {v8}, Lcom/byazt/w/a;->tt(Ljava/lang/String;)J

    move-result-wide v3

    .line 243
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "firstConnection: 1 totalLength = "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_17
    add-long v12, p3, v3

    .line 244
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v15, "firstConnection: 2 totalLength = "

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ", contentLength = "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v12

    goto :goto_9

    :cond_18
    const-wide/16 v3, -0x1

    .line 245
    :goto_9
    iget-object v8, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v8}, Lcom/byazt/t/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1a

    iget-object v8, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 246
    invoke-virtual {v8}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v12

    cmp-long v8, v12, v5

    if-lez v8, :cond_1a

    iget-object v8, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 247
    invoke-virtual {v8}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v12

    cmp-long v8, v3, v12

    if-eqz v8, :cond_1a

    .line 248
    instance-of v8, v11, Lcom/byazt/hs/i;

    if-eqz v8, :cond_19

    const-string v8, "file totalLength changed"

    .line 249
    invoke-direct {v1, v2, v8}, Lcom/byazt/u/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 250
    :cond_19
    new-instance v3, Lcom/byazt/m/tt;

    const/16 v4, 0x3ea

    invoke-direct {v3, v4, v9, v2}, Lcom/byazt/m/tt;-><init>(IILjava/lang/String;)V

    throw v3

    .line 251
    :cond_1a
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/ve;->qy()Z

    move-result v2

    if-eqz v2, :cond_1b

    return-void

    .line 252
    :cond_1b
    iget-object v2, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getExpectFileLength()J

    move-result-wide v8

    cmp-long v2, v8, v5

    if-lez v2, :cond_1d

    iget-object v2, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 253
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v2

    const-string v5, "force_check_file_length"

    invoke-virtual {v2, v5}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1d

    .line 254
    iget-object v2, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getExpectFileLength()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_1c

    goto :goto_b

    .line 255
    :cond_1c
    new-instance v2, Lcom/byazt/m/BaseException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "expectFileLength = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 256
    invoke-virtual {v6}, Lcom/byazt/t/DownloadInfo;->getExpectFileLength()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " , totalLength = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x42e

    invoke-direct {v2, v4, v3}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 257
    :cond_1d
    :goto_b
    iget-object v2, v1, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    invoke-virtual {v2, v3, v4, v7, v10}, Lcom/byazt/zz/a;->c(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/byazt/m/BaseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/byazt/m/i; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    const-string v3, "HandleFirstConnection"

    .line 258
    invoke-static {v2, v3}, Lcom/byazt/w/a;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 259
    throw v2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 260
    throw v2
.end method

.method public c(Ljava/util/concurrent/Future;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/byazt/u/ve;->tt:Ljava/util/concurrent/Future;

    return-void
.end method

.method public c(Lcom/byazt/m/BaseException;)Z
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/byazt/u/ve;->pf:Lcom/byazt/h/sl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/byazt/w/a;->i(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/u/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v2, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getRetryCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    return v1

    .line 266
    :cond_0
    invoke-static {p1}, Lcom/byazt/w/a;->tt(Lcom/byazt/m/BaseException;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 267
    iget-boolean p1, p0, Lcom/byazt/u/ve;->x:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/byazt/u/ve;->uj:Z

    if-nez p1, :cond_1

    .line 268
    iget-object p1, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-static {p1}, Lcom/byazt/w/a;->c(Lcom/byazt/t/DownloadInfo;)V

    .line 269
    iput-boolean v2, p0, Lcom/byazt/u/ve;->uj:Z

    :cond_1
    return v2

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/byazt/u/ve;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->hasNextBackupUrl()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_6

    .line 271
    invoke-virtual {p1}, Lcom/byazt/m/BaseException;->getErrorCode()I

    move-result v0

    const/16 v3, 0x3f3

    if-eq v0, v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->canReplaceHttpForRetry()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    instance-of p1, p1, Lcom/byazt/m/a;

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method public n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->ve:Lcom/byazt/t/DownloadTask;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/zz/ve;->c(Lcom/byazt/t/DownloadTask;I)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lcom/byazt/hs/tt;->c()Lcom/byazt/hs/tt;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/byazt/hs/tt;->tt()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/byazt/u/ve;->sl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/byazt/hs/tt;->c()Lcom/byazt/hs/tt;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/byazt/hs/tt;->ve()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/u/ve;->ve:Lcom/byazt/t/DownloadTask;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/byazt/zz/ve;->tt(Lcom/byazt/t/DownloadTask;I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    invoke-static {}, Lcom/byazt/hs/tt;->c()Lcom/byazt/hs/tt;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/byazt/hs/tt;->ve()V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public sp()Ljava/util/concurrent/Future;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->tt:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()V
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/ev/x;->ve:Lcom/byazt/ev/x;

    iput-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 2
    iget-object v1, p0, Lcom/byazt/u/ve;->pf:Lcom/byazt/h/sl;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/byazt/u/ve;->pf:Lcom/byazt/h/sl;

    invoke-virtual {v1}, Lcom/byazt/h/sl;->c()V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/byazt/u/ve;->sp:Lcom/byazt/zz/n;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/byazt/u/ve;->sp:Lcom/byazt/zz/n;

    invoke-virtual {v1}, Lcom/byazt/zz/n;->ve()V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/byazt/u/ve;->pf:Lcom/byazt/h/sl;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/byazt/u/ve;->sp:Lcom/byazt/zz/n;

    if-nez v1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/byazt/u/ve;->my()V

    .line 8
    iput-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 9
    invoke-direct {p0}, Lcom/byazt/u/ve;->m()V

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/byazt/u/ve;->qp()V

    return-void
.end method

.method public tt(Lcom/byazt/m/BaseException;)V
    .locals 3

    .line 25
    sget-object v0, Lcom/byazt/u/ve;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/byazt/ev/x;->uj:Lcom/byazt/ev/x;

    iput-object v0, p0, Lcom/byazt/u/ve;->yp:Lcom/byazt/ev/x;

    .line 27
    iput-object p1, p0, Lcom/byazt/u/ve;->gu:Lcom/byazt/m/BaseException;

    .line 28
    invoke-direct {p0}, Lcom/byazt/u/ve;->qp()V

    return-void
.end method

.method public tt(J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    .line 21
    iget-wide v0, p0, Lcom/byazt/u/ve;->or:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    .line 22
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/byazt/u/ve;->or:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 23
    invoke-direct {p0}, Lcom/byazt/u/ve;->d()V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/u/ve;->qy:Lcom/byazt/zz/a;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/zz/a;->c(J)Z

    move-result p1

    return p1
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public ve()Lcom/byazt/t/DownloadTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/u/ve;->ve:Lcom/byazt/t/DownloadTask;

    return-object v0
.end method

.method public ve(Lcom/byazt/m/BaseException;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/u/ve;->m:Lcom/byazt/t/DownloadInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/byazt/t/DownloadInfo;->setChunkDowngradeRetryUsed(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/byazt/u/ve;->c(Lcom/byazt/m/BaseException;Z)V

    return-void
.end method
