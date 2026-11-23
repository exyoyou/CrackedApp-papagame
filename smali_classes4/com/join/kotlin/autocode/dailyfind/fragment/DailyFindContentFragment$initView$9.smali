.class public final Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$9;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$9",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "",
        "onScrolled",
        "dx",
        "dy",
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
.field final synthetic this$0:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$9;->this$0:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;

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
    const/4 p1, 0x1

    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$9;->this$0:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->access$getVideoHelper$p(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)Lcom/join/android/app/component/video/h;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$9;->this$0:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->access$getVideoHelper$p(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)Lcom/join/android/app/component/video/h;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/join/android/app/component/video/h;->f(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$9;->this$0:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->access$updateLeftSelection(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$9;->this$0:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->access$expListPoint(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$9;->this$0:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    :goto_0
    invoke-static {v0, p1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->access$setSCROLLING$p(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;Z)V

    .line 49
    .line 50
    .line 51
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
    iget-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$9;->this$0:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->access$getListLayoutManager(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-static {p1, p2}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->access$setLastVisibleIndex$p(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$9;->this$0:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->access$getListLayoutManager(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-static {p1, p2}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->access$setFirstVisiblePosition$p(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
