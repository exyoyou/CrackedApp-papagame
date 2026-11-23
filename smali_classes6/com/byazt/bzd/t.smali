.class public Lcom/byazt/bzd/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2d4,
        0x42
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/ete/xd;->t(Lcom/byazt/ete/ic;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-static {p0}, Lcom/byazt/ete/my;->c(Lcom/byazt/ete/ic;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p0}, Lcom/byazt/ete/my;->tt(Lcom/byazt/ete/ic;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1
    return v1
.end method
