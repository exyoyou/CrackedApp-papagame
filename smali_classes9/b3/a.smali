.class public Lb3/a;
.super Landroidx/recyclerview/widget/SnapHelper;
.source "SourceFile"


# instance fields
.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/SnapHelper;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    move-object v1, p1

    .line 17
    check-cast v1, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {v1, p1}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->a(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    aput p1, v0, v3

    .line 28
    .line 29
    aput v3, v0, v2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    aput v3, v0, v3

    .line 33
    .line 34
    move-object v1, p1

    .line 35
    check-cast v1, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {v1, p1}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->a(I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    aput p1, v0, v2

    .line 46
    .line 47
    :goto_0
    return-object v0

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    return-object p1
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;

    .line 7
    .line 8
    iget v1, p0, Lb3/a;->i:I

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const v2, 0x3f4ccccd    # 0.8f

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->h(IF)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    iput v1, p0, Lb3/a;->i:I

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iput p2, p0, Lb3/a;->i:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput p3, p0, Lb3/a;->i:I

    .line 11
    .line 12
    :goto_0
    const/4 p1, -0x1

    .line 13
    return p1
.end method
