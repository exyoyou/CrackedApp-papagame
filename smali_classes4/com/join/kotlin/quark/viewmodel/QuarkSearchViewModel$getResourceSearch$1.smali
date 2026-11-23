.class final Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->getResourceSearch(Z)V
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
        "Ljava/util/ArrayList<",
        "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u00040\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/join/mgps/dto/ResponseModel;",
        "Ljava/util/ArrayList;",
        "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;",
        "Lkotlin/collections/ArrayList;"
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
    c = "com.join.kotlin.quark.viewmodel.QuarkSearchViewModel$getResourceSearch$1"
    f = "QuarkSearchViewModel.kt"
    i = {}
    l = {
        0x2a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $refresh:Z

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;


# direct methods
.method constructor <init>(ZLcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;->$refresh:Z

    iput-object p2, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;->this$0:Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;

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

    new-instance v0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;

    iget-boolean v1, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;->$refresh:Z

    iget-object v2, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;->this$0:Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;

    invoke-direct {v0, v1, v2, p1}, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;-><init>(ZLcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/ArrayList<",
            "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;->label:I

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
    iget-boolean p1, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;->$refresh:Z

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;->this$0:Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->getPage()Lcom/join/kotlin/quark/model/bean/Page;

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
    new-instance p1, Lcom/join/kotlin/quark/model/request/SourceSearchRequest;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;->this$0:Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->getKeyword()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v3, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;->this$0:Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->getPage()Lcom/join/kotlin/quark/model/bean/Page;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-direct {p1, v1, v3}, Lcom/join/kotlin/quark/model/request/SourceSearchRequest;-><init>(Ljava/lang/String;Lcom/join/kotlin/quark/model/bean/Page;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 58
    .line 59
    sget-object v3, Lcom/MApplication;->z:Lcom/MApplication;

    .line 60
    .line 61
    invoke-direct {v1, v3}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/join/kotlin/network/api/ApiServiceFactorKt;->getGameApiService()Lcom/join/kotlin/network/api/GameApiService;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v3, "makeSign(...)"

    .line 76
    .line 77
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iput v2, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;->label:I

    .line 81
    .line 82
    invoke-interface {p1, v1, p0}, Lcom/join/kotlin/network/api/GameApiService;->resourceSearch(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-ne p1, v0, :cond_3

    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_3
    :goto_0
    return-object p1
.end method
