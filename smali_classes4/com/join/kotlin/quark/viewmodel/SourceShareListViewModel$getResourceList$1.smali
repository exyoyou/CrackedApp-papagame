.class final Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;->getResourceList(ZILjava/lang/String;Ljava/lang/String;)V
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
    c = "com.join.kotlin.quark.viewmodel.SourceShareListViewModel$getResourceList$1"
    f = "SourceShareListViewModel.kt"
    i = {}
    l = {
        0x29
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $refresh:Z

.field final synthetic $tabId:I

.field final synthetic $token:Ljava/lang/String;

.field final synthetic $uid:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;


# direct methods
.method constructor <init>(ZLcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->$refresh:Z

    iput-object p2, p0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->this$0:Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;

    iput p3, p0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->$tabId:I

    iput-object p4, p0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->$token:Ljava/lang/String;

    iput-object p5, p0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->$uid:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v7, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;

    iget-boolean v1, p0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->$refresh:Z

    iget-object v2, p0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->this$0:Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;

    iget v3, p0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->$tabId:I

    iget-object v4, p0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->$token:Ljava/lang/String;

    iget-object v5, p0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->$uid:Ljava/lang/String;

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;-><init>(ZLcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->label:I

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
    iget-boolean p1, p0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->$refresh:Z

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->this$0:Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;->getPage()Lcom/join/kotlin/quark/model/bean/Page;

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
    new-instance p1, Lcom/join/kotlin/quark/model/request/SourceListRequest;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->this$0:Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel;->getPage()Lcom/join/kotlin/quark/model/bean/Page;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget v3, p0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->$tabId:I

    .line 49
    .line 50
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget-object v4, p0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->$token:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v5, p0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->$uid:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {p1, v1, v3, v4, v5}, Lcom/join/kotlin/quark/model/request/SourceListRequest;-><init>(Lcom/join/kotlin/quark/model/bean/Page;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 62
    .line 63
    sget-object v3, Lcom/MApplication;->z:Lcom/MApplication;

    .line 64
    .line 65
    invoke-direct {v1, v3}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/join/kotlin/network/api/ApiServiceFactorKt;->getGameApiService()Lcom/join/kotlin/network/api/GameApiService;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v3, "makeSign(...)"

    .line 80
    .line 81
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iput v2, p0, Lcom/join/kotlin/quark/viewmodel/SourceShareListViewModel$getResourceList$1;->label:I

    .line 85
    .line 86
    invoke-interface {p1, v1, p0}, Lcom/join/kotlin/network/api/GameApiService;->resourceList(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-ne p1, v0, :cond_3

    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_3
    :goto_0
    return-object p1
.end method
