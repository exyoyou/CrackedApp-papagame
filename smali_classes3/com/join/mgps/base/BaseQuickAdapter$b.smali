.class Lcom/join/mgps/base/BaseQuickAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/base/BaseQuickAdapter;->disableLoadMoreIfNotFullPage(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

.field final synthetic c:Lcom/join/mgps/base/BaseQuickAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/base/BaseQuickAdapter;Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$staggeredGridLayoutManager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$b;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/base/BaseQuickAdapter$b;->b:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter$b;->b:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter$b;->b:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter$b;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->access$100(Lcom/join/mgps/base/BaseQuickAdapter;[I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    add-int/2addr v0, v1

    .line 22
    iget-object v2, p0, Lcom/join/mgps/base/BaseQuickAdapter$b;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eq v0, v2, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter$b;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
