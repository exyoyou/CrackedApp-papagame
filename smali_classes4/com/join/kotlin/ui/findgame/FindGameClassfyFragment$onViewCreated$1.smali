.class public final Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "com/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1",
        "Lcom/join/android/app/component/xrecyclerview/XRecyclerView$LoadingListener;",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getRequestArgs()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getPage()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getPresenter()Lcom/join/kotlin/presenter/FindModlePrensenter;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getRequestArgs()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/presenter/FindModlePrensenter;->loadClassfyDatas(Landroid/content/Context;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/bk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/bk;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->reset()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->setPage(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getRequestArgs()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getPage()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getPresenter()Lcom/join/kotlin/presenter/FindModlePrensenter;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onViewCreated$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getRequestArgs()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/presenter/FindModlePrensenter;->loadClassfyDatas(Landroid/content/Context;Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
