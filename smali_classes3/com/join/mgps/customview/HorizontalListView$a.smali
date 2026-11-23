.class Lcom/join/mgps/customview/HorizontalListView$a;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/HorizontalListView;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/HorizontalListView$a;->a:Lcom/join/mgps/customview/HorizontalListView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView$a;->a:Lcom/join/mgps/customview/HorizontalListView;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/customview/HorizontalListView$a;->a:Lcom/join/mgps/customview/HorizontalListView;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v1, v2}, Lcom/join/mgps/customview/HorizontalListView;->a(Lcom/join/mgps/customview/HorizontalListView;Z)Z

    .line 8
    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView$a;->a:Lcom/join/mgps/customview/HorizontalListView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView$a;->a:Lcom/join/mgps/customview/HorizontalListView;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v1
.end method

.method public onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView$a;->a:Lcom/join/mgps/customview/HorizontalListView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/HorizontalListView;->b(Lcom/join/mgps/customview/HorizontalListView;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView$a;->a:Lcom/join/mgps/customview/HorizontalListView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/HorizontalListView$a;->a:Lcom/join/mgps/customview/HorizontalListView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
