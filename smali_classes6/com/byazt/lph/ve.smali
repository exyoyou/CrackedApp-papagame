.class public Lcom/byazt/lph/ve;
.super Lcom/byazt/lph/n;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x189,
        0x36
    }
.end annotation


# static fields
.field public static m:I = 0xc8

.field public static z:I = 0xa


# instance fields
.field public a:I

.field public c:Lcom/byazt/uf/n;

.field public final da:J

.field public volatile gt:Ljava/lang/String;

.field public final i:J

.field public volatile my:I

.field public n:Lcom/byazt/lph/a;

.field public final nu:Ljava/lang/String;

.field public final rh:Ljava/lang/String;

.field public final rl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile sl:Landroid/os/Handler;

.field public sp:I

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;"
        }
    .end annotation
.end field

.field public final uj:Ljava/lang/Object;

.field public final x:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile yp:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/byazt/vb/n;Lcom/byazt/mv/tt;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/lph/n;-><init>(Lcom/byazt/vb/n;Lcom/byazt/mv/tt;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/byazt/lph/ve;->uj:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    iput p2, p0, Lcom/byazt/lph/ve;->a:I

    .line 13
    .line 14
    iput p2, p0, Lcom/byazt/lph/ve;->sp:I

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/byazt/lph/ve;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    const-wide/16 v0, 0x1388

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/byazt/lph/ve;->i:J

    .line 26
    .line 27
    const-wide v0, 0x12a05f200L

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    iput-wide v0, p0, Lcom/byazt/lph/ve;->da:J

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/byazt/lph/ve;->t:Ljava/util/List;

    .line 40
    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/byazt/lph/ve;->u:Ljava/util/List;

    .line 47
    .line 48
    iput-boolean p2, p0, Lcom/byazt/lph/ve;->yp:Z

    .line 49
    .line 50
    const-string v0, "after_upload"

    .line 51
    .line 52
    iput-object v0, p0, Lcom/byazt/lph/ve;->nu:Ljava/lang/String;

    .line 53
    .line 54
    const-string v0, "prepare_upload"

    .line 55
    .line 56
    iput-object v0, p0, Lcom/byazt/lph/ve;->rh:Ljava/lang/String;

    .line 57
    .line 58
    iput p2, p0, Lcom/byazt/lph/ve;->my:I

    .line 59
    .line 60
    const-string p2, "DEFAULT"

    .line 61
    .line 62
    iput-object p2, p0, Lcom/byazt/lph/ve;->gt:Ljava/lang/String;

    .line 63
    .line 64
    new-instance p2, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p2, p0, Lcom/byazt/lph/ve;->rl:Ljava/util/HashMap;

    .line 70
    .line 71
    new-instance p2, Lcom/byazt/uf/ve;

    .line 72
    .line 73
    invoke-direct {p2, p1, p0}, Lcom/byazt/uf/ve;-><init>(Lcom/byazt/vb/n;Lcom/byazt/lph/ve;)V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Lcom/byazt/lph/ve;->c:Lcom/byazt/uf/n;

    .line 77
    .line 78
    new-instance p1, Lcom/byazt/lph/a;

    .line 79
    .line 80
    iget-object p2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/byazt/lph/n;->ve:Lcom/byazt/mv/tt;

    .line 83
    .line 84
    invoke-direct {p1, p2, v0}, Lcom/byazt/lph/a;-><init>(Lcom/byazt/vb/n;Lcom/byazt/mv/tt;)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lcom/byazt/lph/ve;->n:Lcom/byazt/lph/a;

    .line 88
    .line 89
    return-void
.end method

.method private c(I)V
    .locals 1

    const-string v0, "after_upload"

    .line 62
    invoke-direct {p0, v0}, Lcom/byazt/lph/ve;->c(Ljava/lang/String;)V

    const/16 v0, 0x48

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/byazt/lph/ve;->sp:I

    .line 64
    iput p1, p0, Lcom/byazt/lph/ve;->a:I

    .line 65
    iget-object p1, p0, Lcom/byazt/lph/ve;->sl:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/byazt/lph/ve;->sl:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void

    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/byazt/lph/ve;->i()V

    return-void
.end method

.method private c(Lcom/byazt/vb/tt;IZ)V
    .locals 0

    .line 23
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/lph/ve;->tt(Lcom/byazt/vb/tt;IZ)V

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/lph/ve;->ve(Lcom/byazt/vb/tt;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "run exception:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    const-string p3, "_error"

    invoke-static {p3, p1, p2}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 26
    sget-object p1, Lcom/byazt/mv/tt;->c:Lcom/byazt/sl/c;

    invoke-virtual {p1}, Lcom/byazt/sl/c;->ve()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    const/4 p2, 0x1

    iget-object p3, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {p1, p2, p3}, Lcom/byazt/ml/tt;->c(Ljava/util/concurrent/atomic/AtomicLong;ILcom/byazt/vb/n;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .line 27
    iget-object p1, p0, Lcom/byazt/lph/ve;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 28
    iget-object p1, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-interface {p1}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/byazt/lph/ve;->sl:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/byazt/lph/ve;->sl:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    :cond_0
    sget v0, Lcom/byazt/lph/ve;->m:I

    int-to-long v2, v0

    if-eqz p1, :cond_1

    .line 32
    invoke-interface {p1}, Lcom/byazt/vb/uj;->t()Lcom/byazt/vb/x;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    invoke-interface {p1}, Lcom/byazt/vb/uj;->t()Lcom/byazt/vb/x;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/vb/x;->ve()J

    move-result-wide v2

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/byazt/lph/ve;->sl:Landroid/os/Handler;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 35
    iget-object p1, p0, Lcom/byazt/lph/ve;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    return-void

    :cond_2
    const-string p1, "do nothing"

    .line 36
    iget-object v0, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    const-string v1, "_ms"

    invoke-static {v1, p1, v0}, Lcom/byazt/ml/ve;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void
.end method

.method private c(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;I)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {p1, v0}, Lcom/byazt/ml/c;->c(Ljava/util/List;Lcom/byazt/vb/n;)V

    const/4 v0, 0x0

    .line 39
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/vb/tt;

    const-string v1, "_error"

    if-nez v0, :cond_0

    const-string p1, "adLogEvent is null"

    .line 40
    iget-object p2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {v1, p1, p2}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void

    .line 41
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-gt v2, v5, :cond_8

    iget-object v2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {v2}, Lcom/byazt/ml/c;->tt(Lcom/byazt/vb/n;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {v2}, Lcom/byazt/ml/c;->uj(Lcom/byazt/vb/n;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    invoke-interface {v0}, Lcom/byazt/vb/tt;->n()B

    move-result v2

    if-ne v2, v5, :cond_2

    const-string v0, "highPriority"

    .line 43
    invoke-direct {p0, p1, v0, p2}, Lcom/byazt/lph/ve;->c(Ljava/util/List;Ljava/lang/String;I)V

    return-void

    .line 44
    :cond_2
    invoke-interface {v0}, Lcom/byazt/vb/tt;->uj()B

    move-result v2

    if-nez v2, :cond_4

    .line 45
    invoke-interface {v0}, Lcom/byazt/vb/tt;->n()B

    move-result v2

    if-ne v2, v4, :cond_4

    .line 46
    invoke-interface {v0}, Lcom/byazt/vb/tt;->tt()B

    move-result v0

    if-ne v0, v3, :cond_3

    const-string v0, "version_v3_single_directly"

    .line 47
    invoke-direct {p0, p1, v0, p2}, Lcom/byazt/lph/ve;->c(Ljava/util/List;Ljava/lang/String;I)V

    return-void

    :cond_3
    const-string v0, "singleOptimize"

    .line 48
    invoke-direct {p0, p1, v0, p2}, Lcom/byazt/lph/ve;->tt(Ljava/util/List;Ljava/lang/String;I)V

    return-void

    .line 49
    :cond_4
    invoke-interface {v0}, Lcom/byazt/vb/tt;->uj()B

    move-result v2

    if-ne v2, v5, :cond_5

    const-string v0, "stats_directly"

    .line 50
    invoke-direct {p0, p1, v0, p2}, Lcom/byazt/lph/ve;->c(Ljava/util/List;Ljava/lang/String;I)V

    return-void

    .line 51
    :cond_5
    invoke-interface {v0}, Lcom/byazt/vb/tt;->uj()B

    move-result v2

    if-ne v2, v3, :cond_6

    const-string v0, "adType_v3_directly"

    .line 52
    invoke-direct {p0, p1, v0, p2}, Lcom/byazt/lph/ve;->c(Ljava/util/List;Ljava/lang/String;I)V

    return-void

    .line 53
    :cond_6
    invoke-interface {v0}, Lcom/byazt/vb/tt;->uj()B

    move-result v0

    if-ne v0, v4, :cond_7

    const-string v0, "other_directly"

    .line 54
    invoke-direct {p0, p1, v0, p2}, Lcom/byazt/lph/ve;->c(Ljava/util/List;Ljava/lang/String;I)V

    return-void

    :cond_7
    const-string p1, "adLogEvent adType error"

    .line 55
    iget-object p2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {v1, p1, p2}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void

    .line 56
    :cond_8
    :goto_0
    invoke-interface {v0}, Lcom/byazt/vb/tt;->uj()B

    move-result v1

    if-nez v1, :cond_a

    .line 57
    invoke-interface {v0}, Lcom/byazt/vb/tt;->n()B

    move-result v1

    if-ne v1, v4, :cond_a

    const/16 v1, 0x4a

    if-ne p2, v1, :cond_a

    .line 58
    invoke-interface {v0}, Lcom/byazt/vb/tt;->tt()B

    move-result v0

    if-ne v0, v3, :cond_9

    const-string v0, "version_v3_batch"

    .line 59
    invoke-direct {p0, p1, v0, p2}, Lcom/byazt/lph/ve;->c(Ljava/util/List;Ljava/lang/String;I)V

    return-void

    :cond_9
    const-string v0, "batchOptimize"

    .line 60
    invoke-direct {p0, p1, v0, p2}, Lcom/byazt/lph/ve;->tt(Ljava/util/List;Ljava/lang/String;I)V

    return-void

    :cond_a
    const-string v0, "batchRead"

    .line 61
    invoke-direct {p0, p1, v0, p2}, Lcom/byazt/lph/ve;->c(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method private c(Ljava/util/List;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/lph/ve;->ve(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method private i()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/lph/ve;->uj:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/byazt/lph/ve;->a:I

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/n;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/byazt/lph/ve;->c:Lcom/byazt/uf/n;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/byazt/uf/n;->tt()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lcom/byazt/lph/ve;->c:Lcom/byazt/uf/n;

    .line 23
    .line 24
    invoke-interface {v2}, Lcom/byazt/uf/n;->c()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    add-int/2addr v1, v2

    .line 29
    iget-object v2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 30
    .line 31
    invoke-interface {v2}, Lcom/byazt/vb/n;->x()Lcom/byazt/rz/c;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/byazt/rz/c;->tt()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    div-int/2addr v1, v2

    .line 44
    add-int/lit8 v1, v1, 0x4

    .line 45
    .line 46
    iput v1, p0, Lcom/byazt/lph/ve;->a:I

    .line 47
    .line 48
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    iget-object v3, p0, Lcom/byazt/lph/ve;->uj:Ljava/lang/Object;

    .line 53
    .line 54
    const-wide/16 v4, 0x1388

    .line 55
    .line 56
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    sub-long/2addr v3, v1

    .line 64
    const-wide v1, 0x12a05f200L

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    cmp-long v5, v3, v1

    .line 70
    .line 71
    if-gez v5, :cond_6

    .line 72
    .line 73
    sub-long/2addr v1, v3

    .line 74
    const-wide/32 v3, 0x2faf080

    .line 75
    .line 76
    .line 77
    cmp-long v5, v1, v3

    .line 78
    .line 79
    if-gez v5, :cond_1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/lph/ve;->uj()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    const-string v1, "_error"

    .line 89
    .line 90
    const-string v2, "return wait serverBusy"

    .line 91
    .line 92
    iget-object v3, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 93
    .line 94
    invoke-static {v1, v2, v3}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    return-void

    .line 99
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/byazt/lph/n;->ve:Lcom/byazt/mv/tt;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/byazt/mv/tt;->ve()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_3

    .line 106
    .line 107
    const-string v1, "_error"

    .line 108
    .line 109
    const-string v2, "return wait otherError"

    .line 110
    .line 111
    iget-object v3, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 112
    .line 113
    invoke-static {v1, v2, v3}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .line 115
    .line 116
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    return-void

    .line 118
    :cond_3
    :try_start_4
    sget-object v1, Lcom/byazt/mv/tt;->c:Lcom/byazt/sl/c;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/byazt/sl/c;->tt()Ljava/util/concurrent/atomic/AtomicLong;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 125
    .line 126
    const/4 v3, 0x1

    .line 127
    invoke-static {v1, v3, v2}, Lcom/byazt/ml/tt;->c(Ljava/util/concurrent/atomic/AtomicLong;ILcom/byazt/vb/n;)V

    .line 128
    .line 129
    .line 130
    iget v1, p0, Lcom/byazt/lph/ve;->sp:I

    .line 131
    .line 132
    iget v2, p0, Lcom/byazt/lph/ve;->a:I

    .line 133
    .line 134
    const/16 v4, 0x48

    .line 135
    .line 136
    if-ge v1, v2, :cond_4

    .line 137
    .line 138
    add-int/2addr v1, v3

    .line 139
    iput v1, p0, Lcom/byazt/lph/ve;->sp:I

    .line 140
    .line 141
    const-string v1, "_flush"

    .line 142
    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v3, "afterUpload send flush again:"

    .line 146
    .line 147
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget v3, p0, Lcom/byazt/lph/ve;->sp:I

    .line 151
    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iget-object v3, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 160
    .line 161
    invoke-static {v1, v2, v3}, Lcom/byazt/ml/ve;->tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 162
    .line 163
    .line 164
    const-string v1, "continue"

    .line 165
    .line 166
    invoke-virtual {p0, v4, v1}, Lcom/byazt/lph/ve;->c(ILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_4
    const/4 v1, 0x0

    .line 171
    iput v1, p0, Lcom/byazt/lph/ve;->sp:I

    .line 172
    .line 173
    iput v1, p0, Lcom/byazt/lph/ve;->a:I

    .line 174
    .line 175
    iget-object v1, p0, Lcom/byazt/lph/ve;->sl:Landroid/os/Handler;

    .line 176
    .line 177
    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_5

    .line 182
    .line 183
    iget-object v1, p0, Lcom/byazt/lph/ve;->sl:Landroid/os/Handler;

    .line 184
    .line 185
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    .line 187
    .line 188
    :cond_5
    const-string v1, "_flush"

    .line 189
    .line 190
    const-string v2, "afterUpload send flush end"

    .line 191
    .line 192
    iget-object v3, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 193
    .line 194
    invoke-static {v1, v2, v3}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_6
    :goto_0
    const-string v1, "_error"

    .line 199
    .line 200
    const-string v2, "return wait timeout"

    .line 201
    .line 202
    iget-object v3, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 203
    .line 204
    invoke-static {v1, v2, v3}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    .line 206
    .line 207
    :try_start_5
    monitor-exit v0

    .line 208
    return-void

    .line 209
    :catchall_0
    move-exception v1

    .line 210
    goto :goto_2

    .line 211
    :catch_0
    move-exception v1

    .line 212
    const-string v2, "_error"

    .line 213
    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string v4, "wait exception:"

    .line 217
    .line 218
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    iget-object v3, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 233
    .line 234
    invoke-static {v2, v1, v3}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 235
    .line 236
    .line 237
    :goto_1
    monitor-exit v0

    .line 238
    return-void

    .line 239
    :goto_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 240
    throw v1
.end method

.method private tt(Lcom/byazt/vb/tt;IZ)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/lph/ve;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    sget-object v0, Lcom/byazt/mv/tt;->c:Lcom/byazt/sl/c;

    invoke-virtual {v0}, Lcom/byazt/sl/c;->sl()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {v0, v1, v2}, Lcom/byazt/ml/tt;->c(Ljava/util/concurrent/atomic/AtomicLong;ILcom/byazt/vb/n;)V

    .line 4
    iget-object v0, p0, Lcom/byazt/lph/ve;->c:Lcom/byazt/uf/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/uf/n;->c(Lcom/byazt/vb/tt;IZ)V

    .line 5
    iget-object p2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    const-string p3, "_ad"

    invoke-static {p1, p2, p3}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {p1, p2}, Lcom/byazt/ml/c;->x(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)V

    return-void
.end method

.method private tt(Ljava/util/List;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/byazt/lph/ve;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object p1, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-interface {p1}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-interface {p1}, Lcom/byazt/vb/uj;->t()Lcom/byazt/vb/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {p1}, Lcom/byazt/vb/uj;->t()Lcom/byazt/vb/x;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/vb/x;->uj()I

    move-result p1

    sput p1, Lcom/byazt/lph/ve;->z:I

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/byazt/lph/ve;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget v0, Lcom/byazt/lph/ve;->z:I

    if-lt p1, v0, :cond_2

    .line 12
    iget-object p1, p0, Lcom/byazt/lph/ve;->sl:Landroid/os/Handler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/byazt/lph/ve;->sl:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/byazt/lph/ve;->t:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    iget-object p2, p0, Lcom/byazt/lph/ve;->t:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const-string p2, "max_size_dispatch"

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/lph/ve;->ve(Ljava/util/List;Ljava/lang/String;I)V

    return-void

    .line 17
    :cond_2
    invoke-direct {p0, p2}, Lcom/byazt/lph/ve;->c(Ljava/lang/String;)V

    return-void
.end method

.method private ve(Lcom/byazt/vb/tt;IZ)V
    .locals 9

    .line 5
    invoke-direct {p0}, Lcom/byazt/lph/ve;->x()Z

    move-result v0

    const-string v1, "_error"

    if-eqz v0, :cond_0

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " upload cancel cause config "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {p1, p3}, Lcom/byazt/ml/c;->ve(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {v1, p1, p2}, Lcom/byazt/ml/ve;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/lph/ve;->uj()Z

    move-result v0

    .line 8
    iget-object v2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {p1, v2}, Lcom/byazt/ml/c;->i(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-nez v2, :cond_2

    if-ne p2, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 9
    :goto_1
    invoke-static {p2}, Lcom/byazt/ml/c;->c(I)Z

    move-result v6

    .line 10
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "serbusy:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " isCsjBusy:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " flush:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {v1, v7, v8}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    if-eqz v0, :cond_7

    if-nez v6, :cond_7

    if-eqz v2, :cond_7

    if-ne p2, v5, :cond_3

    const-string p1, "start do flush"

    .line 11
    iget-object p2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {v1, p1, p2}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    const/4 p1, 0x0

    const/16 p2, 0x48

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/lph/ve;->ve(Lcom/byazt/vb/tt;IZ)V

    return-void

    :cond_3
    const/16 p1, 0x4a

    if-eq p2, p1, :cond_5

    if-ne p2, v4, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "server busy"

    .line 13
    iget-object p2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {v1, p1, p2}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void

    .line 14
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/byazt/lph/ve;->sl:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    const-string p2, "server busy return : hasBusyMsg:"

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {v1, p2, p3}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    if-nez p1, :cond_6

    .line 16
    iget-object p1, p0, Lcom/byazt/lph/ve;->n:Lcom/byazt/lph/a;

    const-wide/16 p2, 0x3a98

    iget-object v0, p0, Lcom/byazt/lph/ve;->sl:Landroid/os/Handler;

    invoke-virtual {p1, v5, p2, p3, v0}, Lcom/byazt/lph/a;->c(IJLandroid/os/Handler;)V

    :cond_6
    return-void

    :cond_7
    if-nez p3, :cond_8

    const-string p1, "AdThread NET IS NOT AVAILABLE!!!"

    .line 17
    iget-object p2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {v1, p1, p2}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void

    :cond_8
    const-string p3, "needUpload check"

    .line 18
    invoke-virtual {p0, p2, p3, p1}, Lcom/byazt/lph/ve;->c(ILjava/lang/String;Lcom/byazt/vb/tt;)Z

    move-result p3

    const-string v1, "prepare_upload"

    const-string v2, "_ms"

    if-eqz p3, :cond_a

    .line 19
    iget-object v4, p0, Lcom/byazt/lph/ve;->c:Lcom/byazt/uf/n;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/byazt/lph/ve;->my:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/byazt/lph/ve;->gt:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p2, p1, v0, v5}, Lcom/byazt/uf/n;->c(ILcom/byazt/vb/tt;ZLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 20
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prepare get size ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {v2, v0, v1}, Lcom/byazt/ml/ve;->tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/byazt/lph/ve;->c(Ljava/util/List;I)V

    goto :goto_3

    :cond_9
    const-string p1, "prepare get no event need upload"

    .line 23
    iget-object p2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {v2, p1, p2}, Lcom/byazt/ml/ve;->tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 24
    invoke-direct {p0, v1}, Lcom/byazt/lph/ve;->c(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    const-string p1, "prepare upload no need"

    .line 25
    iget-object p2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {v2, p1, p2}, Lcom/byazt/ml/ve;->tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 26
    iget-object p1, p0, Lcom/byazt/lph/ve;->rl:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 27
    invoke-direct {p0, v1}, Lcom/byazt/lph/ve;->c(Ljava/lang/String;)V

    :goto_3
    move v3, p3

    :goto_4
    const-string p1, "prepare upload end needUpload:"

    .line 28
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {v2, p1, p2}, Lcom/byazt/ml/ve;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void
.end method

.method private ve(Ljava/util/List;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/byazt/lph/ve;->n:Lcom/byazt/lph/a;

    iget-object v1, p0, Lcom/byazt/lph/ve;->uj:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/byazt/lph/a;->c(Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    const/16 p1, 0x4e

    if-eq p3, p1, :cond_0

    .line 30
    invoke-direct {p0, p3}, Lcom/byazt/lph/ve;->c(I)V

    :cond_0
    return-void
.end method

.method private x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/n;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/byazt/vb/n;->ve()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method


# virtual methods
.method public c()Lcom/byazt/uf/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lph/ve;->c:Lcom/byazt/uf/n;

    return-object v0
.end method

.method public c(ILjava/lang/String;)V
    .locals 4

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-interface {v0}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-interface {v1}, Lcom/byazt/vb/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/byazt/vb/uj;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "_error"

    const-string p2, "AdThread NET IS NOT AVAILABLE"

    .line 16
    iget-object v0, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {p1, p2, v0}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " check"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/byazt/lph/ve;->c(ILjava/lang/String;Lcom/byazt/vb/tt;)Z

    move-result v0

    const-string v1, "_flush"

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notify runOnce check: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {v1, p2, v2}, Lcom/byazt/ml/ve;->tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    if-eqz v0, :cond_1

    .line 19
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    .line 20
    iput p1, p2, Landroid/os/Message;->what:I

    .line 21
    iget-object p1, p0, Lcom/byazt/lph/ve;->sl:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    invoke-static {p1, p2}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void
.end method

.method public c(Lcom/byazt/vb/tt;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 4
    iget-object p2, p0, Lcom/byazt/lph/ve;->sl:Landroid/os/Handler;

    if-eqz p2, :cond_1

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "ignore_result_dispatch"

    const/16 v0, 0x4e

    .line 7
    invoke-direct {p0, p2, p1, v0}, Lcom/byazt/lph/ve;->ve(Ljava/util/List;Ljava/lang/String;I)V

    return-void

    :cond_1
    const-string p1, "other thread handler is null\uff0cignore is true"

    .line 8
    iget-object p2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    const-string v0, "_error"

    invoke-static {v0, p1, p2}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void

    .line 9
    :cond_2
    iget-boolean p2, p0, Lcom/byazt/lph/ve;->yp:Z

    if-eqz p2, :cond_3

    .line 10
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    .line 11
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x4a

    .line 12
    iput p1, p2, Landroid/os/Message;->what:I

    .line 13
    iget-object p1, p0, Lcom/byazt/lph/ve;->sl:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 14
    :cond_3
    iget-object p2, p0, Lcom/byazt/lph/ve;->u:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(ILjava/lang/String;Lcom/byazt/vb/tt;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/lph/ve;->c:Lcom/byazt/uf/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/uf/n;->c(ILjava/lang/String;Lcom/byazt/vb/tt;)Z

    move-result p1

    return p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 5
    .line 6
    invoke-interface {v2}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 11
    .line 12
    invoke-interface {v3}, Lcom/byazt/vb/n;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {v2, v3}, Lcom/byazt/vb/uj;->c(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eq v0, v1, :cond_5

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    const/4 v4, 0x0

    .line 24
    if-eq v0, v3, :cond_4

    .line 25
    .line 26
    const/4 v3, 0x5

    .line 27
    if-eq v0, v3, :cond_3

    .line 28
    .line 29
    const/16 v3, 0x4a

    .line 30
    .line 31
    if-eq v0, v3, :cond_2

    .line 32
    .line 33
    const/16 p1, 0x47

    .line 34
    .line 35
    if-eq v0, p1, :cond_1

    .line 36
    .line 37
    const/16 p1, 0x48

    .line 38
    .line 39
    if-eq v0, p1, :cond_0

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_0
    invoke-direct {p0, v4, p1, v2}, Lcom/byazt/lph/ve;->ve(Lcom/byazt/vb/tt;IZ)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-direct {p0, v4, p1, v2}, Lcom/byazt/lph/ve;->ve(Lcom/byazt/vb/tt;IZ)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Lcom/byazt/vb/tt;

    .line 54
    .line 55
    invoke-direct {p0, p1, v3, v2}, Lcom/byazt/lph/ve;->c(Lcom/byazt/vb/tt;IZ)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/byazt/lph/ve;->t:Ljava/util/List;

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/byazt/lph/ve;->t:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    .line 70
    .line 71
    const-string v0, "timeout_dispatch"

    .line 72
    .line 73
    invoke-direct {p0, p1, v0, v3}, Lcom/byazt/lph/ve;->ve(Ljava/util/List;Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-direct {p0, v4, v3, v2}, Lcom/byazt/lph/ve;->ve(Lcom/byazt/vb/tt;IZ)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    const-class p1, Lcom/byazt/lph/ve;

    .line 82
    .line 83
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/byazt/lph/ve;->u:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_6

    .line 91
    .line 92
    iget-object v0, p0, Lcom/byazt/lph/ve;->u:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const/4 v3, 0x0

    .line 99
    :goto_0
    if-ge v3, v0, :cond_6

    .line 100
    .line 101
    iget-object v4, p0, Lcom/byazt/lph/ve;->u:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Lcom/byazt/vb/tt;

    .line 108
    .line 109
    invoke-direct {p0, v4, v1, v2}, Lcom/byazt/lph/ve;->c(Lcom/byazt/vb/tt;IZ)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v3, v3, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_6
    iput-boolean v1, p0, Lcom/byazt/lph/ve;->yp:Z

    .line 116
    .line 117
    iget-object v0, p0, Lcom/byazt/lph/ve;->u:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    .line 121
    .line 122
    monitor-exit p1

    .line 123
    goto :goto_1

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    :catchall_1
    move-exception p1

    .line 128
    const-string v0, "_ms"

    .line 129
    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v3, "error:"

    .line 133
    .line 134
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iget-object v2, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 149
    .line 150
    invoke-static {v0, p1, v2}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 151
    .line 152
    .line 153
    :goto_1
    return v1
.end method

.method public tt()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lph/ve;->sl:Landroid/os/Handler;

    return-object v0
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lph/n;->tt:Lcom/byazt/vb/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/n;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/lph/n;->ve:Lcom/byazt/mv/tt;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/mv/tt;->tt()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public ve()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/lph/n;->ve()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/byazt/lph/n;->sp()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/byazt/lph/ve;->sl:Landroid/os/Handler;

    .line 3
    iget-object v0, p0, Lcom/byazt/lph/n;->ve:Lcom/byazt/mv/tt;

    iget-object v1, p0, Lcom/byazt/lph/ve;->sl:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/byazt/mv/tt;->c(Landroid/os/Handler;)V

    .line 4
    iget-object v0, p0, Lcom/byazt/lph/ve;->sl:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
