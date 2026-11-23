.class public abstract Lcom/byazt/kt/RecyclerView$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x403
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kt/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/kt/RecyclerView$i$c;
    }
.end annotation


# instance fields
.field public a:I

.field public final c:Lcom/byazt/kt/u$tt;

.field public da:Lcom/byazt/kt/u;

.field public i:Lcom/byazt/kt/RecyclerView;

.field public m:I

.field public n:I

.field public nu:Z

.field public rh:I

.field public sl:Lcom/byazt/kt/u;

.field public sp:I

.field public t:Lcom/byazt/kt/RecyclerView$my;

.field public final tt:Lcom/byazt/kt/u$tt;

.field public u:Z

.field public uj:Z

.field public ve:Z

.field public x:Lcom/byazt/kt/tt;

.field public yp:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/kt/RecyclerView$i$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/byazt/kt/RecyclerView$i$1;-><init>(Lcom/byazt/kt/RecyclerView$i;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->c:Lcom/byazt/kt/u$tt;

    .line 10
    .line 11
    new-instance v1, Lcom/byazt/kt/RecyclerView$i$2;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/byazt/kt/RecyclerView$i$2;-><init>(Lcom/byazt/kt/RecyclerView$i;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/byazt/kt/RecyclerView$i;->tt:Lcom/byazt/kt/u$tt;

    .line 17
    .line 18
    new-instance v2, Lcom/byazt/kt/u;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lcom/byazt/kt/u;-><init>(Lcom/byazt/kt/u$tt;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lcom/byazt/kt/RecyclerView$i;->da:Lcom/byazt/kt/u;

    .line 24
    .line 25
    new-instance v0, Lcom/byazt/kt/u;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/byazt/kt/u;-><init>(Lcom/byazt/kt/u$tt;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->sl:Lcom/byazt/kt/u;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/byazt/kt/RecyclerView$i;->u:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/byazt/kt/RecyclerView$i;->yp:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/byazt/kt/RecyclerView$i;->z:Z

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/byazt/kt/RecyclerView$i;->ve:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/byazt/kt/RecyclerView$i;->uj:Z

    .line 43
    .line 44
    return-void
.end method

.method public static c(III)I
    .locals 2

    .line 23
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 24
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 25
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    .line 26
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static c(IIIIZ)I
    .locals 4

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    .line 95
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p4, :cond_1

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p3, v1, :cond_6

    if-eq p1, v2, :cond_3

    if-eq p1, v3, :cond_3

    goto :goto_2

    :cond_1
    if-ltz p3, :cond_2

    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_3

    :cond_2
    if-ne p3, v1, :cond_4

    :cond_3
    :goto_1
    move p3, p0

    goto :goto_3

    :cond_4
    if-ne p3, v0, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v3, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    const/high16 p1, -0x80000000

    goto :goto_1

    :cond_6
    :goto_2
    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 96
    :goto_3
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private c(ILandroid/view/View;)V
    .locals 0

    .line 64
    iget-object p2, p0, Lcom/byazt/kt/RecyclerView$i;->x:Lcom/byazt/kt/tt;

    invoke-virtual {p2, p1}, Lcom/byazt/kt/tt;->n(I)V

    return-void
.end method

.method private c(Landroid/view/View;IZ)V
    .locals 4

    .line 42
    invoke-static {p1}, Lcom/byazt/kt/RecyclerView;->n(Landroid/view/View;)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object v0

    if-nez p3, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->nu()Z

    move-result p3

    if-nez p3, :cond_0

    .line 44
    iget-object p3, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    iget-object p3, p3, Lcom/byazt/kt/RecyclerView;->x:Lcom/byazt/kt/yp;

    invoke-virtual {p3, v0}, Lcom/byazt/kt/yp;->a(Lcom/byazt/kt/RecyclerView$gu;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object p3, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    iget-object p3, p3, Lcom/byazt/kt/RecyclerView;->x:Lcom/byazt/kt/yp;

    invoke-virtual {p3, v0}, Lcom/byazt/kt/yp;->n(Lcom/byazt/kt/RecyclerView$gu;)V

    .line 46
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/byazt/kt/RecyclerView$da;

    .line 47
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->sl()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->i()Z

    move-result v1

    if-nez v1, :cond_4

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    if-ne v1, v3, :cond_3

    .line 49
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$i;->x:Lcom/byazt/kt/tt;

    invoke-virtual {v1, p1}, Lcom/byazt/kt/tt;->tt(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 50
    iget-object p2, p0, Lcom/byazt/kt/RecyclerView$i;->x:Lcom/byazt/kt/tt;

    invoke-virtual {p2}, Lcom/byazt/kt/tt;->tt()I

    move-result p2

    :cond_1
    if-eq v1, v3, :cond_2

    if-eq v1, p2, :cond_6

    .line 51
    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    iget-object p1, p1, Lcom/byazt/kt/RecyclerView;->yp:Lcom/byazt/kt/RecyclerView$i;

    invoke-virtual {p1, v1, p2}, Lcom/byazt/kt/RecyclerView$i;->uj(II)V

    goto :goto_2

    .line 52
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 53
    :cond_3
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$i;->x:Lcom/byazt/kt/tt;

    invoke-virtual {v1, p1, p2, v2}, Lcom/byazt/kt/tt;->c(Landroid/view/View;IZ)V

    const/4 p2, 0x1

    .line 54
    iput-boolean p2, p3, Lcom/byazt/kt/RecyclerView$da;->ve:Z

    .line 55
    iget-object p2, p0, Lcom/byazt/kt/RecyclerView$i;->t:Lcom/byazt/kt/RecyclerView$my;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/byazt/kt/RecyclerView$my;->sp()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 56
    iget-object p2, p0, Lcom/byazt/kt/RecyclerView$i;->t:Lcom/byazt/kt/RecyclerView$my;

    invoke-virtual {p2, p1}, Lcom/byazt/kt/RecyclerView$my;->tt(Landroid/view/View;)V

    goto :goto_2

    .line 57
    :cond_4
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 58
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->da()V

    goto :goto_1

    .line 59
    :cond_5
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->t()V

    .line 60
    :goto_1
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$i;->x:Lcom/byazt/kt/tt;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v2}, Lcom/byazt/kt/tt;->c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 61
    :cond_6
    :goto_2
    iget-boolean p1, p3, Lcom/byazt/kt/RecyclerView$da;->uj:Z

    if-eqz p1, :cond_7

    .line 62
    iget-object p1, v0, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 63
    iput-boolean v2, p3, Lcom/byazt/kt/RecyclerView$da;->uj:Z

    :cond_7
    return-void
.end method

.method private c(Lcom/byazt/kt/RecyclerView$m;ILandroid/view/View;)V
    .locals 2

    .line 78
    invoke-static {p3}, Lcom/byazt/kt/RecyclerView;->n(Landroid/view/View;)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->R_()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->yp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->nu()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    iget-object v1, v1, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView$c;->tt()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {p0, p2}, Lcom/byazt/kt/RecyclerView$i;->a(I)V

    .line 82
    invoke-virtual {p1, v0}, Lcom/byazt/kt/RecyclerView$m;->tt(Lcom/byazt/kt/RecyclerView$gu;)V

    return-void

    .line 83
    :cond_0
    invoke-virtual {p0, p2}, Lcom/byazt/kt/RecyclerView$i;->sp(I)V

    .line 84
    invoke-virtual {p1, p3}, Lcom/byazt/kt/RecyclerView$m;->ve(Landroid/view/View;)V

    .line 85
    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    iget-object p1, p1, Lcom/byazt/kt/RecyclerView;->x:Lcom/byazt/kt/yp;

    invoke-virtual {p1, v0}, Lcom/byazt/kt/yp;->x(Lcom/byazt/kt/RecyclerView$gu;)V

    :cond_1
    return-void
.end method

.method private c(Lcom/byazt/kt/RecyclerView;II)Z
    .locals 6

    .line 119
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->gr()I

    move-result v1

    .line 121
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->zm()I

    move-result v2

    .line 122
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->qy()I

    move-result v3

    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->yv()I

    move-result v4

    sub-int/2addr v3, v4

    .line 123
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->gu()I

    move-result v4

    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->p()I

    move-result v5

    sub-int/2addr v4, v5

    .line 124
    iget-object v5, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    iget-object v5, v5, Lcom/byazt/kt/RecyclerView;->sl:Landroid/graphics/Rect;

    .line 125
    invoke-virtual {p0, p1, v5}, Lcom/byazt/kt/RecyclerView$i;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 126
    iget p1, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    if-ge p1, v3, :cond_1

    iget p1, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    if-le p1, v1, :cond_1

    iget p1, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    if-ge p1, v4, :cond_1

    iget p1, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p3

    if-le p1, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private static tt(III)Z
    .locals 3

    .line 34
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 35
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method private tt(Lcom/byazt/kt/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)[I
    .locals 7

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 36
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->gr()I

    move-result p4

    .line 37
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->zm()I

    move-result v0

    .line 38
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->qy()I

    move-result v1

    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->yv()I

    move-result v2

    sub-int/2addr v1, v2

    .line 39
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->gu()I

    move-result v2

    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->p()I

    move-result v3

    sub-int/2addr v2, v3

    .line 40
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    sub-int/2addr v4, p2

    .line 42
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v3

    .line 43
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v4

    sub-int/2addr v3, p4

    const/4 p4, 0x0

    .line 44
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v4, v0

    .line 45
    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p2, v1

    .line 46
    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr p3, v2

    .line 47
    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 48
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->nu()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    goto :goto_0

    .line 50
    :cond_2
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_0
    move v1, v5

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    .line 51
    :cond_3
    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    aput v1, p1, p4

    aput v0, p1, v6

    return-object p1
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/byazt/kt/RecyclerView$da;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView$da;->tt:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    return p1
.end method

.method public a(Lcom/byazt/kt/RecyclerView$gt;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public a(I)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$i;->x(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->x:Lcom/byazt/kt/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/kt/tt;->c(I)V

    :cond_0
    return-void
.end method

.method public c(ILcom/byazt/kt/RecyclerView$m;Lcom/byazt/kt/RecyclerView$gt;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/view/View;ILcom/byazt/kt/RecyclerView$m;Lcom/byazt/kt/RecyclerView$gt;)Landroid/view/View;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/byazt/kt/RecyclerView$da;
    .locals 1

    .line 34
    new-instance v0, Lcom/byazt/kt/RecyclerView$da;

    invoke-direct {v0, p1, p2}, Lcom/byazt/kt/RecyclerView$da;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public c(Landroid/view/ViewGroup$LayoutParams;)Lcom/byazt/kt/RecyclerView$da;
    .locals 1

    .line 31
    instance-of v0, p1, Lcom/byazt/kt/RecyclerView$da;

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lcom/byazt/kt/RecyclerView$da;

    check-cast p1, Lcom/byazt/kt/RecyclerView$da;

    invoke-direct {v0, p1}, Lcom/byazt/kt/RecyclerView$da;-><init>(Lcom/byazt/kt/RecyclerView$da;)V

    return-object v0

    .line 33
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/byazt/kt/RecyclerView$da;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/byazt/kt/RecyclerView$da;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/byazt/kt/RecyclerView$da;

    invoke-direct {v0, p1}, Lcom/byazt/kt/RecyclerView$da;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public c(IILcom/byazt/kt/RecyclerView$gt;Lcom/byazt/kt/RecyclerView$i$c;)V
    .locals 0

    .line 3
    return-void
.end method

.method public c(ILcom/byazt/kt/RecyclerView$i$c;)V
    .locals 0

    .line 4
    return-void
.end method

.method public c(ILcom/byazt/kt/RecyclerView$m;)V
    .locals 1

    .line 72
    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$i;->x(I)Landroid/view/View;

    move-result-object v0

    .line 73
    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$i;->a(I)V

    .line 74
    invoke-virtual {p2, v0}, Lcom/byazt/kt/RecyclerView$m;->c(Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/graphics/Rect;II)V
    .locals 2

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->gr()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->yv()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->zm()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->p()I

    move-result v1

    add-int/2addr p1, v1

    .line 20
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->d()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/byazt/kt/RecyclerView$i;->c(III)I

    move-result p2

    .line 21
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->eo()I

    move-result v0

    invoke-static {p3, p1, v0}, Lcom/byazt/kt/RecyclerView$i;->c(III)I

    move-result p1

    .line 22
    invoke-virtual {p0, p2, p1}, Lcom/byazt/kt/RecyclerView$i;->n(II)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/byazt/kt/RecyclerView$i;->c(Landroid/view/View;I)V

    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/kt/RecyclerView$i;->c(Landroid/view/View;IZ)V

    return-void
.end method

.method public c(Landroid/view/View;II)V
    .locals 5

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/byazt/kt/RecyclerView$da;

    .line 88
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/byazt/kt/RecyclerView;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 89
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 90
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    add-int/2addr p3, v2

    .line 91
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->qy()I

    move-result v1

    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->gt()I

    move-result v2

    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->gr()I

    move-result v3

    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->yv()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->ve()Z

    move-result v4

    invoke-static {v1, v2, v3, p2, v4}, Lcom/byazt/kt/RecyclerView$i;->c(IIIIZ)I

    move-result p2

    .line 92
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->gu()I

    move-result v1

    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->rl()I

    move-result v2

    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->zm()I

    move-result v3

    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->p()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->uj()Z

    move-result v4

    invoke-static {v1, v2, v3, p3, v4}, Lcom/byazt/kt/RecyclerView$i;->c(IIIIZ)I

    move-result p3

    .line 93
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/byazt/kt/RecyclerView$i;->c(Landroid/view/View;IILcom/byazt/kt/RecyclerView$da;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;IIII)V
    .locals 3

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/byazt/kt/RecyclerView$da;

    .line 98
    iget-object v1, v0, Lcom/byazt/kt/RecyclerView$da;->tt:Landroid/graphics/Rect;

    .line 99
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p4, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public c(Landroid/view/View;ILcom/byazt/kt/RecyclerView$da;)V
    .locals 2

    .line 65
    invoke-static {p1}, Lcom/byazt/kt/RecyclerView;->n(Landroid/view/View;)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->nu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    iget-object v1, v1, Lcom/byazt/kt/RecyclerView;->x:Lcom/byazt/kt/yp;

    invoke-virtual {v1, v0}, Lcom/byazt/kt/yp;->n(Lcom/byazt/kt/RecyclerView$gu;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    iget-object v1, v1, Lcom/byazt/kt/RecyclerView;->x:Lcom/byazt/kt/yp;

    invoke-virtual {v1, v0}, Lcom/byazt/kt/yp;->a(Lcom/byazt/kt/RecyclerView$gu;)V

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$i;->x:Lcom/byazt/kt/tt;

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->nu()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/byazt/kt/tt;->c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void
.end method

.method public c(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 111
    invoke-static {p1, p2}, Lcom/byazt/kt/RecyclerView;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public c(Landroid/view/View;Lcom/byazt/kt/RecyclerView$m;)V
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$i;->ve(Landroid/view/View;)V

    .line 71
    invoke-virtual {p2, p1}, Lcom/byazt/kt/RecyclerView$m;->c(Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 5

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/byazt/kt/RecyclerView$da;

    iget-object p2, p2, Lcom/byazt/kt/RecyclerView$da;->tt:Landroid/graphics/Rect;

    .line 101
    iget v0, p2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p2

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 103
    :goto_0
    iget-object p2, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    if-eqz p2, :cond_1

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 105
    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->t:Landroid/graphics/RectF;

    .line 107
    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 108
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 109
    iget p2, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p2, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    invoke-virtual {p3, p2, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 110
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView$m;)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->my()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Lcom/byazt/kt/RecyclerView$i;->x(I)Landroid/view/View;

    move-result-object v1

    .line 77
    invoke-direct {p0, p1, v0, v1}, Lcom/byazt/kt/RecyclerView$i;->c(Lcom/byazt/kt/RecyclerView$m;ILandroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView$m;Lcom/byazt/kt/RecyclerView$gt;)V
    .locals 0

    const-string p1, "RecyclerView"

    const-string p2, "You must override onLayoutChildren(Recycler recycler, State state) "

    .line 30
    invoke-static {p1, p2}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView$m;Lcom/byazt/kt/RecyclerView$gt;II)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {p1, p3, p4}, Lcom/byazt/kt/RecyclerView;->n(II)V

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView$my;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->t:Lcom/byazt/kt/RecyclerView$my;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$my;->sp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->t:Lcom/byazt/kt/RecyclerView$my;

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$my;->n()V

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$i;->t:Lcom/byazt/kt/RecyclerView$my;

    .line 39
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {p1, v0, p0}, Lcom/byazt/kt/RecyclerView$my;->c(Lcom/byazt/kt/RecyclerView;Lcom/byazt/kt/RecyclerView$i;)V

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    .line 9
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$i;->x:Lcom/byazt/kt/tt;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/byazt/kt/RecyclerView$i;->sp:I

    .line 11
    iput p1, p0, Lcom/byazt/kt/RecyclerView$i;->rh:I

    goto :goto_0

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    .line 13
    iget-object v0, p1, Lcom/byazt/kt/RecyclerView;->sp:Lcom/byazt/kt/tt;

    iput-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->x:Lcom/byazt/kt/tt;

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/byazt/kt/RecyclerView$i;->sp:I

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/byazt/kt/RecyclerView$i;->rh:I

    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    .line 16
    iput p1, p0, Lcom/byazt/kt/RecyclerView$i;->n:I

    .line 17
    iput p1, p0, Lcom/byazt/kt/RecyclerView$i;->a:I

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView;Lcom/byazt/kt/RecyclerView$gt;I)V
    .locals 0

    const-string p1, "RecyclerView"

    const-string p2, "You must override smoothScrollToPosition to support smooth scrolling"

    .line 35
    invoke-static {p1, p2}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView;Lcom/byazt/kt/RecyclerView$m;)V
    .locals 0

    .line 5
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p1}, Lcom/byazt/kt/RecyclerView;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/byazt/kt/RecyclerView$i;->z:Z

    return v0
.end method

.method public c(Landroid/view/View;IILcom/byazt/kt/RecyclerView$da;)Z
    .locals 2

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/byazt/kt/RecyclerView$i;->ve:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/byazt/kt/RecyclerView$i;->tt(III)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p1, p3, p2}, Lcom/byazt/kt/RecyclerView$i;->tt(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public c(Lcom/byazt/kt/RecyclerView$da;)Z
    .locals 0

    .line 6
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/byazt/kt/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 112
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/kt/RecyclerView$i;->c(Lcom/byazt/kt/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/byazt/kt/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 2

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/kt/RecyclerView$i;->tt(Lcom/byazt/kt/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)[I

    move-result-object p2

    const/4 p3, 0x0

    .line 114
    aget v0, p2, p3

    const/4 v1, 0x1

    .line 115
    aget p2, p2, v1

    if-eqz p5, :cond_0

    .line 116
    invoke-direct {p0, p1, v0, p2}, Lcom/byazt/kt/RecyclerView$i;->c(Lcom/byazt/kt/RecyclerView;II)Z

    move-result p5

    if-eqz p5, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 117
    invoke-virtual {p1, v0, p2}, Lcom/byazt/kt/RecyclerView;->scrollBy(II)V

    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {p1, v0, p2}, Lcom/byazt/kt/RecyclerView;->c(II)V

    :goto_1
    return v1
.end method

.method public c(Lcom/byazt/kt/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->m()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView;->yp()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public c(Lcom/byazt/kt/RecyclerView;Lcom/byazt/kt/RecyclerView$gt;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 128
    invoke-virtual {p0, p1, p3, p4}, Lcom/byazt/kt/RecyclerView$i;->c(Lcom/byazt/kt/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/byazt/kt/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/kt/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .line 7
    const/4 p1, 0x0

    return p1
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/fq/sp;->uj(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public da(Landroid/view/View;)I
    .locals 1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$i;->t(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public da(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/byazt/kt/RecyclerView;->n(I)V

    :cond_0
    return-void
.end method

.method public eo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/fq/sp;->n(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public gr()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public gt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/kt/RecyclerView$i;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public gu()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/kt/RecyclerView$i;->rh:I

    .line 2
    .line 3
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView;->getAdapter()Lcom/byazt/kt/RecyclerView$c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$c;->c()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public i(Landroid/view/View;)I
    .locals 1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$i;->yp(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public i(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/kt/RecyclerView;->a(I)V

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->t:Lcom/byazt/kt/RecyclerView$my;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$my;->sp()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public md()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/byazt/kt/RecyclerView$i;->x:Lcom/byazt/kt/tt;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lcom/byazt/kt/tt;->ve(Landroid/view/View;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    return-object v1
.end method

.method public my()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->x:Lcom/byazt/kt/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/kt/tt;->tt()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public n(Landroid/view/View;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/byazt/kt/RecyclerView$da;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView$da;->tt:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    return p1
.end method

.method public n(Lcom/byazt/kt/RecyclerView$gt;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public n(II)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    invoke-static {v0, p1, p2}, Lcom/byazt/kt/RecyclerView;->c(Lcom/byazt/kt/RecyclerView;II)V

    return-void
.end method

.method public nu()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/fq/sp;->c(Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public or()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->my()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Lcom/byazt/kt/RecyclerView$i;->x(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 18
    .line 19
    if-gez v4, :cond_0

    .line 20
    .line 21
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    .line 23
    if-gez v3, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v1
.end method

.method public p()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public qy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/kt/RecyclerView$i;->sp:I

    .line 2
    .line 3
    return v0
.end method

.method public rh()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public rl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/kt/RecyclerView$i;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public sl(Landroid/view/View;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/byazt/kt/RecyclerView$da;

    iget-object p1, p1, Lcom/byazt/kt/RecyclerView$da;->tt:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public sl(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public sp(Landroid/view/View;)I
    .locals 1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$i;->u(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public sp(Lcom/byazt/kt/RecyclerView$gt;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public sp(I)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$i;->x(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/byazt/kt/RecyclerView$i;->c(ILandroid/view/View;)V

    return-void
.end method

.method public t(Landroid/view/View;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/byazt/kt/RecyclerView$da;

    iget-object p1, p1, Lcom/byazt/kt/RecyclerView$da;->tt:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public t()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public tt(ILcom/byazt/kt/RecyclerView$m;Lcom/byazt/kt/RecyclerView$gt;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public tt(I)Landroid/view/View;
    .locals 5

    .line 17
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->my()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 18
    invoke-virtual {p0, v1}, Lcom/byazt/kt/RecyclerView$i;->x(I)Landroid/view/View;

    move-result-object v2

    .line 19
    invoke-static {v2}, Lcom/byazt/kt/RecyclerView;->n(Landroid/view/View;)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 20
    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$gu;->uj()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$gu;->R_()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    iget-object v4, v4, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    invoke-virtual {v4}, Lcom/byazt/kt/RecyclerView$gt;->c()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$gu;->nu()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract tt()Lcom/byazt/kt/RecyclerView$da;
.end method

.method public tt(II)V
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/byazt/kt/RecyclerView$i;->sp:I

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lcom/byazt/kt/RecyclerView$i;->n:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5
    sget-boolean p1, Lcom/byazt/kt/RecyclerView;->tt:Z

    if-nez p1, :cond_0

    .line 6
    iput v0, p0, Lcom/byazt/kt/RecyclerView$i;->sp:I

    .line 7
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/byazt/kt/RecyclerView$i;->rh:I

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lcom/byazt/kt/RecyclerView$i;->a:I

    if-nez p1, :cond_1

    .line 9
    sget-boolean p1, Lcom/byazt/kt/RecyclerView;->tt:Z

    if-nez p1, :cond_1

    .line 10
    iput v0, p0, Lcom/byazt/kt/RecyclerView$i;->rh:I

    :cond_1
    return-void
.end method

.method public tt(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/byazt/kt/RecyclerView$i;->tt(Landroid/view/View;I)V

    return-void
.end method

.method public tt(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/kt/RecyclerView$i;->c(Landroid/view/View;IZ)V

    return-void
.end method

.method public tt(Lcom/byazt/kt/RecyclerView$gt;)V
    .locals 0

    .line 2
    return-void
.end method

.method public tt(Lcom/byazt/kt/RecyclerView$m;)V
    .locals 6

    .line 21
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$m;->n()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 22
    invoke-virtual {p1, v1}, Lcom/byazt/kt/RecyclerView$m;->uj(I)Landroid/view/View;

    move-result-object v2

    .line 23
    invoke-static {v2}, Lcom/byazt/kt/RecyclerView;->n(Landroid/view/View;)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$gu;->R_()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    .line 25
    invoke-virtual {v3, v4}, Lcom/byazt/kt/RecyclerView$gu;->c(Z)V

    .line 26
    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$gu;->rh()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 27
    iget-object v5, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v5, v2, v4}, Lcom/byazt/kt/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 28
    :cond_0
    iget-object v4, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    iget-object v4, v4, Lcom/byazt/kt/RecyclerView;->zm:Lcom/byazt/kt/RecyclerView$a;

    if-eqz v4, :cond_1

    .line 29
    invoke-virtual {v4, v3}, Lcom/byazt/kt/RecyclerView$a;->uj(Lcom/byazt/kt/RecyclerView$gu;)V

    :cond_1
    const/4 v4, 0x1

    .line 30
    invoke-virtual {v3, v4}, Lcom/byazt/kt/RecyclerView$gu;->c(Z)V

    .line 31
    invoke-virtual {p1, v2}, Lcom/byazt/kt/RecyclerView$m;->tt(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 32
    :cond_3
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$m;->a()V

    if-lez v0, :cond_4

    .line 33
    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public tt(Lcom/byazt/kt/RecyclerView$my;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->t:Lcom/byazt/kt/RecyclerView$my;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$i;->t:Lcom/byazt/kt/RecyclerView$my;

    :cond_0
    return-void
.end method

.method public tt(Lcom/byazt/kt/RecyclerView;)V
    .locals 1

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/byazt/kt/RecyclerView$i;->yp:Z

    .line 12
    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$i;->ve(Lcom/byazt/kt/RecyclerView;)V

    return-void
.end method

.method public tt(Lcom/byazt/kt/RecyclerView;Lcom/byazt/kt/RecyclerView$m;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/byazt/kt/RecyclerView$i;->yp:Z

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/byazt/kt/RecyclerView$i;->c(Lcom/byazt/kt/RecyclerView;Lcom/byazt/kt/RecyclerView$m;)V

    return-void
.end method

.method public u(Landroid/view/View;)I
    .locals 0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/byazt/kt/RecyclerView$da;

    iget-object p1, p1, Lcom/byazt/kt/RecyclerView$da;->tt:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    return p1
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public uj(Landroid/view/View;)I
    .locals 0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/byazt/kt/RecyclerView$da;

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$da;->uj()I

    move-result p1

    return p1
.end method

.method public uj(Lcom/byazt/kt/RecyclerView$gt;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public uj(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public uj(I)V
    .locals 0

    .line 3
    return-void
.end method

.method public uj(II)V
    .locals 2

    .line 6
    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$i;->x(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$i;->sp(I)V

    .line 8
    invoke-virtual {p0, v0, p2}, Lcom/byazt/kt/RecyclerView$i;->ve(Landroid/view/View;I)V

    return-void

    .line 9
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot move a child from non-existing index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public uj(Lcom/byazt/kt/RecyclerView;)V
    .locals 2

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/byazt/kt/RecyclerView$i;->tt(II)V

    return-void
.end method

.method public uj()Z
    .locals 1

    .line 4
    const/4 v0, 0x0

    return v0
.end method

.method public ve(Lcom/byazt/kt/RecyclerView$gt;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public ve(II)V
    .locals 8

    .line 4
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->my()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/kt/RecyclerView;->n(II)V

    return-void

    :cond_0
    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_5

    .line 6
    invoke-virtual {p0, v5}, Lcom/byazt/kt/RecyclerView$i;->x(I)Landroid/view/View;

    move-result-object v6

    .line 7
    iget-object v7, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    iget-object v7, v7, Lcom/byazt/kt/RecyclerView;->sl:Landroid/graphics/Rect;

    .line 8
    invoke-virtual {p0, v6, v7}, Lcom/byazt/kt/RecyclerView$i;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9
    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v3, :cond_1

    move v3, v6

    .line 10
    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v1, :cond_2

    move v1, v6

    .line 11
    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v4, :cond_3

    move v4, v6

    .line 12
    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v2, :cond_4

    move v2, v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->sl:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 14
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->sl:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lcom/byazt/kt/RecyclerView$i;->c(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public ve(Landroid/view/View;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->x:Lcom/byazt/kt/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/kt/tt;->c(Landroid/view/View;)V

    return-void
.end method

.method public ve(Landroid/view/View;I)V
    .locals 1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/byazt/kt/RecyclerView$da;

    invoke-virtual {p0, p1, p2, v0}, Lcom/byazt/kt/RecyclerView$i;->c(Landroid/view/View;ILcom/byazt/kt/RecyclerView$da;)V

    return-void
.end method

.method public ve(Lcom/byazt/kt/RecyclerView$m;)V
    .locals 2

    .line 17
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$i;->my()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 18
    invoke-virtual {p0, v0}, Lcom/byazt/kt/RecyclerView$i;->x(I)Landroid/view/View;

    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/byazt/kt/RecyclerView;->n(Landroid/view/View;)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView$gu;->R_()Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/byazt/kt/RecyclerView$i;->c(ILcom/byazt/kt/RecyclerView$m;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ve(Lcom/byazt/kt/RecyclerView;)V
    .locals 0

    .line 2
    return-void
.end method

.method public ve()Z
    .locals 1

    .line 3
    const/4 v0, 0x0

    return v0
.end method

.method public x(Landroid/view/View;)I
    .locals 1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$i;->sl(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public x(Lcom/byazt/kt/RecyclerView$gt;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public x(I)Landroid/view/View;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->x:Lcom/byazt/kt/tt;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/byazt/kt/tt;->tt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public yp(Landroid/view/View;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/byazt/kt/RecyclerView$da;

    iget-object p1, p1, Lcom/byazt/kt/RecyclerView$da;->tt:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    return p1
.end method

.method public final yp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kt/RecyclerView$i;->uj:Z

    return v0
.end method

.method public yv()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/byazt/kt/RecyclerView;->i:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public zb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->t:Lcom/byazt/kt/RecyclerView$my;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$my;->n()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public zm()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$i;->i:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method
