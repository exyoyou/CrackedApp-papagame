.class public Lcom/byazt/pc/a;
.super Lcom/byazt/pc/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b7,
        0x22
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

.method private c(Lcom/byazt/oz/ve;Ljava/lang/String;)[B
    .locals 2

    .line 11
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->u()Lcom/byazt/oz/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/oz/ve;->yp()Lcom/byazt/yj/tt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/oz/a;->ve(Lcom/byazt/yj/tt;)Lcom/byazt/yj/uj;

    .line 12
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->u()Lcom/byazt/oz/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/oz/a;->ve()Ljava/util/Collection;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yj/uj;

    .line 14
    invoke-interface {v1, p2}, Lcom/byazt/yj/c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private tt(Lcom/byazt/oz/ve;Ljava/lang/String;)[B
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->u()Lcom/byazt/oz/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->yp()Lcom/byazt/yj/tt;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/byazt/oz/a;->ve(Lcom/byazt/yj/tt;)Lcom/byazt/yj/uj;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    invoke-interface {p1, p2}, Lcom/byazt/yj/c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, [B

    .line 22
    .line 23
    return-object p1
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "disk_cache"

    return-object v0
.end method

.method public c(Lcom/byazt/oz/ve;)V
    .locals 5

    .line 2
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->getRawCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->yp()Lcom/byazt/yj/tt;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->z()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/byazt/yj/tt;->isQueryAll()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/byazt/pc/a;->tt(Lcom/byazt/oz/ve;Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/byazt/pc/a;->c(Lcom/byazt/oz/ve;Ljava/lang/String;)[B

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    .line 7
    new-instance v0, Lcom/byazt/pc/sl;

    invoke-direct {v0}, Lcom/byazt/pc/sl;-><init>()V

    invoke-virtual {p1, v0}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    return-void

    .line 8
    :cond_2
    new-instance v3, Lcom/byazt/pc/tt;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/byazt/pc/tt;-><init>([BLcom/byazt/yj/sp;)V

    invoke-virtual {p1, v3}, Lcom/byazt/oz/ve;->c(Lcom/byazt/pc/i;)Z

    .line 9
    invoke-interface {v1}, Lcom/byazt/yj/tt;->isRawMemoryCache()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/byazt/oz/ve;->u()Lcom/byazt/oz/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/byazt/oz/a;->tt(Lcom/byazt/yj/tt;)Lcom/byazt/yj/zb;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Lcom/byazt/yj/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
