.class public Lcom/byazt/no/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hs/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x311,
        0x36
    }
.end annotation


# static fields
.field public static final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public da:Z

.field public i:Z

.field public sl:Lcom/byazt/hs/sp;

.field public sp:I

.field public final tt:J

.field public final uj:Ljava/lang/Object;

.field public ve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;"
        }
    .end annotation
.end field

.field public x:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/no/ve;->n:Ljava/util/ArrayList;

    .line 8
    .line 9
    const-string v1, "Content-Length"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    const-string v1, "Content-Range"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    const-string v1, "Transfer-Encoding"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    const-string v1, "Accept-Ranges"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    const-string v1, "Etag"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    const-string v1, "Content-Disposition"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;J)V
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/byazt/no/ve;->a:Ljava/util/Map;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/byazt/no/ve;->uj:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/byazt/no/ve;->c:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/byazt/no/ve;->ve:Ljava/util/List;

    .line 17
    .line 18
    iput-wide p3, p0, Lcom/byazt/no/ve;->tt:J

    .line 19
    .line 20
    return-void
.end method

.method private c(Lcom/byazt/hs/sp;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/hs/sp;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 25
    :cond_0
    sget-object v0, Lcom/byazt/no/ve;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 26
    invoke-interface {p1, v1}, Lcom/byazt/hs/sp;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/byazt/no/ve;->x:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    sget-wide v2, Lcom/byazt/no/tt;->tt:J

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-gez v4, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/byazt/no/ve;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/byazt/no/ve;->sl:Lcom/byazt/hs/sp;

    if-eqz v0, :cond_1

    .line 31
    invoke-interface {v0, p1}, Lcom/byazt/hs/sp;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/no/ve;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/byazt/no/ve;->da:Z

    .line 4
    iget-object v0, p0, Lcom/byazt/no/ve;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/byazt/no/ve;->ve:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/byazt/zz/ve;->c(Ljava/lang/String;Ljava/util/List;)Lcom/byazt/hs/sp;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/no/ve;->sl:Lcom/byazt/hs/sp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    iget-object v0, p0, Lcom/byazt/no/ve;->uj:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_1
    iget-object v2, p0, Lcom/byazt/no/ve;->sl:Lcom/byazt/hs/sp;

    if-eqz v2, :cond_1

    .line 7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/byazt/no/ve;->a:Ljava/util/Map;

    .line 8
    iget-object v3, p0, Lcom/byazt/no/ve;->sl:Lcom/byazt/hs/sp;

    invoke-direct {p0, v3, v2}, Lcom/byazt/no/ve;->c(Lcom/byazt/hs/sp;Ljava/util/Map;)V

    .line 9
    iget-object v2, p0, Lcom/byazt/no/ve;->sl:Lcom/byazt/hs/sp;

    invoke-interface {v2}, Lcom/byazt/hs/sp;->tt()I

    move-result v2

    iput v2, p0, Lcom/byazt/no/ve;->sp:I

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/byazt/no/ve;->x:J

    .line 11
    iget v2, p0, Lcom/byazt/no/ve;->sp:I

    invoke-virtual {p0, v2}, Lcom/byazt/no/ve;->c(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/byazt/no/ve;->i:Z

    .line 12
    :cond_1
    iput-boolean v1, p0, Lcom/byazt/no/ve;->da:Z

    .line 13
    iget-object v1, p0, Lcom/byazt/no/ve;->uj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 15
    iget-object v2, p0, Lcom/byazt/no/ve;->uj:Ljava/lang/Object;

    monitor-enter v2

    .line 16
    :try_start_2
    iget-object v3, p0, Lcom/byazt/no/ve;->sl:Lcom/byazt/hs/sp;

    if-eqz v3, :cond_2

    .line 17
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/byazt/no/ve;->a:Ljava/util/Map;

    .line 18
    iget-object v4, p0, Lcom/byazt/no/ve;->sl:Lcom/byazt/hs/sp;

    invoke-direct {p0, v4, v3}, Lcom/byazt/no/ve;->c(Lcom/byazt/hs/sp;Ljava/util/Map;)V

    .line 19
    iget-object v3, p0, Lcom/byazt/no/ve;->sl:Lcom/byazt/hs/sp;

    invoke-interface {v3}, Lcom/byazt/hs/sp;->tt()I

    move-result v3

    iput v3, p0, Lcom/byazt/no/ve;->sp:I

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/byazt/no/ve;->x:J

    .line 21
    iget v3, p0, Lcom/byazt/no/ve;->sp:I

    invoke-virtual {p0, v3}, Lcom/byazt/no/ve;->c(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/byazt/no/ve;->i:Z

    .line 22
    :cond_2
    iput-boolean v1, p0, Lcom/byazt/no/ve;->da:Z

    .line 23
    iget-object v1, p0, Lcom/byazt/no/ve;->uj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 24
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public c(I)Z
    .locals 1

    .line 1
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/no/ve;->a:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/no/ve;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public sp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/no/ve;->da:Z

    .line 2
    .line 3
    return v0
.end method

.method public tt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/byazt/no/ve;->sp:I

    .line 2
    .line 3
    return v0
.end method

.method public uj()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/no/ve;->uj:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/byazt/no/ve;->da:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/no/ve;->a:Ljava/util/Map;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/no/ve;->uj:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 15
    .line 16
    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/no/ve;->sl:Lcom/byazt/hs/sp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/hs/sp;->ve()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/no/ve;->ve:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
