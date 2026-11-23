.class public Lcom/byazt/qv/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1cb,
        0x14
    }
.end annotation


# direct methods
.method private static c(Ljava/util/List;)Lcom/byazt/yl/ve;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)",
            "Lcom/byazt/yl/ve;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yl/ve;

    if-nez v0, :cond_1

    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getFillTime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getFillTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static c(Lcom/byazt/iz/tt;Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/iz/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;Z)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/byazt/qv/c;->c(Ljava/util/List;)Lcom/byazt/yl/ve;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/byazt/iz/tt;->nb()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/byazt/iz/tt;->ve(J)V

    .line 4
    invoke-virtual {p0}, Lcom/byazt/iz/tt;->yv()Z

    move-result v1

    const/4 v10, 0x1

    xor-int/lit8 v6, v1, 0x1

    .line 5
    invoke-virtual {p0}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v1

    invoke-virtual {p0}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    move-result-object v2

    invoke-virtual {p0}, Lcom/byazt/iz/tt;->qp()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/byazt/iz/tt;->cu()J

    move-result-wide v7

    sub-long/2addr v3, v7

    .line 6
    invoke-virtual {p0}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    move-result-object v5

    iget-object v5, v5, Lcom/byazt/nbs/i;->c:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v7, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    move-result-object p1

    iget-boolean v8, p1, Lcom/byazt/nbs/i;->n:Z

    move v9, p2

    .line 7
    invoke-static/range {v0 .. v9}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/tt;JLjava/lang/String;ZIZZ)V

    .line 8
    invoke-virtual {p0, v10}, Lcom/byazt/iz/tt;->n(Z)V

    :cond_2
    return-void
.end method
