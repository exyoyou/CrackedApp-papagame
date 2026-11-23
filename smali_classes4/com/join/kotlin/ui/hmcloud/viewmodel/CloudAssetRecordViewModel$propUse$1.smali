.class final Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->propUse(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
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
        "Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;"
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
    c = "com.join.kotlin.ui.hmcloud.viewmodel.CloudAssetRecordViewModel$propUse$1"
    f = "CloudAssetRecordViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $cardId:Ljava/lang/String;

.field final synthetic $cardNo:I

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;->$cardId:Ljava/lang/String;

    iput p2, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;->$cardNo:I

    iput-object p3, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;->this$0:Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

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

    new-instance v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;

    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;->$cardId:Ljava/lang/String;

    iget v2, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;->$cardNo:I

    iget-object v3, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;->this$0:Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;-><init>(Ljava/lang/String;ILcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters$b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p1, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters$b;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters$b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "517_6.1.7.0"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters$b;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;->$cardId:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters$b;->setCardId(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters$b;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget v2, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;->$cardNo:I

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters$b;->setCardNo(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters$b;

    .line 56
    .line 57
    .line 58
    new-instance v0, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters$b;->getUid()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v3, ""

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v3, "uid"

    .line 85
    .line 86
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    const-string v2, "token"

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters$b;->getToken()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    const-string v2, "cardId"

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters$b;->getCardId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters$b;->getCardNo()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v3, "cardNo"

    .line 116
    .line 117
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    const-string v2, "appVersion"

    .line 121
    .line 122
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters$b;

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propUse$1;->this$0:Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->getRpcAccountClientV2()Lcom/join/mgps/rpc/c;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/c;->c(Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    return-object p1

    .line 147
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 148
    .line 149
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 150
    .line 151
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p1
.end method
