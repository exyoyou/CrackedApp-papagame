.class public final Lcom/join/kotlin/network/api/ApiServiceFactorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\"\u001b\u0010\u0000\u001a\u00020\u00018FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0002\u0010\u0003\"\u001b\u0010\u0006\u001a\u00020\u00078FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0005\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "gameApiService",
        "Lcom/join/kotlin/network/api/GameApiService;",
        "getGameApiService",
        "()Lcom/join/kotlin/network/api/GameApiService;",
        "gameApiService$delegate",
        "Lkotlin/Lazy;",
        "searchGameApiService",
        "Lcom/join/kotlin/network/api/SearchGameApiService;",
        "getSearchGameApiService",
        "()Lcom/join/kotlin/network/api/SearchGameApiService;",
        "searchGameApiService$delegate",
        "app_wufunNormalRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final gameApiService$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final searchGameApiService$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 2
    .line 3
    new-instance v1, Lb6/a;

    .line 4
    .line 5
    invoke-direct {v1}, Lb6/a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sput-object v1, Lcom/join/kotlin/network/api/ApiServiceFactorKt;->gameApiService$delegate:Lkotlin/Lazy;

    .line 13
    .line 14
    new-instance v1, Lb6/b;

    .line 15
    .line 16
    invoke-direct {v1}, Lb6/b;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/join/kotlin/network/api/ApiServiceFactorKt;->searchGameApiService$delegate:Lkotlin/Lazy;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic a()Lcom/join/kotlin/network/api/GameApiService;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/network/api/ApiServiceFactorKt;->gameApiService_delegate$lambda$0()Lcom/join/kotlin/network/api/GameApiService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lcom/join/kotlin/network/api/SearchGameApiService;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/network/api/ApiServiceFactorKt;->searchGameApiService_delegate$lambda$1()Lcom/join/kotlin/network/api/SearchGameApiService;

    move-result-object v0

    return-object v0
.end method

.method private static final gameApiService_delegate$lambda$0()Lcom/join/kotlin/network/api/GameApiService;
    .locals 3

    .line 1
    sget-object v0, Lcom/join/kotlin/network/NetworkApi;->Companion:Lcom/join/kotlin/network/NetworkApi$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/network/NetworkApi$Companion;->getINSTANCE()Lcom/join/kotlin/network/NetworkApi;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/join/mgps/rpc/h;->B:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "gameUrl"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-class v2, Lcom/join/kotlin/network/api/GameApiService;

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/join/kotlin/base/net/BaseNetworkApi;->getApi(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/join/kotlin/network/api/GameApiService;

    .line 21
    .line 22
    return-object v0
.end method

.method public static final getGameApiService()Lcom/join/kotlin/network/api/GameApiService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/kotlin/network/api/ApiServiceFactorKt;->gameApiService$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/network/api/GameApiService;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final getSearchGameApiService()Lcom/join/kotlin/network/api/SearchGameApiService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/kotlin/network/api/ApiServiceFactorKt;->searchGameApiService$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/network/api/SearchGameApiService;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final searchGameApiService_delegate$lambda$1()Lcom/join/kotlin/network/api/SearchGameApiService;
    .locals 3

    .line 1
    sget-object v0, Lcom/join/kotlin/network/NetworkApi;->Companion:Lcom/join/kotlin/network/NetworkApi$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/network/NetworkApi$Companion;->getINSTANCE()Lcom/join/kotlin/network/NetworkApi;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/join/mgps/rpc/h;->C:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "searchgameUrl"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-class v2, Lcom/join/kotlin/network/api/SearchGameApiService;

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/join/kotlin/base/net/BaseNetworkApi;->getApi(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/join/kotlin/network/api/SearchGameApiService;

    .line 21
    .line 22
    return-object v0
.end method
