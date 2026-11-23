.class public final Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;
.super Lcom/join/kotlin/base/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation build Ldagger/hilt/android/lifecycle/HiltViewModel;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMCloudSignViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudSignViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,322:1\n1#2:323\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0013\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\"\u0010\u0016\u001a\u00020\u00172\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00170\u0019H\u0082@\u00a2\u0006\u0002\u0010\u001aJ\u0006\u0010\u001b\u001a\u00020\u0017J\u0008\u0010\u001c\u001a\u00020\u0017H\u0002J!\u0010\u001d\u001a\u00020\u00172\u0006\u0010\n\u001a\u00020\u000c2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0002\u00a2\u0006\u0002\u0010 J)\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020\u001f2\u0006\u0010\n\u001a\u00020\u000c2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0002\u00a2\u0006\u0002\u0010#J\u0006\u0010$\u001a\u00020\u0017J\u0006\u0010%\u001a\u00020\u0017R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0019\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "rpcAccountClientV2",
        "Lcom/join/mgps/rpc/RpcAccountClientV2;",
        "adCfgInfo",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;",
        "getAdCfgInfo",
        "()Landroidx/lifecycle/MutableLiveData;",
        "playtimeSignResult",
        "Landroidx/lifecycle/SafeLiveData;",
        "Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;",
        "getPlaytimeSignResult",
        "()Landroidx/lifecycle/SafeLiveData;",
        "isSign",
        "",
        "loadUserInfoBySvr",
        "",
        "callback",
        "Lkotlin/Function1;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "checkSign",
        "checkSignDo",
        "showCloudSign",
        "screenOrientation",
        "",
        "(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Ljava/lang/Integer;)V",
        "openWebPage",
        "step",
        "(ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Ljava/lang/Integer;)V",
        "sign",
        "performClickSign",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHMCloudSignViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMCloudSignViewModel.kt\ncom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,322:1\n1#2:323\n*E\n"
    }
.end annotation


# instance fields
.field private final adCfgInfo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isSign:Z

.field private final playtimeSignResult:Landroidx/lifecycle/SafeLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/SafeLiveData<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rpcAccountClientV2:Lcom/join/mgps/rpc/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {}, Lcom/join/mgps/rpc/impl/b;->C()Lcom/join/mgps/rpc/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 16
    .line 17
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->adCfgInfo:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    new-instance p1, Landroidx/lifecycle/SafeLiveData;

    .line 26
    .line 27
    invoke-direct {p1}, Landroidx/lifecycle/SafeLiveData;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->playtimeSignResult:Landroidx/lifecycle/SafeLiveData;

    .line 31
    .line 32
    return-void
.end method

