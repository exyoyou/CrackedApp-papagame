.class public Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager$a;
    }
.end annotation


# static fields
.field private static final w:Ljava/lang/String; = "PickerLayoutManager"


# instance fields
.field private n:F

.field private o:Z

.field private p:Landroidx/recyclerview/widget/LinearSnapHelper;

.field private q:Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager$a;

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroidx/recyclerview/widget/RecyclerView;

.field private v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 2
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->n:F

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->o:Z

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->t:I

    .line 5
    new-instance p1, Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->p:Landroidx/recyclerview/widget/LinearSnapHelper;

    .line 6
    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->v:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;IZIFZ)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 8
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->n:F

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->o:Z

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->t:I

    .line 11
    new-instance p1, Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->p:Landroidx/recyclerview/widget/LinearSnapHelper;

    .line 12
    iput p5, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->t:I

    .line 13
    iput p3, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->v:I

    .line 14
    iput-object p2, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    iput-boolean p7, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->o:Z

    .line 16
    iput p6, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->n:F

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    .line 8
    div-float/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v2, v3, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    add-int/2addr v4, v5

    .line 29
    int-to-float v4, v4

    .line 30
    div-float/2addr v4, v1

    .line 31
    iget v5, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->n:F

    .line 32
    .line 33
    const/high16 v6, 0x3f800000    # 1.0f

    .line 34
    .line 35
    sub-float v5, v6, v5

    .line 36
    .line 37
    const/high16 v7, -0x40800000    # -1.0f

    .line 38
    .line 39
    mul-float v5, v5, v7

    .line 40
    .line 41
    sub-float v4, v0, v4

    .line 42
    .line 43
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    mul-float v5, v5, v4

    .line 52
    .line 53
    div-float/2addr v5, v0

    .line 54
    add-float/2addr v5, v6

    .line 55
    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleX(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleY(F)V

    .line 59
    .line 60
    .line 61
    iget-boolean v4, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->o:Z

    .line 62
    .line 63
    if-eqz v4, :cond_0

    .line 64
    .line 65
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 66
    .line 67
    .line 68
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method

.method private f()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    .line 8
    div-float/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v2, v3, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    add-int/2addr v4, v5

    .line 29
    int-to-float v4, v4

    .line 30
    div-float/2addr v4, v1

    .line 31
    iget v5, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->n:F

    .line 32
    .line 33
    const/high16 v6, 0x3f800000    # 1.0f

    .line 34
    .line 35
    sub-float v5, v6, v5

    .line 36
    .line 37
    const/high16 v7, -0x40800000    # -1.0f

    .line 38
    .line 39
    mul-float v5, v5, v7

    .line 40
    .line 41
    sub-float v4, v0, v4

    .line 42
    .line 43
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    mul-float v5, v5, v4

    .line 52
    .line 53
    div-float/2addr v5, v0

    .line 54
    add-float/2addr v5, v6

    .line 55
    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleX(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleY(F)V

    .line 59
    .line 60
    .line 61
    iget-boolean v4, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->o:Z

    .line 62
    .line 63
    if-eqz v4, :cond_0

    .line 64
    .line 65
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 66
    .line 67
    .line 68
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method


# virtual methods
.method public g(Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->q:Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager$a;

    .line 2
    .line 3
    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->p:Landroidx/recyclerview/widget/LinearSnapHelper;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-ltz p1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget p1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->v:I

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->e()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p2, 0x1

    .line 26
    if-ne p1, p2, :cond_2

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->f()V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->t:I

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    iput p3, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->r:I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->s:I

    .line 30
    .line 31
    iget p3, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->v:I

    .line 32
    .line 33
    const/4 p4, 0x1

    .line 34
    if-nez p3, :cond_0

    .line 35
    .line 36
    iget p1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->t:I

    .line 37
    .line 38
    sub-int/2addr p1, p4

    .line 39
    div-int/lit8 p1, p1, 0x2

    .line 40
    .line 41
    iget p3, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->r:I

    .line 42
    .line 43
    mul-int p1, p1, p3

    .line 44
    .line 45
    iget-object p3, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 48
    .line 49
    .line 50
    iget-object p3, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    invoke-virtual {p3, p1, p2, p1, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 53
    .line 54
    .line 55
    iget p1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->r:I

    .line 56
    .line 57
    iget p2, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->t:I

    .line 58
    .line 59
    mul-int p1, p1, p2

    .line 60
    .line 61
    iget p2, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->s:I

    .line 62
    .line 63
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    if-ne p3, p4, :cond_2

    .line 68
    .line 69
    iget p3, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->t:I

    .line 70
    .line 71
    sub-int/2addr p3, p4

    .line 72
    div-int/lit8 p3, p3, 0x2

    .line 73
    .line 74
    mul-int p3, p3, p1

    .line 75
    .line 76
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->u:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    .line 83
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 84
    .line 85
    .line 86
    iget p1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->r:I

    .line 87
    .line 88
    iget p2, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->s:I

    .line 89
    .line 90
    iget p3, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->t:I

    .line 91
    .line 92
    mul-int p2, p2, p3

    .line 93
    .line 94
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    .line 99
    .line 100
    .line 101
    :cond_2
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->q:Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager$a;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->p:Landroidx/recyclerview/widget/LinearSnapHelper;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/LinearSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->q:Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager$a;

    .line 23
    .line 24
    invoke-interface {v1, p1, v0}, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager$a;->a(Landroid/view/View;I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->e()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dingmouren/layoutmanagergroup/picker/PickerLayoutManager;->f()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method
