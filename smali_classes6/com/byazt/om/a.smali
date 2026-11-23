.class public Lcom/byazt/om/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/om/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x22a,
        0x22
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Lcom/byazt/iz/tt;I)V
    .locals 7

    .line 27
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->yv()Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    .line 28
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    move-result-object v0

    iget-object v4, v0, Lcom/byazt/nbs/i;->c:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/om/c$c;)V
    .locals 9

    .line 1
    invoke-interface {p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/byazt/oi/c;->c()Lcom/byazt/oi/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/oi/c;->tt()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u8bf7\u6c42\u8fc7\u4e8e\u9891\u7e41\uff0c\u89e6\u53d1\u4e86\u7194\u65ad\u673a\u5236"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TTMediationSDK"

    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0xcd16b

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/byazt/om/a;->c(Lcom/byazt/iz/tt;I)V

    .line 6
    new-instance v1, Lcom/byazt/bnd/c;

    invoke-static {p1}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/byazt/bnd/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/byazt/iz/tt;->c(Lcom/byazt/pp/c;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 8
    invoke-virtual {v2}, Lcom/byazt/nbs/tt;->u()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/hr/u;->x(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "TMe"

    const-string v4, ""

    if-nez v2, :cond_3

    const-string p1, "\u5e7f\u544a\u4f4d \u8bf7\u6c42\u89e6\u53d1\u6b21\u6570\u62e6\u622a............"

    .line 10
    invoke-static {v3, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/byazt/hr/u;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 12
    new-instance v1, Lcom/byazt/bnd/tt;

    const v2, 0xcd169

    .line 13
    invoke-static {v2}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    iget-object v5, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    :cond_2
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/byazt/bnd/tt;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget p1, v1, Lcom/byazt/pp/c;->c:I

    invoke-direct {p0, v0, p1}, Lcom/byazt/om/a;->c(Lcom/byazt/iz/tt;I)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/byazt/iz/tt;->c(Lcom/byazt/pp/c;)V

    return-void

    .line 16
    :cond_3
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/byazt/hr/u;->ve(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 17
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->yv()Z

    move-result v2

    if-nez v2, :cond_5

    const-string p1, "\u5e7f\u544a\u4f4d \u8bf7\u6c42\u89e6\u53d1\u65f6\u95f4\u95f4\u9694\u62e6\u622a............"

    .line 18
    invoke-static {v3, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/byazt/hr/u;->n(Ljava/lang/String;)Lcom/byazt/hr/i;

    move-result-object p1

    .line 20
    new-instance v2, Lcom/byazt/bnd/ve;

    const v3, 0xcd16a

    .line 21
    invoke-static {v3}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/byazt/hr/u;->c(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {p1}, Lcom/byazt/hr/i;->da()Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-direct {v2, v3, v5, v1, v4}, Lcom/byazt/bnd/ve;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget p1, v2, Lcom/byazt/pp/c;->c:I

    invoke-direct {p0, v0, p1}, Lcom/byazt/om/a;->c(Lcom/byazt/iz/tt;I)V

    .line 25
    invoke-virtual {v0, v2}, Lcom/byazt/iz/tt;->c(Lcom/byazt/pp/c;)V

    return-void

    .line 26
    :cond_5
    invoke-interface {p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/byazt/om/c$c;->c(Lcom/byazt/iz/tt;)V

    return-void
.end method

.method public tt(Lcom/byazt/om/c$c;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lcom/byazt/om/c$c;->c(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
