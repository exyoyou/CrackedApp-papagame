.class public Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# static fields
.field private static final s:Ljava/lang/String; = "ViewPagerLayoutManager"


# instance fields
.field private n:Landroidx/recyclerview/widget/PagerSnapHelper;

.field private o:Lcom/dingmouren/layoutmanagergroup/viewpager/a;

.field private p:Landroidx/recyclerview/widget/RecyclerView;

.field private q:I

.field private r:Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 2
    new-instance p1, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;

    invoke-direct {p1, p0}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;-><init>(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)V

    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->r:Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 3
    invoke-direct {p0}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 5
    new-instance p1, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;

    invoke-direct {p1, p0}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;-><init>(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)V

    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->r:Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 6
    invoke-direct {p0}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->e()V

    return-void
.end method

.method static synthetic a(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)Lcom/dingmouren/layoutmanagergroup/viewpager/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->o:Lcom/dingmouren/layoutmanagergroup/viewpager/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->q:I

    .line 2
    .line 3
    return p0
.end method

.method private e()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->n:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public f(Lcom/dingmouren/layoutmanagergroup/viewpager/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->o:Lcom/dingmouren/layoutmanagergroup/viewpager/a;

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
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->n:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->r:Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->n:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->n:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->n:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object v1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->o:Lcom/dingmouren/layoutmanagergroup/viewpager/a;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-ne v1, v0, :cond_4

    .line 49
    .line 50
    iget-object v1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->o:Lcom/dingmouren/layoutmanagergroup/viewpager/a;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    sub-int/2addr v2, v0

    .line 57
    if-ne p1, v2, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 v0, 0x0

    .line 61
    :goto_0
    invoke-interface {v1, p1, v0}, Lcom/dingmouren/layoutmanagergroup/viewpager/a;->c(IZ)V

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_1
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->q:I

    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->q:I

    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
