.class public Lcom/papa91/arc/widget/listview/ListViewFinal;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/widget/listview/OnScrollBottomListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/widget/listview/ListViewFinal$ListViewOnScrollListener;,
        Lcom/papa91/arc/widget/listview/ListViewFinal$OnMoreViewClickListener;
    }
.end annotation


# instance fields
.field private mAddLoadMoreFooterFlag:Z

.field private mDataObserver:Landroid/database/DataSetObserver;

.field mFirstVisibleItem:I

.field private mHasLoadFail:Z

.field mHasLoadMore:Z

.field private mHasLoadMoreViewShowState:Z

.field private mLoadMoreLock:Z

.field mLoadMoreMode:Lcom/papa91/arc/widget/listview/LoadMoreMode;

.field mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;

.field private mLoadMoreViewBottom:I

.field private mLoadMoreViewLeft:I

.field private mLoadMoreViewRight:I

.field private mLoadMoreViewTop:I

.field private mNoLoadMoreHideView:Z

.field private mOnLoadMoreListener:Lcom/papa91/arc/widget/listview/OnLoadMoreListener;

.field mPreLoad:Z

.field protected mTotalItemCount:I

.field mVisibleItemCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcom/papa91/arc/widget/listview/LoadMoreMode;->SCROLL:Lcom/papa91/arc/widget/listview/LoadMoreMode;

    iput-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreMode:Lcom/papa91/arc/widget/listview/LoadMoreMode;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mHasLoadMore:Z

    .line 4
    iput-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mPreLoad:Z

    .line 5
    new-instance v0, Lcom/papa91/arc/widget/listview/ListViewFinal$1;

    invoke-direct {v0, p0}, Lcom/papa91/arc/widget/listview/ListViewFinal$1;-><init>(Lcom/papa91/arc/widget/listview/ListViewFinal;)V

    iput-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mDataObserver:Landroid/database/DataSetObserver;

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/papa91/arc/widget/listview/ListViewFinal;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    sget-object v0, Lcom/papa91/arc/widget/listview/LoadMoreMode;->SCROLL:Lcom/papa91/arc/widget/listview/LoadMoreMode;

    iput-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreMode:Lcom/papa91/arc/widget/listview/LoadMoreMode;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mHasLoadMore:Z

    .line 10
    iput-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mPreLoad:Z

    .line 11
    new-instance v0, Lcom/papa91/arc/widget/listview/ListViewFinal$1;

    invoke-direct {v0, p0}, Lcom/papa91/arc/widget/listview/ListViewFinal$1;-><init>(Lcom/papa91/arc/widget/listview/ListViewFinal;)V

    iput-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mDataObserver:Landroid/database/DataSetObserver;

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/widget/listview/ListViewFinal;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    sget-object p3, Lcom/papa91/arc/widget/listview/LoadMoreMode;->SCROLL:Lcom/papa91/arc/widget/listview/LoadMoreMode;

    iput-object p3, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreMode:Lcom/papa91/arc/widget/listview/LoadMoreMode;

    const/4 p3, 0x1

    .line 15
    iput-boolean p3, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mHasLoadMore:Z

    .line 16
    iput-boolean p3, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mPreLoad:Z

    .line 17
    new-instance p3, Lcom/papa91/arc/widget/listview/ListViewFinal$1;

    invoke-direct {p3, p0}, Lcom/papa91/arc/widget/listview/ListViewFinal$1;-><init>(Lcom/papa91/arc/widget/listview/ListViewFinal;)V

    iput-object p3, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mDataObserver:Landroid/database/DataSetObserver;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/widget/listview/ListViewFinal;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private hideLoadMoreView()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mHasLoadMoreViewShowState:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/papa91/arc/widget/listview/ILoadMoreView;->getFooterView()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput v1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreViewBottom:I

    .line 15
    .line 16
    iget-object v1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/papa91/arc/widget/listview/ILoadMoreView;->getFooterView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput v1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreViewTop:I

    .line 27
    .line 28
    iget-object v1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/papa91/arc/widget/listview/ILoadMoreView;->getFooterView()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreViewLeft:I

    .line 39
    .line 40
    iget-object v1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;

    .line 41
    .line 42
    invoke-interface {v1}, Lcom/papa91/arc/widget/listview/ILoadMoreView;->getFooterView()Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iput v1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreViewRight:I

    .line 51
    .line 52
    iget-object v1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;

    .line 53
    .line 54
    invoke-interface {v1}, Lcom/papa91/arc/widget/listview/ILoadMoreView;->getFooterView()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const/16 v2, 0x8

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;

    .line 64
    .line 65
    invoke-interface {v1}, Lcom/papa91/arc/widget/listview/ILoadMoreView;->getFooterView()Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;

    .line 70
    .line 71
    invoke-interface {v2}, Lcom/papa91/arc/widget/listview/ILoadMoreView;->getFooterView()Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    neg-int v2, v2

    .line 80
    invoke-virtual {v1, v0, v2, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/R$styleable;->LoadingViewFinal:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    sget v0, Lorg/ppsspp/ppsspp/R$styleable;->LoadingViewFinal_loadMoreMode:I

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Lcom/papa91/arc/widget/listview/LoadMoreMode;->mapIntToValue(I)Lcom/papa91/arc/widget/listview/LoadMoreMode;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreMode:Lcom/papa91/arc/widget/listview/LoadMoreMode;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Lcom/papa91/arc/widget/listview/LoadMoreMode;->SCROLL:Lcom/papa91/arc/widget/listview/LoadMoreMode;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreMode:Lcom/papa91/arc/widget/listview/LoadMoreMode;

    .line 30
    .line 31
    :goto_0
    sget v0, Lorg/ppsspp/ppsspp/R$styleable;->LoadingViewFinal_noLoadMoreHideView:I

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mNoLoadMoreHideView:Z

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iput-boolean v3, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mNoLoadMoreHideView:Z

    .line 48
    .line 49
    :goto_1
    sget v0, Lorg/ppsspp/ppsspp/R$styleable;->LoadingViewFinal_loadMoreView:I

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-array v1, v2, [Ljava/lang/Class;

    .line 66
    .line 67
    const-class v4, Landroid/content/Context;

    .line 68
    .line 69
    aput-object v4, v1, v3

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-array v1, v2, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object p1, v1, v3

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/papa91/arc/widget/listview/ILoadMoreView;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    new-instance v0, Lcom/papa91/arc/widget/listview/DefaultLoadMoreView;

    .line 93
    .line 94
    invoke-direct {v0, p1}, Lcom/papa91/arc/widget/listview/DefaultLoadMoreView;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    new-instance v0, Lcom/papa91/arc/widget/listview/DefaultLoadMoreView;

    .line 101
    .line 102
    invoke-direct {v0, p1}, Lcom/papa91/arc/widget/listview/DefaultLoadMoreView;-><init>(Landroid/content/Context;)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;

    .line 106
    .line 107
    :goto_2
    new-instance p1, Lcom/papa91/arc/widget/listview/ListViewFinal$ListViewOnScrollListener;

    .line 108
    .line 109
    const/4 v0, 0x0

    .line 110
    invoke-direct {p1, p0, v0}, Lcom/papa91/arc/widget/listview/ListViewFinal$ListViewOnScrollListener;-><init>(Lcom/papa91/arc/widget/listview/ListViewFinal;Lcom/papa91/arc/widget/listview/ListViewFinal$1;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method private showLoadMoreView()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mHasLoadMoreViewShowState:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/papa91/arc/widget/listview/ILoadMoreView;->getFooterView()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/papa91/arc/widget/listview/ILoadMoreView;->getFooterView()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreViewLeft:I

    .line 21
    .line 22
    iget v2, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreViewTop:I

    .line 23
    .line 24
    iget v3, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreViewRight:I

    .line 25
    .line 26
    iget v4, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreViewBottom:I

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method executeLoadMore()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreLock:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mHasLoadMore:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mOnLoadMoreListener:Lcom/papa91/arc/widget/listview/OnLoadMoreListener;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/papa91/arc/widget/listview/OnLoadMoreListener;->loadMore()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreLock:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/papa91/arc/widget/listview/ListViewFinal;->showLoadingUI()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/arc/widget/listview/ListViewFinal;->hideLoadMoreView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onLoadMoreComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mHasLoadFail:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/papa91/arc/widget/listview/ListViewFinal;->showFailUI()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mHasLoadMore:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/papa91/arc/widget/listview/ListViewFinal;->showNormalUI()V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public onScorllBootom()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mHasLoadMore:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreMode:Lcom/papa91/arc/widget/listview/LoadMoreMode;

    .line 6
    .line 7
    sget-object v1, Lcom/papa91/arc/widget/listview/LoadMoreMode;->SCROLL:Lcom/papa91/arc/widget/listview/LoadMoreMode;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/papa91/arc/widget/listview/ListViewFinal;->executeLoadMore()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/papa91/arc/widget/listview/ListViewFinal;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mAddLoadMoreFooterFlag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mAddLoadMoreFooterFlag:Z

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;

    invoke-interface {v0}, Lcom/papa91/arc/widget/listview/ILoadMoreView;->getFooterView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6
    instance-of v0, p1, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method

.method public setHasLoadMore(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mHasLoadMore:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/papa91/arc/widget/listview/ListViewFinal;->showNoMoreUI()V

    .line 6
    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mNoLoadMoreHideView:Z

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mHasLoadMoreViewShowState:Z

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/papa91/arc/widget/listview/ListViewFinal;->hideLoadMoreView()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean p1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mHasLoadMoreViewShowState:Z

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/papa91/arc/widget/listview/ListViewFinal;->showLoadMoreView()V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/arc/widget/listview/ListViewFinal;->showNormalUI()V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mPreLoad:Z

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    iget p1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mFirstVisibleItem:I

    .line 35
    .line 36
    iget v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mVisibleItemCount:I

    .line 37
    .line 38
    add-int/2addr p1, v0

    .line 39
    iget v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mTotalItemCount:I

    .line 40
    .line 41
    if-lt p1, v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/papa91/arc/widget/listview/ListViewFinal;->onScorllBootom()V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mPreLoad:Z

    .line 48
    .line 49
    :cond_3
    return-void
.end method

.method public setLoadMoreMode(Lcom/papa91/arc/widget/listview/LoadMoreMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreMode:Lcom/papa91/arc/widget/listview/LoadMoreMode;

    .line 2
    .line 3
    return-void
.end method

.method public setLoadMoreView(Lcom/papa91/arc/widget/listview/ILoadMoreView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/papa91/arc/widget/listview/ILoadMoreView;->getFooterView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/papa91/arc/widget/listview/ListViewFinal$OnMoreViewClickListener;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/papa91/arc/widget/listview/ListViewFinal$OnMoreViewClickListener;-><init>(Lcom/papa91/arc/widget/listview/ListViewFinal;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setNoLoadMoreHideView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mNoLoadMoreHideView:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOnLoadMoreListener(Lcom/papa91/arc/widget/listview/OnLoadMoreListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mOnLoadMoreListener:Lcom/papa91/arc/widget/listview/OnLoadMoreListener;

    .line 2
    .line 3
    return-void
.end method

.method public setPreLoad(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mPreLoad:Z

    .line 2
    .line 3
    return-void
.end method

.method public showFailUI()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mHasLoadFail:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreLock:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/papa91/arc/widget/listview/ILoadMoreView;->showFail()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method showLoadingUI()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mHasLoadFail:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/papa91/arc/widget/listview/ILoadMoreView;->showLoading()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method showNoMoreUI()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreLock:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/papa91/arc/widget/listview/ILoadMoreView;->showNoMore()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method showNormalUI()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreLock:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/ListViewFinal;->mLoadMoreView:Lcom/papa91/arc/widget/listview/ILoadMoreView;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/papa91/arc/widget/listview/ILoadMoreView;->showNormal()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
