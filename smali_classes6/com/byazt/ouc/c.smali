.class public abstract Lcom/byazt/ouc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ouc/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa2,
        0x14
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

.method public static c(Lcom/byazt/ete/ic;Lcom/byazt/xl/u;)Lcom/byazt/ouc/tt;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/byazt/ouc/c;->n(Lcom/byazt/ete/ic;)I

    move-result p0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    .line 5
    instance-of p0, p1, Lcom/byazt/atv/tt;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/byazt/atv/tt;

    invoke-virtual {p1}, Lcom/byazt/atv/tt;->cu()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    new-instance p0, Lcom/byazt/zdj/c;

    invoke-direct {p0}, Lcom/byazt/zdj/c;-><init>()V

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Lcom/byazt/ot/c;

    invoke-direct {p0}, Lcom/byazt/ot/c;-><init>()V

    return-object p0

    :cond_2
    return-object v0
.end method

.method private static n(Lcom/byazt/ete/ic;)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->ij()Lcom/byazt/dj/tt;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/byazt/dj/tt;->gt()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :cond_1
    const/16 v1, 0xa

    .line 16
    .line 17
    if-lez v0, :cond_2

    .line 18
    .line 19
    if-ge v0, v1, :cond_2

    .line 20
    .line 21
    return v0

    .line 22
    :cond_2
    invoke-static {p0}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-lez p0, :cond_3

    .line 27
    .line 28
    if-ge p0, v1, :cond_3

    .line 29
    .line 30
    return p0

    .line 31
    :cond_3
    return v0
.end method

.method public static tt(Lcom/byazt/ete/ic;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/pu;->ve(Lcom/byazt/ete/ic;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-static {p0}, Lcom/byazt/ouc/c;->ve(Lcom/byazt/ete/ic;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    return v3

    .line 25
    :cond_2
    return v0
.end method

.method private uj(Lcom/byazt/ete/ic;)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->id()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public static ve(Lcom/byazt/ete/ic;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/byazt/ouc/c;->n(Lcom/byazt/ete/ic;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x5

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method


# virtual methods
.method public c(Lcom/byazt/ete/ic;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/byazt/ouc/c;->n(Lcom/byazt/ete/ic;)I

    move-result v0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/ouc/c;->uj(Lcom/byazt/ete/ic;)I

    move-result v1

    if-lez v0, :cond_0

    const/16 v2, 0x9

    if-gt v0, v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/byazt/ouc/c;->c(Lcom/byazt/ete/ic;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract c(Lcom/byazt/ete/ic;II)Ljava/lang/String;
.end method
