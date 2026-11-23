.class public abstract Lcom/byazt/pj/tt;
.super Lcom/byazt/kt/RecyclerView$yp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x69d,
        0xd
    }
.end annotation


# instance fields
.field public c:Z

.field public tt:Lcom/byazt/pj/c;

.field public ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/pj/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/kt/RecyclerView$yp;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/pj/tt;->c:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/pj/tt;->tt:Lcom/byazt/pj/c;

    .line 8
    .line 9
    return-void
.end method

.method private c(Landroid/view/View;)I
    .locals 2

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    div-int/2addr v0, p1

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private c(Landroid/view/View;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 20
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 23
    invoke-direct {p0, p1}, Lcom/byazt/pj/tt;->c(Landroid/view/View;)I

    move-result p1

    if-lt p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method public abstract c()V
.end method

.method public abstract c(II)V
.end method

.method public abstract c(ILandroid/view/View;)V
.end method

.method public c(Lcom/byazt/kt/RecyclerView;I)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/kt/RecyclerView$yp;->c(Lcom/byazt/kt/RecyclerView;I)V

    .line 2
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView;->getLayoutManager()Lcom/byazt/kt/RecyclerView$i;

    move-result-object v0

    check-cast v0, Lcom/byazt/kt/n;

    if-nez p2, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/byazt/kt/n;->sl()I

    move-result v1

    .line 4
    iget v2, p0, Lcom/byazt/pj/tt;->ve:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/kt/n;->tt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x32

    .line 6
    invoke-direct {p0, v3, v4}, Lcom/byazt/pj/tt;->c(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 7
    :cond_0
    iget v3, p0, Lcom/byazt/pj/tt;->ve:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_0
    if-gt v2, v3, :cond_1

    .line 8
    invoke-virtual {v0, v2}, Lcom/byazt/kt/n;->tt(I)Landroid/view/View;

    move-result-object v4

    .line 9
    invoke-virtual {p0, v2, v4}, Lcom/byazt/pj/tt;->c(ILandroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iput v1, p0, Lcom/byazt/pj/tt;->ve:I

    .line 11
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$i;->h()I

    move-result v0

    .line 12
    iget-object v2, p0, Lcom/byazt/pj/tt;->tt:Lcom/byazt/pj/c;

    invoke-virtual {v2, p1}, Lcom/byazt/pj/c;->c(Lcom/byazt/kt/RecyclerView;)I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_2

    .line 13
    iget-boolean v1, p0, Lcom/byazt/pj/tt;->c:Z

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/pj/tt;->c()V

    .line 15
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/byazt/pj/tt;->tt(Lcom/byazt/kt/RecyclerView;I)V

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView;II)V
    .locals 4

    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/kt/RecyclerView$yp;->c(Lcom/byazt/kt/RecyclerView;II)V

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 25
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView;->getLayoutManager()Lcom/byazt/kt/RecyclerView$i;

    move-result-object p1

    check-cast p1, Lcom/byazt/kt/n;

    .line 26
    invoke-virtual {p1}, Lcom/byazt/kt/n;->da()I

    move-result v1

    iput v1, p0, Lcom/byazt/pj/tt;->ve:I

    .line 27
    invoke-virtual {p1}, Lcom/byazt/kt/n;->sl()I

    move-result v1

    .line 28
    invoke-virtual {p1, v1}, Lcom/byazt/kt/n;->tt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x32

    .line 29
    invoke-direct {p0, v2, v3}, Lcom/byazt/pj/tt;->c(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 30
    :cond_0
    iget v2, p0, Lcom/byazt/pj/tt;->ve:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 31
    iget v2, p0, Lcom/byazt/pj/tt;->ve:I

    :goto_0
    if-gt v2, v1, :cond_1

    .line 32
    invoke-virtual {p1, v2}, Lcom/byazt/kt/n;->tt(I)Landroid/view/View;

    move-result-object v3

    .line 33
    invoke-virtual {p0, v2, v3}, Lcom/byazt/pj/tt;->c(ILandroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez p3, :cond_2

    const/4 v0, 0x1

    .line 34
    :cond_2
    iput-boolean v0, p0, Lcom/byazt/pj/tt;->c:Z

    .line 35
    iget-object p1, p0, Lcom/byazt/pj/tt;->tt:Lcom/byazt/pj/c;

    invoke-virtual {p1}, Lcom/byazt/pj/c;->c()V

    .line 36
    invoke-virtual {p0, p2, p3}, Lcom/byazt/pj/tt;->c(II)V

    return-void
.end method

.method public abstract tt(Lcom/byazt/kt/RecyclerView;I)V
.end method
