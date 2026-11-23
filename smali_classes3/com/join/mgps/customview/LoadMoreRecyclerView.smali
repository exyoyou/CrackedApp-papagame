.class public Lcom/join/mgps/customview/LoadMoreRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/LoadMoreRecyclerView$b;,
        Lcom/join/mgps/customview/LoadMoreRecyclerView$c;
    }
.end annotation


# static fields
.field public static final i:I = 0x0

.field public static final j:I = 0x3e7

.field public static final k:I = 0x3

.field public static final l:I = 0x4


# instance fields
.field private b:Z

.field private c:Z

.field private d:Lcom/join/mgps/customview/LoadMoreRecyclerView$b;

.field private e:Z

.field private f:I

.field private g:Lcom/join/mgps/customview/LoadMoreRecyclerView$c;

.field private h:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->b:Z

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->c:Z

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->b:Z

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->c:Z

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->b:Z

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->c:Z

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->init()V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->h:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Lcom/join/mgps/customview/LoadMoreRecyclerView$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->g:Lcom/join/mgps/customview/LoadMoreRecyclerView$c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/LoadMoreRecyclerView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->getLastVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic g(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Lcom/join/mgps/customview/LoadMoreRecyclerView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->d:Lcom/join/mgps/customview/LoadMoreRecyclerView$b;

    .line 2
    .line 3
    return-object p0
.end method

.method private getLastVisiblePosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    instance-of v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    new-array v1, v1, [I

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->j([I)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/lit8 v0, v0, -0x1

    .line 77
    .line 78
    :goto_0
    return v0
.end method

.method static synthetic h(Lcom/join/mgps/customview/LoadMoreRecyclerView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->f:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic i(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method private init()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;-><init>(Lcom/join/mgps/customview/LoadMoreRecyclerView;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private j([I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positions"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/high16 v1, -0x80000000

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    aget v3, p1, v2

    .line 8
    .line 9
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return v1
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hide"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->h:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 2
    .line 3
    return-void
.end method

.method public k(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasMore"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->setAutoLoadMoreEnable(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->f:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->e:Z

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->a(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;-><init>(Lcom/join/mgps/customview/LoadMoreRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->d:Lcom/join/mgps/customview/LoadMoreRecyclerView$b;

    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->d:Lcom/join/mgps/customview/LoadMoreRecyclerView$b;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-super {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setAutoLoadMoreEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoLoadMore"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLoadMoreListener(Lcom/join/mgps/customview/LoadMoreRecyclerView$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->g:Lcom/join/mgps/customview/LoadMoreRecyclerView$c;

    .line 2
    .line 3
    return-void
.end method

.method public setLoadingMore(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadingMore"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView;->e:Z

    .line 2
    .line 3
    return-void
.end method
