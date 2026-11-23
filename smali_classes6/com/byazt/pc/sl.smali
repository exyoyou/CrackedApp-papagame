.class public Lcom/byazt/pc/sl;
.super Lcom/byazt/pc/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b7,
        0x9e
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/pc/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(ILjava/lang/String;Ljava/lang/Throwable;Lcom/byazt/oz/ve;)V
    .locals 1

    .line 26
    new-instance v0, Lcom/byazt/pc/x;

    invoke-direct {v0, p1, p2, p3}, Lcom/byazt/pc/x;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p4, v0}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "net_request"

    return-object v0
.end method

.method public c(Lcom/byazt/oz/ve;)V
    .locals 9

    .line 2
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->u()Lcom/byazt/oz/a;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lcom/byazt/oz/a;->uj()Lcom/byazt/yj/n;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1}, Lcom/byazt/oz/ve;->c(Z)V

    .line 5
    :try_start_0
    new-instance v1, Lcom/byazt/rc/ve;

    invoke-virtual {p1}, Lcom/byazt/oz/ve;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->a()Z

    move-result v4

    .line 7
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->sp()Z

    move-result v5

    .line 8
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->m()Lcom/byazt/yj/gt;

    move-result-object v6

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/byazt/rc/ve;-><init>(Ljava/lang/String;ZZLcom/byazt/yj/gt;)V

    .line 9
    invoke-interface {v0, v1}, Lcom/byazt/yj/n;->call(Lcom/byazt/yj/a;)Lcom/byazt/yj/sp;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/byazt/yj/sp;->tt()I

    move-result v1

    .line 11
    invoke-interface {v0}, Lcom/byazt/yj/sp;->c()Lcom/byazt/yj/x;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/byazt/oz/ve;->c(Lcom/byazt/yj/x;)V

    .line 12
    invoke-interface {v0}, Lcom/byazt/yj/sp;->tt()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1

    .line 13
    invoke-interface {v0}, Lcom/byazt/yj/sp;->ve()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [B

    .line 14
    new-instance v1, Lcom/byazt/pc/tt;

    invoke-direct {v1, v6, v0}, Lcom/byazt/pc/tt;-><init>([BLcom/byazt/yj/sp;)V

    invoke-virtual {p1, v1}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    .line 15
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->getRawCacheKey()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->yp()Lcom/byazt/yj/tt;

    move-result-object v2

    .line 17
    invoke-interface {v2}, Lcom/byazt/yj/tt;->isRawMemoryCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->yp()Lcom/byazt/yj/tt;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/byazt/oz/a;->tt(Lcom/byazt/yj/tt;)Lcom/byazt/yj/zb;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Lcom/byazt/yj/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    :cond_0
    invoke-virtual {v3}, Lcom/byazt/oz/a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v8, Lcom/byazt/pc/sl$1;

    move-object v0, v8

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/byazt/pc/sl$1;-><init>(Lcom/byazt/pc/sl;Lcom/byazt/yj/tt;Lcom/byazt/oz/a;Lcom/byazt/oz/ve;Ljava/lang/String;[B)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 20
    :cond_1
    invoke-virtual {v3}, Lcom/byazt/oz/a;->x()Lcom/byazt/yj/d;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    invoke-interface {v0}, Lcom/byazt/yj/sp;->ve()Ljava/lang/Object;

    move-result-object v2

    .line 22
    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 23
    check-cast v2, Ljava/lang/Throwable;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-interface {v0}, Lcom/byazt/yj/sp;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/byazt/pc/sl;->c(ILjava/lang/String;Ljava/lang/Throwable;Lcom/byazt/oz/ve;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const/16 v1, 0x3ec

    const-string v2, "net request failed!"

    .line 25
    invoke-direct {p0, v1, v2, v0, p1}, Lcom/byazt/pc/sl;->c(ILjava/lang/String;Ljava/lang/Throwable;Lcom/byazt/oz/ve;)V

    return-void
.end method
