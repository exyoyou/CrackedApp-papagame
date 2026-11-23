.class final Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSignDo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->checkSignDo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/l0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudSignViewModel$checkSignDo$1"
    f = "HMCloudSignViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;


# direct methods
.method constructor <init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSignDo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSignDo$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSignDo$1;

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSignDo$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    invoke-direct {p1, v0, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSignDo$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/l0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSignDo$1;->invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/l0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSignDo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSignDo$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSignDo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSignDo$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSignDo$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSignDo$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 67
    .line 68
    .line 69
    sget-object p1, Lcom/wufan/user/service/protobuf/enumeration/SceneType;->APP_HOME_PAGE:Lcom/wufan/user/service/protobuf/enumeration/SceneType;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setSceneType(Lcom/wufan/user/service/protobuf/enumeration/SceneType;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSignDo$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 85
    .line 86
    .line 87
    new-instance p1, Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v1, "uid"

    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->getUid()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v3, ""

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    const-string v1, "token"

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->getToken()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    const-string v1, "sceneType"

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->getSceneType()Lcom/wufan/user/service/protobuf/enumeration/SceneType;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    const-string v1, "appVersion"

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    invoke-static {p1}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSignDo$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 157
    .line 158
    invoke-static {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->access$getRpcAccountClientV2$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;)Lcom/join/mgps/rpc/c;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-interface {p1, v0}, Lcom/join/mgps/rpc/c;->n(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$MessageCloudGamingAdCfgResponseResult;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-eqz p1, :cond_2

    .line 171
    .line 172
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSignDo$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$MessageCloudGamingAdCfgResponseResult;->getError()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    const/16 v2, 0xc8

    .line 179
    .line 180
    if-ne v1, v2, :cond_1

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->getAdCfgInfo()Landroidx/lifecycle/MutableLiveData;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$MessageCloudGamingAdCfgResponseResult;->getData()Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    .line 199
    .line 200
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 201
    .line 202
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 203
    .line 204
    return-object p1

    .line 205
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 206
    .line 207
    return-object p1

    .line 208
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 209
    .line 210
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 211
    .line 212
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p1
.end method
