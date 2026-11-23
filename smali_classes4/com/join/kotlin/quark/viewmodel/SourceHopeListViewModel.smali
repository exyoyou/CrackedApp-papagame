.class public final Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;
.super Lcom/join/kotlin/base/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0013JQ\u0010.\u001a\u00020*2\u0008\u0010/\u001a\u0004\u0018\u00010\u00192\u0006\u0010-\u001a\u00020\u00132\u001c\u00100\u001a\u0018\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010,\u0018\u000102\u0012\u0004\u0012\u00020*012\u0014\u0008\u0002\u00103\u001a\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020*01\u00a2\u0006\u0002\u00105R \u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR&\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\r0\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001e\u0010\u001f\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\u0008 \u0010\u001b\"\u0004\u0008!\u0010\u001dR\u001e\u0010\"\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\u0008#\u0010\u001b\"\u0004\u0008$\u0010\u001dR\u0011\u0010%\u001a\u00020&\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(\u00a8\u00066"
    }
    d2 = {
        "Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "<init>",
        "()V",
        "showData",
        "",
        "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;",
        "getShowData",
        "()Ljava/util/List;",
        "setShowData",
        "(Ljava/util/List;)V",
        "listData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;",
        "getListData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setListData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "keyword",
        "",
        "getKeyword",
        "()Ljava/lang/String;",
        "setKeyword",
        "(Ljava/lang/String;)V",
        "sortType",
        "",
        "getSortType",
        "()Ljava/lang/Integer;",
        "setSortType",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "status",
        "getStatus",
        "setStatus",
        "type",
        "getType",
        "setType",
        "page",
        "Lcom/join/kotlin/quark/model/bean/Page;",
        "getPage",
        "()Lcom/join/kotlin/quark/model/bean/Page;",
        "getWishPoolList",
        "",
        "refresh",
        "",
        "uid",
        "wishPoolWant",
        "wishPoolId",
        "success",
        "Lkotlin/Function1;",
        "Lcom/join/mgps/dto/ResponseModel;",
        "error",
        "",
        "(Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
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
.field private keyword:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private listData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState<",
            "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final page:Lcom/join/kotlin/quark/model/bean/Page;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sortType:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private status:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->showData:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    new-instance v0, Lcom/join/kotlin/quark/model/bean/Page;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/join/kotlin/quark/model/bean/Page;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->page:Lcom/join/kotlin/quark/model/bean/Page;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic a(ZLcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->getWishPoolList$lambda$1(ZLcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;ZLjava/util/ArrayList;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->getWishPoolList$lambda$0(Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;ZLjava/util/ArrayList;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->wishPoolWant$lambda$2(Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final getWishPoolList$lambda$0(Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;ZLjava/util/ArrayList;)Lkotlin/Unit;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->page:Lcom/join/kotlin/quark/model/bean/Page;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/Page;->getPage()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    add-int/2addr v1, v2

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/kotlin/quark/model/bean/Page;->setPage(I)V

    .line 10
    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    move-object v0, p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    new-instance v0, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v3, 0x0

    .line 48
    if-lez v1, :cond_2

    .line 49
    .line 50
    const/4 v8, 0x1

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/4 v8, 0x0

    .line 53
    :goto_2
    if-eqz p1, :cond_3

    .line 54
    .line 55
    if-eqz v7, :cond_3

    .line 56
    .line 57
    const/4 v9, 0x1

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    const/4 v9, 0x0

    .line 60
    :goto_3
    const/4 v11, 0x2

    .line 61
    const/4 v12, 0x0

    .line 62
    move-object v3, v0

    .line 63
    move v6, p1

    .line 64
    move-object v10, p2

    .line 65
    invoke-direct/range {v3 .. v12}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 74
    .line 75
    return-object p0
.end method

.method private static final getWishPoolList$lambda$1(ZLcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 11

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p2}, Lcom/join/kotlin/base/net/AppException;->getErrorMsg()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    new-instance v8, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    const/16 v9, 0x38

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    move-object v1, v0

    .line 25
    move v4, p0

    .line 26
    invoke-direct/range {v1 .. v10}, Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;-><init>(ZLjava/lang/String;ZZZZLjava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p1, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

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

.method public static synthetic wishPoolWant$default(Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    new-instance p4, Lcom/join/kotlin/quark/viewmodel/h;

    .line 6
    .line 7
    invoke-direct {p4}, Lcom/join/kotlin/quark/viewmodel/h;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->wishPoolWant(Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static final wishPoolWant$lambda$2(Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method


# virtual methods
.method public final getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->keyword:Ljava/lang/String;

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
            "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPage()Lcom/join/kotlin/quark/model/bean/Page;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->page:Lcom/join/kotlin/quark/model/bean/Page;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->showData:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSortType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->sortType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatus()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->status:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWishPoolList(ZLjava/lang/String;)V
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "uid"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v2, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel$getWishPoolList$1;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {v2, p1, p0, p2, v0}, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel$getWishPoolList$1;-><init>(ZLcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lcom/join/kotlin/quark/viewmodel/f;

    .line 13
    .line 14
    invoke-direct {v3, p0, p1}, Lcom/join/kotlin/quark/viewmodel/f;-><init>(Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;Z)V

    .line 15
    .line 16
    .line 17
    new-instance v4, Lcom/join/kotlin/quark/viewmodel/g;

    .line 18
    .line 19
    invoke-direct {v4, p1, p0}, Lcom/join/kotlin/quark/viewmodel/g;-><init>(ZLcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/16 v7, 0x18

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    move-object v1, p0

    .line 28
    invoke-static/range {v1 .. v8}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->request$default(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->keyword:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setListData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState<",
            "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setShowData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->showData:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setSortType(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->sortType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setStatus(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->status:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setType(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel;->type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final wishPoolWant(Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "uid"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "success"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "error"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel$wishPoolWant$2;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p2, p1, v1}, Lcom/join/kotlin/quark/viewmodel/SourceHopeListViewModel$wishPoolWant$2;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0, p3, p4}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->launch(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
