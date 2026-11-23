.class public Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;->getCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;->getItemId(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;->adapter:Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshBaseListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
