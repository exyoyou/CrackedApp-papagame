.class public final Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;
.super Lcom/join/kotlin/base/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameDetailServerBookDialogViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailServerBookDialogViewModel.kt\ncom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n1869#2,2:56\n*S KotlinDebug\n*F\n+ 1 GameDetailServerBookDialogViewModel.kt\ncom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel\n*L\n30#1:56,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0015\u001a\u00020\u0016R\u001f\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001d\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\tR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "<init>",
        "()V",
        "title",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "getTitle",
        "()Landroidx/lifecycle/MutableLiveData;",
        "listData",
        "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;",
        "Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;",
        "getListData",
        "gameId",
        "getGameId",
        "()Ljava/lang/String;",
        "setGameId",
        "(Ljava/lang/String;)V",
        "subscribeResultBean",
        "getSubscribeResultBean",
        "getServerList",
        "",
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
        "SMAP\nGameDetailServerBookDialogViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameDetailServerBookDialogViewModel.kt\ncom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n1869#2,2:56\n*S KotlinDebug\n*F\n+ 1 GameDetailServerBookDialogViewModel.kt\ncom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel\n*L\n30#1:56,2\n*E\n"
    }
.end annotation


# instance fields
.field private gameId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final listData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState<",
            "Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final subscribeResultBean:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final title:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    const-string v1, "\u6807\u9898"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 21
    .line 22
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;->subscribeResultBean:Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic a(Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;->getServerList$lambda$1(Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;->getServerList$lambda$2(Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final getServerList$lambda$1(Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;Ljava/util/List;)Lkotlin/Unit;
    .locals 10

    .line 1
    new-instance v7, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Iterable;

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    check-cast p1, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;

    .line 33
    .line 34
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    const/4 v8, 0x2

    .line 53
    const/4 v9, 0x0

    .line 54
    move-object v0, p1

    .line 55
    invoke-direct/range {v0 .. v9}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p0
.end method

.method private static final getServerList$lambda$2(Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 11

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/AppException;->getErrorMsg()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    new-instance v8, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    const/16 v9, 0x38

    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    move-object v1, v0

    .line 26
    invoke-direct/range {v1 .. v10}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method


# virtual methods
.method public final getGameId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getListData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState<",
            "Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getServerList()V
    .locals 8

    .line 1
    new-instance v1, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel$getServerList$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v1, p0, v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel$getServerList$1;-><init>(Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/join/kotlin/discount/viewmodel/k;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lcom/join/kotlin/discount/viewmodel/k;-><init>(Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lcom/join/kotlin/discount/viewmodel/l;

    .line 13
    .line 14
    invoke-direct {v3, p0}, Lcom/join/kotlin/discount/viewmodel/l;-><init>(Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/16 v6, 0x18

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    move-object v0, p0

    .line 23
    invoke-static/range {v0 .. v7}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->request$default(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final getSubscribeResultBean()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;->subscribeResultBean:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTitle()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setGameId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/discount/viewmodel/GameDetailServerBookDialogViewModel;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
