.class public final Lcom/join/kotlin/EverdayNewFragment$loadData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/EverdayNewFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J$\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J0\u0010\n\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00072\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/join/kotlin/EverdayNewFragment$loadData$1",
        "Lretrofit2/Callback;",
        "Lcom/join/mgps/dto/ResponseModel;",
        "Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;",
        "onFailure",
        "",
        "call",
        "Lretrofit2/Call;",
        "t",
        "",
        "onResponse",
        "responsex",
        "Lretrofit2/Response;",
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
.field final synthetic $page:I

.field final synthetic this$0:Lcom/join/kotlin/EverdayNewFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/EverdayNewFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->this$0:Lcom/join/kotlin/EverdayNewFragment;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->$page:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "t"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->this$0:Lcom/join/kotlin/EverdayNewFragment;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->this$0:Lcom/join/kotlin/EverdayNewFragment;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment;->hidLoading()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "responsex"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->this$0:Lcom/join/kotlin/EverdayNewFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->this$0:Lcom/join/kotlin/EverdayNewFragment;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/join/kotlin/EverdayNewFragment;->access$getBindingOrNull(Lcom/join/kotlin/EverdayNewFragment;)Lcom/join/android/app/mgsim/wufun/databinding/fj;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    check-cast p2, Lcom/join/mgps/dto/ResponseModel;

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/16 v1, 0xc8

    .line 49
    .line 50
    if-ne v0, v1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->this$0:Lcom/join/kotlin/EverdayNewFragment;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/join/kotlin/EverdayNewFragment;->hidLoading()V

    .line 61
    .line 62
    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;->getGame_list()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;->getGame_list()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-lez v0, :cond_2

    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->this$0:Lcom/join/kotlin/EverdayNewFragment;

    .line 82
    .line 83
    iget v1, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->$page:I

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/join/kotlin/ui/findgame/data/EverdayNewResultData;->getGame_list()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    const-string v2, "getGame_list(...)"

    .line 90
    .line 91
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1, p2}, Lcom/join/kotlin/EverdayNewFragment;->loadFinish(ILjava/util/List;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_2
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_3
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/fj;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 112
    .line 113
    .line 114
    :cond_4
    iget-object p1, p0, Lcom/join/kotlin/EverdayNewFragment$loadData$1;->this$0:Lcom/join/kotlin/EverdayNewFragment;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/join/kotlin/EverdayNewFragment;->hidLoading()V

    .line 117
    .line 118
    .line 119
    return-void
.end method
