.class public final Lcom/join/kotlin/viewmodel/RewardAdViewModel;
.super Lcom/join/kotlin/base/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\nJ8\u0010\'\u001a\u00020%2\u0006\u0010(\u001a\u00020)2\u0006\u0010\u000f\u001a\u00020\n2\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0016\u0008\u0002\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020.\u0018\u00010-J\u000e\u0010/\u001a\u00020%2\u0006\u0010(\u001a\u00020)J\u0008\u00100\u001a\u00020%H\u0002R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u00061"
    }
    d2 = {
        "Lcom/join/kotlin/viewmodel/RewardAdViewModel;",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "<init>",
        "()V",
        "event",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/join/mgps/ad/union/bean/AdEvent;",
        "getEvent",
        "()Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "appId",
        "",
        "getAppId",
        "()Ljava/lang/String;",
        "setAppId",
        "(Ljava/lang/String;)V",
        "adId",
        "getAdId",
        "setAdId",
        "channel",
        "",
        "getChannel",
        "()I",
        "setChannel",
        "(I)V",
        "rewardAd",
        "Lcom/windmill/sdk/reward/WMRewardAd;",
        "getRewardAd",
        "()Lcom/windmill/sdk/reward/WMRewardAd;",
        "setRewardAd",
        "(Lcom/windmill/sdk/reward/WMRewardAd;)V",
        "rewardVideoCallback",
        "Lcom/join/mgps/ad/IRewardVideo;",
        "getRewardVideoCallback",
        "()Lcom/join/mgps/ad/IRewardVideo;",
        "setRewardVideoCallback",
        "(Lcom/join/mgps/ad/IRewardVideo;)V",
        "init",
        "",
        "adChannel",
        "load",
        "activity",
        "Landroid/app/Activity;",
        "autoShow",
        "",
        "args",
        "",
        "",
        "show",
        "initSdk",
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


# instance fields
.field private adId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private appId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private channel:I

.field private final event:Lkotlinx/coroutines/flow/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/i<",
            "Lf6/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rewardAd:Lcom/windmill/sdk/reward/WMRewardAd;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rewardVideoCallback:Lcom/join/mgps/ad/n;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x5

    .line 7
    const/16 v3, 0xa

    .line 8
    .line 9
    invoke-static {v2, v3, v0, v1, v0}, Lkotlinx/coroutines/flow/o;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->event:Lkotlinx/coroutines/flow/i;

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->appId:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->adId:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method private final initSdk()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->channel:I

    .line 6
    .line 7
    const/16 v2, 0xa

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->appId:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2}, Lcom/join/mgps/ad/adapter/e;->a(Landroid/content/Context;Ljava/lang/String;Le6/a;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->event:Lkotlinx/coroutines/flow/i;

    .line 18
    .line 19
    sget-object v1, Lf6/a$g;->a:Lf6/a$g;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/i;->d(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static synthetic load$default(Lcom/join/kotlin/viewmodel/RewardAdViewModel;Landroid/app/Activity;Ljava/lang/String;ZLjava/util/Map;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    const/4 p4, 0x0

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->load(Landroid/app/Activity;Ljava/lang/String;ZLjava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getAdId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->adId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getChannel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->channel:I

    .line 2
    .line 3
    return v0
.end method

.method public final getEvent()Lkotlinx/coroutines/flow/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Lf6/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->event:Lkotlinx/coroutines/flow/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRewardAd()Lcom/windmill/sdk/reward/WMRewardAd;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->rewardAd:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRewardVideoCallback()Lcom/join/mgps/ad/n;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->rewardVideoCallback:Lcom/join/mgps/ad/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public final init(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->channel:I

    .line 7
    .line 8
    iput-object p2, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->appId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->initSdk()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final load(Landroid/app/Activity;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->adId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    if-nez p4, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    :cond_0
    invoke-interface {v1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 33
    .line 34
    .line 35
    iget p4, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->channel:I

    .line 36
    .line 37
    const/16 v2, 0xa

    .line 38
    .line 39
    if-ne p4, v2, :cond_1

    .line 40
    .line 41
    new-instance p4, Lcom/windmill/sdk/reward/WMRewardAdRequest;

    .line 42
    .line 43
    invoke-direct {p4, p2, v0, v1}, Lcom/windmill/sdk/reward/WMRewardAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/windmill/sdk/reward/WMRewardAd;

    .line 47
    .line 48
    invoke-direct {v0, p1, p4}, Lcom/windmill/sdk/reward/WMRewardAd;-><init>(Landroid/app/Activity;Lcom/windmill/sdk/reward/WMRewardAdRequest;)V

    .line 49
    .line 50
    .line 51
    new-instance p4, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1;

    .line 52
    .line 53
    invoke-direct {p4, p0, p3, p2, p1}, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$rewardAd$1$1;-><init>(Lcom/join/kotlin/viewmodel/RewardAdViewModel;ZLjava/lang/String;Landroid/app/Activity;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p4}, Lcom/windmill/sdk/reward/WMRewardAd;->setRewardedAdListener(Lcom/windmill/sdk/reward/WMRewardAdListener;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/windmill/sdk/reward/WMRewardAd;->loadAd()Z

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->rewardAd:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    new-instance p4, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$1;

    .line 66
    .line 67
    invoke-direct {p4, p3, p1, p0}, Lcom/join/kotlin/viewmodel/RewardAdViewModel$load$1;-><init>(ZLandroid/app/Activity;Lcom/join/kotlin/viewmodel/RewardAdViewModel;)V

    .line 68
    .line 69
    .line 70
    iput-object p4, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->rewardVideoCallback:Lcom/join/mgps/ad/n;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/join/mgps/ad/a;->g(Landroid/content/Context;)Lcom/join/mgps/ad/a;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget p3, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->channel:I

    .line 77
    .line 78
    iget-object p4, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->appId:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->rewardVideoCallback:Lcom/join/mgps/ad/n;

    .line 81
    .line 82
    invoke-virtual {p1, p3, p4, p2, v0}, Lcom/join/mgps/ad/a;->h(ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/ad/n;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method

.method public final setAdId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->adId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->appId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setChannel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->channel:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRewardAd(Lcom/windmill/sdk/reward/WMRewardAd;)V
    .locals 0
    .param p1    # Lcom/windmill/sdk/reward/WMRewardAd;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->rewardAd:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 2
    .line 3
    return-void
.end method

.method public final setRewardVideoCallback(Lcom/join/mgps/ad/n;)V
    .locals 0
    .param p1    # Lcom/join/mgps/ad/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->rewardVideoCallback:Lcom/join/mgps/ad/n;

    .line 2
    .line 3
    return-void
.end method

.method public final show(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->channel:I

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/kotlin/viewmodel/RewardAdViewModel;->rewardAd:Lcom/windmill/sdk/reward/WMRewardAd;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, p1, v1}, Lcom/windmill/sdk/reward/WMRewardAd;->show(Landroid/app/Activity;Ljava/util/HashMap;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/ad/a;->g(Landroid/content/Context;)Lcom/join/mgps/ad/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lcom/join/mgps/ad/a;->i(Landroid/app/Activity;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method
