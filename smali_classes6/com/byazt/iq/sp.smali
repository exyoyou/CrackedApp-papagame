.class public final Lcom/byazt/iq/sp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xb3,
        0x5b
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/iq/sp$c;
    }
.end annotation


# static fields
.field public static final synthetic uj:Z = true


# instance fields
.field public a:Lcom/byazt/eg/eo;

.field public final c:Lcom/byazt/eg/c;

.field public da:I

.field public final i:Lcom/byazt/iq/a;

.field public n:Lcom/byazt/iq/a$c;

.field public sl:Lcom/byazt/iq/ve;

.field public final sp:Lcom/byazt/eg/da;

.field public t:Z

.field public final tt:Lcom/byazt/eg/n;

.field public u:Z

.field public final ve:Lcom/byazt/eg/m;

.field public final x:Ljava/lang/Object;

.field public yp:Z

.field public z:Lcom/byazt/yx/ve;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/byazt/eg/da;Lcom/byazt/eg/c;Lcom/byazt/eg/n;Lcom/byazt/eg/m;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/iq/sp;->c:Lcom/byazt/eg/c;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/iq/sp;->tt:Lcom/byazt/eg/n;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/iq/sp;->ve:Lcom/byazt/eg/m;

    .line 11
    .line 12
    new-instance p1, Lcom/byazt/iq/a;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/byazt/iq/sp;->x()Lcom/byazt/iq/uj;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p1, p2, v0, p3, p4}, Lcom/byazt/iq/a;-><init>(Lcom/byazt/eg/c;Lcom/byazt/iq/uj;Lcom/byazt/eg/n;Lcom/byazt/eg/m;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/byazt/iq/sp;->i:Lcom/byazt/iq/a;

    .line 22
    .line 23
    iput-object p5, p0, Lcom/byazt/iq/sp;->x:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method

.method private c(IIIZ)Lcom/byazt/iq/ve;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 20
    iget-object v2, v1, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    monitor-enter v2

    .line 21
    :try_start_0
    iget-boolean v0, v1, Lcom/byazt/iq/sp;->u:Z

    if-nez v0, :cond_f

    .line 22
    iget-object v0, v1, Lcom/byazt/iq/sp;->z:Lcom/byazt/yx/ve;

    if-nez v0, :cond_e

    .line 23
    iget-boolean v0, v1, Lcom/byazt/iq/sp;->yp:Z

    if-nez v0, :cond_d

    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/byazt/iq/sp;->sp()Ljava/net/Socket;

    move-result-object v0

    .line 25
    iget-object v3, v1, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_2

    .line 26
    sget-object v7, Lcom/byazt/kh/c;->c:Lcom/byazt/kh/c;

    iget-object v8, v1, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    iget-object v9, v1, Lcom/byazt/iq/sp;->c:Lcom/byazt/eg/c;

    invoke-virtual {v7, v8, v9, v1, v4}, Lcom/byazt/kh/c;->c(Lcom/byazt/eg/da;Lcom/byazt/eg/c;Lcom/byazt/iq/sp;Lcom/byazt/eg/eo;)Lcom/byazt/iq/ve;

    .line 27
    iget-object v7, v1, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    if-eqz v7, :cond_1

    move-object v3, v7

    const/4 v8, 0x1

    move-object v7, v4

    goto :goto_2

    .line 28
    :cond_1
    iget-object v7, v1, Lcom/byazt/iq/sp;->a:Lcom/byazt/eg/eo;

    goto :goto_1

    :cond_2
    move-object v7, v4

    :goto_1
    const/4 v8, 0x0

    .line 29
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 30
    invoke-static {v0}, Lcom/byazt/kh/ve;->c(Ljava/net/Socket;)V

    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    if-nez v7, :cond_5

    .line 31
    iget-object v0, v1, Lcom/byazt/iq/sp;->n:Lcom/byazt/iq/a$c;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/byazt/iq/a$c;->c()Z

    move-result v0

    if-nez v0, :cond_5

    .line 32
    :cond_4
    iget-object v0, v1, Lcom/byazt/iq/sp;->i:Lcom/byazt/iq/a;

    invoke-virtual {v0}, Lcom/byazt/iq/a;->tt()Lcom/byazt/iq/a$c;

    move-result-object v0

    iput-object v0, v1, Lcom/byazt/iq/sp;->n:Lcom/byazt/iq/a$c;

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 33
    :goto_3
    iget-object v9, v1, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    monitor-enter v9

    .line 34
    :try_start_1
    iget-boolean v2, v1, Lcom/byazt/iq/sp;->yp:Z

    if-nez v2, :cond_c

    if-eqz v0, :cond_7

    .line 35
    iget-object v0, v1, Lcom/byazt/iq/sp;->n:Lcom/byazt/iq/a$c;

    invoke-virtual {v0}, Lcom/byazt/iq/a$c;->ve()Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v2, :cond_7

    .line 37
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/byazt/eg/eo;

    .line 38
    sget-object v12, Lcom/byazt/kh/c;->c:Lcom/byazt/kh/c;

    iget-object v13, v1, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    iget-object v14, v1, Lcom/byazt/iq/sp;->c:Lcom/byazt/eg/c;

    invoke-virtual {v12, v13, v14, v1, v11}, Lcom/byazt/kh/c;->c(Lcom/byazt/eg/da;Lcom/byazt/eg/c;Lcom/byazt/iq/sp;Lcom/byazt/eg/eo;)Lcom/byazt/iq/ve;

    .line 39
    iget-object v12, v1, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    if-eqz v12, :cond_6

    .line 40
    iput-object v11, v1, Lcom/byazt/iq/sp;->a:Lcom/byazt/eg/eo;

    move-object v3, v12

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    if-nez v8, :cond_9

    if-nez v7, :cond_8

    .line 41
    iget-object v0, v1, Lcom/byazt/iq/sp;->n:Lcom/byazt/iq/a$c;

    invoke-virtual {v0}, Lcom/byazt/iq/a$c;->tt()Lcom/byazt/eg/eo;

    move-result-object v7

    .line 42
    :cond_8
    iput-object v7, v1, Lcom/byazt/iq/sp;->a:Lcom/byazt/eg/eo;

    .line 43
    iput v6, v1, Lcom/byazt/iq/sp;->da:I

    .line 44
    new-instance v3, Lcom/byazt/iq/ve;

    iget-object v0, v1, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    invoke-direct {v3, v0, v7}, Lcom/byazt/iq/ve;-><init>(Lcom/byazt/eg/da;Lcom/byazt/eg/eo;)V

    .line 45
    invoke-virtual {v1, v3, v6}, Lcom/byazt/iq/sp;->c(Lcom/byazt/iq/ve;Z)V

    .line 46
    :cond_9
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_a

    return-object v3

    .line 47
    :cond_a
    iget-object v15, v1, Lcom/byazt/iq/sp;->tt:Lcom/byazt/eg/n;

    iget-object v0, v1, Lcom/byazt/iq/sp;->ve:Lcom/byazt/eg/m;

    move-object v10, v3

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Lcom/byazt/iq/ve;->c(IIIZLcom/byazt/eg/n;Lcom/byazt/eg/m;)V

    .line 48
    invoke-direct/range {p0 .. p0}, Lcom/byazt/iq/sp;->x()Lcom/byazt/iq/uj;

    move-result-object v0

    invoke-virtual {v3}, Lcom/byazt/iq/ve;->c()Lcom/byazt/eg/eo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/iq/uj;->tt(Lcom/byazt/eg/eo;)V

    .line 49
    iget-object v2, v1, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    monitor-enter v2

    .line 50
    :try_start_2
    iput-boolean v5, v1, Lcom/byazt/iq/sp;->t:Z

    .line 51
    sget-object v0, Lcom/byazt/kh/c;->c:Lcom/byazt/kh/c;

    iget-object v5, v1, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    invoke-virtual {v0, v5, v3}, Lcom/byazt/kh/c;->tt(Lcom/byazt/eg/da;Lcom/byazt/iq/ve;)V

    .line 52
    invoke-virtual {v3}, Lcom/byazt/iq/ve;->n()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 53
    sget-object v0, Lcom/byazt/kh/c;->c:Lcom/byazt/kh/c;

    iget-object v3, v1, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    iget-object v4, v1, Lcom/byazt/iq/sp;->c:Lcom/byazt/eg/c;

    invoke-virtual {v0, v3, v4, v1}, Lcom/byazt/kh/c;->c(Lcom/byazt/eg/da;Lcom/byazt/eg/c;Lcom/byazt/iq/sp;)Ljava/net/Socket;

    move-result-object v4

    .line 54
    iget-object v3, v1, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    .line 55
    :cond_b
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    invoke-static {v4}, Lcom/byazt/kh/ve;->c(Ljava/net/Socket;)V

    return-object v3

    :catchall_0
    move-exception v0

    .line 57
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 58
    :cond_c
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 59
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 60
    :cond_d
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "codec != null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "released"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 63
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private c(IIIZZ)Lcom/byazt/iq/ve;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/iq/sp;->c(IIIZ)Lcom/byazt/iq/ve;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    monitor-enter v1

    .line 14
    :try_start_0
    iget v2, v0, Lcom/byazt/iq/ve;->tt:I

    if-nez v2, :cond_0

    .line 15
    monitor-exit v1

    return-object v0

    .line 16
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v0, p5}, Lcom/byazt/iq/ve;->c(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/byazt/iq/sp;->uj()V

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private c(ZZZ)Ljava/net/Socket;
    .locals 1

    .line 76
    sget-boolean v0, Lcom/byazt/iq/sp;->uj:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 77
    iput-object v0, p0, Lcom/byazt/iq/sp;->z:Lcom/byazt/yx/ve;

    :cond_2
    const/4 p3, 0x1

    if-eqz p2, :cond_3

    .line 78
    iput-boolean p3, p0, Lcom/byazt/iq/sp;->u:Z

    .line 79
    :cond_3
    iget-object p2, p0, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    if-eqz p2, :cond_7

    if-eqz p1, :cond_4

    .line 80
    iput-boolean p3, p2, Lcom/byazt/iq/ve;->c:Z

    .line 81
    :cond_4
    iget-object p1, p0, Lcom/byazt/iq/sp;->z:Lcom/byazt/yx/ve;

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/byazt/iq/sp;->u:Z

    if-nez p1, :cond_5

    iget-boolean p1, p2, Lcom/byazt/iq/ve;->c:Z

    if-eqz p1, :cond_7

    .line 82
    :cond_5
    invoke-direct {p0, p2}, Lcom/byazt/iq/sp;->tt(Lcom/byazt/iq/ve;)V

    .line 83
    iget-object p1, p0, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    iget-object p1, p1, Lcom/byazt/iq/ve;->uj:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 84
    iget-object p1, p0, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/byazt/iq/ve;->n:J

    .line 85
    sget-object p1, Lcom/byazt/kh/c;->c:Lcom/byazt/kh/c;

    iget-object p2, p0, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    iget-object p3, p0, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    invoke-virtual {p1, p2, p3}, Lcom/byazt/kh/c;->c(Lcom/byazt/eg/da;Lcom/byazt/iq/ve;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 86
    iget-object p1, p0, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    invoke-virtual {p1}, Lcom/byazt/iq/ve;->ve()Ljava/net/Socket;

    move-result-object p1

    goto :goto_1

    :cond_6
    move-object p1, v0

    .line 87
    :goto_1
    iput-object v0, p0, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    move-object v0, p1

    :cond_7
    return-object v0
.end method

.method private sp()Ljava/net/Socket;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/byazt/iq/sp;->uj:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/byazt/iq/ve;->c:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, v1, v1, v0}, Lcom/byazt/iq/sp;->c(ZZZ)Ljava/net/Socket;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    return-object v0
.end method

.method private tt(Lcom/byazt/iq/ve;)V
    .locals 3

    .line 2
    iget-object v0, p1, Lcom/byazt/iq/ve;->uj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p1, Lcom/byazt/iq/ve;->uj:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 4
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 5
    iget-object p1, p1, Lcom/byazt/iq/ve;->uj:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private x()Lcom/byazt/iq/uj;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/kh/c;->c:Lcom/byazt/kh/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/kh/c;->c(Lcom/byazt/eg/da;)Lcom/byazt/iq/uj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iq/sp;->a:Lcom/byazt/eg/eo;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/iq/sp;->n:Lcom/byazt/iq/a$c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/iq/a$c;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/iq/sp;->i:Lcom/byazt/iq/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/iq/a;->c()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    return v0

    .line 26
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 27
    return v0
.end method

.method public c()Lcom/byazt/yx/ve;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/byazt/iq/sp;->z:Lcom/byazt/yx/ve;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(Lcom/byazt/eg/gu;Lcom/byazt/eg/gt$c;Z)Lcom/byazt/yx/ve;
    .locals 6

    .line 1
    invoke-interface {p2}, Lcom/byazt/eg/gt$c;->tt()I

    move-result v1

    .line 2
    invoke-interface {p2}, Lcom/byazt/eg/gt$c;->ve()I

    move-result v2

    .line 3
    invoke-interface {p2}, Lcom/byazt/eg/gt$c;->uj()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Lcom/byazt/eg/gu;->rh()Z

    move-result v4

    move-object v0, p0

    move v5, p3

    .line 5
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/byazt/iq/sp;->c(IIIZZ)Lcom/byazt/iq/ve;

    move-result-object p3

    .line 6
    invoke-virtual {p3, p1, p2, p0}, Lcom/byazt/iq/ve;->c(Lcom/byazt/eg/gu;Lcom/byazt/eg/gt$c;Lcom/byazt/iq/sp;)Lcom/byazt/yx/ve;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    monitor-enter p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    iput-object p1, p0, Lcom/byazt/iq/sp;->z:Lcom/byazt/yx/ve;

    .line 9
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Lcom/byazt/iq/n;

    invoke-direct {p2, p1}, Lcom/byazt/iq/n;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public c(Lcom/byazt/iq/ve;)Ljava/net/Socket;
    .locals 3

    .line 111
    sget-boolean v0, Lcom/byazt/iq/sp;->uj:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 112
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/iq/sp;->z:Lcom/byazt/yx/ve;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    iget-object v0, v0, Lcom/byazt/iq/ve;->uj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 113
    iget-object v0, p0, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    iget-object v0, v0, Lcom/byazt/iq/ve;->uj:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 114
    invoke-direct {p0, v1, v2, v2}, Lcom/byazt/iq/sp;->c(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 115
    iput-object p1, p0, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    .line 116
    iget-object p1, p1, Lcom/byazt/iq/ve;->uj:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 117
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public c(Lcom/byazt/iq/ve;Z)V
    .locals 1

    .line 105
    sget-boolean v0, Lcom/byazt/iq/sp;->uj:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 106
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    if-nez v0, :cond_2

    .line 107
    iput-object p1, p0, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    .line 108
    iput-boolean p2, p0, Lcom/byazt/iq/sp;->t:Z

    .line 109
    iget-object p1, p1, Lcom/byazt/iq/ve;->uj:Ljava/util/List;

    new-instance p2, Lcom/byazt/iq/sp$c;

    iget-object v0, p0, Lcom/byazt/iq/sp;->x:Ljava/lang/Object;

    invoke-direct {p2, p0, v0}, Lcom/byazt/iq/sp$c;-><init>(Lcom/byazt/iq/sp;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 110
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public c(Ljava/io/IOException;)V
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    monitor-enter v0

    .line 89
    :try_start_0
    instance-of v1, p1, Lcom/byazt/jb/z;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 90
    check-cast p1, Lcom/byazt/jb/z;

    .line 91
    iget-object p1, p1, Lcom/byazt/jb/z;->c:Lcom/byazt/jb/tt;

    sget-object v1, Lcom/byazt/jb/tt;->n:Lcom/byazt/jb/tt;

    if-ne p1, v1, :cond_0

    .line 92
    iget v5, p0, Lcom/byazt/iq/sp;->da:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/byazt/iq/sp;->da:I

    :cond_0
    if-ne p1, v1, :cond_1

    .line 93
    iget p1, p0, Lcom/byazt/iq/sp;->da:I

    if-le p1, v3, :cond_6

    .line 94
    :cond_1
    iput-object v2, p0, Lcom/byazt/iq/sp;->a:Lcom/byazt/eg/eo;

    goto :goto_0

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    if-eqz v1, :cond_6

    .line 96
    invoke-virtual {v1}, Lcom/byazt/iq/ve;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p1, Lcom/byazt/jb/c;

    if-eqz v1, :cond_6

    .line 97
    :cond_3
    iget-object v1, p0, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    iget v1, v1, Lcom/byazt/iq/ve;->tt:I

    if-nez v1, :cond_5

    .line 98
    iget-object v1, p0, Lcom/byazt/iq/sp;->a:Lcom/byazt/eg/eo;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 99
    iget-object v5, p0, Lcom/byazt/iq/sp;->i:Lcom/byazt/iq/a;

    invoke-virtual {v5, v1, p1}, Lcom/byazt/iq/a;->c(Lcom/byazt/eg/eo;Ljava/io/IOException;)V

    .line 100
    :cond_4
    iput-object v2, p0, Lcom/byazt/iq/sp;->a:Lcom/byazt/eg/eo;

    :cond_5
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 101
    :goto_1
    invoke-direct {p0, p1, v4, v3}, Lcom/byazt/iq/sp;->c(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-static {p1}, Lcom/byazt/kh/ve;->c(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception p1

    .line 104
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c(ZLcom/byazt/yx/ve;JLjava/io/IOException;)V
    .locals 1

    .line 64
    iget-object p3, p0, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    monitor-enter p3

    if-eqz p2, :cond_2

    .line 65
    :try_start_0
    iget-object p4, p0, Lcom/byazt/iq/sp;->z:Lcom/byazt/yx/ve;

    if-ne p2, p4, :cond_2

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 66
    iget-object p4, p0, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    iget v0, p4, Lcom/byazt/iq/ve;->tt:I

    add-int/2addr v0, p2

    iput v0, p4, Lcom/byazt/iq/ve;->tt:I

    :cond_0
    const/4 p4, 0x0

    .line 67
    invoke-direct {p0, p1, p4, p2}, Lcom/byazt/iq/sp;->c(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 68
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {p1}, Lcom/byazt/kh/ve;->c(Ljava/net/Socket;)V

    if-eqz p5, :cond_1

    .line 70
    iget-object p1, p0, Lcom/byazt/iq/sp;->ve:Lcom/byazt/eg/m;

    iget-object p2, p0, Lcom/byazt/iq/sp;->tt:Lcom/byazt/eg/n;

    invoke-virtual {p1, p2, p5}, Lcom/byazt/eg/m;->c(Lcom/byazt/eg/n;Ljava/io/IOException;)V

    :cond_1
    return-void

    .line 71
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "expected "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/byazt/iq/sp;->z:Lcom/byazt/yx/ve;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " but was "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 72
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/byazt/iq/sp;->yp:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/iq/sp;->z:Lcom/byazt/yx/ve;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;

    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/byazt/yx/ve;->ve()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/byazt/iq/ve;->tt()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/iq/sp;->tt()Lcom/byazt/iq/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/iq/ve;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/iq/sp;->c:Lcom/byazt/eg/c;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/eg/c;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public declared-synchronized tt()Lcom/byazt/iq/ve;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/iq/sp;->sl:Lcom/byazt/iq/ve;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public uj()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-direct {p0, v1, v2, v2}, Lcom/byazt/iq/sp;->c(ZZZ)Ljava/net/Socket;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v1}, Lcom/byazt/kh/ve;->c(Ljava/net/Socket;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw v1
.end method

.method public ve()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/iq/sp;->sp:Lcom/byazt/eg/da;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-direct {p0, v2, v1, v2}, Lcom/byazt/iq/sp;->c(ZZZ)Ljava/net/Socket;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v1}, Lcom/byazt/kh/ve;->c(Ljava/net/Socket;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw v1
.end method
