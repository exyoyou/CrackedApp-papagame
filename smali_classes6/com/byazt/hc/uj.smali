.class public Lcom/byazt/hc/uj;
.super Lcom/byazt/hc/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5e0,
        0xf
    }
.end annotation


# instance fields
.field public tt:Lcom/byazt/hc/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/hc/c;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/qq/tt;->sp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/l;->n(Lcom/byazt/ete/ic;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lcom/byazt/qq/tt$c;

    invoke-direct {p1, v2, v2, v1}, Lcom/byazt/qq/tt$c;-><init>(ZILjava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/ete/g;

    .line 4
    invoke-virtual {v3}, Lcom/byazt/ete/g;->ve()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    new-instance v4, Lcom/byazt/hc/ve;

    iget-object v5, p0, Lcom/byazt/qq/tt;->x:Landroid/app/Activity;

    iget-object v6, p0, Lcom/byazt/qq/tt;->sp:Lcom/byazt/ete/ic;

    invoke-direct {v4, v5, v6, v3}, Lcom/byazt/hc/ve;-><init>(Landroid/app/Activity;Lcom/byazt/ete/ic;Lcom/byazt/ete/g;)V

    iput-object v4, p0, Lcom/byazt/hc/uj;->tt:Lcom/byazt/hc/c;

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/byazt/hc/uj;->tt:Lcom/byazt/hc/c;

    if-eqz v3, :cond_1

    .line 7
    iget-object v4, p0, Lcom/byazt/qq/tt;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/byazt/qq/tt;->ve(Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/byazt/hc/uj;->tt:Lcom/byazt/hc/c;

    iget-object v4, p0, Lcom/byazt/qq/tt;->sl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/byazt/qq/tt;->uj(Ljava/lang/String;)V

    .line 9
    iget-object v3, p0, Lcom/byazt/hc/uj;->tt:Lcom/byazt/hc/c;

    iget-object v4, p0, Lcom/byazt/hc/c;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/byazt/hc/c;->c(Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/byazt/hc/uj;->tt:Lcom/byazt/hc/c;

    invoke-virtual {p0}, Lcom/byazt/qq/tt;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/byazt/qq/tt;->tt(Ljava/lang/String;)V

    .line 11
    iget-object v3, p0, Lcom/byazt/hc/uj;->tt:Lcom/byazt/hc/c;

    iget-object v4, p0, Lcom/byazt/qq/tt;->m:Ljava/util/Map;

    invoke-virtual {v3, v4}, Lcom/byazt/qq/tt;->c(Ljava/util/Map;)V

    .line 12
    iget-object v3, p0, Lcom/byazt/hc/uj;->tt:Lcom/byazt/hc/c;

    invoke-virtual {v3, p1}, Lcom/byazt/hc/c;->c(Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lcom/byazt/qq/tt$c;->ve()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    .line 14
    :cond_3
    new-instance p1, Lcom/byazt/qq/tt$c;

    invoke-direct {p1, v2, v2, v1}, Lcom/byazt/qq/tt$c;-><init>(ZILjava/lang/String;)V

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/byazt/hc/uj;->tt:Lcom/byazt/hc/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/qq/tt;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tt(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/qq/tt;->tt(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/hc/uj;->tt:Lcom/byazt/hc/c;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/qq/tt;->tt(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
