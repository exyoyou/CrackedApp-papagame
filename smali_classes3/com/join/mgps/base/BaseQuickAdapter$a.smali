.class Lcom/join/mgps/base/BaseQuickAdapter$a;
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
.field final synthetic b:Landroidx/recyclerview/widget/LinearLayoutManager;

.field final synthetic c:Lcom/join/mgps/base/BaseQuickAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/base/BaseQuickAdapter;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$linearLayoutManager"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$a;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/base/BaseQuickAdapter$a;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter$a;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/base/BaseQuickAdapter$a;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->access$000(Lcom/join/mgps/base/BaseQuickAdapter;Landroidx/recyclerview/widget/LinearLayoutManager;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter$a;->c:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
