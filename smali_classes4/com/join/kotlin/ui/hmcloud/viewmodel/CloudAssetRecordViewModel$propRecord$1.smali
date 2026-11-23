.class final Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->propRecord(Z)V
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
        "Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropLogResponseResult;",
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
        "Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropLogResponseResult;"
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
    c = "com.join.kotlin.ui.hmcloud.viewmodel.CloudAssetRecordViewModel$propRecord$1"
    f = "CloudAssetRecordViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $refresh:Z

.field label:I

.field final synthetic this$0:Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;


# direct methods
.method constructor <init>(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;->$refresh:Z

    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;->this$0:Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

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

    new-instance v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;

    iget-boolean v1, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;->$refresh:Z

    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;->this$0:Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    invoke-direct {v0, v1, v2, p1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;-><init>(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropLogResponseResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;->$refresh:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;->this$0:Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->getPage()Lcom/join/kotlin/quark/model/bean/Page;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, v0}, Lcom/join/kotlin/quark/model/bean/Page;->setPage(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters$b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;->this$0:Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->getPage()Lcom/join/kotlin/quark/model/bean/Page;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/Page;->getPage()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters$b;->setPage(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters$b;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p1, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters$b;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v1, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters$b;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "517_6.1.7.0"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters$b;

    .line 72
    .line 73
    .line 74
    new-instance v0, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters$b;->getUid()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v3, ""

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v3, "uid"

    .line 101
    .line 102
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const-string v2, "token"

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters$b;->getToken()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    const-string v2, "appVersion"

    .line 115
    .line 116
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters$b;

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel$propRecord$1;->this$0:Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->getRpcAccountClientV2()Lcom/join/mgps/rpc/c;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/c;->f(Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropLogResponseResult;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    return-object p1

    .line 141
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 142
    .line 143
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 144
    .line 145
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p1
.end method
