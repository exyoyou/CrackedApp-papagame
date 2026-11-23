.class public abstract Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;
.super Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;
.source "SourceFile"


# instance fields
.field private adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

.field private fling:Z

.field private listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

.field private osListener:Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    .line 5
    .line 6
    invoke-virtual {p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    .line 14
    .line 15
    new-instance v0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$1;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$2;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter$2;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 29
    .line 30
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lm/framework/ui/widget/pulltorefresh/GroupListView;->setAdapter(Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->fling:Z

    .line 2
    .line 3
    return-void
.end method

.method static synthetic access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->osListener:Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;)Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getBodyView()Lm/framework/ui/widget/pulltorefresh/Scrollable;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getChild(II)Ljava/lang/Object;
.end method

.method public abstract getChildView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getChildrenCount(I)I
.end method

.method public abstract getGroupCount()I
.end method

.method public abstract getGroupTitle(I)Ljava/lang/String;
.end method

.method public abstract getGroupTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getListView()Lm/framework/ui/widget/pulltorefresh/GroupListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    .line 2
    .line 3
    return-object v0
.end method

.method public isFling()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->fling:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPullReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->listView:Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/ScrollableGroupListView;->isReadyToPull()Z

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
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGroupListAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->notifyDataSetChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onScroll(Lm/framework/ui/widget/pulltorefresh/Scrollable;III)V
    .locals 0

    return-void
.end method
