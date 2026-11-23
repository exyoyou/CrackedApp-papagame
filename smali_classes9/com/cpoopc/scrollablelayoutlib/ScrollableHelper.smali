.class public Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper$ScrollableContainer;
    }
.end annotation


# instance fields
.field private mCurrentScrollableCainer:Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper$ScrollableContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getScrollableView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;->mCurrentScrollableCainer:Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper$ScrollableContainer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper$ScrollableContainer;->getScrollableView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static isAdapterViewTop(Landroid/widget/AdapterView;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapterView"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_1
    return v0
.end method

.method private static isRecyclerViewTop(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    move-object v2, v1

    .line 13
    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    :cond_0
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_1
    return v0
.end method

.method private static isScrollViewTop(Landroid/widget/ScrollView;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollView"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-gtz p0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    :cond_0
    return v0
.end method

.method private static isWebViewTop(Landroid/webkit/WebView;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollView"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-gtz p0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    :cond_0
    return v0
.end method


# virtual methods
.method public isTop()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;->getScrollableView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    instance-of v1, v0, Landroid/widget/AdapterView;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    check-cast v0, Landroid/widget/AdapterView;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;->isAdapterViewTop(Landroid/widget/AdapterView;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_1
    instance-of v1, v0, Landroid/widget/ScrollView;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    check-cast v0, Landroid/widget/ScrollView;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;->isScrollViewTop(Landroid/widget/ScrollView;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :cond_2
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;->isRecyclerViewTop(Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    return v0

    .line 42
    :cond_3
    instance-of v1, v0, Landroid/webkit/WebView;

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    check-cast v0, Landroid/webkit/WebView;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;->isWebViewTop(Landroid/webkit/WebView;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    return v0

    .line 53
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v1, "scrollableView must be a instance of AdapterView|ScrollView|RecyclerView"

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public setCurrentScrollableContainer(Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper$ScrollableContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollableContainer"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;->mCurrentScrollableCainer:Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper$ScrollableContainer;

    .line 2
    .line 3
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "velocityY",
            "distance",
            "duration"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;->getScrollableView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    instance-of p3, p2, Landroid/widget/AbsListView;

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    check-cast p2, Landroid/widget/AbsListView;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/widget/AbsListView;->fling(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of p3, p2, Landroid/widget/ScrollView;

    .line 16
    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    check-cast p2, Landroid/widget/ScrollView;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    instance-of p3, p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p3, :cond_2

    .line 29
    .line 30
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    instance-of p3, p2, Landroid/webkit/WebView;

    .line 37
    .line 38
    if-eqz p3, :cond_3

    .line 39
    .line 40
    check-cast p2, Landroid/webkit/WebView;

    .line 41
    .line 42
    invoke-virtual {p2, v0, p1}, Landroid/webkit/WebView;->flingScroll(II)V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_0
    return-void
.end method
