.class public Lcom/byazt/pc/yp;
.super Lcom/byazt/pc/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b7,
        0xd7
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/byazt/pc/c;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public tt:Lcom/byazt/yj/sp;

.field public uj:[B

.field public ve:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;[BLcom/byazt/yj/sp;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[B",
            "Lcom/byazt/yj/sp;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/byazt/pc/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/pc/yp;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/byazt/pc/yp;->tt:Lcom/byazt/yj/sp;

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/byazt/pc/yp;->ve:Z

    .line 9
    .line 10
    iput-object p2, p0, Lcom/byazt/pc/yp;->uj:[B

    .line 11
    .line 12
    return-void
.end method

.method private tt()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/byazt/pc/yp;->tt:Lcom/byazt/yj/sp;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/byazt/yj/sp;->n()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private tt(Lcom/byazt/oz/ve;)V
    .locals 5

    .line 3
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->ve()Lcom/byazt/yj/gr;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->n()I

    move-result v1

    if-eqz v0, :cond_6

    .line 5
    iget-object v2, p0, Lcom/byazt/pc/yp;->c:Ljava/lang/Object;

    const/4 v3, 0x3

    const/16 v4, 0x7d0

    if-ne v1, v3, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->yp()Lcom/byazt/yj/tt;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/byazt/pc/yp;->uj:[B

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/byazt/yj/tt;->isRawMemoryCache()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->u()Lcom/byazt/oz/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/byazt/oz/a;->tt(Lcom/byazt/yj/tt;)Lcom/byazt/yj/zb;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->getRawCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/byazt/yj/c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/byazt/pc/yp;->uj:[B

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/byazt/pc/yp;->uj:[B

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/byazt/pc/yp;->c:Ljava/lang/Object;

    .line 11
    :goto_0
    instance-of v2, v1, [B

    if-nez v2, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-static {p1}, Lcom/byazt/in/c;->c(Lcom/byazt/oz/ve;)[B

    move-result-object v1

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->u()Lcom/byazt/oz/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/byazt/oz/ve;->yp()Lcom/byazt/yj/tt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/oz/a;->ve(Lcom/byazt/yj/tt;)Lcom/byazt/yj/uj;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->getRawCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/byazt/yj/c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    :goto_1
    instance-of v2, v1, [B

    if-nez v2, :cond_3

    .line 17
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "final data is not raw"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4, v3, v2}, Lcom/byazt/yj/gr;->onFailed(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move-object v2, v1

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 18
    instance-of v1, v2, [B

    if-eqz v1, :cond_5

    .line 19
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->u()Lcom/byazt/oz/a;

    move-result-object v1

    .line 20
    invoke-virtual {v1, p1}, Lcom/byazt/oz/a;->c(Lcom/byazt/oz/ve;)Lcom/byazt/ib/c;

    move-result-object v1

    .line 21
    check-cast v2, [B

    invoke-virtual {v1, v2}, Lcom/byazt/ib/c;->c([B)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    const-string v1, "decode failed"

    .line 22
    invoke-interface {v0, v4, v1, p1}, Lcom/byazt/yj/gr;->onFailed(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 23
    :cond_5
    :goto_2
    new-instance v1, Lcom/byazt/oz/uj;

    invoke-direct {v1}, Lcom/byazt/oz/uj;-><init>()V

    .line 24
    invoke-direct {p0}, Lcom/byazt/pc/yp;->tt()Ljava/util/Map;

    move-result-object v3

    iget-boolean v4, p0, Lcom/byazt/pc/yp;->ve:Z

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/byazt/oz/uj;->c(Lcom/byazt/oz/ve;Ljava/lang/Object;Ljava/util/Map;Z)Lcom/byazt/oz/uj;

    move-result-object p1

    .line 25
    invoke-interface {v0, p1}, Lcom/byazt/yj/gr;->onSuccess(Lcom/byazt/yj/m;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "success"

    return-object v0
.end method

.method public c(Lcom/byazt/oz/ve;)V
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->nu()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->u()Lcom/byazt/oz/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/oz/a;->sp()Ljava/util/Map;

    move-result-object v1

    .line 4
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/pc/yp;->tt(Lcom/byazt/oz/ve;)V

    return-void

    .line 6
    :cond_0
    monitor-enter v2

    .line 7
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/oz/ve;

    .line 8
    invoke-direct {p0, v3}, Lcom/byazt/pc/yp;->tt(Lcom/byazt/oz/ve;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 10
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
