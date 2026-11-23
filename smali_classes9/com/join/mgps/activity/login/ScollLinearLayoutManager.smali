.class public Lcom/join/mgps/activity/login/ScollLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field private MILLISECONDS_PER_INCH:F

.field private contxt:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x41c80000    # 25.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/join/mgps/activity/login/ScollLinearLayoutManager;->MILLISECONDS_PER_INCH:F

    .line 7
    .line 8
    iput-object p1, p0, Lcom/join/mgps/activity/login/ScollLinearLayoutManager;->contxt:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/login/ScollLinearLayoutManager;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/login/ScollLinearLayoutManager;->MILLISECONDS_PER_INCH:F

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public setSpeedSlow(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/ScollLinearLayoutManager;->contxt:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    const v1, 0x3e99999a    # 0.3f

    .line 14
    .line 15
    .line 16
    mul-float v0, v0, v1

    .line 17
    .line 18
    add-float/2addr v0, p1

    .line 19
    iput v0, p0, Lcom/join/mgps/activity/login/ScollLinearLayoutManager;->MILLISECONDS_PER_INCH:F

    .line 20
    .line 21
    return-void
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
    new-instance p2, Lcom/join/mgps/activity/login/ScollLinearLayoutManager$1;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/activity/login/ScollLinearLayoutManager$1;-><init>(Lcom/join/mgps/activity/login/ScollLinearLayoutManager;Landroid/content/Context;)V

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
