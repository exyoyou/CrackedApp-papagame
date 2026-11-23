.class public final Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment$initView$3$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/join/kotlin/ui/search/fragment/SearchListGameFragment$initView$3$1",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrolled",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "dx",
        "",
        "dy",
        "onScrollStateChanged",
        "newState",
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
.field final synthetic $this_apply:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

.field final synthetic this$0:Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment$initView$3$1;->this$0:Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment$initView$3$1;->$this_apply:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 6
    .line 7
    .line 8
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
    iget-object p2, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment$initView$3$1;->this$0:Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/join/android/app/component/video/h;->o(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p2, v0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->setMFirstVisiblePosition(I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment$initView$3$1;->this$0:Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/join/android/app/component/video/h;->q(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p2, p1}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->setMLastVisibleIndex(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment$initView$3$1;->this$0:Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->exposureItem()V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment$initView$3$1;->this$0:Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment$initView$3$1;->$this_apply:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 37
    .line 38
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    const/4 p2, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p2, 0x0

    .line 47
    :goto_0
    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;->setSCROLLING(Z)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
