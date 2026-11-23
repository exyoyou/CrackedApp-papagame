.class final Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel$loadData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->loadData(Z)V
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
        "Lcom/join/kotlin/ui/netgame/data/NetGameZoneResultData;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetGameCategoryInnerViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetGameCategoryInnerViewModel.kt\ncom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel$loadData$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,129:1\n1#2:130\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/join/mgps/dto/ResponseModel;",
        "Lcom/join/kotlin/ui/netgame/data/NetGameZoneResultData;"
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
    c = "com.join.kotlin.ui.netgame.viewmodel.NetGameCategoryInnerViewModel$loadData$1"
    f = "NetGameCategoryInnerViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNetGameCategoryInnerViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetGameCategoryInnerViewModel.kt\ncom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel$loadData$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,129:1\n1#2:130\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $page:I

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;


# direct methods
.method constructor <init>(ILcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel$loadData$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel$loadData$1;->$page:I

    iput-object p2, p0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel$loadData$1;->this$0:Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

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

    new-instance v0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel$loadData$1;

    iget v1, p0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel$loadData$1;->$page:I

    iget-object v2, p0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel$loadData$1;->this$0:Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    invoke-direct {v0, v1, v2, p1}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel$loadData$1;-><init>(ILcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel$loadData$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/join/kotlin/ui/netgame/data/NetGameZoneResultData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel$loadData$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel$loadData$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel$loadData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel$loadData$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 22
    .line 23
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    const-wide/16 v1, 0x0

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    int-to-long v3, v3

    .line 37
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :goto_0
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/RequestModel;->setUid(Ljava/lang/Long;)V

    .line 47
    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 p1, 0x0

    .line 57
    :goto_1
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestModel;->setUserToken(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Lcom/join/kotlin/ui/netgame/data/NetGameZoneRequest;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->getUid()Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    :cond_2
    move-wide v4, v1

    .line 73
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->getUserToken()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    iget v7, p0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel$loadData$1;->$page:I

    .line 78
    .line 79
    iget-object v1, p0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel$loadData$1;->this$0:Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryInnerViewModel;->getTabType()I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    move-object v3, p1

    .line 86
    invoke-direct/range {v3 .. v8}, Lcom/join/kotlin/ui/netgame/data/NetGameZoneRequest;-><init>(JLjava/lang/String;II)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Lcom/join/mgps/rpc/impl/i;->z(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-nez p1, :cond_3

    .line 105
    .line 106
    new-instance p1, Lcom/join/mgps/dto/ResponseModel;

    .line 107
    .line 108
    invoke-direct {p1}, Lcom/join/mgps/dto/ResponseModel;-><init>()V

    .line 109
    .line 110
    .line 111
    const/4 v0, -0x1

    .line 112
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ResponseModel;->setCode(I)V

    .line 113
    .line 114
    .line 115
    :cond_3
    return-object p1

    .line 116
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 119
    .line 120
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1
.end method
