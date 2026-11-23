.class public final Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;
.super Lcom/join/kotlin/base/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u001a\u001a\u00020\u001b2\u0016\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u001dj\u0008\u0012\u0004\u0012\u00020\u0018`\u001eJ\u0006\u0010\u001f\u001a\u00020\u001bJ\u000e\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\"J\u0008\u0010#\u001a\u00020$H\u0002R!\u0010\u0004\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001d\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00170\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\t\u00a8\u0006%"
    }
    d2 = {
        "Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "<init>",
        "()V",
        "tabMetaState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/join/kotlin/base/state/ResultState;",
        "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;",
        "getTabMetaState",
        "()Landroidx/lifecycle/MutableLiveData;",
        "nostalgiaTabType",
        "",
        "getNostalgiaTabType",
        "()Ljava/lang/String;",
        "setNostalgiaTabType",
        "(Ljava/lang/String;)V",
        "page",
        "Lcom/join/kotlin/quark/model/bean/Page;",
        "getPage",
        "()Lcom/join/kotlin/quark/model/bean/Page;",
        "setPage",
        "(Lcom/join/kotlin/quark/model/bean/Page;)V",
        "listData",
        "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;",
        "Lcom/join/mgps/dto/CommonGameInfoBean;",
        "getListData",
        "applyPreloadedFirstPage",
        "",
        "games",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "fetchTabMeta",
        "nostalgiaGameList",
        "refresh",
        "",
        "uidInt",
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


# instance fields
.field private final listData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nostalgiaTabType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private page:Lcom/join/kotlin/quark/model/bean/Page;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tabMetaState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/state/ResultState<",
            "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->tabMetaState:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->nostalgiaTabType:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Lcom/join/kotlin/quark/model/bean/Page;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const/16 v2, 0x14

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Lcom/join/kotlin/quark/model/bean/Page;-><init>(II)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->page:Lcom/join/kotlin/quark/model/bean/Page;

    .line 24
    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic a(Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;ZLkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->nostalgiaGameList$lambda$0(Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;ZLkotlin/Pair;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$uidInt(Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->uidInt()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b(Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;ZLjava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->nostalgiaGameList$lambda$1(Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;ZLjava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final nostalgiaGameList$lambda$0(Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;ZLkotlin/Pair;)Lkotlin/Unit;
    .locals 13

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;

    .line 11
    .line 12
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Ljava/lang/Number;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iget-object v1, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;->getGame_list()Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-ne v4, v2, :cond_1

    .line 39
    .line 40
    const/4 v9, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v9, 0x0

    .line 43
    :goto_0
    if-eqz p1, :cond_3

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;->getGame_list()Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-ne v4, v2, :cond_2

    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v4, 0x0

    .line 62
    :goto_1
    if-eqz v4, :cond_3

    .line 63
    .line 64
    const/4 v11, 0x1

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const/4 v11, 0x0

    .line 67
    :goto_2
    if-eqz v0, :cond_4

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;->getGame_list()Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_4

    .line 80
    .line 81
    const/4 v10, 0x1

    .line 82
    goto :goto_3

    .line 83
    :cond_4
    const/4 v10, 0x0

    .line 84
    :goto_3
    if-eqz v0, :cond_5

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;->getGame_list()Ljava/util/ArrayList;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameGroup;

    .line 97
    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameGroup;->getGame_list()Ljava/util/ArrayList;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-nez v0, :cond_6

    .line 105
    .line 106
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    :cond_6
    move-object v12, v0

    .line 112
    new-instance v0, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    .line 113
    .line 114
    const/4 v6, 0x1

    .line 115
    const-string v7, ""

    .line 116
    .line 117
    move-object v5, v0

    .line 118
    move v8, p1

    .line 119
    invoke-direct/range {v5 .. v12}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->page:Lcom/join/kotlin/quark/model/bean/Page;

    .line 126
    .line 127
    add-int/2addr p2, v2

    .line 128
    invoke-virtual {p0, p2}, Lcom/join/kotlin/quark/model/bean/Page;->setPage(I)V

    .line 129
    .line 130
    .line 131
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 132
    .line 133
    return-object p0
.end method

.method private static final nostalgiaGameList$lambda$1(Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;ZLjava/lang/Throwable;)Lkotlin/Unit;
    .locals 11

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    new-instance v10, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    const-string p2, ""

    .line 18
    .line 19
    :cond_0
    move-object v2, p2

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    new-instance v7, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    const/16 v8, 0x28

    .line 29
    .line 30
    const/4 v9, 0x0

    .line 31
    move-object v0, v10

    .line 32
    move v3, p1

    .line 33
    invoke-direct/range {v0 .. v9}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v10}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method private final uidInt()I
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method


# virtual methods
.method public final applyPreloadedFirstPage(Ljava/util/ArrayList;)V
    .locals 10
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "games"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/util/Collection;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    new-instance v9, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const-string v3, ""

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v6, 0x1

    .line 34
    move-object v1, v9

    .line 35
    move-object v8, v0

    .line 36
    invoke-direct/range {v1 .. v8}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v9}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->page:Lcom/join/kotlin/quark/model/bean/Page;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v1, 0x1

    .line 49
    xor-int/2addr v0, v1

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    const/4 v1, 0x2

    .line 53
    :cond_0
    invoke-virtual {p1, v1}, Lcom/join/kotlin/quark/model/bean/Page;->setPage(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final fetchTabMeta()V
    .locals 7

    .line 1
    new-instance v1, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$fetchTabMeta$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v1, p0, v0}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$fetchTabMeta$1;-><init>(Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->tabMetaState:Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/16 v5, 0xc

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v0, p0

    .line 15
    invoke-static/range {v0 .. v6}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->request$default(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Landroidx/lifecycle/MutableLiveData;ZLjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final getListData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNostalgiaTabType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->nostalgiaTabType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPage()Lcom/join/kotlin/quark/model/bean/Page;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->page:Lcom/join/kotlin/quark/model/bean/Page;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTabMetaState()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/state/ResultState<",
            "Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->tabMetaState:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final nostalgiaGameList(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p0, v1}, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel$nostalgiaGameList$1;-><init>(ZLcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/join/kotlin/ui/nostalgia/viewmodel/a;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/join/kotlin/ui/nostalgia/viewmodel/a;-><init>(Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;Z)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/join/kotlin/ui/nostalgia/viewmodel/b;

    .line 13
    .line 14
    invoke-direct {v2, p0, p1}, Lcom/join/kotlin/ui/nostalgia/viewmodel/b;-><init>(Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;Z)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0, v1, v2}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->launch(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setNostalgiaTabType(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->nostalgiaTabType:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setPage(Lcom/join/kotlin/quark/model/bean/Page;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/quark/model/bean/Page;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/nostalgia/viewmodel/NostalgiaGameViewModel;->page:Lcom/join/kotlin/quark/model/bean/Page;

    .line 7
    .line 8
    return-void
.end method
