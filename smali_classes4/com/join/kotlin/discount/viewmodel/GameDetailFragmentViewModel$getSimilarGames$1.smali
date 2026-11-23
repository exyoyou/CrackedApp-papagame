.class final Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel$getSimilarGames$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getSimilarGames(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Ljava/util/List<",
        "+",
        "Lcom/join/mgps/dto/CollectionBeanSub;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/join/mgps/dto/ResponseModel;",
        "",
        "Lcom/join/mgps/dto/CollectionBeanSub;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.join.kotlin.discount.viewmodel.GameDetailFragmentViewModel$getSimilarGames$1"
    f = "GameDetailFragmentViewModel.kt"
    i = {}
    l = {
        0x7c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $refresh:Z

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;


# direct methods
.method constructor <init>(ZLcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel$getSimilarGames$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel$getSimilarGames$1;->$refresh:Z

    iput-object p2, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel$getSimilarGames$1;->this$0:Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel$getSimilarGames$1;

    iget-boolean v1, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel$getSimilarGames$1;->$refresh:Z

    iget-object v2, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel$getSimilarGames$1;->this$0:Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    invoke-direct {v0, v1, v2, p1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel$getSimilarGames$1;-><init>(ZLcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel$getSimilarGames$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel$getSimilarGames$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel$getSimilarGames$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel$getSimilarGames$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel$getSimilarGames$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-boolean p1, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel$getSimilarGames$1;->$refresh:Z

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel$getSimilarGames$1;->this$0:Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getSimilarListPage()Lcom/join/kotlin/quark/model/bean/Page;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v2}, Lcom/join/kotlin/quark/model/bean/Page;->setPage(I)V

    .line 38
    .line 39
    .line 40
    :cond_2
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    .line 41
    .line 42
    invoke-direct {p1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/join/mgps/dto/RequestGameIdArgs;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel$getSimilarGames$1;->this$0:Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getGameId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object v4, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel$getSimilarGames$1;->this$0:Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;

    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel;->getSimilarListPage()Lcom/join/kotlin/quark/model/bean/Page;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Lcom/join/kotlin/quark/model/bean/Page;->getPage()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    sget-object v5, Lcom/MApplication;->z:Lcom/MApplication;

    .line 64
    .line 65
    invoke-static {v5}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v5}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    invoke-direct {v1, v3, v4, v5}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;II)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lq5/f;->B()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/RequestGameIdArgs;->setDownloadedGameIdList(Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lcom/join/kotlin/network/api/ApiServiceFactorKt;->getGameApiService()Lcom/join/kotlin/network/api/GameApiService;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const-string v3, "makeSign(...)"

    .line 108
    .line 109
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iput v2, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailFragmentViewModel$getSimilarGames$1;->label:I

    .line 113
    .line 114
    invoke-interface {v1, p1, p0}, Lcom/join/kotlin/network/api/GameApiService;->similarRecList(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-ne p1, v0, :cond_3

    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_3
    :goto_0
    return-object p1
.end method
