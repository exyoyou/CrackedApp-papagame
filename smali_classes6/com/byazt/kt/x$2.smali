.class public final Lcom/byazt/kt/x$2;
.super Lcom/byazt/kt/x;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x3b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kt/x;->tt(Lcom/byazt/kt/RecyclerView$i;)Lcom/byazt/kt/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/byazt/kt/RecyclerView$i;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/byazt/kt/x;-><init>(Lcom/byazt/kt/RecyclerView$i;Lcom/byazt/kt/x$1;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$i;->gu()I

    move-result v0

    iget-object v1, p0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView$i;->zm()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView$i;->p()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/byazt/kt/RecyclerView$da;

    .line 2
    iget-object v1, p0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v1, p1}, Lcom/byazt/kt/RecyclerView$i;->n(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public c(Landroid/view/View;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/byazt/kt/RecyclerView$da;

    .line 3
    iget-object v1, p0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v1, p1}, Lcom/byazt/kt/RecyclerView$i;->x(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v0, p1}, Lcom/byazt/kt/RecyclerView$i;->da(I)V

    return-void
.end method

.method public n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$i;->gu()I

    move-result v0

    return v0
.end method

.method public n(Landroid/view/View;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/byazt/kt/RecyclerView$da;

    .line 3
    iget-object v1, p0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v1, p1}, Lcom/byazt/kt/RecyclerView$i;->a(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public sp()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$i;->p()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public tt(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/byazt/kt/RecyclerView$da;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lcom/byazt/kt/RecyclerView$i;->da(Landroid/view/View;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 14
    .line 15
    add-int/2addr p1, v0

    .line 16
    return p1
.end method

.method public uj()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$i;->gu()I

    move-result v0

    iget-object v1, p0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView$i;->p()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public uj(Landroid/view/View;)I
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/byazt/kt/x;->tt:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lcom/byazt/kt/RecyclerView$i;->c(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 3
    iget-object p1, p0, Lcom/byazt/kt/x;->tt:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public ve()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$i;->zm()I

    move-result v0

    return v0
.end method

.method public ve(Landroid/view/View;)I
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/byazt/kt/x;->tt:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Lcom/byazt/kt/RecyclerView$i;->c(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 3
    iget-object p1, p0, Lcom/byazt/kt/x;->tt:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public x()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/x;->c:Lcom/byazt/kt/RecyclerView$i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$i;->rl()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
