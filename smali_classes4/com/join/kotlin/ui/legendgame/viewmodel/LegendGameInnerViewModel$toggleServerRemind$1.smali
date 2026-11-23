.class final Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel$toggleServerRemind$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel;->toggleServerRemind(JZ)V
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
        "Lcom/join/kotlin/ui/legendgame/data/LegendServerRemindResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLegendGameInnerViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameInnerViewModel.kt\ncom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel$toggleServerRemind$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n1#2:85\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/join/mgps/dto/ResponseModel;",
        "Lcom/join/kotlin/ui/legendgame/data/LegendServerRemindResult;"
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
    c = "com.join.kotlin.ui.legendgame.viewmodel.LegendGameInnerViewModel$toggleServerRemind$1"
    f = "LegendGameInnerViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLegendGameInnerViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameInnerViewModel.kt\ncom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel$toggleServerRemind$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n1#2:85\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $book:Z

.field final synthetic $detailId:J

.field label:I


# direct methods
.method constructor <init>(JZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel$toggleServerRemind$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel$toggleServerRemind$1;->$detailId:J

    iput-boolean p3, p0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel$toggleServerRemind$1;->$book:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel$toggleServerRemind$1;

    iget-wide v1, p0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel$toggleServerRemind$1;->$detailId:J

    iget-boolean v3, p0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel$toggleServerRemind$1;->$book:Z

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel$toggleServerRemind$1;-><init>(JZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel$toggleServerRemind$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/join/kotlin/ui/legendgame/data/LegendServerRemindResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel$toggleServerRemind$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel$toggleServerRemind$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel$toggleServerRemind$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel$toggleServerRemind$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_5

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
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    int-to-long v1, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-wide/16 v1, 0x0

    .line 37
    .line 38
    :goto_0
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setUid(Ljava/lang/Long;)V

    .line 43
    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v1, 0x0

    .line 53
    :goto_1
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setUserToken(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Lcom/join/kotlin/ui/legendgame/data/LegendServerRemindRequest;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const/4 p1, 0x0

    .line 66
    :goto_2
    iget-wide v2, p0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel$toggleServerRemind$1;->$detailId:J

    .line 67
    .line 68
    invoke-direct {v1, p1, v2, v3}, Lcom/join/kotlin/ui/legendgame/data/LegendServerRemindRequest;-><init>(IJ)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-boolean v1, p0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameInnerViewModel$toggleServerRemind$1;->$book:Z

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Lcom/join/mgps/rpc/impl/i;->c(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    goto :goto_3

    .line 91
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Lcom/join/mgps/rpc/impl/i;->y(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :goto_3
    if-nez p1, :cond_4

    .line 100
    .line 101
    new-instance p1, Lcom/join/mgps/dto/ResponseModel;

    .line 102
    .line 103
    invoke-direct {p1}, Lcom/join/mgps/dto/ResponseModel;-><init>()V

    .line 104
    .line 105
    .line 106
    const/4 v0, -0x1

    .line 107
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ResponseModel;->setCode(I)V

    .line 108
    .line 109
    .line 110
    :cond_4
    return-object p1

    .line 111
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 112
    .line 113
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 114
    .line 115
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1
.end method
