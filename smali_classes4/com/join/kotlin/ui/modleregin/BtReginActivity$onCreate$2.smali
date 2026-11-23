.class public final Lcom/join/kotlin/ui/modleregin/BtReginActivity$onCreate$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/modleregin/BtReginActivity;->onCreate(Landroid/os/Bundle;)V
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
        "com/join/kotlin/ui/modleregin/BtReginActivity$onCreate$2",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/modleregin/BtReginActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/modleregin/BtReginActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/modleregin/BtReginActivity;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/modleregin/BtReginActivity;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getVideoHelper()Lcom/join/android/app/component/video/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->j(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/modleregin/BtReginActivity;

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p2, 0x0

    .line 25
    :goto_0
    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->setSCROLLING(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

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
    :try_start_0
    iget-object p2, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/modleregin/BtReginActivity;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/o7;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/o7;->c:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-string p3, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    .line 22
    .line 23
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 27
    .line 28
    iget-object p3, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/modleregin/BtReginActivity;

    .line 29
    .line 30
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p3, v0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->setMFirstVisiblePosition(I)V

    .line 35
    .line 36
    .line 37
    iget-object p3, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/modleregin/BtReginActivity;

    .line 38
    .line 39
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-virtual {p3, p2}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->setMLastVisibleIndex(I)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/modleregin/BtReginActivity;

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getVideoHelper()Lcom/join/android/app/component/video/c;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iget-object p3, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/modleregin/BtReginActivity;

    .line 53
    .line 54
    invoke-virtual {p3}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getMFirstVisiblePosition()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/modleregin/BtReginActivity;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getMLastVisibleIndex()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/modleregin/BtReginActivity;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getMFirstVisiblePosition()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    sub-int/2addr v0, v1

    .line 71
    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/BtReginActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/modleregin/BtReginActivity;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/BtReginActivity;->getViewModel()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;->getShowDatas()Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    check-cast v1, Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/join/android/app/component/video/c;->f(Landroidx/recyclerview/widget/RecyclerView;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    :goto_0
    return-void
.end method
