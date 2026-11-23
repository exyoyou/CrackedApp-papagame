.class public final Lcom/byazt/jb/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/mk/rh;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f,
        0x40
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/jb/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# static fields
.field public static final synthetic ve:Z = true


# instance fields
.field public c:Z

.field public final n:Lcom/byazt/mk/ve;

.field public tt:Z

.field public final synthetic uj:Lcom/byazt/jb/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/byazt/jb/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/byazt/mk/ve;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/byazt/mk/ve;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/jb/i$c;->n:Lcom/byazt/mk/ve;

    .line 12
    .line 13
    return-void
.end method

.method private c(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    iget-object v1, v1, Lcom/byazt/jb/i;->sp:Lcom/byazt/jb/i$ve;

    invoke-virtual {v1}, Lcom/byazt/mk/c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    iget-wide v2, v1, Lcom/byazt/jb/i;->tt:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    iget-boolean v2, p0, Lcom/byazt/jb/i$c;->tt:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/byazt/jb/i$c;->c:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/byazt/jb/i;->x:Lcom/byazt/jb/tt;

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/byazt/jb/i;->t()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 5
    :cond_0
    :try_start_2
    iget-object v1, v1, Lcom/byazt/jb/i;->sp:Lcom/byazt/jb/i$ve;

    invoke-virtual {v1}, Lcom/byazt/jb/i$ve;->x()V

    .line 6
    iget-object v1, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    invoke-virtual {v1}, Lcom/byazt/jb/i;->sl()V

    .line 7
    iget-object v1, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    iget-wide v1, v1, Lcom/byazt/jb/i;->tt:J

    iget-object v3, p0, Lcom/byazt/jb/i$c;->n:Lcom/byazt/mk/ve;

    invoke-virtual {v3}, Lcom/byazt/mk/ve;->tt()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 8
    iget-object v1, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    iget-wide v2, v1, Lcom/byazt/jb/i;->tt:J

    sub-long/2addr v2, v9

    iput-wide v2, v1, Lcom/byazt/jb/i;->tt:J

    .line 9
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 10
    iget-object v0, v1, Lcom/byazt/jb/i;->sp:Lcom/byazt/jb/i$ve;

    invoke-virtual {v0}, Lcom/byazt/mk/c;->c()V

    .line 11
    :try_start_3
    iget-object v0, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    iget-object v5, v0, Lcom/byazt/jb/i;->uj:Lcom/byazt/jb/sp;

    iget v6, v0, Lcom/byazt/jb/i;->ve:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/byazt/jb/i$c;->n:Lcom/byazt/mk/ve;

    invoke-virtual {p1}, Lcom/byazt/mk/ve;->tt()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v7, 0x0

    :goto_1
    iget-object v8, p0, Lcom/byazt/jb/i$c;->n:Lcom/byazt/mk/ve;

    invoke-virtual/range {v5 .. v10}, Lcom/byazt/jb/sp;->c(IZLcom/byazt/mk/ve;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    iget-object p1, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    iget-object p1, p1, Lcom/byazt/jb/i;->sp:Lcom/byazt/jb/i$ve;

    invoke-virtual {p1}, Lcom/byazt/jb/i$ve;->x()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    iget-object v0, v0, Lcom/byazt/jb/i;->sp:Lcom/byazt/jb/i$ve;

    invoke-virtual {v0}, Lcom/byazt/jb/i$ve;->x()V

    .line 13
    throw p1

    :catchall_1
    move-exception p1

    .line 14
    :try_start_4
    iget-object v1, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    iget-object v1, v1, Lcom/byazt/jb/i;->sp:Lcom/byazt/jb/i$ve;

    invoke-virtual {v1}, Lcom/byazt/jb/i$ve;->x()V

    .line 15
    throw p1

    :catchall_2
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method


# virtual methods
.method public a_(Lcom/byazt/mk/ve;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/byazt/jb/i$c;->ve:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/jb/i$c;->n:Lcom/byazt/mk/ve;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/mk/ve;->a_(Lcom/byazt/mk/ve;J)V

    .line 23
    .line 24
    .line 25
    :goto_1
    iget-object p1, p0, Lcom/byazt/jb/i$c;->n:Lcom/byazt/mk/ve;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/byazt/mk/ve;->tt()J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    const-wide/16 v0, 0x4000

    .line 32
    .line 33
    cmp-long p3, p1, v0

    .line 34
    .line 35
    if-ltz p3, :cond_2

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/byazt/jb/i$c;->c(Z)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    return-void
.end method

.method public c()Lcom/byazt/mk/gt;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    iget-object v0, v0, Lcom/byazt/jb/i;->sp:Lcom/byazt/jb/i$ve;

    return-object v0
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/byazt/jb/i$c;->ve:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

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
    iget-object v0, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-boolean v1, p0, Lcom/byazt/jb/i$c;->c:Z

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    iget-object v0, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/byazt/jb/i;->n:Lcom/byazt/jb/i$c;

    .line 33
    .line 34
    iget-boolean v0, v0, Lcom/byazt/jb/i$c;->tt:Z

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/jb/i$c;->n:Lcom/byazt/mk/ve;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/byazt/mk/ve;->tt()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    const-wide/16 v4, 0x0

    .line 46
    .line 47
    cmp-long v0, v2, v4

    .line 48
    .line 49
    if-lez v0, :cond_3

    .line 50
    .line 51
    :goto_1
    iget-object v0, p0, Lcom/byazt/jb/i$c;->n:Lcom/byazt/mk/ve;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/byazt/mk/ve;->tt()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    cmp-long v0, v2, v4

    .line 58
    .line 59
    if-lez v0, :cond_4

    .line 60
    .line 61
    invoke-direct {p0, v1}, Lcom/byazt/jb/i$c;->c(Z)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    .line 66
    .line 67
    iget-object v2, v0, Lcom/byazt/jb/i;->uj:Lcom/byazt/jb/sp;

    .line 68
    .line 69
    iget v3, v0, Lcom/byazt/jb/i;->ve:I

    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    const/4 v5, 0x0

    .line 73
    const-wide/16 v6, 0x0

    .line 74
    .line 75
    invoke-virtual/range {v2 .. v7}, Lcom/byazt/jb/sp;->c(IZLcom/byazt/mk/ve;J)V

    .line 76
    .line 77
    .line 78
    :cond_4
    iget-object v2, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    .line 79
    .line 80
    monitor-enter v2

    .line 81
    :try_start_1
    iput-boolean v1, p0, Lcom/byazt/jb/i$c;->c:Z

    .line 82
    .line 83
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    iget-object v0, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/byazt/jb/i;->uj:Lcom/byazt/jb/sp;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/byazt/jb/sp;->tt()V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/byazt/jb/i;->da()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    throw v0

    .line 100
    :catchall_1
    move-exception v1

    .line 101
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    throw v1
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/byazt/jb/i$c;->ve:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

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
    iget-object v0, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/byazt/jb/i;->sl()V

    .line 26
    .line 27
    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :goto_1
    iget-object v0, p0, Lcom/byazt/jb/i$c;->n:Lcom/byazt/mk/ve;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/byazt/mk/ve;->tt()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    cmp-long v4, v0, v2

    .line 38
    .line 39
    if-lez v4, :cond_2

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/byazt/jb/i$c;->c(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/byazt/jb/i$c;->uj:Lcom/byazt/jb/i;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/byazt/jb/i;->uj:Lcom/byazt/jb/sp;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/byazt/jb/sp;->tt()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    return-void

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw v1
.end method
