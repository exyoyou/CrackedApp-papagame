.class Lcom/shencoder/pagergridlayoutmanager/c;
.super Landroidx/recyclerview/widget/SnapHelper;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/String; = "PagerGridSnapHelper"


# instance fields
.field private i:Landroidx/recyclerview/widget/RecyclerView;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/SnapHelper;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method

.method static a(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;Landroid/graphics/Rect;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manager",
            "targetRect"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->canScrollHorizontally()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/shencoder/pagergridlayoutmanager/c;->f(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 14
    .line 15
    sub-int/2addr p0, p1

    .line 16
    return p0
.end method

.method static b(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;Landroid/graphics/Rect;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manager",
            "targetRect"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->canScrollVertically()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/shencoder/pagergridlayoutmanager/c;->f(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    sub-int/2addr p0, p1

    .line 16
    return p0
.end method

.method static c(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layoutManager",
            "targetView"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/shencoder/pagergridlayoutmanager/c;->e(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/c;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    sub-int/2addr p0, v0

    .line 10
    return p0
.end method

.method static d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layoutManager",
            "targetView"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/c;->k(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/c;->j(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    div-int/lit8 p0, p0, 0x2

    .line 10
    .line 11
    add-int/2addr v0, p0

    .line 12
    return v0
.end method

.method static e(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutManager"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/shencoder/pagergridlayoutmanager/c;->g(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Lcom/shencoder/pagergridlayoutmanager/c;->h(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    div-int/lit8 p0, p0, 0x2

    .line 10
    .line 11
    add-int/2addr v0, p0

    .line 12
    return v0
.end method

.method static f(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutManager"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    :goto_0
    sub-int/2addr v0, p0

    .line 25
    return v0
.end method

.method static g(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutManager"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    :goto_0
    return p0
.end method

.method static h(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutManager"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sub-int/2addr v0, v1

    .line 30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    :goto_0
    sub-int/2addr v0, p0

    .line 35
    return v0
.end method

.method static i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layoutManager",
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 18
    .line 19
    :goto_0
    sub-int/2addr p0, p1

    .line 20
    return p0

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 26
    .line 27
    goto :goto_0
.end method

.method static j(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layoutManager",
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 18
    .line 19
    add-int/2addr p0, p1

    .line 20
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 21
    .line 22
    :goto_0
    add-int/2addr p0, p1

    .line 23
    return p0

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 29
    .line 30
    add-int/2addr p0, p1

    .line 31
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 32
    .line 33
    goto :goto_0
.end method

.method static k(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layoutManager",
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 18
    .line 19
    :goto_0
    sub-int/2addr p0, p1

    .line 20
    return p0

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 26
    .line 27
    goto :goto_0
.end method

.method private l(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layoutManager",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->canScrollHorizontally()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->F()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    if-gez p2, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-lez p2, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-lez p3, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1
.end method

.method private m(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manager"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->y()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    rem-int/2addr v3, v4

    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    iget-object v3, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/shencoder/pagergridlayoutmanager/c;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    return-void
.end method

.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layoutManager",
            "targetView"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    instance-of v2, p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;

    .line 9
    .line 10
    if-eqz v2, :cond_4

    .line 11
    .line 12
    move-object v2, p1

    .line 13
    check-cast v2, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/shencoder/pagergridlayoutmanager/c;->e(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    new-instance v4, Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->f0()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-static {v2, p2}, Lcom/shencoder/pagergridlayoutmanager/c;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-lt p1, v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->H()Landroid/graphics/Rect;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v2, p1, v4}, Lcom/shencoder/pagergridlayoutmanager/b;->a(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-static {v2, p1, v4}, Lcom/shencoder/pagergridlayoutmanager/b;->c(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-static {v2, v4}, Lcom/shencoder/pagergridlayoutmanager/c;->a(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;Landroid/graphics/Rect;)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    neg-int p2, p1

    .line 57
    invoke-static {v2, v4}, Lcom/shencoder/pagergridlayoutmanager/c;->b(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;Landroid/graphics/Rect;)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-static {v2, p2}, Lcom/shencoder/pagergridlayoutmanager/c;->k(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-gt p1, v3, :cond_2

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->H()Landroid/graphics/Rect;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {v2, p1, v4}, Lcom/shencoder/pagergridlayoutmanager/b;->a(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    invoke-static {v2, p1, v4}, Lcom/shencoder/pagergridlayoutmanager/b;->c(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-static {v2, v4}, Lcom/shencoder/pagergridlayoutmanager/c;->a(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;Landroid/graphics/Rect;)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    neg-int p2, p1

    .line 86
    invoke-static {v2, v4}, Lcom/shencoder/pagergridlayoutmanager/c;->b(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;Landroid/graphics/Rect;)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    :goto_0
    neg-int p1, p1

    .line 91
    :goto_1
    const/4 v3, 0x0

    .line 92
    aput p2, v0, v3

    .line 93
    .line 94
    const/4 v3, 0x1

    .line 95
    aput p1, v0, v3

    .line 96
    .line 97
    if-nez p2, :cond_3

    .line 98
    .line 99
    if-nez p1, :cond_3

    .line 100
    .line 101
    invoke-virtual {v2, v1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->b(I)V

    .line 102
    .line 103
    .line 104
    :cond_3
    sget-boolean p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    .line 105
    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string p2, "calculateDistanceToFinalSnap-targetView: "

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p2, ",snapDistance: "

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    :cond_4
    return-object v0
.end method

.method protected createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutManager"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;

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
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/c;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance v1, Lcom/shencoder/pagergridlayoutmanager/b;

    .line 12
    .line 13
    check-cast p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;

    .line 14
    .line 15
    invoke-direct {v1, v0, p1}, Lcom/shencoder/pagergridlayoutmanager/b;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-object v1
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutManager"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/shencoder/pagergridlayoutmanager/c;->m(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eq v2, v4, :cond_5

    .line 21
    .line 22
    const/4 v5, 0x2

    .line 23
    if-eq v2, v5, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    if-eq v2, v0, :cond_0

    .line 27
    .line 28
    sget-boolean v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    .line 29
    .line 30
    if-eqz v0, :cond_6

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "findSnapView wrong -> snapList.size: "

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/view/View;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-static {v0}, Lcom/shencoder/pagergridlayoutmanager/c;->e(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iget-object v2, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroid/view/View;

    .line 72
    .line 73
    iget-object v3, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Landroid/view/View;

    .line 80
    .line 81
    new-instance v4, Landroid/graphics/Rect;

    .line 82
    .line 83
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->f0()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_2

    .line 94
    .line 95
    invoke-static {v0, v3}, Lcom/shencoder/pagergridlayoutmanager/c;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-gt v0, v1, :cond_3

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    invoke-static {v0, v3}, Lcom/shencoder/pagergridlayoutmanager/c;->k(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-gt v0, v1, :cond_4

    .line 107
    .line 108
    :cond_3
    move-object v2, v3

    .line 109
    :cond_4
    :goto_0
    move-object v1, v2

    .line 110
    goto :goto_2

    .line 111
    :cond_5
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroid/view/View;

    .line 118
    .line 119
    :goto_1
    move-object v1, v0

    .line 120
    :cond_6
    :goto_2
    sget-boolean v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    .line 121
    .line 122
    if-eqz v0, :cond_8

    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v2, "findSnapView: position:"

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    if-eqz v1, :cond_7

    .line 135
    .line 136
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    goto :goto_3

    .line 141
    :cond_7
    const/4 p1, -0x1

    .line 142
    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p1, ", snapList.size:"

    .line 146
    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 151
    .line 152
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    :cond_8
    iget-object p1, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 160
    .line 161
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 162
    .line 163
    .line 164
    :cond_9
    return-object v1
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layoutManager",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    instance-of v0, p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    return v1

    .line 21
    :cond_2
    check-cast p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->u()Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v0, v0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->g:I

    .line 28
    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    return v1

    .line 32
    :cond_3
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/SnapHelper;->calculateScrollDistance(II)[I

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->canScrollHorizontally()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x1

    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    aget v0, v0, v3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    aget v0, v0, v4

    .line 48
    .line 49
    :goto_0
    invoke-virtual {p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->f0()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_5

    .line 54
    .line 55
    neg-int v0, v0

    .line 56
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/shencoder/pagergridlayoutmanager/c;->l(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;II)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {p1}, Lcom/shencoder/pagergridlayoutmanager/c;->e(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-direct {p0, p1}, Lcom/shencoder/pagergridlayoutmanager/c;->m(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;)V

    .line 65
    .line 66
    .line 67
    iget-object v6, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eq v6, v4, :cond_12

    .line 74
    .line 75
    const/4 v7, 0x2

    .line 76
    if-eq v6, v7, :cond_7

    .line 77
    .line 78
    const/4 v3, 0x3

    .line 79
    if-eq v6, v3, :cond_6

    .line 80
    .line 81
    sget-boolean p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    .line 82
    .line 83
    if-eqz p1, :cond_1b

    .line 84
    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v3, "findTargetSnapPosition-snapList.size: "

    .line 91
    .line 92
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v3, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :cond_6
    iget-object v1, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Landroid/view/View;

    .line 113
    .line 114
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    goto/16 :goto_3

    .line 119
    .line 120
    :cond_7
    iget-object v6, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 121
    .line 122
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Landroid/view/View;

    .line 127
    .line 128
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 129
    .line 130
    .line 131
    iget-object v6, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    check-cast v4, Landroid/view/View;

    .line 138
    .line 139
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    invoke-virtual {p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->f0()Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-eqz v7, :cond_d

    .line 148
    .line 149
    if-eqz v2, :cond_b

    .line 150
    .line 151
    if-lt v0, v5, :cond_8

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_8
    invoke-static {p1, v4}, Lcom/shencoder/pagergridlayoutmanager/c;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    add-int/2addr p1, v0

    .line 159
    if-lt p1, v5, :cond_9

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_9
    add-int/lit8 v6, v6, -0x1

    .line 163
    .line 164
    if-gez v6, :cond_a

    .line 165
    .line 166
    goto/16 :goto_3

    .line 167
    .line 168
    :cond_a
    :goto_1
    move v1, v6

    .line 169
    goto/16 :goto_3

    .line 170
    .line 171
    :cond_b
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    if-lt v4, v5, :cond_c

    .line 176
    .line 177
    add-int/lit8 v6, v6, -0x1

    .line 178
    .line 179
    if-gez v6, :cond_a

    .line 180
    .line 181
    goto/16 :goto_3

    .line 182
    .line 183
    :cond_c
    invoke-static {p1, v3}, Lcom/shencoder/pagergridlayoutmanager/c;->k(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    sub-int/2addr p1, v3

    .line 192
    if-gt p1, v5, :cond_a

    .line 193
    .line 194
    add-int/lit8 v6, v6, -0x1

    .line 195
    .line 196
    if-gez v6, :cond_a

    .line 197
    .line 198
    goto/16 :goto_3

    .line 199
    .line 200
    :cond_d
    if-eqz v2, :cond_10

    .line 201
    .line 202
    if-lt v0, v5, :cond_e

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_e
    invoke-static {p1, v4}, Lcom/shencoder/pagergridlayoutmanager/c;->k(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    sub-int/2addr p1, v0

    .line 210
    if-gt p1, v5, :cond_f

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_f
    add-int/lit8 v6, v6, -0x1

    .line 214
    .line 215
    if-gez v6, :cond_a

    .line 216
    .line 217
    goto/16 :goto_3

    .line 218
    .line 219
    :cond_10
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    if-lt v4, v5, :cond_11

    .line 224
    .line 225
    add-int/lit8 v6, v6, -0x1

    .line 226
    .line 227
    if-gez v6, :cond_a

    .line 228
    .line 229
    goto/16 :goto_3

    .line 230
    .line 231
    :cond_11
    invoke-static {p1, v3}, Lcom/shencoder/pagergridlayoutmanager/c;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    add-int/2addr p1, v3

    .line 240
    if-lt p1, v5, :cond_a

    .line 241
    .line 242
    add-int/lit8 v6, v6, -0x1

    .line 243
    .line 244
    if-gez v6, :cond_a

    .line 245
    .line 246
    goto/16 :goto_3

    .line 247
    .line 248
    :cond_12
    iget-object v4, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 249
    .line 250
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    check-cast v3, Landroid/view/View;

    .line 255
    .line 256
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    if-eqz v2, :cond_18

    .line 261
    .line 262
    if-lt v0, v5, :cond_13

    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_13
    invoke-virtual {p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->f0()Z

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    if-eqz v6, :cond_16

    .line 270
    .line 271
    invoke-static {p1, v3}, Lcom/shencoder/pagergridlayoutmanager/c;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    add-int/2addr p1, v0

    .line 276
    if-lt p1, v5, :cond_14

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_14
    add-int/lit8 v4, v4, -0x1

    .line 280
    .line 281
    if-gez v4, :cond_15

    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_15
    :goto_2
    move v1, v4

    .line 285
    goto :goto_3

    .line 286
    :cond_16
    invoke-static {p1, v3}, Lcom/shencoder/pagergridlayoutmanager/c;->k(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    sub-int/2addr p1, v0

    .line 291
    if-gt p1, v5, :cond_17

    .line 292
    .line 293
    goto :goto_2

    .line 294
    :cond_17
    add-int/lit8 v4, v4, -0x1

    .line 295
    .line 296
    if-gez v4, :cond_15

    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_18
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    if-lt v6, v5, :cond_19

    .line 304
    .line 305
    add-int/lit8 v4, v4, -0x1

    .line 306
    .line 307
    if-gez v4, :cond_15

    .line 308
    .line 309
    goto :goto_3

    .line 310
    :cond_19
    invoke-virtual {p1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->f0()Z

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    if-eqz v6, :cond_1a

    .line 315
    .line 316
    invoke-static {p1, v3}, Lcom/shencoder/pagergridlayoutmanager/c;->k(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    sub-int/2addr p1, v3

    .line 325
    if-ge p1, v5, :cond_15

    .line 326
    .line 327
    add-int/lit8 v4, v4, -0x1

    .line 328
    .line 329
    if-gez v4, :cond_15

    .line 330
    .line 331
    goto :goto_3

    .line 332
    :cond_1a
    invoke-static {p1, v3}, Lcom/shencoder/pagergridlayoutmanager/c;->i(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)I

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    add-int/2addr p1, v3

    .line 341
    if-le p1, v5, :cond_15

    .line 342
    .line 343
    add-int/lit8 v4, v4, -0x1

    .line 344
    .line 345
    if-gez v4, :cond_15

    .line 346
    .line 347
    :cond_1b
    :goto_3
    sget-boolean p1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    .line 348
    .line 349
    if-eqz p1, :cond_1c

    .line 350
    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    const-string v3, "findTargetSnapPosition->forwardDirection:"

    .line 357
    .line 358
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v2, ",targetPosition:"

    .line 365
    .line 366
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v2, ",velocityX: "

    .line 373
    .line 374
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const-string p2, ",velocityY: "

    .line 381
    .line 382
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string p2, ",scrollDistance:"

    .line 389
    .line 390
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string p2, ",snapList:"

    .line 397
    .line 398
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    iget-object p2, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 402
    .line 403
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 404
    .line 405
    .line 406
    move-result p2

    .line 407
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    :cond_1c
    iget-object p1, p0, Lcom/shencoder/pagergridlayoutmanager/c;->j:Ljava/util/List;

    .line 411
    .line 412
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 413
    .line 414
    .line 415
    return v1
.end method
