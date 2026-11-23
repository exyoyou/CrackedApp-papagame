.class public final Lcom/byazt/jb/i$tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/mk/my;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f,
        0x791
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/jb/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "tt"
.end annotation


# static fields
.field public static final synthetic ve:Z = true


# instance fields
.field public final a:Lcom/byazt/mk/ve;

.field public c:Z

.field public final n:Lcom/byazt/mk/ve;

.field public final sp:J

.field public tt:Z

.field public final synthetic uj:Lcom/byazt/jb/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/byazt/jb/i;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

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
    iput-object p1, p0, Lcom/byazt/jb/i$tt;->n:Lcom/byazt/mk/ve;

    .line 12
    .line 13
    new-instance p1, Lcom/byazt/mk/ve;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/byazt/mk/ve;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/byazt/jb/i$tt;->a:Lcom/byazt/mk/ve;

    .line 19
    .line 20
    iput-wide p2, p0, Lcom/byazt/jb/i$tt;->sp:J

    .line 21
    .line 22
    return-void
.end method

.method private tt()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/jb/i;->a:Lcom/byazt/jb/i$ve;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/mk/c;->c()V

    .line 6
    .line 7
    .line 8
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/jb/i$tt;->a:Lcom/byazt/mk/ve;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/mk/ve;->tt()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/byazt/jb/i$tt;->tt:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/byazt/jb/i$tt;->c:Z

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/byazt/jb/i;->x:Lcom/byazt/jb/tt;

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/byazt/jb/i;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/byazt/jb/i;->a:Lcom/byazt/jb/i$ve;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/byazt/jb/i$ve;->x()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    iget-object v1, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/byazt/jb/i;->a:Lcom/byazt/jb/i$ve;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/byazt/jb/i$ve;->x()V

    .line 52
    .line 53
    .line 54
    throw v0
.end method

