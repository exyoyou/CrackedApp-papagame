.class public Lcom/byazt/kt/i;
.super Lcom/byazt/kt/t;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x2a
    }
.end annotation


# instance fields
.field public tt:Lcom/byazt/kt/x;

.field public ve:Lcom/byazt/kt/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/kt/t;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Lcom/byazt/kt/RecyclerView$i;Landroid/view/View;Lcom/byazt/kt/x;)I
    .locals 1

    .line 19
    invoke-virtual {p3, p2}, Lcom/byazt/kt/x;->c(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, p2}, Lcom/byazt/kt/x;->n(Landroid/view/View;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    .line 20
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$i;->z()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p3}, Lcom/byazt/kt/x;->ve()I

    move-result p1

    invoke-virtual {p3}, Lcom/byazt/kt/x;->a()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p3}, Lcom/byazt/kt/x;->n()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    :goto_0
    sub-int/2addr v0, p1

    return v0
.end method

.method private c(Lcom/byazt/kt/RecyclerView$i;Lcom/byazt/kt/x;)Landroid/view/View;
    .locals 8

    .line 23
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$i;->my()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$i;->z()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    invoke-virtual {p2}, Lcom/byazt/kt/x;->ve()I

    move-result v2

    invoke-virtual {p2}, Lcom/byazt/kt/x;->a()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p2}, Lcom/byazt/kt/x;->n()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    const v3, 0x7fffffff

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    .line 27
    invoke-virtual {p1, v4}, Lcom/byazt/kt/RecyclerView$i;->x(I)Landroid/view/View;

    move-result-object v5

    .line 28
    invoke-virtual {p2, v5}, Lcom/byazt/kt/x;->c(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p2, v5}, Lcom/byazt/kt/x;->n(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v6, v2

    .line 29
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v3, :cond_2

    move-object v1, v5

    move v3, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private n(Lcom/byazt/kt/RecyclerView$i;)Lcom/byazt/kt/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/i;->ve:Lcom/byazt/kt/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    .line 6
    .line 7
    if-eq v0, p1, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-static {p1}, Lcom/byazt/kt/x;->c(Lcom/byazt/kt/RecyclerView$i;)Lcom/byazt/kt/x;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/byazt/kt/i;->ve:Lcom/byazt/kt/x;

    .line 14
    .line 15
    :cond_1
    iget-object p1, p0, Lcom/byazt/kt/i;->ve:Lcom/byazt/kt/x;

    .line 16
    .line 17
    return-object p1
.end method

.method private tt(Lcom/byazt/kt/RecyclerView$i;Lcom/byazt/kt/x;)Landroid/view/View;
    .locals 6

    .line 2
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$i;->my()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 3
    invoke-virtual {p1, v3}, Lcom/byazt/kt/RecyclerView$i;->x(I)Landroid/view/View;

    move-result-object v4

    .line 4
    invoke-virtual {p2, v4}, Lcom/byazt/kt/x;->c(Landroid/view/View;)I

    move-result v5

    if-ge v5, v2, :cond_1

    move-object v1, v4

    move v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private uj(Lcom/byazt/kt/RecyclerView$i;)Lcom/byazt/kt/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/i;->tt:Lcom/byazt/kt/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    .line 6
    .line 7
    if-eq v0, p1, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-static {p1}, Lcom/byazt/kt/x;->tt(Lcom/byazt/kt/RecyclerView$i;)Lcom/byazt/kt/x;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/byazt/kt/i;->tt:Lcom/byazt/kt/x;

    .line 14
    .line 15
    :cond_1
    iget-object p1, p0, Lcom/byazt/kt/i;->tt:Lcom/byazt/kt/x;

    .line 16
    .line 17
    return-object p1
.end method


# virtual methods
.method public c(Lcom/byazt/kt/RecyclerView$i;II)I
    .locals 5

    .line 8
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$i;->h()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$i;->uj()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-direct {p0, p1}, Lcom/byazt/kt/i;->uj(Lcom/byazt/kt/RecyclerView$i;)Lcom/byazt/kt/x;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/byazt/kt/i;->tt(Lcom/byazt/kt/RecyclerView$i;Lcom/byazt/kt/x;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$i;->ve()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-direct {p0, p1}, Lcom/byazt/kt/i;->n(Lcom/byazt/kt/RecyclerView$i;)Lcom/byazt/kt/x;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/byazt/kt/i;->tt(Lcom/byazt/kt/RecyclerView$i;Lcom/byazt/kt/x;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    return v1

    .line 13
    :cond_3
    invoke-virtual {p1, v2}, Lcom/byazt/kt/RecyclerView$i;->uj(Landroid/view/View;)I

    move-result v2

    if-ne v2, v1, :cond_4

    return v1

    .line 14
    :cond_4
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$i;->ve()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    if-lez p2, :cond_5

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    goto :goto_2

    :cond_6
    if-lez p3, :cond_5

    goto :goto_1

    .line 15
    :goto_2
    instance-of p3, p1, Lcom/byazt/kt/RecyclerView$my$tt;

    if-eqz p3, :cond_8

    .line 16
    check-cast p1, Lcom/byazt/kt/RecyclerView$my$tt;

    sub-int/2addr v0, v4

    .line 17
    invoke-interface {p1, v0}, Lcom/byazt/kt/RecyclerView$my$tt;->ve(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 18
    iget p3, p1, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-ltz p3, :cond_7

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_8

    :cond_7
    const/4 v3, 0x1

    :cond_8
    if-eqz v3, :cond_a

    if-eqz p2, :cond_9

    sub-int/2addr v2, v4

    :cond_9
    return v2

    :cond_a
    if-eqz p2, :cond_b

    add-int/2addr v2, v4

    :cond_b
    return v2
.end method

.method public c(Lcom/byazt/kt/RecyclerView$i;)Landroid/view/View;
    .locals 1

    .line 5
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$i;->uj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/kt/i;->uj(Lcom/byazt/kt/RecyclerView$i;)Lcom/byazt/kt/x;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/byazt/kt/i;->c(Lcom/byazt/kt/RecyclerView$i;Lcom/byazt/kt/x;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$i;->ve()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/byazt/kt/i;->n(Lcom/byazt/kt/RecyclerView$i;)Lcom/byazt/kt/x;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/byazt/kt/i;->c(Lcom/byazt/kt/RecyclerView$i;Lcom/byazt/kt/x;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/byazt/kt/RecyclerView$i;Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$i;->ve()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/kt/i;->n(Lcom/byazt/kt/RecyclerView$i;)Lcom/byazt/kt/x;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/byazt/kt/i;->c(Lcom/byazt/kt/RecyclerView$i;Landroid/view/View;Lcom/byazt/kt/x;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$i;->uj()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/kt/i;->uj(Lcom/byazt/kt/RecyclerView$i;)Lcom/byazt/kt/x;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/byazt/kt/i;->c(Lcom/byazt/kt/RecyclerView$i;Landroid/view/View;Lcom/byazt/kt/x;)I

    move-result p1

    aput p1, v0, v3

    goto :goto_1

    :cond_1
    aput v2, v0, v3

    :goto_1
    return-object v0
.end method

.method public tt(Lcom/byazt/kt/RecyclerView$i;)Lcom/byazt/kt/a;
    .locals 1

    .line 1
    instance-of p1, p1, Lcom/byazt/kt/RecyclerView$my$tt;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lcom/byazt/kt/i$1;

    iget-object v0, p0, Lcom/byazt/kt/t;->c:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/byazt/kt/i$1;-><init>(Lcom/byazt/kt/i;Landroid/content/Context;)V

    return-object p1
.end method
