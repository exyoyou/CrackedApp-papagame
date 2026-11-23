.class public abstract Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;
.super Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;
.source "SourceFile"


# instance fields
.field private adapter:Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

.field private fling:Z

.field private gridView:Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;

.field private osListener:Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;

    .line 5
    .line 6
    invoke-virtual {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->gridView:Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;

    .line 14
    .line 15
    new-instance v0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    .line 29
    .line 30
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->gridView:Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->fling:Z

    .line 2
    .line 3
    return-void
.end method

.method static synthetic access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;)Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->osListener:Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;)Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;)Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->gridView:Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getBodyView()Lm/framework/ui/widget/pulltorefresh/Scrollable;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->gridView:Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->gridView:Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;

    .line 2
    .line 3
    return-object v0
.end method

.method public isFling()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->fling:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPullReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->gridView:Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;->isReadyToPull()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->notifyDataSetChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onScroll(Lm/framework/ui/widget/pulltorefresh/Scrollable;III)V
    .locals 0

    return-void
.end method
