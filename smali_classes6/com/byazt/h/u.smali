.class public Lcom/byazt/h/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x206,
        0x43
    }
.end annotation


# instance fields
.field public volatile a:J

.field public bx:Lcom/byazt/w/n;

.field public volatile c:Lcom/byazt/h/i;

.field public cu:Z

.field public d:I

.field public da:Ljava/lang/String;

.field public eo:I

.field public volatile gr:Z

.field public volatile gt:J

.field public gu:Ljava/util/concurrent/Future;

.field public h:I

.field public i:Ljava/lang/String;

.field public m:Lcom/byazt/t/uj;

.field public volatile md:Z

.field public volatile my:J

.field public volatile n:J

.field public nb:Z

.field public final nu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/h/i;",
            ">;"
        }
    .end annotation
.end field

.field public or:I

.field public p:Ljava/lang/Thread;

.field public pf:Z

.field public qp:Lcom/byazt/m/BaseException;

.field public volatile qy:J

.field public rh:J

.field public volatile rl:J

.field public final sl:Lcom/byazt/h/a;

.field public volatile sp:J

.field public final t:Lcom/byazt/h/ve;

.field public tt:Lcom/byazt/h/nu;

.field public final u:Lcom/byazt/t/DownloadInfo;

.field public volatile uj:J

.field public final ve:I

.field public x:Ljava/lang/String;

.field public final yp:Lcom/byazt/k/c;

.field public volatile yv:Z

.field public z:Lcom/byazt/hs/i;

.field public zb:J

.field public volatile zm:Z


# direct methods
.method public constructor <init>(Lcom/byazt/t/DownloadInfo;Lcom/byazt/h/sl;Lcom/byazt/h/ve;Lcom/byazt/h/nu;I)V
    .locals 2

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
    iput-object v0, p0, Lcom/byazt/h/u;->nu:Ljava/util/List;

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/byazt/h/u;->rl:J

    .line 14
    .line 15
    iput-object p1, p0, Lcom/byazt/h/u;->u:Lcom/byazt/t/DownloadInfo;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/byazt/h/u;->t:Lcom/byazt/h/ve;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {p1}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/byazt/h/u;->yp:Lcom/byazt/k/c;

    .line 30
    .line 31
    iput-object p4, p0, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    .line 32
    .line 33
    iput p5, p0, Lcom/byazt/h/u;->ve:I

    .line 34
    .line 35
    return-void
.end method

