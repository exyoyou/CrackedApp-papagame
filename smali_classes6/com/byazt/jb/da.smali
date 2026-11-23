.class public final Lcom/byazt/jb/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f,
        0x48
    }
.end annotation


# static fields
.field public static final tt:Ljava/util/logging/Logger;


# instance fields
.field public a:I

.field public final c:Lcom/byazt/jb/uj$tt;

.field public final n:Lcom/byazt/mk/ve;

.field public sp:Z

.field public final uj:Z

.field public final ve:Lcom/byazt/mk/uj;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/byazt/jb/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/byazt/jb/da;->tt:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/byazt/mk/uj;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/byazt/jb/da;->uj:Z

    .line 7
    .line 8
    new-instance p1, Lcom/byazt/mk/ve;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/byazt/mk/ve;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/byazt/jb/da;->n:Lcom/byazt/mk/ve;

    .line 14
    .line 15
    new-instance p2, Lcom/byazt/jb/uj$tt;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Lcom/byazt/jb/uj$tt;-><init>(Lcom/byazt/mk/ve;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/byazt/jb/da;->c:Lcom/byazt/jb/uj$tt;

    .line 21
    .line 22
    const/16 p1, 0x4000

    .line 23
    .line 24
    iput p1, p0, Lcom/byazt/jb/da;->a:I

    .line 25
    .line 26
    return-void
.end method

.method private static c(Lcom/byazt/mk/uj;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 80
    invoke-interface {p0, v0}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 81
    invoke-interface {p0, v0}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    and-int/lit16 p1, p1, 0xff

    .line 82
    invoke-interface {p0, p1}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    return-void
.end method

.method private tt(IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 14
    iget v2, p0, Lcom/byazt/jb/da;->a:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-long v4, v3

    sub-long/2addr p2, v4

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x9

    .line 15
    invoke-virtual {p0, p1, v3, v1, v0}, Lcom/byazt/jb/da;->c(IIBB)V

    .line 16
    iget-object v0, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    iget-object v1, p0, Lcom/byazt/jb/da;->n:Lcom/byazt/mk/ve;

    invoke-interface {v0, v1, v4, v5}, Lcom/byazt/mk/rh;->a_(Lcom/byazt/mk/ve;J)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/jb/da;->sp:Z

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/byazt/jb/da;->uj:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    sget-object v0, Lcom/byazt/jb/da;->tt:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    sget-object v3, Lcom/byazt/jb/n;->c:Lcom/byazt/mk/a;

    invoke-virtual {v3}, Lcom/byazt/mk/a;->n()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/byazt/kh/ve;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    sget-object v1, Lcom/byazt/jb/n;->c:Lcom/byazt/mk/a;

    invoke-virtual {v1}, Lcom/byazt/mk/a;->x()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/byazt/mk/uj;->ve([B)Lcom/byazt/mk/uj;

    .line 6
    iget-object v0, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    invoke-interface {v0}, Lcom/byazt/mk/uj;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(IBLcom/byazt/mk/ve;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/byazt/jb/da;->c(IIBB)V

    if-lez p4, :cond_0

    .line 44
    iget-object p1, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lcom/byazt/mk/rh;->a_(Lcom/byazt/mk/ve;J)V

    :cond_0
    return-void
.end method

.method public c(IIBB)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/byazt/jb/da;->tt:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v2, p1, p2, p3, p4}, Lcom/byazt/jb/n;->c(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 73
    :cond_0
    iget v0, p0, Lcom/byazt/jb/da;->a:I

    const/4 v1, 0x1

    if-gt p2, v0, :cond_2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    invoke-static {v0, p2}, Lcom/byazt/jb/da;->c(Lcom/byazt/mk/uj;I)V

    .line 75
    iget-object p2, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    .line 76
    iget-object p2, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lcom/byazt/mk/uj;->i(I)Lcom/byazt/mk/uj;

    .line 77
    iget-object p2, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Lcom/byazt/mk/uj;->sp(I)Lcom/byazt/mk/uj;

    return-void

    :cond_1
    new-array p2, v1, [Ljava/lang/Object;

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "reserved bit set: %s"

    invoke-static {p1, p2}, Lcom/byazt/jb/n;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {p2, p1}, Lcom/byazt/jb/n;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized c(IILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/byazt/jb/ve;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 17
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/jb/da;->sp:Z

    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/byazt/jb/da;->c:Lcom/byazt/jb/uj$tt;

    invoke-virtual {v0, p3}, Lcom/byazt/jb/uj$tt;->c(Ljava/util/List;)V

    .line 19
    iget-object p3, p0, Lcom/byazt/jb/da;->n:Lcom/byazt/mk/ve;

    invoke-virtual {p3}, Lcom/byazt/mk/ve;->tt()J

    move-result-wide v0

    .line 20
    iget p3, p0, Lcom/byazt/jb/da;->a:I

    const/4 v2, 0x4

    sub-int/2addr p3, v2

    int-to-long v3, p3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    int-to-long v3, p3

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    add-int/2addr p3, v2

    const/4 v2, 0x5

    .line 21
    invoke-virtual {p0, p1, p3, v2, v6}, Lcom/byazt/jb/da;->c(IIBB)V

    .line 22
    iget-object p3, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    const v2, 0x7fffffff

    and-int/2addr p2, v2

    invoke-interface {p3, p2}, Lcom/byazt/mk/uj;->sp(I)Lcom/byazt/mk/uj;

    .line 23
    iget-object p2, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    iget-object p3, p0, Lcom/byazt/jb/da;->n:Lcom/byazt/mk/ve;

    invoke-interface {p2, p3, v3, v4}, Lcom/byazt/mk/rh;->a_(Lcom/byazt/mk/ve;J)V

    if-lez v5, :cond_1

    sub-long/2addr v0, v3

    .line 24
    invoke-direct {p0, p1, v0, v1}, Lcom/byazt/jb/da;->tt(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    monitor-exit p0

    return-void

    .line 26
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 64
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/jb/da;->sp:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-eqz v3, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, p2, v0

    if-gtz v3, :cond_0

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 65
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/byazt/jb/da;->c(IIBB)V

    .line 66
    iget-object p1, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    long-to-int p3, p2

    invoke-interface {p1, p3}, Lcom/byazt/mk/uj;->sp(I)Lcom/byazt/mk/uj;

    .line 67
    iget-object p1, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    invoke-interface {p1}, Lcom/byazt/mk/uj;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 69
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v2

    .line 70
    invoke-static {p1, v0}, Lcom/byazt/jb/n;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 71
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(ILcom/byazt/jb/tt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 31
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/jb/da;->sp:Z

    if-nez v0, :cond_1

    .line 32
    iget v0, p2, Lcom/byazt/jb/tt;->sp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 33
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/byazt/jb/da;->c(IIBB)V

    .line 34
    iget-object p1, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    iget p2, p2, Lcom/byazt/jb/tt;->sp:I

    invoke-interface {p1, p2}, Lcom/byazt/mk/uj;->sp(I)Lcom/byazt/mk/uj;

    .line 35
    iget-object p1, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    invoke-interface {p1}, Lcom/byazt/mk/uj;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 37
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 38
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(ILcom/byazt/jb/tt;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 52
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/jb/da;->sp:Z

    if-nez v0, :cond_2

    .line 53
    iget v0, p2, Lcom/byazt/jb/tt;->sp:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 54
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    .line 55
    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/byazt/jb/da;->c(IIBB)V

    .line 56
    iget-object v0, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    invoke-interface {v0, p1}, Lcom/byazt/mk/uj;->sp(I)Lcom/byazt/mk/uj;

    .line 57
    iget-object p1, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    iget p2, p2, Lcom/byazt/jb/tt;->sp:I

    invoke-interface {p1, p2}, Lcom/byazt/mk/uj;->sp(I)Lcom/byazt/mk/uj;

    .line 58
    array-length p1, p3

    if-lez p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    invoke-interface {p1, p3}, Lcom/byazt/mk/uj;->ve([B)Lcom/byazt/mk/uj;

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    invoke-interface {p1}, Lcom/byazt/mk/uj;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    new-array p2, v2, [Ljava/lang/Object;

    .line 62
    invoke-static {p1, p2}, Lcom/byazt/jb/n;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 63
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcom/byazt/jb/yp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 9
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/jb/da;->sp:Z

    if-nez v0, :cond_1

    .line 10
    iget v0, p0, Lcom/byazt/jb/da;->a:I

    invoke-virtual {p1, v0}, Lcom/byazt/jb/yp;->uj(I)I

    move-result v0

    iput v0, p0, Lcom/byazt/jb/da;->a:I

    .line 11
    invoke-virtual {p1}, Lcom/byazt/jb/yp;->ve()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/byazt/jb/da;->c:Lcom/byazt/jb/uj$tt;

    invoke-virtual {p1}, Lcom/byazt/jb/yp;->ve()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/jb/uj$tt;->c(I)V

    :cond_0
    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/byazt/jb/da;->c(IIBB)V

    .line 14
    iget-object p1, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    invoke-interface {p1}, Lcom/byazt/mk/uj;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    .line 16
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(ZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 45
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/jb/da;->sp:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0x8

    const/4 v2, 0x6

    .line 46
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/byazt/jb/da;->c(IIBB)V

    .line 47
    iget-object p1, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    invoke-interface {p1, p2}, Lcom/byazt/mk/uj;->sp(I)Lcom/byazt/mk/uj;

    .line 48
    iget-object p1, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    invoke-interface {p1, p3}, Lcom/byazt/mk/uj;->sp(I)Lcom/byazt/mk/uj;

    .line 49
    iget-object p1, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    invoke-interface {p1}, Lcom/byazt/mk/uj;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 51
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(ZIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lcom/byazt/jb/ve;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 27
    :try_start_0
    iget-boolean p3, p0, Lcom/byazt/jb/da;->sp:Z

    if-nez p3, :cond_0

    .line 28
    invoke-virtual {p0, p1, p2, p4}, Lcom/byazt/jb/da;->c(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    .line 30
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(ZILcom/byazt/mk/ve;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 39
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/jb/da;->sp:Z

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/byazt/jb/da;->c(IBLcom/byazt/mk/ve;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 42
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(ZILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/byazt/jb/ve;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-boolean v0, p0, Lcom/byazt/jb/da;->sp:Z

    if-nez v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/byazt/jb/da;->c:Lcom/byazt/jb/uj$tt;

    invoke-virtual {v0, p3}, Lcom/byazt/jb/uj$tt;->c(Ljava/util/List;)V

    .line 85
    iget-object p3, p0, Lcom/byazt/jb/da;->n:Lcom/byazt/mk/ve;

    invoke-virtual {p3}, Lcom/byazt/mk/ve;->tt()J

    move-result-wide v0

    .line 86
    iget p3, p0, Lcom/byazt/jb/da;->a:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    int-to-long v2, p3

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 p1, v5, 0x1

    int-to-byte v5, p1

    :cond_1
    const/4 p1, 0x1

    .line 87
    invoke-virtual {p0, p2, p3, p1, v5}, Lcom/byazt/jb/da;->c(IIBB)V

    .line 88
    iget-object p1, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    iget-object p3, p0, Lcom/byazt/jb/da;->n:Lcom/byazt/mk/ve;

    invoke-interface {p1, p3, v2, v3}, Lcom/byazt/mk/rh;->a_(Lcom/byazt/mk/ve;J)V

    if-lez v4, :cond_2

    sub-long/2addr v0, v2

    .line 89
    invoke-direct {p0, p2, v0, v1}, Lcom/byazt/jb/da;->tt(IJ)V

    :cond_2
    return-void

    .line 90
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/byazt/jb/da;->sp:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/byazt/mk/rh;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public declared-synchronized tt()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/jb/da;->sp:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    invoke-interface {v0}, Lcom/byazt/mk/uj;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tt(Lcom/byazt/jb/yp;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/jb/da;->sp:Z

    if-nez v0, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/byazt/jb/yp;->tt()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/byazt/jb/da;->c(IIBB)V

    :goto_0
    const/16 v0, 0xa

    if-ge v2, v0, :cond_3

    .line 8
    invoke-virtual {p1, v2}, Lcom/byazt/jb/yp;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    const/4 v0, 0x7

    if-ne v2, v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    move v0, v2

    .line 9
    :goto_1
    iget-object v3, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    invoke-interface {v3, v0}, Lcom/byazt/mk/uj;->x(I)Lcom/byazt/mk/uj;

    .line 10
    iget-object v0, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    invoke-virtual {p1, v2}, Lcom/byazt/jb/yp;->tt(I)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/byazt/mk/uj;->sp(I)Lcom/byazt/mk/uj;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/byazt/jb/da;->ve:Lcom/byazt/mk/uj;

    invoke-interface {p1}, Lcom/byazt/mk/uj;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    .line 13
    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/jb/da;->a:I

    .line 2
    .line 3
    return v0
.end method
