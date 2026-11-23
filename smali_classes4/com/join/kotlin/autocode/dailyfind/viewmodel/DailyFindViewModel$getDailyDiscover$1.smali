.class final Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getDailyDiscover(ZILjava/lang/String;)V
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
        "Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;",
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
        "Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;"
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
    c = "com.join.kotlin.autocode.dailyfind.viewmodel.DailyFindViewModel$getDailyDiscover$1"
    f = "DailyFindViewModel.kt"
    i = {}
    l = {
        0x115
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $curDay:I

.field final synthetic $date:Ljava/lang/String;

.field final synthetic $refresh:Z

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;


# direct methods
.method constructor <init>(IZLjava/lang/String;Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            "Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->$curDay:I

    iput-boolean p2, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->$refresh:Z

    iput-object p3, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->$date:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->this$0:Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;

    iget v1, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->$curDay:I

    iget-boolean v2, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->$refresh:Z

    iget-object v3, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->$date:Ljava/lang/String;

    iget-object v4, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->this$0:Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;-><init>(IZLjava/lang/String;Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;Lkotlin/coroutines/Continuation;)V

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->label:I

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
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    .line 29
    .line 30
    invoke-direct {p1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/join/kotlin/autocode/dailyfind/model/args/DailyDiscoverArgs;

    .line 34
    .line 35
    iget v3, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->$curDay:I

    .line 36
    .line 37
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v8, 0x0

    .line 45
    const/16 v9, 0x1e

    .line 46
    .line 47
    const/4 v10, 0x0

    .line 48
    move-object v3, v1

    .line 49
    invoke-direct/range {v3 .. v10}, Lcom/join/kotlin/autocode/dailyfind/model/args/DailyDiscoverArgs;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v1, v3}, Lcom/join/kotlin/autocode/dailyfind/model/args/DailyDiscoverArgs;->setUid(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v1, v3}, Lcom/join/kotlin/autocode/dailyfind/model/args/DailyDiscoverArgs;->setUserToken(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-boolean v3, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->$refresh:Z

    .line 83
    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    iget-object v3, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->$date:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Lcom/join/kotlin/autocode/dailyfind/model/args/DailyDiscoverArgs;->setDate(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->this$0:Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 92
    .line 93
    iget-object v4, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->$date:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v3, v4}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->setLastDateStr(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lq5/f;->B()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v1, v3}, Lcom/join/kotlin/autocode/dailyfind/model/args/DailyDiscoverArgs;->setDownloadedGameIdList(Ljava/util/List;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    iget-object v3, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->this$0:Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;

    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;->getLastDateStr()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v1, v3}, Lcom/join/kotlin/autocode/dailyfind/model/args/DailyDiscoverArgs;->setDate(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_0
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 127
    .line 128
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 129
    .line 130
    .line 131
    invoke-static {}, Lcom/join/kotlin/network/api/ApiServiceFactorKt;->getGameApiService()Lcom/join/kotlin/network/api/GameApiService;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iput v2, p0, Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel$getDailyDiscover$1;->label:I

    .line 136
    .line 137
    invoke-interface {v1, p1, p0}, Lcom/join/kotlin/network/api/GameApiService;->getDailyDiscover(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-ne p1, v0, :cond_3

    .line 142
    .line 143
    return-object v0

    .line 144
    :cond_3
    :goto_1
    return-object p1
.end method
