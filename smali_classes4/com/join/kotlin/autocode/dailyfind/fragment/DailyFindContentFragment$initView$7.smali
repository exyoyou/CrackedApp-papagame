.class public final Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$7;
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
        "com/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$7",
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
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$7;->this$0:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;

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
    iget-object p2, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$7;->this$0:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;

    .line 12
    .line 13
    invoke-static {p2, p1}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->access$expTimeStrip(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 1
    const-string p2, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    instance-of p3, p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p2, v0

    .line 19
    :goto_0
    const/4 p3, 0x0

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 p2, 0x0

    .line 28
    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    instance-of v1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    move-object v0, p1

    .line 37
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 38
    .line 39
    :cond_2
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    const/4 p1, 0x0

    .line 47
    :goto_2
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$7;->this$0:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;->access$getTodayIndex$p(Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-gt p2, v0, :cond_4

    .line 54
    .line 55
    if-gt v0, p1, :cond_4

    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    goto :goto_3

    .line 59
    :cond_4
    const/4 p1, 0x0

    .line 60
    :goto_3
    iget-object p2, p0, Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment$initView$7;->this$0:Lcom/join/kotlin/autocode/dailyfind/fragment/DailyFindContentFragment;

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/join/kotlin/base/fragment/BaseVmVbFragment;->getMViewBind()Landroidx/viewbinding/ViewBinding;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/kl;

    .line 67
    .line 68
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/kl;->c:Landroid/widget/TextView;

    .line 69
    .line 70
    if-eqz p1, :cond_5

    .line 71
    .line 72
    const/16 p3, 0x8

    .line 73
    .line 74
    :cond_5
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
