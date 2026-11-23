.class public final Lcom/join/kotlin/discount/GameDetailCommentListFragment$initView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/discount/GameDetailCommentListFragment;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/join/kotlin/discount/GameDetailCommentListFragment$initView$3",
        "Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;",
        "onRefresh",
        "",
        "onLoadMore",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/discount/GameDetailCommentListFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/discount/GameDetailCommentListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailCommentListFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailCommentListFragment;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->loadData(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailCommentListFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->access$getLoadSir$p(Lcom/join/kotlin/discount/GameDetailCommentListFragment;)Lcom/kingja/loadsir/core/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "loadSir"

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :cond_0
    invoke-static {v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showLoading(Lcom/kingja/loadsir/core/b;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailCommentListFragment$initView$3;->this$0:Lcom/join/kotlin/discount/GameDetailCommentListFragment;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Lcom/join/kotlin/discount/GameDetailCommentListFragment;->loadData(Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
