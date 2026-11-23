.class final Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->nostalgiaGameList(Z)V
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
        "Lkotlin/Pair<",
        "+",
        "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\u0010\u0000\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
        "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;",
        ""
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
    c = "com.join.kotlin.ui.nostalgia.viewmodel.NostalgiaGameViewModel$nostalgiaGameList$1"
    f = "NostalgiaGameViewModel.kt"
    i = {
        0x0
    }
    l = {
        0x59
    }
    m = "invokeSuspend"
    n = {
        "reqPage"
    }
    s = {
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $refresh:Z

.field I$0:I

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;


# direct methods
.method constructor <init>(ZLcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;->$refresh:Z

    iput-object p2, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;->this$0:Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;

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

    new-instance v0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;

    iget-boolean v1, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;->$refresh:Z

    iget-object v2, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;->this$0:Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;

    invoke-direct {v0, v1, v2, p1}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;-><init>(ZLcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Pair<",
            "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;->label:I

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
    iget v0, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;->I$0:I

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-boolean p1, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;->$refresh:Z

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;->this$0:Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->getPage()Lcom/join/kotlin/quark/model/bean/Page;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, v2}, Lcom/join/kotlin/quark/model/bean/Page;->setPage(I)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object p1, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;->this$0:Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->getPage()Lcom/join/kotlin/quark/model/bean/Page;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/join/kotlin/quark/model/bean/Page;->getPage()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 53
    .line 54
    sget-object v3, Lcom/MApplication;->z:Lcom/MApplication;

    .line 55
    .line 56
    invoke-direct {v1, v3}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    new-instance v3, Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListArgs;

    .line 60
    .line 61
    iget-object v4, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;->this$0:Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;

    .line 62
    .line 63
    invoke-static {v4}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->access$uidInt(Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    iget-object v5, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;->this$0:Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;

    .line 68
    .line 69
    invoke-virtual {v5}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->getNostalgiaTabType()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-direct {v3, v4, p1, v5}, Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListArgs;-><init>(IILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/join/kotlin/network/api/ApiServiceFactorKt;->getGameApiService()Lcom/join/kotlin/network/api/GameApiService;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-string v4, "makeSign(...)"

    .line 88
    .line 89
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iput p1, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;->I$0:I

    .line 93
    .line 94
    iput v2, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;->label:I

    .line 95
    .line 96
    invoke-interface {v3, v1, p0}, Lcom/join/kotlin/network/api/GameApiService;->nostalgiaGameList(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-ne v1, v0, :cond_3

    .line 101
    .line 102
    return-object v0

    .line 103
    :cond_3
    move v0, p1

    .line 104
    move-object p1, v1

    .line 105
    :goto_0
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1
.end method
