.class public Lcom/byazt/nhd/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nhd/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x153,
        0x14
    }
.end annotation


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/byazt/nhd/c;->c:I

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lcom/byazt/nhd/c;)I
    .locals 0

    .line 5
    iget p0, p0, Lcom/byazt/nhd/c;->c:I

    return p0
.end method


# virtual methods
.method public c(Ljava/lang/String;J)Lcom/byazt/ete/ic;
    .locals 2

    .line 9
    iget v0, p0, Lcom/byazt/nhd/c;->c:I

    invoke-static {v0}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/byazt/eti/n;->c(Ljava/lang/String;ZJ)Lcom/byazt/ete/ic;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 10
    iget p3, p0, Lcom/byazt/nhd/c;->c:I

    invoke-static {p3}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object p3

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->sf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/byazt/eti/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method public c(Ljava/lang/String;JID)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JID)",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;"
        }
    .end annotation

    .line 11
    iget v0, p0, Lcom/byazt/nhd/c;->c:I

    invoke-static {v0}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object v1

    const/4 v3, 0x0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    move-wide v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/byazt/eti/n;->c(Ljava/lang/String;ZJID)Ljava/util/List;

    move-result-object p2

    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/byazt/ete/ic;

    .line 13
    iget p5, p0, Lcom/byazt/nhd/c;->c:I

    invoke-static {p5}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object p5

    invoke-virtual {p4}, Lcom/byazt/ete/ic;->sf()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p1, p4}, Lcom/byazt/eti/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    return-object p2
.end method

.method public c(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V
    .locals 5

    .line 6
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->uv()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xa037a0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/byazt/ete/ic;->n(J)V

    .line 8
    :cond_0
    new-instance v0, Lcom/byazt/nhd/c$1;

    const-string v1, "PreloadStrategyLoadDelete-onNetworkResponse"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/byazt/nhd/c$1;-><init>(Lcom/byazt/nhd/c;Ljava/lang/String;Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;)V"
        }
    .end annotation

    .line 2
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 3
    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/ete/ic;)V
    .locals 1

    .line 15
    iget v0, p0, Lcom/byazt/nhd/c;->c:I

    invoke-static {v0}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object v0

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->sf()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/byazt/eti/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 0

    .line 4
    const/4 p1, 0x1

    return p1
.end method

.method public tt(Lcom/byazt/dj/tt;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/nhd/c;->c:I

    invoke-static {v0}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/eti/n;->tt(Ljava/lang/String;)V

    return-void
.end method
