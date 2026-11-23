.class public Lcom/byazt/oit/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xb0,
        0x14
    }
.end annotation


# direct methods
.method private static c(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/pop/ve;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/byazt/pop/ve;

    invoke-static {v0, v1}, Lcom/byazt/omf/rl;->ve(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/pop/ve;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    :cond_1
    if-nez v0, :cond_2

    .line 13
    invoke-static {p0, p1, p2}, Lcom/byazt/oit/c;->tt(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/pop/ve;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lcom/byazt/omf/rl;->tt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 15
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public static c(Landroid/view/View;Lcom/byazt/ete/ic;Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 2
    :cond_1
    invoke-static {p1}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v1

    .line 4
    new-instance v2, Lcom/byazt/hkv/c;

    invoke-direct {v2, p2, p1, v0, v1}, Lcom/byazt/hkv/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 5
    invoke-static {p1, p2, v0}, Lcom/byazt/oit/c;->c(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/pop/ve;

    move-result-object p2

    .line 6
    const-class v0, Lcom/byazt/nat/c;

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {v2, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v1

    check-cast v1, Lcom/byazt/nat/c;

    invoke-virtual {v1, p2}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/byazt/nat/c$c;

    invoke-static {p1, p2}, Lcom/byazt/omf/rl;->ve(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/nat/c$c;

    .line 9
    invoke-virtual {v2, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p2

    check-cast p2, Lcom/byazt/nat/c;

    invoke-virtual {p2, p1}, Lcom/byazt/nat/c;->c(Lcom/byazt/nat/c$c;)V

    .line 10
    new-instance p1, Lcom/byazt/ete/da;

    invoke-direct {p1}, Lcom/byazt/ete/da;-><init>()V

    invoke-virtual {v2, p0, p1}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    return-void
.end method

.method private static tt(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/pop/ve;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p0, p2}, Lcom/byazt/yih/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/wz/c;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance p2, Lcom/byazt/oit/c$1;

    .line 17
    .line 18
    invoke-direct {p2, p0}, Lcom/byazt/oit/c$1;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p2}, Lcom/byazt/pop/ve;->c(Lcom/byazt/pop/c;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Lcom/byazt/pop/ve;->c()V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method