.method private c(Lcom/byazt/h/ve;Ljava/io/InputStream;)Lcom/byazt/h/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/byazt/m/BaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-interface {p1}, Lcom/byazt/h/ve;->tt()Lcom/byazt/h/c;

    move-result-object v0

    const/4 v1, -0x1

    .line 48
    :try_start_0
    iget-object v2, v0, Lcom/byazt/h/c;->c:[B

    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq p2, v1, :cond_1

    .line 49
    :try_start_1
    iput p2, v0, Lcom/byazt/h/c;->ve:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p2, v1, :cond_0

    .line 50
    invoke-interface {p1, v0}, Lcom/byazt/h/ve;->c(Lcom/byazt/h/c;)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v2

    goto :goto_0

    .line 51
    :cond_1
    :try_start_2
    new-instance v2, Lcom/byazt/m/BaseException;

    const-string v3, "probe"

    const/16 v4, 0x431

    invoke-direct {v2, v4, v3}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception v2

    const/4 p2, -0x1

    :goto_0
    if-ne p2, v1, :cond_2

    .line 52
    invoke-interface {p1, v0}, Lcom/byazt/h/ve;->c(Lcom/byazt/h/c;)V

    :cond_2
    throw v2
.end method

.method private c(Lcom/byazt/h/i;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/byazt/h/u;->sl()V

    .line 2
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/byazt/h/u;->tt(Lcom/byazt/h/i;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/h/u;->uj(Lcom/byazt/h/i;)V
    :try_end_0
    .catch Lcom/byazt/h/da; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-direct {p0}, Lcom/byazt/h/u;->i()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v1, "SegmentReader"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download: e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", threadIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/byazt/h/u;->ve:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reconnect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/byazt/h/u;->zm:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", closed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/byazt/h/u;->gr:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/byazt/h/u;->gr:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/byazt/h/u;->i()V

    return v2

    .line 8
    :cond_0
    :try_start_2
    iget-boolean v1, p0, Lcom/byazt/h/u;->zm:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v3, "download"

    if-eqz v1, :cond_2

    .line 9
    :try_start_3
    iput-boolean v2, p0, Lcom/byazt/h/u;->zm:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 10
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 11
    :try_start_5
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 12
    :goto_1
    iget-boolean v0, p0, Lcom/byazt/h/u;->yv:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v0, :cond_1

    .line 13
    :goto_2
    invoke-direct {p0}, Lcom/byazt/h/u;->i()V

    goto :goto_0

    .line 14
    :cond_1
    :try_start_6
    iput-boolean v2, p0, Lcom/byazt/h/u;->yv:Z

    .line 15
    new-instance p1, Lcom/byazt/h/da;

    const/4 v0, 0x5

    invoke-direct {p1, v0, v3}, Lcom/byazt/h/da;-><init>(ILjava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 17
    instance-of v1, v0, Lcom/byazt/m/BaseException;

    if-eqz v1, :cond_3

    .line 18
    check-cast v0, Lcom/byazt/m/BaseException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 19
    :cond_3
    :try_start_7
    invoke-static {v0, v3}, Lcom/byazt/w/a;->c(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/byazt/m/BaseException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v0, 0x0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_3
    if-eqz v0, :cond_4

    .line 20
    :try_start_8
    invoke-direct {p0, p1, v0}, Lcom/byazt/h/u;->c(Lcom/byazt/h/i;Lcom/byazt/m/BaseException;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v0, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    invoke-direct {p0}, Lcom/byazt/h/u;->i()V

    return v2

    :catch_1
    move-exception p1

    .line 22
    :try_start_9
    iput-object p1, p0, Lcom/byazt/h/u;->qp:Lcom/byazt/m/BaseException;

    .line 23
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    .line 24
    invoke-direct {p0}, Lcom/byazt/h/u;->i()V

    throw p1
.end method

.method private c(Lcom/byazt/h/i;Lcom/byazt/m/BaseException;)Z
    .locals 8

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleDownloadFailed:  e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", curRetryCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/byazt/h/u;->eo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/byazt/h/u;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SegmentReader"

    invoke-static {v1, v0}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Lcom/byazt/h/u;->qp:Lcom/byazt/m/BaseException;

    .line 34
    iget-object v0, p0, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    invoke-virtual {v0}, Lcom/byazt/h/nu;->tt()V

    .line 35
    iget-object v1, p0, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    iget-object v3, p0, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    iget v6, p0, Lcom/byazt/h/u;->eo:I

    iget v7, p0, Lcom/byazt/h/u;->d:I

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v1 .. v7}, Lcom/byazt/h/a;->c(Lcom/byazt/h/u;Lcom/byazt/h/nu;Lcom/byazt/h/i;Lcom/byazt/m/BaseException;II)V

    .line 36
    iget v0, p0, Lcom/byazt/h/u;->eo:I

    iget v1, p0, Lcom/byazt/h/u;->d:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v2

    .line 37
    iput v0, p0, Lcom/byazt/h/u;->eo:I

    return v2

    .line 38
    :cond_0
    invoke-direct {p0, p2}, Lcom/byazt/h/u;->c(Lcom/byazt/m/BaseException;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    iget-object v1, p0, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    invoke-interface {v0, p0, v1, p1, p2}, Lcom/byazt/h/a;->c(Lcom/byazt/h/u;Lcom/byazt/h/nu;Lcom/byazt/h/i;Lcom/byazt/m/BaseException;)V

    const/4 p1, 0x0

    return p1
.end method

.method private c(Lcom/byazt/m/BaseException;)Z
    .locals 2

    .line 40
    invoke-static {p1}, Lcom/byazt/w/a;->ve(Lcom/byazt/m/BaseException;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    iget-object p1, p1, Lcom/byazt/h/nu;->c:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "https"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/byazt/h/u;->u:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isNeedHttpsToHttpRetry()Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    .line 44
    :cond_2
    iget-boolean p1, p0, Lcom/byazt/h/u;->cu:Z

    if-eqz p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/byazt/h/u;->cu:Z

    .line 46
    invoke-direct {p0}, Lcom/byazt/h/u;->t()V

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method private da()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/h/u;->z:Lcom/byazt/hs/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string v1, "SegmentReader"

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "closeConnection: thread = "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v3, p0, Lcom/byazt/h/u;->ve:I

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Lcom/byazt/hs/i;->uj()V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Lcom/byazt/hs/sp;->ve()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :catchall_0
    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/h/u;->uj:J

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/byazt/h/u;->zb:J

    .line 4
    .line 5
    const-wide/16 v0, -0x1

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/byazt/h/u;->uj:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/byazt/h/u;->n:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/byazt/h/u;->a:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/byazt/h/u;->sp:J

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/byazt/h/u;->da()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private sl()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/h/u;->cu:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/h/u;->t()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/byazt/h/nu;->uj:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/h/u;->u:Lcom/byazt/t/DownloadInfo;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getRetryCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/h/u;->u:Lcom/byazt/t/DownloadInfo;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getBackUpUrlRetryCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    iput v0, p0, Lcom/byazt/h/u;->d:I

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/byazt/h/u;->eo:I

    .line 24
    .line 25
    return-void
.end method

.method private tt(Lcom/byazt/h/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;,
            Lcom/byazt/m/i;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/h/u;->ve(Lcom/byazt/h/i;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    iget-object v1, p0, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    iget-object v2, p0, Lcom/byazt/h/u;->m:Lcom/byazt/t/uj;

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/byazt/h/a;->c(Lcom/byazt/h/u;Lcom/byazt/h/i;Lcom/byazt/h/nu;Lcom/byazt/t/uj;)V

    .line 3
    iget-object p1, p0, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    invoke-virtual {p1}, Lcom/byazt/h/nu;->ve()V

    return-void
.end method

.method private u()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/byazt/h/u;->my:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    iput-wide v2, p0, Lcom/byazt/h/u;->my:J

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-gtz v4, :cond_0

    .line 10
    .line 11
    const-wide v0, 0x7fffffffffffffffL

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    :cond_0
    return-wide v0
.end method

.method private uj(Lcom/byazt/h/i;)V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    iget-object v3, v1, Lcom/byazt/h/u;->t:Lcom/byazt/h/ve;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/byazt/h/u;->a:J

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/h/i;->n()J

    move-result-wide v4

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4
    :try_start_0
    iget-object v0, v1, Lcom/byazt/h/u;->z:Lcom/byazt/hs/i;

    invoke-interface {v0}, Lcom/byazt/hs/i;->c()Ljava/io/InputStream;

    move-result-object v10
    :try_end_0
    .catch Lcom/byazt/m/BaseException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    if-eqz v10, :cond_18

    .line 5
    :try_start_1
    iget-object v0, v1, Lcom/byazt/h/u;->m:Lcom/byazt/t/uj;

    invoke-virtual {v0}, Lcom/byazt/t/uj;->x()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-eqz v0, :cond_17

    .line 6
    invoke-direct {v1, v3, v10}, Lcom/byazt/h/u;->c(Lcom/byazt/h/ve;Ljava/io/InputStream;)Lcom/byazt/h/c;

    move-result-object v15
    :try_end_1
    .catch Lcom/byazt/m/BaseException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    .line 7
    :try_start_2
    iget-boolean v9, v1, Lcom/byazt/h/u;->zm:Z

    if-nez v9, :cond_16

    iget-boolean v9, v1, Lcom/byazt/h/u;->gr:Z

    if-nez v9, :cond_16

    .line 8
    iget-object v9, v1, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    invoke-interface {v9, v1, v2}, Lcom/byazt/h/a;->tt(Lcom/byazt/h/u;Lcom/byazt/h/i;)V

    .line 9
    iget-object v9, v1, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    invoke-interface {v9, v1, v2}, Lcom/byazt/h/a;->uj(Lcom/byazt/h/u;Lcom/byazt/h/i;)Lcom/byazt/h/n;

    move-result-object v9
    :try_end_2
    .catch Lcom/byazt/m/BaseException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    .line 10
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/h/i;->a()J

    move-result-wide v17

    const-wide v19, 0x7fffffffffffffffL

    const-wide/16 v21, 0x1

    cmp-long v23, v17, v13

    if-lez v23, :cond_0

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    add-long/2addr v11, v4

    sub-long v17, v11, v21

    goto :goto_0

    :cond_1
    move-wide/from16 v17, v19

    .line 11
    :goto_0
    iget v0, v15, Lcom/byazt/h/c;->ve:I
    :try_end_3
    .catch Lcom/byazt/m/BaseException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    int-to-long v11, v0

    add-long v13, v4, v11

    cmp-long v25, v13, v17

    if-lez v25, :cond_7

    add-long v17, v17, v21

    cmp-long v19, v13, v17

    if-lez v19, :cond_2

    sub-long v19, v13, v17

    sub-long v11, v11, v19

    long-to-int v12, v11

    if-lez v12, :cond_2

    if-ge v12, v0, :cond_2

    .line 12
    :try_start_4
    iput v12, v15, Lcom/byazt/h/c;->ve:I

    move-wide/from16 v13, v17

    .line 13
    :cond_2
    iput-wide v13, v1, Lcom/byazt/h/u;->rl:J

    .line 14
    invoke-interface {v9, v15}, Lcom/byazt/h/n;->tt(Lcom/byazt/h/c;)V
    :try_end_4
    .catch Lcom/byazt/m/BaseException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v10, v0, v8

    .line 15
    invoke-static {v0}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    .line 16
    :try_start_5
    invoke-interface {v3}, Lcom/byazt/h/ve;->tt()Lcom/byazt/h/c;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 17
    :try_start_6
    iput v6, v0, Lcom/byazt/h/c;->ve:I

    .line 18
    invoke-interface {v9, v0}, Lcom/byazt/h/n;->tt(Lcom/byazt/h/c;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    const/4 v9, 0x0

    goto :goto_2

    :catchall_0
    nop

    move-object v9, v0

    goto :goto_2

    :catchall_1
    nop

    goto :goto_1

    :goto_2
    if-eqz v9, :cond_3

    .line 19
    invoke-interface {v3, v9}, Lcom/byazt/h/ve;->c(Lcom/byazt/h/c;)V

    .line 20
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/byazt/h/u;->sp:J

    cmp-long v0, v13, v4

    if-lez v0, :cond_6

    .line 21
    iget-object v15, v1, Lcom/byazt/h/u;->yp:Lcom/byazt/k/c;

    iget-object v0, v1, Lcom/byazt/h/u;->u:Lcom/byazt/t/DownloadInfo;

    iget-object v3, v1, Lcom/byazt/h/u;->x:Ljava/lang/String;

    iget-object v6, v1, Lcom/byazt/h/u;->i:Ljava/lang/String;

    iget-object v9, v1, Lcom/byazt/h/u;->da:Ljava/lang/String;

    iget-boolean v10, v1, Lcom/byazt/h/u;->gr:Z

    if-nez v10, :cond_5

    iget-boolean v10, v1, Lcom/byazt/h/u;->zm:Z

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    const/16 v20, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/16 v20, 0x1

    :goto_4
    iget-object v7, v1, Lcom/byazt/h/u;->z:Lcom/byazt/hs/i;

    iget-object v8, v1, Lcom/byazt/h/u;->qp:Lcom/byazt/m/BaseException;

    sub-long v23, v13, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v10, v1, Lcom/byazt/h/u;->sp:J

    iget-wide v12, v1, Lcom/byazt/h/u;->a:J

    sub-long/2addr v10, v12

    .line 22
    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v25

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v9

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    .line 23
    invoke-static/range {v15 .. v26}, Lcom/byazt/zl/c;->c(Lcom/byazt/k/c;Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/byazt/hs/i;Lcom/byazt/m/BaseException;JJ)V

    .line 24
    :cond_6
    :goto_5
    iget-object v0, v1, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    invoke-interface {v0, v1, v2}, Lcom/byazt/h/a;->ve(Lcom/byazt/h/u;Lcom/byazt/h/i;)V

    return-void

    .line 25
    :cond_7
    :try_start_7
    iput-wide v13, v1, Lcom/byazt/h/u;->rl:J

    .line 26
    invoke-interface {v9, v15}, Lcom/byazt/h/n;->tt(Lcom/byazt/h/c;)V
    :try_end_7
    .catch Lcom/byazt/m/BaseException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    move-wide/from16 v11, v17

    .line 27
    :goto_6
    :try_start_8
    iget-boolean v0, v1, Lcom/byazt/h/u;->md:Z

    if-eqz v0, :cond_c

    .line 28
    monitor-enter p0
    :try_end_8
    .catch Lcom/byazt/m/BaseException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 29
    :try_start_9
    iput-boolean v8, v1, Lcom/byazt/h/u;->md:Z

    .line 30
    iget-boolean v0, v1, Lcom/byazt/h/u;->zm:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Lcom/byazt/h/u;->gr:Z

    if-nez v0, :cond_b

    .line 31
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 32
    :try_start_a
    iget-object v15, v1, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    monitor-enter v15
    :try_end_a
    .catch Lcom/byazt/m/BaseException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 33
    :try_start_b
    iget-wide v7, v1, Lcom/byazt/h/u;->my:J

    const-wide/16 v23, 0x0

    cmp-long v0, v7, v23

    if-eqz v0, :cond_a

    const-string v0, "SegmentReader"

    .line 34
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "loopAndRead:  change readEnd = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", segmentNewEndOffset = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/byazt/h/u;->my:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", segment = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/byazt/h/u;->u()J

    move-result-wide v11

    cmp-long v0, v13, v11

    if-lez v0, :cond_9

    add-long v7, v11, v21

    sub-long v21, v13, v7

    const-wide/16 v23, 0x0

    cmp-long v0, v21, v23

    if-lez v0, :cond_8

    const-string v0, "SegmentReader"

    const-string v6, "loopAndRead: redundant = "

    move-wide/from16 v26, v11

    .line 36
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_7

    :cond_8
    move-wide/from16 v26, v11

    .line 37
    :goto_7
    :try_start_c
    iput-wide v7, v1, Lcom/byazt/h/u;->rl:J

    .line 38
    monitor-exit v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-wide v13, v7

    move-wide/from16 v11, v26

    goto :goto_a

    :catchall_2
    move-exception v0

    move-wide v13, v7

    goto :goto_8

    :cond_9
    move-wide/from16 v26, v11

    .line 39
    :cond_a
    :try_start_d
    monitor-exit v15

    goto :goto_9

    :catchall_3
    move-exception v0

    :goto_8
    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v0
    :try_end_e
    .catch Lcom/byazt/m/BaseException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 40
    :cond_b
    :try_start_f
    new-instance v0, Lcom/byazt/h/m;

    const-string v6, "loopAndRead"

    invoke-direct {v0, v6}, Lcom/byazt/h/m;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4
    move-exception v0

    .line 41
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw v0

    .line 42
    :cond_c
    :goto_9
    invoke-interface {v3}, Lcom/byazt/h/ve;->tt()Lcom/byazt/h/c;

    move-result-object v15
    :try_end_10
    .catch Lcom/byazt/m/BaseException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 43
    :try_start_11
    iget-object v0, v15, Lcom/byazt/h/c;->c:[B

    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 44
    iput v0, v15, Lcom/byazt/h/c;->ve:I

    const/4 v6, -0x1

    if-ne v0, v6, :cond_d

    .line 45
    invoke-interface {v9, v15}, Lcom/byazt/h/n;->tt(Lcom/byazt/h/c;)V

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    goto :goto_b

    :cond_d
    int-to-long v6, v0

    add-long/2addr v13, v6

    cmp-long v8, v13, v11

    if-lez v8, :cond_15

    add-long v21, v11, v21

    cmp-long v8, v13, v21

    if-lez v8, :cond_e

    sub-long v26, v13, v21

    sub-long v6, v6, v26

    long-to-int v7, v6

    if-lez v7, :cond_e

    if-ge v7, v0, :cond_e

    .line 46
    iput v7, v15, Lcom/byazt/h/c;->ve:I

    move-wide/from16 v13, v21

    .line 47
    :cond_e
    iput-wide v13, v1, Lcom/byazt/h/u;->rl:J

    .line 48
    invoke-interface {v9, v15}, Lcom/byazt/h/n;->tt(Lcom/byazt/h/c;)V
    :try_end_11
    .catch Lcom/byazt/m/BaseException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :try_start_12
    const-string v0, "SegmentReader"

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "loopAndRead: bytesRead = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v7, v13, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", url = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    iget-object v7, v7, Lcom/byazt/h/nu;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    const-wide/16 v6, 0x0

    :goto_b
    cmp-long v0, v11, v6

    if-lez v0, :cond_10

    cmp-long v0, v11, v19

    if-eqz v0, :cond_10

    cmp-long v0, v13, v11

    if-lez v0, :cond_f

    goto :goto_c

    .line 50
    :cond_f
    new-instance v0, Lcom/byazt/m/BaseException;

    const-string v6, "range[%d, %d] , but readCurrent[%d] , readStart[%d]"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 51
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v15, 0x0

    aput-object v8, v7, v15

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v11, 0x1

    aput-object v8, v7, v11

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v11, 0x2

    aput-object v8, v7, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v11, 0x3

    aput-object v8, v7, v11

    .line 52
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x41b

    invoke-direct {v0, v7, v6}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_12
    .catch Lcom/byazt/m/BaseException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :cond_10
    :goto_c
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/io/Closeable;

    const/4 v6, 0x0

    aput-object v10, v0, v6

    .line 53
    invoke-static {v0}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    if-eqz v9, :cond_11

    .line 54
    :try_start_13
    invoke-interface {v3}, Lcom/byazt/h/ve;->tt()Lcom/byazt/h/c;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    const/4 v6, -0x1

    .line 55
    :try_start_14
    iput v6, v0, Lcom/byazt/h/c;->ve:I

    .line 56
    invoke-interface {v9, v0}, Lcom/byazt/h/n;->tt(Lcom/byazt/h/c;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    goto :goto_d

    :catchall_5
    nop

    move-object v9, v0

    goto :goto_e

    :catchall_6
    nop

    :cond_11
    :goto_d
    const/4 v9, 0x0

    :goto_e
    if-eqz v9, :cond_12

    .line 57
    invoke-interface {v3, v9}, Lcom/byazt/h/ve;->c(Lcom/byazt/h/c;)V

    .line 58
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/byazt/h/u;->sp:J

    cmp-long v0, v13, v4

    if-lez v0, :cond_6

    .line 59
    iget-object v0, v1, Lcom/byazt/h/u;->yp:Lcom/byazt/k/c;

    iget-object v3, v1, Lcom/byazt/h/u;->u:Lcom/byazt/t/DownloadInfo;

    iget-object v6, v1, Lcom/byazt/h/u;->x:Ljava/lang/String;

    iget-object v7, v1, Lcom/byazt/h/u;->i:Ljava/lang/String;

    iget-object v8, v1, Lcom/byazt/h/u;->da:Ljava/lang/String;

    iget-boolean v9, v1, Lcom/byazt/h/u;->gr:Z

    if-nez v9, :cond_14

    iget-boolean v9, v1, Lcom/byazt/h/u;->zm:Z

    if-eqz v9, :cond_13

    goto :goto_f

    :cond_13
    const/16 v24, 0x0

    goto :goto_10

    :cond_14
    :goto_f
    const/16 v24, 0x1

    :goto_10
    iget-object v9, v1, Lcom/byazt/h/u;->z:Lcom/byazt/hs/i;

    iget-object v10, v1, Lcom/byazt/h/u;->qp:Lcom/byazt/m/BaseException;

    sub-long v27, v13, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v11, v1, Lcom/byazt/h/u;->sp:J

    iget-wide v13, v1, Lcom/byazt/h/u;->a:J

    sub-long/2addr v11, v13

    .line 60
    invoke-virtual {v4, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v29

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    .line 61
    invoke-static/range {v19 .. v30}, Lcom/byazt/zl/c;->c(Lcom/byazt/k/c;Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/byazt/hs/i;Lcom/byazt/m/BaseException;JJ)V

    goto/16 :goto_5

    :cond_15
    const-wide/16 v6, 0x0

    .line 62
    :try_start_15
    iput-wide v13, v1, Lcom/byazt/h/u;->rl:J

    .line 63
    invoke-interface {v9, v15}, Lcom/byazt/h/n;->tt(Lcom/byazt/h/c;)V
    :try_end_15
    .catch Lcom/byazt/m/BaseException; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_6

    :catchall_7
    move-exception v0

    goto :goto_11

    :catch_0
    move-exception v0

    goto/16 :goto_17

    :catchall_8
    move-exception v0

    goto :goto_12

    :catch_1
    move-exception v0

    goto/16 :goto_18

    :catchall_9
    move-exception v0

    move-wide v13, v4

    goto :goto_12

    :catch_2
    move-exception v0

    move-wide v13, v4

    goto/16 :goto_18

    .line 64
    :cond_16
    :try_start_16
    new-instance v0, Lcom/byazt/h/m;

    const-string v6, "probe"

    invoke-direct {v0, v6}, Lcom/byazt/h/m;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catch Lcom/byazt/m/BaseException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    :catchall_a
    move-exception v0

    move-wide v13, v4

    const/4 v9, 0x0

    goto :goto_12

    :catch_3
    move-exception v0

    move-wide v13, v4

    const/4 v9, 0x0

    goto/16 :goto_18

    .line 65
    :cond_17
    :try_start_17
    new-instance v0, Lcom/byazt/m/a;

    const-string v6, "the content-length is 0, contentLength = "

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3ec

    invoke-direct {v0, v7, v6}, Lcom/byazt/m/a;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_b
    move-exception v0

    move-wide v13, v4

    const/4 v9, 0x0

    goto :goto_11

    :catch_4
    move-exception v0

    move-wide v13, v4

    const/4 v9, 0x0

    goto/16 :goto_17

    .line 66
    :cond_18
    new-instance v0, Lcom/byazt/m/BaseException;

    new-instance v6, Ljava/io/IOException;

    const-string v7, "inputStream is null"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x412

    invoke-direct {v0, v7, v6}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_17
    .catch Lcom/byazt/m/BaseException; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    :catchall_c
    move-exception v0

    move-wide v13, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_11
    const/4 v15, 0x0

    :goto_12
    :try_start_18
    const-string v6, "SegmentReader"

    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "loopAndRead: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",stack = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    :try_start_19
    const-string v6, "loopAndRead"

    .line 69
    invoke-static {v0, v6}, Lcom/byazt/w/a;->c(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_19
    .catch Lcom/byazt/m/BaseException; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/io/Closeable;

    const/4 v6, 0x0

    aput-object v10, v0, v6

    .line 70
    invoke-static {v0}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    if-eqz v9, :cond_1a

    if-nez v15, :cond_19

    .line 71
    :try_start_1a
    invoke-interface {v3}, Lcom/byazt/h/ve;->tt()Lcom/byazt/h/c;

    move-result-object v15

    goto :goto_13

    :catchall_d
    nop

    goto :goto_14

    :cond_19
    :goto_13
    const/4 v6, -0x1

    .line 72
    iput v6, v15, Lcom/byazt/h/c;->ve:I

    .line 73
    invoke-interface {v9, v15}, Lcom/byazt/h/n;->tt(Lcom/byazt/h/c;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    const/4 v9, 0x0

    goto :goto_15

    :cond_1a
    :goto_14
    move-object v9, v15

    :goto_15
    if-eqz v9, :cond_1b

    .line 74
    invoke-interface {v3, v9}, Lcom/byazt/h/ve;->c(Lcom/byazt/h/c;)V

    .line 75
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/byazt/h/u;->sp:J

    cmp-long v0, v13, v4

    if-lez v0, :cond_6

    .line 76
    iget-object v0, v1, Lcom/byazt/h/u;->yp:Lcom/byazt/k/c;

    iget-object v3, v1, Lcom/byazt/h/u;->u:Lcom/byazt/t/DownloadInfo;

    iget-object v6, v1, Lcom/byazt/h/u;->x:Ljava/lang/String;

    iget-object v7, v1, Lcom/byazt/h/u;->i:Ljava/lang/String;

    iget-object v8, v1, Lcom/byazt/h/u;->da:Ljava/lang/String;

    iget-boolean v9, v1, Lcom/byazt/h/u;->gr:Z

    if-nez v9, :cond_1d

    iget-boolean v9, v1, Lcom/byazt/h/u;->zm:Z

    if-eqz v9, :cond_1c

    goto :goto_16

    :cond_1c
    const/16 v24, 0x0

    goto/16 :goto_10

    :cond_1d
    :goto_16
    const/16 v24, 0x1

    goto/16 :goto_10

    :catch_5
    move-exception v0

    .line 77
    :try_start_1b
    iput-object v0, v1, Lcom/byazt/h/u;->qp:Lcom/byazt/m/BaseException;

    .line 78
    throw v0

    :catch_6
    move-exception v0

    move-wide v13, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_17
    const/4 v15, 0x0

    .line 79
    :goto_18
    iput-object v0, v1, Lcom/byazt/h/u;->qp:Lcom/byazt/m/BaseException;

    .line 80
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    :catchall_e
    move-exception v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/io/Closeable;

    const/4 v8, 0x0

    aput-object v10, v7, v8

    .line 81
    invoke-static {v7}, Lcom/byazt/w/a;->c([Ljava/io/Closeable;)V

    if-eqz v9, :cond_1f

    if-nez v15, :cond_1e

    .line 82
    :try_start_1c
    invoke-interface {v3}, Lcom/byazt/h/ve;->tt()Lcom/byazt/h/c;

    move-result-object v15

    goto :goto_19

    :catchall_f
    nop

    goto :goto_1a

    :cond_1e
    :goto_19
    const/4 v7, -0x1

    .line 83
    iput v7, v15, Lcom/byazt/h/c;->ve:I

    .line 84
    invoke-interface {v9, v15}, Lcom/byazt/h/n;->tt(Lcom/byazt/h/c;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    const/4 v9, 0x0

    goto :goto_1b

    :cond_1f
    :goto_1a
    move-object v9, v15

    :goto_1b
    if-eqz v9, :cond_20

    .line 85
    invoke-interface {v3, v9}, Lcom/byazt/h/ve;->c(Lcom/byazt/h/c;)V

    .line 86
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/byazt/h/u;->sp:J

    cmp-long v3, v13, v4

    if-lez v3, :cond_23

    .line 87
    iget-object v15, v1, Lcom/byazt/h/u;->yp:Lcom/byazt/k/c;

    iget-object v3, v1, Lcom/byazt/h/u;->u:Lcom/byazt/t/DownloadInfo;

    iget-object v7, v1, Lcom/byazt/h/u;->x:Ljava/lang/String;

    iget-object v9, v1, Lcom/byazt/h/u;->i:Ljava/lang/String;

    iget-object v10, v1, Lcom/byazt/h/u;->da:Ljava/lang/String;

    iget-boolean v11, v1, Lcom/byazt/h/u;->gr:Z

    if-nez v11, :cond_22

    iget-boolean v11, v1, Lcom/byazt/h/u;->zm:Z

    if-eqz v11, :cond_21

    goto :goto_1c

    :cond_21
    const/16 v20, 0x0

    goto :goto_1d

    :cond_22
    :goto_1c
    const/16 v20, 0x1

    :goto_1d
    iget-object v6, v1, Lcom/byazt/h/u;->z:Lcom/byazt/hs/i;

    iget-object v8, v1, Lcom/byazt/h/u;->qp:Lcom/byazt/m/BaseException;

    sub-long v23, v13, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v11, v1, Lcom/byazt/h/u;->sp:J

    iget-wide v13, v1, Lcom/byazt/h/u;->a:J

    sub-long/2addr v11, v13

    .line 88
    invoke-virtual {v4, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v25

    move-object/from16 v16, v3

    move-object/from16 v17, v7

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    .line 89
    invoke-static/range {v15 .. v26}, Lcom/byazt/zl/c;->c(Lcom/byazt/k/c;Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/byazt/hs/i;Lcom/byazt/m/BaseException;JJ)V

    .line 90
    :cond_23
    iget-object v3, v1, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    invoke-interface {v3, v1, v2}, Lcom/byazt/h/a;->ve(Lcom/byazt/h/u;Lcom/byazt/h/i;)V

    throw v0
.end method

.method private ve(Lcom/byazt/h/i;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, ", threadIndex = "

    const-string v2, ", ip = "

    const-string v3, "https"

    const-string v4, "SegmentReader"

    const-string v5, "createConn"

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    .line 2
    iput-wide v8, v1, Lcom/byazt/h/u;->n:J

    .line 3
    iput-wide v6, v1, Lcom/byazt/h/u;->uj:J

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/h/i;->n()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/byazt/h/u;->rh:J

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/h/i;->a()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/byazt/h/u;->gt:J

    .line 6
    iget-wide v10, v1, Lcom/byazt/h/u;->gt:J

    cmp-long v12, v10, v8

    if-lez v12, :cond_1

    iget-wide v8, v1, Lcom/byazt/h/u;->rh:J

    iget-wide v10, v1, Lcom/byazt/h/u;->gt:J

    cmp-long v12, v8, v10

    if-gtz v12, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/byazt/h/da;

    const-string v2, "createConn, "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v0, v3, v2}, Lcom/byazt/h/da;-><init>(ILjava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    :goto_0
    new-instance v8, Lcom/byazt/w/n;

    invoke-direct {v8}, Lcom/byazt/w/n;-><init>()V

    iput-object v8, v1, Lcom/byazt/h/u;->bx:Lcom/byazt/w/n;

    .line 9
    iget-object v8, v1, Lcom/byazt/h/u;->u:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v8}, Lcom/byazt/t/DownloadInfo;->getExtraHeaders()Ljava/util/List;

    move-result-object v9

    .line 10
    iget-object v8, v1, Lcom/byazt/h/u;->u:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v8}, Lcom/byazt/t/DownloadInfo;->geteTag()Ljava/lang/String;

    move-result-object v10

    iget-wide v11, v1, Lcom/byazt/h/u;->rh:J

    iget-wide v13, v1, Lcom/byazt/h/u;->gt:J

    invoke-static/range {v9 .. v14}, Lcom/byazt/w/a;->c(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v8

    .line 11
    new-instance v9, Lcom/byazt/t/ve;

    const-string v10, "Segment-Index"

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/h/i;->sp()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/byazt/t/ve;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v9, Lcom/byazt/t/ve;

    const-string v10, "Thread-Index"

    iget v11, v1, Lcom/byazt/h/u;->ve:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/byazt/t/ve;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v9, v1, Lcom/byazt/h/u;->u:Lcom/byazt/t/DownloadInfo;

    invoke-static {v8, v9}, Lcom/byazt/w/a;->c(Ljava/util/List;Lcom/byazt/t/DownloadInfo;)V

    .line 14
    iget-object v9, v1, Lcom/byazt/h/u;->u:Lcom/byazt/t/DownloadInfo;

    invoke-static {v8, v9}, Lcom/byazt/w/a;->tt(Ljava/util/List;Lcom/byazt/t/DownloadInfo;)V

    .line 15
    iget-object v9, v1, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    iget-object v9, v9, Lcom/byazt/h/nu;->c:Ljava/lang/String;

    .line 16
    iget-boolean v10, v1, Lcom/byazt/h/u;->cu:Z

    if-eqz v10, :cond_2

    .line 17
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "http"

    .line 18
    invoke-virtual {v9, v3, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 19
    :cond_2
    iget-object v3, v1, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    iget-object v3, v3, Lcom/byazt/h/nu;->tt:Ljava/lang/String;

    .line 20
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "createConnectionBegin: url = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", segment = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/byazt/h/u;->ve:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iput-object v9, v1, Lcom/byazt/h/u;->x:Ljava/lang/String;

    .line 22
    iput-object v3, v1, Lcom/byazt/h/u;->i:Ljava/lang/String;

    .line 23
    iget-object v10, v1, Lcom/byazt/h/u;->u:Lcom/byazt/t/DownloadInfo;

    .line 24
    invoke-virtual {v10}, Lcom/byazt/t/DownloadInfo;->isNeedDefaultHttpServiceBackUp()Z

    move-result v15

    iget-object v10, v1, Lcom/byazt/h/u;->u:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v10}, Lcom/byazt/t/DownloadInfo;->getMaxBytes()I

    move-result v16

    const/16 v20, 0x0

    iget-wide v10, v1, Lcom/byazt/h/u;->zb:J

    sub-long/2addr v6, v10

    const-wide/16 v10, 0xbb8

    cmp-long v12, v6, v10

    if-lez v12, :cond_3

    iget-object v6, v1, Lcom/byazt/h/u;->yp:Lcom/byazt/k/c;

    const-string v7, "monitor_download_connect"

    .line 25
    invoke-virtual {v6, v7}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    const/4 v6, 0x1

    const/16 v21, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    const/16 v21, 0x0

    :goto_1
    iget-object v6, v1, Lcom/byazt/h/u;->u:Lcom/byazt/t/DownloadInfo;

    move-object/from16 v17, v9

    move-object/from16 v18, v3

    move-object/from16 v19, v8

    move-object/from16 v22, v6

    .line 26
    invoke-static/range {v15 .. v22}, Lcom/byazt/zz/ve;->c(ZILjava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/byazt/t/DownloadInfo;)Lcom/byazt/hs/i;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 27
    iput-object v6, v1, Lcom/byazt/h/u;->z:Lcom/byazt/hs/i;

    .line 28
    new-instance v7, Lcom/byazt/t/uj;

    invoke-direct {v7, v9, v6}, Lcom/byazt/t/uj;-><init>(Ljava/lang/String;Lcom/byazt/hs/sp;)V

    iput-object v7, v1, Lcom/byazt/h/u;->m:Lcom/byazt/t/uj;

    .line 29
    iget-boolean v7, v1, Lcom/byazt/h/u;->gr:Z

    if-nez v7, :cond_5

    .line 30
    instance-of v7, v6, Lcom/byazt/hs/c;

    if-eqz v7, :cond_4

    .line 31
    check-cast v6, Lcom/byazt/hs/c;

    invoke-virtual {v6}, Lcom/byazt/hs/c;->n()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/byazt/h/u;->da:Ljava/lang/String;

    .line 32
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "createConnectionSuccess: url = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hostRealIp = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/byazt/h/u;->da:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/byazt/h/u;->ve:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/byazt/m/BaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/byazt/h/u;->n:J

    return-void

    .line 34
    :cond_5
    :try_start_1
    new-instance v0, Lcom/byazt/h/m;

    invoke-direct {v0, v5}, Lcom/byazt/h/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_6
    new-instance v0, Lcom/byazt/m/BaseException;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "download can\'t continue, chunk connection is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x3fe

    invoke-direct {v0, v3, v2}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catch Lcom/byazt/m/BaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 36
    :try_start_2
    invoke-static {v0, v5}, Lcom/byazt/w/a;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    .line 37
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/byazt/h/u;->n:J

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/byazt/h/u;->c(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public c(JJ)J
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/byazt/h/u;->bx:Lcom/byazt/w/n;

    if-nez v0, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    .line 76
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/w/n;->tt(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c()V
    .locals 7

    .line 56
    iget-object v0, p0, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :try_start_1
    invoke-virtual {p0}, Lcom/byazt/h/u;->ve()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 59
    iget-wide v4, p0, Lcom/byazt/h/u;->qy:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/byazt/h/u;->qy:J

    .line 60
    invoke-virtual {v0, v2, v3}, Lcom/byazt/h/nu;->c(J)V

    :cond_0
    const-wide/16 v2, -0x1

    .line 61
    iput-wide v2, p0, Lcom/byazt/h/u;->rl:J

    .line 62
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method public c(Ljava/util/concurrent/Future;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/byazt/h/u;->gu:Ljava/util/concurrent/Future;

    return-void
.end method

.method public c(Z)V
    .locals 3

    const-string v0, "SegmentReader"

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reconnect: threadIndex = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/byazt/h/u;->ve:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iput-boolean p1, p0, Lcom/byazt/h/u;->yv:Z

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/byazt/h/u;->zm:Z

    .line 67
    iput-boolean p1, p0, Lcom/byazt/h/u;->md:Z

    .line 68
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    invoke-direct {p0}, Lcom/byazt/h/u;->da()V

    .line 70
    iget-object p1, p0, Lcom/byazt/h/u;->p:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    :try_start_1
    const-string v0, "SegmentReader"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reconnect: t.interrupt threadIndex = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/byazt/h/u;->ve:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    return-void

    :catchall_1
    move-exception p1

    .line 73
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public c(J)Z
    .locals 6

    .line 53
    iget-wide v0, p0, Lcom/byazt/h/u;->gt:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-gtz v5, :cond_0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    return v2

    :cond_0
    cmp-long v5, p1, v0

    if-lez v5, :cond_1

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    return v2

    .line 54
    :cond_1
    iput-wide p1, p0, Lcom/byazt/h/u;->my:J

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/byazt/h/u;->md:Z

    return p1
.end method

.method public c(Lcom/byazt/h/nu;)Z
    .locals 2

    .line 25
    iget v0, p0, Lcom/byazt/h/u;->or:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 26
    iput v0, p0, Lcom/byazt/h/u;->or:I

    .line 27
    iget-object v0, p0, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {v0, p0}, Lcom/byazt/h/nu;->tt(Lcom/byazt/h/u;)V

    .line 29
    :cond_1
    invoke-virtual {p1, p0}, Lcom/byazt/h/nu;->c(Lcom/byazt/h/u;)V

    .line 30
    iput-object p1, p0, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    .line 31
    invoke-direct {p0}, Lcom/byazt/h/u;->t()V

    return v1
.end method

.method public n()V
    .locals 3

    .line 1
    const-string v0, "SegmentReader"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "close: threadIndex = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/byazt/h/u;->ve:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    monitor-enter p0

    .line 23
    const/4 v0, 0x1

    .line 24
    :try_start_0
    iput-boolean v0, p0, Lcom/byazt/h/u;->gr:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/byazt/h/u;->md:Z

    .line 27
    .line 28
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    invoke-direct {p0}, Lcom/byazt/h/u;->da()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/byazt/h/u;->gu:Ljava/util/concurrent/Future;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    iput-object v2, p0, Lcom/byazt/h/u;->gu:Ljava/util/concurrent/Future;

    .line 38
    .line 39
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void

    .line 48
    :catchall_1
    move-exception v0

    .line 49
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    throw v0
.end method

.method public run()V
    .locals 5

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/byazt/h/u;->p:Ljava/lang/Thread;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    .line 14
    .line 15
    invoke-interface {v1, p0}, Lcom/byazt/h/a;->c(Lcom/byazt/h/u;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Lcom/byazt/h/nu;->c(Lcom/byazt/h/u;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object v1, p0, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    .line 26
    .line 27
    invoke-interface {v1, p0, v2}, Lcom/byazt/h/a;->c(Lcom/byazt/h/u;Lcom/byazt/h/nu;)Lcom/byazt/h/i;

    .line 28
    .line 29
    .line 30
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 31
    const-string v2, "SegmentReader"

    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "no more segment, thread_index = "

    .line 38
    .line 39
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v3, p0, Lcom/byazt/h/u;->ve:I

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v2, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_0
    iput-object v1, p0, Lcom/byazt/h/u;->c:Lcom/byazt/h/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 57
    .line 58
    :try_start_2
    invoke-direct {p0, v1}, Lcom/byazt/h/u;->c(Lcom/byazt/h/i;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    iget-object v3, p0, Lcom/byazt/h/u;->nu:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/byazt/h/da; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    :try_start_3
    iput-object v0, p0, Lcom/byazt/h/u;->c:Lcom/byazt/h/i;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    .line 72
    .line 73
    :goto_1
    invoke-interface {v2, p0, v1}, Lcom/byazt/h/a;->c(Lcom/byazt/h/u;Lcom/byazt/h/i;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    :try_start_4
    iget-boolean v3, p0, Lcom/byazt/h/u;->gr:Z

    .line 78
    .line 79
    if-nez v3, :cond_2

    .line 80
    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v4, "download segment failed, segment = "

    .line 84
    .line 85
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v4, ", thread_index = "

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget v4, p0, Lcom/byazt/h/u;->ve:I

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v4, ", failedException = "

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v4, p0, Lcom/byazt/h/u;->qp:Lcom/byazt/m/BaseException;

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v2, v3}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/byazt/h/da; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    .line 117
    .line 118
    :cond_2
    :try_start_5
    iput-object v0, p0, Lcom/byazt/h/u;->c:Lcom/byazt/h/i;

    .line 119
    .line 120
    iget-object v2, p0, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    .line 121
    .line 122
    :goto_2
    invoke-interface {v2, p0, v1}, Lcom/byazt/h/a;->c(Lcom/byazt/h/u;Lcom/byazt/h/i;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :catchall_0
    move-exception v2

    .line 127
    goto :goto_4

    .line 128
    :catch_0
    move-exception v3

    .line 129
    :try_start_6
    const-string v4, "run: SegmentApplyException, e = "

    .line 130
    .line 131
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-static {v2, v3}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget v3, p0, Lcom/byazt/h/u;->h:I

    .line 143
    .line 144
    const/16 v4, 0x32

    .line 145
    .line 146
    if-lt v3, v4, :cond_3

    .line 147
    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v4, "segment apply failed "

    .line 151
    .line 152
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget v4, p0, Lcom/byazt/h/u;->h:I

    .line 156
    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v4, "times, thread_index = "

    .line 161
    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget v4, p0, Lcom/byazt/h/u;->ve:I

    .line 166
    .line 167
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-static {v2, v3}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 175
    .line 176
    .line 177
    :try_start_7
    iput-object v0, p0, Lcom/byazt/h/u;->c:Lcom/byazt/h/i;

    .line 178
    .line 179
    iget-object v2, p0, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :goto_3
    :try_start_8
    iget-object v1, p0, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    .line 183
    .line 184
    invoke-virtual {v1, p0}, Lcom/byazt/h/nu;->tt(Lcom/byazt/h/u;)V

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    .line 188
    .line 189
    invoke-interface {v1, p0}, Lcom/byazt/h/a;->tt(Lcom/byazt/h/u;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 190
    .line 191
    .line 192
    :catchall_1
    iput-object v0, p0, Lcom/byazt/h/u;->p:Ljava/lang/Thread;

    .line 193
    .line 194
    return-void

    .line 195
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 196
    .line 197
    :try_start_9
    iput v3, p0, Lcom/byazt/h/u;->h:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 198
    .line 199
    :try_start_a
    iput-object v0, p0, Lcom/byazt/h/u;->c:Lcom/byazt/h/i;

    .line 200
    .line 201
    iget-object v2, p0, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :goto_4
    iput-object v0, p0, Lcom/byazt/h/u;->c:Lcom/byazt/h/i;

    .line 206
    .line 207
    iget-object v3, p0, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    .line 208
    .line 209
    invoke-interface {v3, p0, v1}, Lcom/byazt/h/a;->c(Lcom/byazt/h/u;Lcom/byazt/h/i;)V

    .line 210
    .line 211
    .line 212
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 213
    :catchall_2
    move-exception v1

    .line 214
    :try_start_b
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 215
    .line 216
    .line 217
    :try_start_c
    iget-object v1, p0, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    .line 218
    .line 219
    invoke-virtual {v1, p0}, Lcom/byazt/h/nu;->tt(Lcom/byazt/h/u;)V

    .line 220
    .line 221
    .line 222
    iget-object v1, p0, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    .line 223
    .line 224
    invoke-interface {v1, p0}, Lcom/byazt/h/a;->tt(Lcom/byazt/h/u;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 225
    .line 226
    .line 227
    :catchall_3
    iput-object v0, p0, Lcom/byazt/h/u;->p:Ljava/lang/Thread;

    .line 228
    .line 229
    return-void

    .line 230
    :catchall_4
    move-exception v1

    .line 231
    :try_start_d
    iget-object v2, p0, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    .line 232
    .line 233
    invoke-virtual {v2, p0}, Lcom/byazt/h/nu;->tt(Lcom/byazt/h/u;)V

    .line 234
    .line 235
    .line 236
    iget-object v2, p0, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    .line 237
    .line 238
    invoke-interface {v2, p0}, Lcom/byazt/h/a;->tt(Lcom/byazt/h/u;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 239
    .line 240
    .line 241
    :catchall_5
    iput-object v0, p0, Lcom/byazt/h/u;->p:Ljava/lang/Thread;

    .line 242
    .line 243
    throw v1
.end method

.method public sp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/h/u;->nb:Z

    .line 2
    .line 3
    return v0
.end method

.method public tt()J
    .locals 5

    .line 4
    iget-object v0, p0, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-wide v1, p0, Lcom/byazt/h/u;->qy:J

    .line 6
    invoke-virtual {p0}, Lcom/byazt/h/u;->ve()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 7
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tt(J)V
    .locals 6

    .line 10
    iget-wide v0, p0, Lcom/byazt/h/u;->rl:J

    .line 11
    iget-object v2, p0, Lcom/byazt/h/u;->bx:Lcom/byazt/w/n;

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "markProgress: curSegmentReadOffset = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", threadIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/byazt/h/u;->ve:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SegmentReader"

    invoke-static {v4, v3}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/byazt/w/n;->c(JJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/byazt/h/u;->nb:Z

    return-void
.end method

.method public uj()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/byazt/h/u;->rl:J

    return-wide v0
.end method

.method public ve()J
    .locals 8

    .line 39
    iget-object v0, p0, Lcom/byazt/h/u;->sl:Lcom/byazt/h/a;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-wide v1, p0, Lcom/byazt/h/u;->rl:J

    .line 41
    iget-wide v3, p0, Lcom/byazt/h/u;->rh:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    cmp-long v7, v1, v3

    if-lez v7, :cond_0

    sub-long/2addr v1, v3

    .line 42
    monitor-exit v0

    return-wide v1

    .line 43
    :cond_0
    monitor-exit v0

    return-wide v5

    :catchall_0
    move-exception v1

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ve(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/byazt/h/u;->pf:Z

    return-void
.end method

.method public x()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/h/u;->rh:J

    .line 2
    .line 3
    return-wide v0
.end method