.method public static final synthetic access$checkSignDo(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->checkSignDo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getRpcAccountClientV2$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;)Lcom/join/mgps/rpc/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$isSign$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->isSign:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$loadUserInfoBySvr(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->loadUserInfoBySvr(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setSign$p(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->isSign:Z

    .line 2
    .line 3
    return-void
.end method

.method private final checkSignDo()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSignDo$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSignDo$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final loadUserInfoBySvr(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters;->newBuilder()Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Lg8/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v1, v0}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 40
    .line 41
    .line 42
    new-instance v0, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "uid"

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->getUid()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v4, ""

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-string v2, "token"

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->getToken()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    const-string v2, "appVersion"

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->getAppVersion()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->d(Ljava/util/Map;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v1, v0}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->setSign(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->rpcAccountClientV2:Lcom/join/mgps/rpc/c;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters$b;->build()Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/c;->A(Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getError()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    const/16 v2, 0xc8

    .line 115
    .line 116
    if-ne v1, v2, :cond_1

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/ResponseResult;->getData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_0

    .line 129
    .line 130
    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1, v0, p2}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/wufan/user/service/protobuf/UserInfo;Landroid/content/Context;)V

    .line 135
    .line 136
    .line 137
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    new-instance v0, Lcom/join/mgps/event/b;

    .line 142
    .line 143
    const/4 v1, 0x2

    .line 144
    invoke-direct {v0, v1}, Lcom/join/mgps/event/b;-><init>(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    const/4 p2, 0x1

    .line 151
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 164
    .line 165
    return-object p1
.end method

.method private final openWebPage(ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Ljava/lang/Integer;)V
    .locals 11

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x2

    .line 13
    const-string v4, ""

    .line 14
    .line 15
    if-ne p1, v2, :cond_2

    .line 16
    .line 17
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getIsSigned()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    sget-object v4, Lcom/join/mgps/rpc/h;->U:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->context:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v5, "isVip"

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    invoke-static {v4, v5, v6, v3, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-nez v5, :cond_2

    .line 54
    .line 55
    const-string v5, "?"

    .line 56
    .line 57
    invoke-static {v4, v5, v6, v3, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    const-string v8, "&currentDay="

    .line 62
    .line 63
    if-eqz v5, :cond_0

    .line 64
    .line 65
    const-string v5, "="

    .line 66
    .line 67
    invoke-static {v4, v5, v6, v3, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_0

    .line 72
    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v4, "&isVip="

    .line 82
    .line 83
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-static {v2}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getSignDay()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    goto :goto_0

    .line 108
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v4, "?isVip="

    .line 117
    .line 118
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-static {v2}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getSignDay()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    goto :goto_0

    .line 143
    :cond_1
    add-int/lit8 v6, p1, 0x1

    .line 144
    .line 145
    const/4 v8, 0x0

    .line 146
    const/4 v9, 0x4

    .line 147
    const/4 v10, 0x0

    .line 148
    move-object v5, p0

    .line 149
    move-object v7, p2

    .line 150
    invoke-static/range {v5 .. v10}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->openWebPage$default(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_2
    :goto_0
    if-ne p1, v3, :cond_4

    .line 154
    .line 155
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_4

    .line 160
    .line 161
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getIsShowNewGift()Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_3

    .line 166
    .line 167
    sget-object v4, Lcom/join/mgps/rpc/h;->V:Ljava/lang/String;

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_3
    add-int/lit8 v6, p1, 0x1

    .line 171
    .line 172
    const/4 v8, 0x0

    .line 173
    const/4 v9, 0x4

    .line 174
    const/4 v10, 0x0

    .line 175
    move-object v5, p0

    .line 176
    move-object v7, p2

    .line 177
    invoke-static/range {v5 .. v10}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->openWebPage$default(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :cond_4
    :goto_1
    const/4 v2, 0x3

    .line 181
    if-ne p1, v2, :cond_5

    .line 182
    .line 183
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_5

    .line 188
    .line 189
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getIsFirstPurchaseMember()Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_5

    .line 194
    .line 195
    sget-object v4, Lcom/join/mgps/rpc/h;->W:Ljava/lang/String;

    .line 196
    .line 197
    :cond_5
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_7

    .line 202
    .line 203
    invoke-virtual {v1, v4}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const-string v2, "intentdate"

    .line 207
    .line 208
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 209
    .line 210
    .line 211
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 212
    .line 213
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v2, "home"

    .line 217
    .line 218
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    const-string v2, "cloudGameNewUserSignPop"

    .line 227
    .line 228
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    const-string v2, "parentExtBean"

    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 239
    .line 240
    .line 241
    if-eqz p3, :cond_6

    .line 242
    .line 243
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result p3

    .line 247
    const-string v1, "screenOrientation"

    .line 248
    .line 249
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    .line 251
    .line 252
    :cond_6
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 253
    .line 254
    .line 255
    move-result-object p3

    .line 256
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->context:Landroid/content/Context;

    .line 257
    .line 258
    new-instance v2, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2;

    .line 259
    .line 260
    invoke-direct {v2, p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$openWebPage$2;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V

    .line 261
    .line 262
    .line 263
    const-class p1, Lcom/join/mgps/activity/FullShareWebActivity_;

    .line 264
    .line 265
    invoke-virtual {p3, v1, p1, v0, v2}, Lcom/join/mgps/Util/IntentUtil;->startActivityWithCallback(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)V

    .line 266
    .line 267
    .line 268
    :cond_7
    return-void
.end method

.method static synthetic openWebPage$default(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->openWebPage(ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Ljava/lang/Integer;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getIsSigned()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getIsShowNewGift()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getIsFirstPurchaseMember()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-lez v0, :cond_3

    .line 27
    .line 28
    invoke-direct {p0, v0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->openWebPage(ILcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Ljava/lang/Integer;)V

    .line 29
    .line 30
    .line 31
    :cond_3
    return-void
.end method

.method static synthetic showCloudSign$default(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->showCloudSign(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Ljava/lang/Integer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final checkSign()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSign$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$checkSign$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final getAdCfgInfo()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->adCfgInfo:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlaytimeSignResult()Landroidx/lifecycle/SafeLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/SafeLiveData<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->playtimeSignResult:Landroidx/lifecycle/SafeLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final performClickSign()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->adCfgInfo:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;->getIsNewMember()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v3, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->context:Landroid/content/Context;

    .line 35
    .line 36
    new-instance v4, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$performClickSign$1$1;

    .line 37
    .line 38
    invoke-direct {v4, p0, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$performClickSign$1$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V

    .line 39
    .line 40
    .line 41
    const-class v0, Lcom/join/mgps/activity/BindAccountActivity_;

    .line 42
    .line 43
    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/join/mgps/Util/IntentUtil;->startActivityWithCallback(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v1, 0x2

    .line 48
    invoke-static {p0, v0, v2, v1, v2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->showCloudSign$default(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->sign()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method

.method public final sign()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$sign$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$sign$1;-><init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;->launchOnUI(Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