.method private ve()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/byazt/jb/i$tt;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/byazt/jb/i;->x:Lcom/byazt/jb/tt;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/byazt/jb/z;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/byazt/jb/i;->x:Lcom/byazt/jb/tt;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/byazt/jb/z;-><init>(Lcom/byazt/jb/tt;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 23
    .line 24
    const-string v1, "stream closed"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method


# virtual methods
.method public c(Lcom/byazt/mk/ve;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    .line 1
    iget-object v2, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    monitor-enter v2

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/byazt/jb/i$tt;->tt()V

    .line 3
    invoke-direct {p0}, Lcom/byazt/jb/i$tt;->ve()V

    .line 4
    iget-object v3, p0, Lcom/byazt/jb/i$tt;->a:Lcom/byazt/mk/ve;

    invoke-virtual {v3}, Lcom/byazt/mk/ve;->tt()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    monitor-exit v2

    const-wide/16 p1, -0x1

    return-wide p1

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/byazt/jb/i$tt;->a:Lcom/byazt/mk/ve;

    invoke-virtual {v3}, Lcom/byazt/mk/ve;->tt()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Lcom/byazt/mk/ve;->c(Lcom/byazt/mk/ve;J)J

    move-result-wide p1

    .line 6
    iget-object p3, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    iget-wide v3, p3, Lcom/byazt/jb/i;->c:J

    add-long/2addr v3, p1

    iput-wide v3, p3, Lcom/byazt/jb/i;->c:J

    .line 7
    iget-object p3, p3, Lcom/byazt/jb/i;->uj:Lcom/byazt/jb/sp;

    iget-object p3, p3, Lcom/byazt/jb/sp;->t:Lcom/byazt/jb/yp;

    .line 8
    invoke-virtual {p3}, Lcom/byazt/jb/yp;->uj()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v5, p3

    cmp-long p3, v3, v5

    if-ltz p3, :cond_1

    .line 9
    iget-object p3, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    iget-object v3, p3, Lcom/byazt/jb/i;->uj:Lcom/byazt/jb/sp;

    iget v4, p3, Lcom/byazt/jb/i;->ve:I

    iget-wide v5, p3, Lcom/byazt/jb/i;->c:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/byazt/jb/sp;->c(IJ)V

    .line 10
    iget-object p3, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    iput-wide v0, p3, Lcom/byazt/jb/i;->c:J

    .line 11
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    iget-object p3, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    iget-object p3, p3, Lcom/byazt/jb/i;->uj:Lcom/byazt/jb/sp;

    monitor-enter p3

    .line 13
    :try_start_1
    iget-object v2, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    iget-object v2, v2, Lcom/byazt/jb/i;->uj:Lcom/byazt/jb/sp;

    iget-wide v3, v2, Lcom/byazt/jb/sp;->da:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lcom/byazt/jb/sp;->da:J

    .line 14
    iget-object v2, v2, Lcom/byazt/jb/sp;->t:Lcom/byazt/jb/yp;

    .line 15
    invoke-virtual {v2}, Lcom/byazt/jb/yp;->uj()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-ltz v2, :cond_2

    .line 16
    iget-object v2, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    iget-object v2, v2, Lcom/byazt/jb/i;->uj:Lcom/byazt/jb/sp;

    iget-wide v3, v2, Lcom/byazt/jb/sp;->da:J

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/byazt/jb/sp;->c(IJ)V

    .line 17
    iget-object v2, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    iget-object v2, v2, Lcom/byazt/jb/i;->uj:Lcom/byazt/jb/sp;

    iput-wide v0, v2, Lcom/byazt/jb/sp;->da:J

    .line 18
    :cond_2
    monitor-exit p3

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 19
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount < 0: "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Lcom/byazt/mk/gt;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    iget-object v0, v0, Lcom/byazt/jb/i;->a:Lcom/byazt/jb/i$ve;

    return-object v0
.end method

.method public c(Lcom/byazt/mk/n;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    sget-boolean v0, Lcom/byazt/jb/i$tt;->ve:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_8

    .line 22
    iget-object v2, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    monitor-enter v2

    .line 23
    :try_start_0
    iget-boolean v3, p0, Lcom/byazt/jb/i$tt;->tt:Z

    .line 24
    iget-object v4, p0, Lcom/byazt/jb/i$tt;->a:Lcom/byazt/mk/ve;

    invoke-virtual {v4}, Lcom/byazt/mk/ve;->tt()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lcom/byazt/jb/i$tt;->sp:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 25
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    .line 26
    invoke-interface {p1, p2, p3}, Lcom/byazt/mk/n;->x(J)V

    .line 27
    iget-object p1, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    sget-object p2, Lcom/byazt/jb/tt;->uj:Lcom/byazt/jb/tt;

    invoke-virtual {p1, p2}, Lcom/byazt/jb/i;->tt(Lcom/byazt/jb/tt;)V

    return-void

    :cond_3
    if-eqz v3, :cond_4

    .line 28
    invoke-interface {p1, p2, p3}, Lcom/byazt/mk/n;->x(J)V

    return-void

    .line 29
    :cond_4
    iget-object v2, p0, Lcom/byazt/jb/i$tt;->n:Lcom/byazt/mk/ve;

    invoke-interface {p1, v2, p2, p3}, Lcom/byazt/mk/my;->c(Lcom/byazt/mk/ve;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    sub-long/2addr p2, v2

    .line 30
    iget-object v2, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    monitor-enter v2

    .line 31
    :try_start_1
    iget-object v3, p0, Lcom/byazt/jb/i$tt;->a:Lcom/byazt/mk/ve;

    invoke-virtual {v3}, Lcom/byazt/mk/ve;->tt()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    .line 32
    :goto_2
    iget-object v0, p0, Lcom/byazt/jb/i$tt;->a:Lcom/byazt/mk/ve;

    iget-object v1, p0, Lcom/byazt/jb/i$tt;->n:Lcom/byazt/mk/ve;

    invoke-virtual {v0, v1}, Lcom/byazt/mk/ve;->c(Lcom/byazt/mk/my;)J

    if-eqz v8, :cond_6

    .line 33
    iget-object v0, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 34
    :cond_6
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 35
    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 36
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_8
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/byazt/jb/i$tt;->c:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/jb/i$tt;->a:Lcom/byazt/mk/ve;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/byazt/mk/ve;->rh()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 15
    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v0, p0, Lcom/byazt/jb/i$tt;->uj:Lcom/byazt/jb/i;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/jb/i;->da()V

    .line 21
    .line 22
    .line 23
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
