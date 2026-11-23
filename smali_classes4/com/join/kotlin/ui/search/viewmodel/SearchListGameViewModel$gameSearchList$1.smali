.class final Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->gameSearchList(Z)V
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
        "Lcom/join/kotlin/ui/search/model/SearchDataBean;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/join/mgps/dto/ResponseModel;",
        "Lcom/join/kotlin/ui/search/model/SearchDataBean;"
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
    c = "com.join.kotlin.ui.search.viewmodel.SearchListGameViewModel$gameSearchList$1"
    f = "SearchListGameViewModel.kt"
    i = {}
    l = {
        0x2c,
        0x2e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $refresh:Z

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;


# direct methods
.method constructor <init>(ZLcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->$refresh:Z

    iput-object p2, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

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

    new-instance v0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;

    iget-boolean v1, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->$refresh:Z

    iget-object v2, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    invoke-direct {v0, v1, v2, p1}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;-><init>(ZLcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/join/kotlin/ui/search/model/SearchDataBean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    .line 36
    .line 37
    invoke-direct {p1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->$refresh:Z

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->setPage(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getAllDownloadBeans()Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 56
    .line 57
    .line 58
    :cond_3
    new-instance v1, Lcom/join/kotlin/ui/search/model/args/SearchArgs;

    .line 59
    .line 60
    iget-object v4, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 61
    .line 62
    invoke-virtual {v4}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getKeyword()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    iget-object v4, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getGameId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    iget-object v4, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getPlugin_num()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    iget-object v4, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getLang_id()I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    iget-object v4, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->this$0:Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;

    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel;->getPage()I

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    const/4 v10, 0x0

    .line 95
    const/16 v11, 0x20

    .line 96
    .line 97
    const/4 v12, 0x0

    .line 98
    move-object v4, v1

    .line 99
    invoke-direct/range {v4 .. v12}, Lcom/join/kotlin/ui/search/model/args/SearchArgs;-><init>(Ljava/lang/String;ZIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 108
    .line 109
    .line 110
    iget-boolean v1, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->$refresh:Z

    .line 111
    .line 112
    const-string v4, "makeSign(...)"

    .line 113
    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    invoke-static {}, Lcom/join/kotlin/network/api/ApiServiceFactorKt;->getSearchGameApiService()Lcom/join/kotlin/network/api/SearchGameApiService;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iput v3, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->label:I

    .line 128
    .line 129
    invoke-interface {v1, p1, p0}, Lcom/join/kotlin/network/api/SearchGameApiService;->gameSearchList(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-ne p1, v0, :cond_4

    .line 134
    .line 135
    return-object v0

    .line 136
    :cond_4
    :goto_0
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_5
    invoke-static {}, Lcom/join/kotlin/network/api/ApiServiceFactorKt;->getSearchGameApiService()Lcom/join/kotlin/network/api/SearchGameApiService;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iput v2, p0, Lcom/join/kotlin/ui/search/viewmodel/SearchListGameViewModel$gameSearchList$1;->label:I

    .line 151
    .line 152
    invoke-interface {v1, p1, p0}, Lcom/join/kotlin/network/api/SearchGameApiService;->gameSearchListMore(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-ne p1, v0, :cond_6

    .line 157
    .line 158
    return-object v0

    .line 159
    :cond_6
    :goto_1
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 160
    .line 161
    :goto_2
    return-object p1
.end method
