.class public Lcom/byazt/fcd/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0xf
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/ete/ic;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/byazt/fcd/ve;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/byazt/fcd/ve;->tt(Lcom/byazt/ete/ic;)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/byazt/fcd/da;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/byazt/fcd/da;->tt(Lcom/byazt/ete/ic;)I

    move-result p0

    return p0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/byazt/fcd/sl;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {p0}, Lcom/byazt/fcd/sl;->tt(Lcom/byazt/ete/ic;)I

    move-result p0

    return p0

    .line 7
    :cond_2
    invoke-static {p0}, Lcom/byazt/fcd/sp;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {p0}, Lcom/byazt/fcd/sp;->tt(Lcom/byazt/ete/ic;)I

    move-result p0

    return p0

    .line 9
    :cond_3
    invoke-static {p0}, Lcom/byazt/fcd/n;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-static {p0}, Lcom/byazt/fcd/n;->tt(Lcom/byazt/ete/ic;)I

    move-result p0

    return p0

    .line 11
    :cond_4
    invoke-static {p0}, Lcom/byazt/fcd/a;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-static {p0}, Lcom/byazt/fcd/a;->tt(Lcom/byazt/ete/ic;)I

    move-result p0

    return p0

    .line 13
    :cond_5
    invoke-static {p0}, Lcom/byazt/fcd/x;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-static {p0}, Lcom/byazt/fcd/x;->tt(Lcom/byazt/ete/ic;)I

    move-result p0

    return p0

    .line 15
    :cond_6
    invoke-static {p0}, Lcom/byazt/fcd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    invoke-static {p0}, Lcom/byazt/fcd/t;->tt(Lcom/byazt/ete/ic;)I

    move-result p0

    return p0

    :cond_7
    const/4 p0, -0x1

    return p0
.end method

.method public static c(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)Lcom/byazt/fcd/c;
    .locals 1

    .line 17
    invoke-static {p0, p1}, Lcom/byazt/fcd/i;->c(Landroid/content/Context;Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lcom/byazt/fcd/i;

    invoke-direct {v0, p0, p1}, Lcom/byazt/fcd/i;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V

    return-object v0

    .line 19
    :cond_0
    invoke-static {p1}, Lcom/byazt/fcd/da;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    new-instance v0, Lcom/byazt/fcd/da;

    invoke-direct {v0, p0, p1}, Lcom/byazt/fcd/da;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V

    return-object v0

    .line 21
    :cond_1
    invoke-static {p1}, Lcom/byazt/fcd/ve;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    new-instance v0, Lcom/byazt/fcd/ve;

    invoke-direct {v0, p0, p1}, Lcom/byazt/fcd/ve;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V

    return-object v0

    .line 23
    :cond_2
    invoke-static {p1}, Lcom/byazt/fcd/sl;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    new-instance v0, Lcom/byazt/fcd/sl;

    invoke-direct {v0, p0, p1}, Lcom/byazt/fcd/sl;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V

    return-object v0

    .line 25
    :cond_3
    invoke-static {p1}, Lcom/byazt/fcd/sp;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    new-instance v0, Lcom/byazt/fcd/sp;

    invoke-direct {v0, p0, p1}, Lcom/byazt/fcd/sp;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V

    return-object v0

    .line 27
    :cond_4
    invoke-static {p1}, Lcom/byazt/fcd/n;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    new-instance v0, Lcom/byazt/fcd/n;

    invoke-direct {v0, p0, p1}, Lcom/byazt/fcd/n;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V

    return-object v0

    .line 29
    :cond_5
    invoke-static {p1}, Lcom/byazt/fcd/a;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    new-instance v0, Lcom/byazt/fcd/a;

    invoke-direct {v0, p0, p1}, Lcom/byazt/fcd/a;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V

    return-object v0

    .line 31
    :cond_6
    invoke-static {p1}, Lcom/byazt/fcd/x;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32
    new-instance v0, Lcom/byazt/fcd/x;

    invoke-direct {v0, p0, p1}, Lcom/byazt/fcd/x;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V

    return-object v0

    .line 33
    :cond_7
    invoke-static {p1}, Lcom/byazt/fcd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 34
    new-instance v0, Lcom/byazt/fcd/t;

    invoke-direct {v0, p0, p1}, Lcom/byazt/fcd/t;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)V

    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method
