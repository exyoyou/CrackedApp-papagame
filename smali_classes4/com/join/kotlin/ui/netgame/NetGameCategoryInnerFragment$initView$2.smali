.class public final Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$initView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->initView(Landroid/os/Bundle;)V
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
        "com/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$initView$2",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$initView$2;->this$0:Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$initView$2;->this$0:Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->loadData(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$initView$2;->this$0:Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/base/fragment/BaseVmFragment;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->loadData(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
