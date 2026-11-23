.class Lcom/join/mgps/customview/HorizontalRecyclerView$a;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/HorizontalRecyclerView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public n:D

.field final synthetic o:Lcom/join/mgps/customview/HorizontalRecyclerView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/HorizontalRecyclerView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/HorizontalRecyclerView$a;->o:Lcom/join/mgps/customview/HorizontalRecyclerView;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const-wide p1, 0x3fea3d70a0000000L    # 0.8199999928474426

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide p1, p0, Lcom/join/mgps/customview/HorizontalRecyclerView$a;->n:D

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speedRatio"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/customview/HorizontalRecyclerView$a;->n:D

    .line 2
    .line 3
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dx",
            "recycler",
            "state"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/customview/HorizontalRecyclerView$a;->n:D

    .line 2
    .line 3
    int-to-double v2, p1

    .line 4
    mul-double v0, v0, v2

    .line 5
    .line 6
    double-to-int v0, v0

    .line 7
    invoke-super {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    iget-wide v0, p0, Lcom/join/mgps/customview/HorizontalRecyclerView$a;->n:D

    .line 12
    .line 13
    mul-double v0, v0, v2

    .line 14
    .line 15
    double-to-int p3, v0

    .line 16
    if-ne p2, p3, :cond_0

    .line 17
    .line 18
    return p1

    .line 19
    :cond_0
    return p2
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "state",
            "position"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/join/mgps/customview/HorizontalRecyclerView$a$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/customview/HorizontalRecyclerView$a$a;-><init>(Lcom/join/mgps/customview/HorizontalRecyclerView$a;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
