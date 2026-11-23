.class Lcom/join/mgps/customview/LoadMoreRecyclerView$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/LoadMoreRecyclerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic t:Lcom/join/mgps/customview/LoadMoreRecyclerView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/LoadMoreRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->t:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "newState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->t:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->b(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->t:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->b(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->t:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->c(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Lcom/join/mgps/customview/LoadMoreRecyclerView$c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->t:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->d(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->t:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->e(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    if-lez p3, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->t:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->f(Lcom/join/mgps/customview/LoadMoreRecyclerView;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/lit8 v1, v0, 0x1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->t:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->g(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Lcom/join/mgps/customview/LoadMoreRecyclerView$b;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/join/mgps/customview/LoadMoreRecyclerView$b;->getItemCount()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-ne v1, v2, :cond_0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->t:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->setLoadingMore(Z)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->t:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    .line 57
    .line 58
    invoke-static {v1, v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->h(Lcom/join/mgps/customview/LoadMoreRecyclerView;I)I

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->t:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->c(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Lcom/join/mgps/customview/LoadMoreRecyclerView$c;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView$c;->onLoadMore()V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->t:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->b(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/customview/LoadMoreRecyclerView$a;->t:Lcom/join/mgps/customview/LoadMoreRecyclerView;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/join/mgps/customview/LoadMoreRecyclerView;->b(Lcom/join/mgps/customview/LoadMoreRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method
