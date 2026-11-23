.class Lcom/join/mgps/customview/ObservableListView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ObservableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/ObservableListView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ObservableListView;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/ObservableListView$a;->b:Lcom/join/mgps/customview/ObservableListView;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "firstVisibleItem",
            "visibleItemCount",
            "totalItemCount"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ObservableListView$a;->b:Lcom/join/mgps/customview/ObservableListView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/ObservableListView;->a(Lcom/join/mgps/customview/ObservableListView;)Landroid/widget/AbsListView$OnScrollListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/ObservableListView$a;->b:Lcom/join/mgps/customview/ObservableListView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/customview/ObservableListView;->a(Lcom/join/mgps/customview/ObservableListView;)Landroid/widget/AbsListView$OnScrollListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/ObservableListView$a;->b:Lcom/join/mgps/customview/ObservableListView;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/join/mgps/customview/ObservableListView;->b(Lcom/join/mgps/customview/ObservableListView;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollState"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ObservableListView$a;->b:Lcom/join/mgps/customview/ObservableListView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/ObservableListView;->a(Lcom/join/mgps/customview/ObservableListView;)Landroid/widget/AbsListView$OnScrollListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/ObservableListView$a;->b:Lcom/join/mgps/customview/ObservableListView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/customview/ObservableListView;->a(Lcom/join/mgps/customview/ObservableListView;)Landroid/widget/AbsListView$OnScrollListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
