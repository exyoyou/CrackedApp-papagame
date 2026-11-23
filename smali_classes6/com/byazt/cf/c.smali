.class public Lcom/byazt/cf/c;
.super Lcom/byazt/cf/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x12,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/cf/n<",
        "Lcom/byazt/yi/tt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/byazt/iu/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/cf/n;-><init>(Lcom/byazt/iu/tt;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;",
            "Lcom/byazt/vvt/tt$c<",
            "Lcom/byazt/yi/tt;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/ete/ic;

    .line 4
    new-instance v0, Lcom/byazt/yi/tt;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Lcom/byazt/yi/tt;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V

    if-eqz p3, :cond_0

    .line 5
    invoke-interface {p3, v0}, Lcom/byazt/vvt/tt$c;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/yi/tt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;",
            "Lcom/byazt/yi/tt;",
            ")V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 13
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ete/ic;

    .line 14
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->uv()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xa037a0

    add-long/2addr v0, v2

    invoke-virtual {p3, v0, v1}, Lcom/byazt/yi/tt;->setExpirationTimestamp(J)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->uv()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-virtual {p3, v0, v1}, Lcom/byazt/yi/tt;->setExpirationTimestamp(J)V

    .line 17
    :goto_0
    invoke-static {p1}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 18
    invoke-static {p1}, Lcom/byazt/aas/rl;->ve(Lcom/byazt/ete/ic;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 19
    invoke-static {p1}, Lcom/byazt/ete/lt;->c(Lcom/byazt/ete/ic;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 20
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->up()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p3}, Lcom/byazt/yi/tt;->setPreload()V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/yi/tt;)V
    .locals 1

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Lcom/byazt/yi/tt;->setVideoCacheCallbackResult(I)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/byazt/yi/tt;

    invoke-virtual {p0, p1}, Lcom/byazt/cf/c;->c(Lcom/byazt/yi/tt;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/byazt/ete/c;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ete/ic;

    .line 8
    invoke-static {p1}, Lcom/byazt/ete/h;->c(Lcom/byazt/ete/ic;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->zo()Lcom/byazt/ete/h;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/byazt/ete/h;->ve()I

    move-result p1

    if-eq p1, v2, :cond_0

    return v2

    :cond_0
    return v0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/cf/c;->c()Z

    move-result v1

    invoke-static {v1, p1, v0}, Lcom/byazt/ete/or;->tt(ZLcom/byazt/ete/ic;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/byazt/ete/or;->uj(Lcom/byazt/ete/ic;)I

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public synthetic tt(Lcom/byazt/dj/tt;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/byazt/yi/tt;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/cf/c;->c(Lcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/yi/tt;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
