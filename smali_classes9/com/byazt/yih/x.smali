.class public Lcom/byazt/yih/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2da,
        0x47
    }
.end annotation


# direct methods
.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/pop/ve;
    .locals 4

    if-eqz p2, :cond_0

    .line 7
    invoke-static {p2}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {p2}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v1

    const/4 v2, 0x3

    .line 9
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->zm()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v0, v1, v2, v3}, Lcom/byazt/rgb/c;->c(Lcom/byazt/ete/ic;Ljava/lang/String;IILjava/lang/String;)V

    .line 10
    :cond_0
    invoke-static {}, Lcom/byazt/ogz/da;->sp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Lcom/byazt/wz/a;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/byazt/wz/a;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 12
    invoke-virtual {v0, p0}, Lcom/byazt/wz/a;->x(Z)V

    return-object v0

    .line 13
    :cond_1
    new-instance v0, Lcom/byazt/wz/sp;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/byazt/wz/sp;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/wz/c;
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/wz/a;

    const-string v1, ""

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/byazt/wz/a;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p1}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result p2

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->zm()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p0, p2, v1, v2}, Lcom/byazt/rgb/c;->c(Lcom/byazt/ete/ic;Ljava/lang/String;IILjava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    move-result-object p0

    const-class p2, Lcom/byazt/pop/ve;

    invoke-static {p0, v0, p2}, Lcom/byazt/omf/rl;->tt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static tt(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/pop/ve;
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->zm()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {p1, v0, v1, v2, v3}, Lcom/byazt/rgb/c;->c(Lcom/byazt/ete/ic;Ljava/lang/String;IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {}, Lcom/byazt/ogz/da;->sp()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Lcom/byazt/wz/a;

    .line 30
    .line 31
    const-string v1, ""

    .line 32
    .line 33
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/byazt/wz/a;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_1
    invoke-static {}, Lcom/byazt/aas/nb;->yv()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    new-instance v0, Lcom/byazt/wz/n;

    .line 44
    .line 45
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/wz/n;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    new-instance v0, Lcom/byazt/wz/ve;

    .line 50
    .line 51
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/wz/ve;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-object v0
.end method
