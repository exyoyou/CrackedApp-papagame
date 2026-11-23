.class Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstVisibleItem:I

.field final synthetic this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;

.field private visibleItemCount:I


# direct methods
.method constructor <init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    iput p2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->firstVisibleItem:I

    .line 2
    .line 3
    iput p3, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->visibleItemCount:I

    .line 4
    .line 5
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;

    .line 6
    .line 7
    invoke-static {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->access$3(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;)Lm/framework/ui/widget/pulltorefresh/ScrollableGridView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0, p2, p3, p4}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->onScroll(Lm/framework/ui/widget/pulltorefresh/Scrollable;III)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {p1, v0}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->access$0(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;Z)V

    .line 10
    .line 11
    .line 12
    if-nez p2, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;

    .line 15
    .line 16
    invoke-static {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;)Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;

    .line 23
    .line 24
    invoke-static {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->access$1(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;)Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget p2, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->firstVisibleItem:I

    .line 29
    .line 30
    iget v0, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->visibleItemCount:I

    .line 31
    .line 32
    invoke-interface {p1, p2, v0}, Lm/framework/ui/widget/pulltorefresh/OnListStopScrollListener;->onListStopScrolling(II)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;

    .line 37
    .line 38
    invoke-static {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->access$2(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;)Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter$1;->this$0:Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;

    .line 45
    .line 46
    invoke-static {p1}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;->access$2(Lm/framework/ui/widget/pulltorefresh/PullToRefreshGridAdapter;)Lm/framework/ui/widget/pulltorefresh/ListInnerAdapter;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_1
    return-void
.end method
