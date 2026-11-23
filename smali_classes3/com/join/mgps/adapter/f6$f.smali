.class Lcom/join/mgps/adapter/f6$f;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/f6;->c0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic t:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic u:Ljava/util/List;

.field final synthetic v:Lcom/join/mgps/adapter/f6;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/f6;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$recycleView",
            "val$datas"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/f6$f;->v:Lcom/join/mgps/adapter/f6;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/f6$f;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/f6$f;->u:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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
    iget-object p1, p0, Lcom/join/mgps/adapter/f6$f;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object p2, p0, Lcom/join/mgps/adapter/f6$f;->v:Lcom/join/mgps/adapter/f6;

    .line 19
    .line 20
    invoke-static {p2}, Lcom/join/mgps/adapter/f6;->O(Lcom/join/mgps/adapter/f6;)Lcom/join/mgps/adapter/f6$g;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Lcom/join/mgps/adapter/f6$f;->v:Lcom/join/mgps/adapter/f6;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/join/mgps/adapter/f6;->O(Lcom/join/mgps/adapter/f6;)Lcom/join/mgps/adapter/f6$g;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-object v0, p0, Lcom/join/mgps/adapter/f6$f;->u:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p2, v0, p1}, Lcom/join/mgps/adapter/f6$g;->o(Ljava/util/List;I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
