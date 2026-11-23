.class final Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGameCfgInfoBySrv()V
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
    c = "com.join.kotlin.module.hmcloud.viewmodel.HMCloudMainViewModel$getGameCfgInfoBySrv$1"
    f = "HMCloudMainViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;


# direct methods
.method constructor <init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

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

    new-instance p1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    invoke-direct {p1, v0, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/l0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;->invoke(Lkotlinx/coroutines/l0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_d

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->access$getGameCfgInfo$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->access$getAccountClientV2$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)Lcom/join/mgps/rpc/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->C()Lcom/join/mgps/rpc/c;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_1
    invoke-static {p1, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->access$setAccountClientV2$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/rpc/c;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_b

    .line 48
    .line 49
    :try_start_0
    new-instance p1, Lcom/join/mgps/dto/hmcloud/RequestGameCfgInfoArgs;

    .line 50
    .line 51
    invoke-direct {p1}, Lcom/join/mgps/dto/hmcloud/RequestGameCfgInfoArgs;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    int-to-long v1, v1

    .line 73
    invoke-virtual {p1, v1, v2}, Lcom/join/mgps/dto/hmcloud/RequestGameCfgInfoArgs;->setUid(J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/hmcloud/RequestGameCfgInfoArgs;->setUserToken(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGameId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/hmcloud/RequestGameCfgInfoArgs;->setGameId(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-direct {v1, v2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    int-to-long v2, p1

    .line 114
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestModel;->setUid(Ljava/lang/Long;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestModel;->setUserToken(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 129
    .line 130
    invoke-static {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->access$getAccountClientV2$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)Lcom/join/mgps/rpc/c;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const/4 v0, 0x0

    .line 135
    if-eqz p1, :cond_2

    .line 136
    .line 137
    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/c;->a(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    goto :goto_0

    .line 142
    :cond_2
    move-object p1, v0

    .line 143
    :goto_0
    if-eqz p1, :cond_3

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;

    .line 150
    .line 151
    :cond_3
    if-eqz v0, :cond_a

    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;

    .line 158
    .line 159
    if-eqz p1, :cond_c

    .line 160
    .line 161
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 162
    .line 163
    invoke-static {v0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->access$setGameCfgInfo$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->updateResolutionInfo()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->refreshKeyboardTypeList()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;->getGame_button_tips()Lcom/join/mgps/dto/hmcloud/GameButtonTips;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const/4 v2, 0x0

    .line 177
    const/4 v3, 0x1

    .line 178
    if-eqz v1, :cond_7

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGuideState()Landroidx/lifecycle/MutableLiveData;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    check-cast v4, Lcom/join/kotlin/module/hmcloud/bean/GuideState;

    .line 189
    .line 190
    invoke-virtual {v1}, Lcom/join/mgps/dto/hmcloud/GameButtonTips;->getTips_switch()Ljava/lang/Boolean;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    if-eqz v5, :cond_5

    .line 203
    .line 204
    if-eqz v4, :cond_4

    .line 205
    .line 206
    instance-of v4, v4, Lcom/join/kotlin/module/hmcloud/bean/GuideState$None;

    .line 207
    .line 208
    if-eqz v4, :cond_5

    .line 209
    .line 210
    :cond_4
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGuideState()Landroidx/lifecycle/MutableLiveData;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    new-instance v5, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;

    .line 215
    .line 216
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-direct {v5, v2, v6}, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;-><init>(ILjava/lang/Integer;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :cond_5
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getShowKeyTips()Landroidx/lifecycle/MutableLiveData;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-virtual {v1}, Lcom/join/mgps/dto/hmcloud/GameButtonTips;->getExplain_switch()Ljava/lang/Boolean;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    if-eqz v1, :cond_6

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    goto :goto_1

    .line 241
    :cond_6
    const/4 v1, 0x0

    .line 242
    :goto_1
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v4, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    :cond_7
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getHandleSupport()Landroidx/lifecycle/MutableLiveData;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;->getHandle_support()Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    if-nez p1, :cond_8

    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-ne p1, v3, :cond_9

    .line 265
    .line 266
    const/4 v2, 0x1

    .line 267
    :cond_9
    :goto_2
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_a
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 278
    .line 279
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->refreshKeyboardTypeList()V

    .line 280
    .line 281
    .line 282
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .line 284
    goto :goto_3

    .line 285
    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 287
    .line 288
    .line 289
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 290
    .line 291
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->refreshKeyboardTypeList()V

    .line 292
    .line 293
    .line 294
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_b
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$getGameCfgInfoBySrv$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 298
    .line 299
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->refreshKeyboardTypeList()V

    .line 300
    .line 301
    .line 302
    :cond_c
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 303
    .line 304
    return-object p1

    .line 305
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 306
    .line 307
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 308
    .line 309
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    throw p1
.end method
