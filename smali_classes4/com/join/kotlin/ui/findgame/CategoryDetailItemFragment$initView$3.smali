.class public final Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$3",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$3;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 7
    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$3;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->o(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->setMFirstVisiblePosition(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$3;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/d8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/d8;->f:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->q(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->setMLastVisibleIndex(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$3;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->access$expDiscountGame(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$3;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    .line 47
    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    const/4 p2, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p2, 0x0

    .line 53
    :goto_0
    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->setSCROLLING(Z)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
