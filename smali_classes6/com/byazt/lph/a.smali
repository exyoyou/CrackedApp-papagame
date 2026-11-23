.class public Lcom/byazt/lph/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x189,
        0x22
    }
.end annotation


# instance fields
.field public final a:Lcom/byazt/mv/tt;

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final n:Lcom/byazt/vb/n;

.field public final tt:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile uj:J

.field public ve:Lcom/byazt/lph/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/vb/n;Lcom/byazt/mv/tt;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/byazt/lph/a;->uj:J

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/byazt/lph/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/byazt/lph/a;->tt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/byazt/lph/a;->a:Lcom/byazt/mv/tt;

    .line 26
    .line 27
    return-void
.end method

.method private c(ILjava/util/List;JLjava/lang/Object;ILcom/byazt/lph/tt;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;J",
            "Ljava/lang/Object;",
            "I",
            "Lcom/byazt/lph/tt;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move v0, p1

    move-object v9, p2

    move/from16 v10, p6

    .line 37
    iget-object v11, v1, Lcom/byazt/lph/a;->ve:Lcom/byazt/lph/ve;

    .line 38
    monitor-enter p5

    if-eqz v9, :cond_9

    if-nez v11, :cond_0

    goto/16 :goto_1

    .line 39
    :cond_0
    :try_start_0
    invoke-virtual {v11}, Lcom/byazt/lph/ve;->tt()Landroid/os/Handler;

    move-result-object v12

    .line 40
    invoke-virtual {v11}, Lcom/byazt/lph/ve;->c()Lcom/byazt/uf/n;

    move-result-object v2

    invoke-interface {v2, p1, p2, v10}, Lcom/byazt/uf/n;->c(ILjava/util/List;I)Lcom/byazt/uf/tt;

    move-result-object v8

    .line 41
    iget-object v6, v1, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    move v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v7, p7

    invoke-static/range {v2 .. v8}, Lcom/byazt/ml/c;->c(ILjava/util/List;JLcom/byazt/vb/n;Lcom/byazt/lph/tt;Lcom/byazt/uf/tt;)V

    .line 42
    iget-object v2, v1, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    invoke-interface {v2}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 43
    invoke-interface {v2}, Lcom/byazt/vb/uj;->t()Lcom/byazt/vb/x;

    :cond_1
    const/4 v3, -0x2

    const/16 v4, 0x48

    if-eq v0, v3, :cond_5

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    if-eqz v0, :cond_5

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_3

    const/16 v2, 0x1fd

    if-eq v0, v2, :cond_2

    goto/16 :goto_0

    .line 44
    :cond_2
    iget-object v0, v1, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    invoke-static {p2, v0}, Lcom/byazt/ml/c;->tt(Ljava/util/List;Lcom/byazt/vb/n;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 45
    iget-object v0, v1, Lcom/byazt/lph/a;->a:Lcom/byazt/mv/tt;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/byazt/mv/tt;->c(I)V

    const/4 v0, 0x3

    .line 46
    invoke-virtual {v12, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, v1, Lcom/byazt/lph/a;->uj:J

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x3a98

    cmp-long v7, v2, v5

    if-ltz v7, :cond_7

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/byazt/lph/a;->uj:J

    .line 49
    invoke-virtual {p0, v0, v5, v6, v12}, Lcom/byazt/lph/a;->c(IJLandroid/os/Handler;)V

    goto :goto_0

    .line 50
    :cond_3
    iget-object v0, v1, Lcom/byazt/lph/a;->a:Lcom/byazt/mv/tt;

    invoke-virtual {v0}, Lcom/byazt/mv/tt;->ve()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_flush"

    const-string v2, "send reset error"

    .line 51
    iget-object v3, v1, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    invoke-static {v0, v2, v3}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    const-string v0, "handle_result"

    .line 52
    invoke-virtual {v11, v4, v0}, Lcom/byazt/lph/ve;->c(ILjava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_4
    iget-object v0, v1, Lcom/byazt/lph/a;->a:Lcom/byazt/mv/tt;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/byazt/mv/tt;->c(I)V

    .line 54
    invoke-direct {p0, v12, p2, v11}, Lcom/byazt/lph/a;->c(Landroid/os/Handler;Ljava/util/List;Lcom/byazt/lph/ve;)V

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    const-string v3, "_error"

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "net is available:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    invoke-interface {v6}, Lcom/byazt/vb/n;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/byazt/vb/uj;->c(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " code:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    invoke-static {v3, v0, v2}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 56
    :cond_6
    iget-object v0, v1, Lcom/byazt/lph/a;->a:Lcom/byazt/mv/tt;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/byazt/mv/tt;->c(I)V

    .line 57
    invoke-direct {p0, v12, p2, v11}, Lcom/byazt/lph/a;->c(Landroid/os/Handler;Ljava/util/List;Lcom/byazt/lph/ve;)V

    :cond_7
    :goto_0
    if-ne v10, v4, :cond_8

    .line 58
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->notify()V

    .line 59
    :cond_8
    monitor-exit p5

    return-void

    .line 60
    :cond_9
    :goto_1
    monitor-exit p5

    return-void

    :catchall_0
    move-exception v0

    .line 61
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c(Landroid/os/Handler;Ljava/util/List;Lcom/byazt/lph/ve;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;",
            "Lcom/byazt/lph/ve;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-virtual {p3}, Lcom/byazt/lph/ve;->uj()Z

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    invoke-static {p2, v1}, Lcom/byazt/ml/c;->tt(Ljava/util/List;Lcom/byazt/vb/n;)Z

    move-result p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    .line 64
    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/byazt/lph/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-wide/16 p1, 0x0

    .line 67
    iput-wide p1, p0, Lcom/byazt/lph/a;->uj:J

    const-string p1, "send reset busy"

    .line 68
    iget-object p2, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    const-string v0, "_flush"

    invoke-static {v0, p1, p2}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 69
    sget-object p1, Lcom/byazt/mv/tt;->c:Lcom/byazt/sl/c;

    invoke-virtual {p1}, Lcom/byazt/sl/c;->uj()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    invoke-static {p1, p2, v0}, Lcom/byazt/ml/tt;->c(Ljava/util/concurrent/atomic/AtomicLong;ILcom/byazt/vb/n;)V

    const/16 p1, 0x48

    const-string p2, "handle_result"

    .line 70
    invoke-virtual {p3, p1, p2}, Lcom/byazt/lph/ve;->c(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/lph/a;Lcom/byazt/lph/tt;Ljava/util/List;JLjava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/byazt/lph/a;->c(Lcom/byazt/lph/tt;Ljava/util/List;JLjava/lang/Object;I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/lph/a;Ljava/util/List;JILjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/byazt/lph/a;->tt(Ljava/util/List;JILjava/lang/Object;)V

    return-void
.end method

.method private c(Lcom/byazt/lph/tt;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/lph/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 16
    iget-boolean p1, p1, Lcom/byazt/lph/tt;->c:Z

    if-eqz p1, :cond_2

    .line 17
    invoke-static {}, Lcom/byazt/epi/c;->c()Ljava/util/List;

    move-result-object p1

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/vb/tt;

    .line 20
    invoke-interface {v0}, Lcom/byazt/vb/tt;->n()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 21
    iget-object v1, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    invoke-static {v0, v1}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    invoke-static {v0, v2}, Lcom/byazt/ml/c;->a(Lcom/byazt/vb/tt;Lcom/byazt/vb/n;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/vb/ve;

    if-eqz v3, :cond_1

    .line 24
    invoke-interface {v3, v1, v0}, Lcom/byazt/vb/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c(Lcom/byazt/lph/tt;Ljava/util/List;JLjava/lang/Object;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/lph/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;J",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    move-object v7, p1

    const/16 v0, 0x4e

    move/from16 v8, p6

    if-ne v8, v0, :cond_0

    return-void

    :cond_0
    if-eqz v7, :cond_9

    .line 31
    iget v0, v7, Lcom/byazt/lph/tt;->tt:I

    .line 32
    iget-boolean v1, v7, Lcom/byazt/lph/tt;->n:Z

    const/4 v2, -0x2

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    const/4 v0, -0x2

    :cond_2
    :goto_0
    const/16 v1, 0x1fe

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1ff

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v0, -0x2

    .line 33
    :cond_4
    iget-boolean v1, v7, Lcom/byazt/lph/tt;->c:Z

    if-nez v1, :cond_7

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_5

    const/16 v1, 0x1fd

    if-lt v0, v1, :cond_6

    :cond_5
    const/16 v1, 0x201

    if-le v0, v1, :cond_7

    :cond_6
    const/4 v1, -0x2

    goto :goto_1

    :cond_7
    move v1, v0

    :goto_1
    if-eqz p2, :cond_8

    .line 34
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-object v9, p0

    iget-object v0, v9, Lcom/byazt/lph/a;->tt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    goto :goto_2

    :cond_8
    move-object v9, p0

    :goto_2
    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move/from16 v6, p6

    move-object v7, p1

    .line 35
    invoke-direct/range {v0 .. v7}, Lcom/byazt/lph/a;->c(ILjava/util/List;JLjava/lang/Object;ILcom/byazt/lph/tt;)V

    return-void

    :cond_9
    move-object v9, p0

    const/4 v2, -0x1

    const/4 v0, 0x0

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move/from16 v7, p6

    move-object v8, v0

    .line 36
    invoke-direct/range {v1 .. v8}, Lcom/byazt/lph/a;->c(ILjava/util/List;JLjava/lang/Object;ILcom/byazt/lph/tt;)V

    return-void
.end method

.method private c(Ljava/util/List;JILjava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;JI",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    invoke-interface {v0}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0}, Lcom/byazt/vb/uj;->i()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    .line 12
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/vb/tt;

    invoke-interface {v2}, Lcom/byazt/vb/tt;->n()B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 13
    invoke-interface {v0}, Lcom/byazt/vb/uj;->x()Ljava/util/concurrent/Executor;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/byazt/lph/a;->tt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 15
    new-instance v0, Lcom/byazt/lph/a$1;

    const-string v4, "csj_log_upload"

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-wide v6, p2

    move v8, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/byazt/lph/a$1;-><init>(Lcom/byazt/lph/a;Ljava/lang/String;Ljava/util/List;JILjava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private c(Ljava/util/List;JLjava/lang/Object;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;J",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/byazt/lph/a;->tt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 26
    sget-object v0, Lcom/byazt/mv/tt;->c:Lcom/byazt/sl/c;

    invoke-virtual {v0}, Lcom/byazt/sl/c;->or()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/byazt/ml/tt;->c(Ljava/util/concurrent/atomic/AtomicLong;ILcom/byazt/vb/n;)V

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    invoke-interface {v0}, Lcom/byazt/vb/n;->da()Lcom/byazt/vb/sl;

    move-result-object v0

    new-instance v1, Lcom/byazt/lph/a$2;

    move-object v3, v1

    move-object v4, p0

    move-wide v5, p2

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/byazt/lph/a$2;-><init>(Lcom/byazt/lph/a;JLjava/lang/Object;I)V

    invoke-interface {v0, p1, v1}, Lcom/byazt/vb/sl;->c(Ljava/util/List;Lcom/byazt/vb/da;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "outer exception\uff1a"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    const-string p3, "_error"

    invoke-static {p3, p1, p2}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 29
    sget-object p1, Lcom/byazt/mv/tt;->c:Lcom/byazt/sl/c;

    invoke-virtual {p1}, Lcom/byazt/sl/c;->ve()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    invoke-static {p1, v2, p2}, Lcom/byazt/ml/tt;->c(Ljava/util/concurrent/atomic/AtomicLong;ILcom/byazt/vb/n;)V

    .line 30
    iget-object p1, p0, Lcom/byazt/lph/a;->tt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method private tt(Ljava/util/List;JILjava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;JI",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "_error"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/byazt/vb/tt;

    .line 10
    .line 11
    sget-object v3, Lcom/byazt/mv/tt;->c:Lcom/byazt/sl/c;

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/byazt/sl/c;->or()Ljava/util/concurrent/atomic/AtomicLong;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    .line 18
    .line 19
    invoke-static {v3, v2, v4}, Lcom/byazt/ml/tt;->c(Ljava/util/concurrent/atomic/AtomicLong;ILcom/byazt/vb/n;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Lcom/byazt/vb/tt;->uj()B

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lcom/byazt/epi/tt;->n()Lcom/byazt/gs/c;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1, p1}, Lcom/byazt/gs/c;->c(Ljava/util/List;)Lcom/byazt/lph/tt;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {p0, v1, p1}, Lcom/byazt/lph/a;->c(Lcom/byazt/lph/tt;Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget-object v3, v1, Lcom/byazt/lph/tt;->uj:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v4, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    .line 44
    .line 45
    invoke-static {p1, v3, v4}, Lcom/byazt/ml/c;->c(Ljava/util/List;Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    move-object v4, v1

    .line 49
    goto :goto_3

    .line 50
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    .line 51
    .line 52
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    .line 56
    .line 57
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Lcom/byazt/vb/tt;

    .line 75
    .line 76
    invoke-interface {v5}, Lcom/byazt/vb/tt;->sp()Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const-string v4, "stats_list"

    .line 85
    .line 86
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :catch_0
    move-exception v3

    .line 91
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v5, "json exception:"

    .line 94
    .line 95
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    iget-object v4, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    .line 110
    .line 111
    invoke-static {v0, v3, v4}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-static {}, Lcom/byazt/epi/tt;->n()Lcom/byazt/gs/c;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-interface {v3, v1}, Lcom/byazt/gs/c;->c(Lorg/json/JSONObject;)Lcom/byazt/lph/tt;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    goto :goto_0

    .line 123
    :goto_3
    iget-object v1, p0, Lcom/byazt/lph/a;->tt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 126
    .line 127
    .line 128
    move-object v3, p0

    .line 129
    move-object v5, p1

    .line 130
    move-wide v6, p2

    .line 131
    move-object v8, p5

    .line 132
    move v9, p4

    .line 133
    invoke-direct/range {v3 .. v9}, Lcom/byazt/lph/a;->c(Lcom/byazt/lph/tt;Ljava/util/List;JLjava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :catchall_0
    move-exception p1

    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string p3, "inner exception:"

    .line 141
    .line 142
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iget-object p2, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    .line 157
    .line 158
    invoke-static {v0, p1, p2}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 159
    .line 160
    .line 161
    sget-object p1, Lcom/byazt/mv/tt;->c:Lcom/byazt/sl/c;

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/byazt/sl/c;->ve()Ljava/util/concurrent/atomic/AtomicLong;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iget-object p2, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    .line 168
    .line 169
    invoke-static {p1, v2, p2}, Lcom/byazt/ml/tt;->c(Ljava/util/concurrent/atomic/AtomicLong;ILcom/byazt/vb/n;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/byazt/lph/a;->tt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 175
    .line 176
    .line 177
    return-void
.end method


# virtual methods
.method public c(IJLandroid/os/Handler;)V
    .locals 6

    const-string v0, "_error"

    if-nez p4, :cond_0

    const-string p1, "mHandler == null"

    .line 71
    iget-object p2, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    invoke-static {v0, p1, p2}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 72
    invoke-virtual {p4, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {p4, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/byazt/lph/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 75
    rem-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long v2, v2, p2

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "sendBusyMsg:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "  retryCount:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " delayTime:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    invoke-static {v0, p2, p3}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 77
    invoke-virtual {p4, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    const-string p1, "sendBusyMsg error state"

    .line 78
    iget-object p2, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    invoke-static {v0, p1, p2}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void
.end method

.method public c(Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/lph/a;->a:Lcom/byazt/mv/tt;

    invoke-virtual {v0}, Lcom/byazt/mv/tt;->uj()Lcom/byazt/lph/ve;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/lph/a;->ve:Lcom/byazt/lph/ve;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 5
    iget-object v0, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    invoke-static {p1, p3, p2, v0}, Lcom/byazt/ml/c;->c(Ljava/util/List;ILjava/lang/String;Lcom/byazt/vb/n;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/lph/a;->n:Lcom/byazt/vb/n;

    invoke-interface {v0}, Lcom/byazt/vb/n;->da()Lcom/byazt/vb/sl;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move v6, p3

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/byazt/lph/a;->c(Ljava/util/List;JLjava/lang/Object;I)V

    return-void

    .line 8
    :cond_0
    invoke-static {p1, p2}, Lcom/byazt/ml/c;->c(Ljava/util/List;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/byazt/lph/a;->c(Ljava/util/List;JILjava/lang/Object;)V

    return-void
.end method
