.class public final Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;
.super Lcom/join/kotlin/base/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#R(\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R \u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR&\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u001d0\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\t\"\u0004\u0008\u001f\u0010\u000b\u00a8\u0006$"
    }
    d2 = {
        "Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "<init>",
        "()V",
        "title",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "getTitle",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setTitle",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "page",
        "Lcom/join/kotlin/quark/model/bean/Page;",
        "getPage",
        "()Lcom/join/kotlin/quark/model/bean/Page;",
        "keyword",
        "getKeyword",
        "()Ljava/lang/String;",
        "setKeyword",
        "(Ljava/lang/String;)V",
        "showData",
        "",
        "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;",
        "getShowData",
        "()Ljava/util/List;",
        "setShowData",
        "(Ljava/util/List;)V",
        "listData",
        "Lcom/join/kotlin/base/net/stateCallback/ListDataUiState;",
        "getListData",
        "setListData",
        "getResourceSearch",
        "",
        "refresh",
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

.field private title:Landroidx/lifecycle/MutableLiveData;
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
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/viewmodel/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    const-string v1, "\u8d44\u6e90\u5171\u4eab"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    new-instance v0, Lcom/join/kotlin/quark/model/bean/Page;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/join/kotlin/quark/model/bean/Page;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->page:Lcom/join/kotlin/quark/model/bean/Page;

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->showData:Ljava/util/List;

    .line 30
    .line 31
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic a(ZLcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->getResourceSearch$lambda$1(ZLcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;ZLjava/util/ArrayList;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->getResourceSearch$lambda$0(Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;ZLjava/util/ArrayList;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final getResourceSearch$lambda$0(Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;ZLjava/util/ArrayList;)Lkotlin/Unit;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->page:Lcom/join/kotlin/quark/model/bean/Page;

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
    iget-object p0, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

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

.method private static final getResourceSearch$lambda$1(ZLcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
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
    iget-object p0, p1, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

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
.method public final getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->keyword:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPage()Lcom/join/kotlin/quark/model/bean/Page;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->page:Lcom/join/kotlin/quark/model/bean/Page;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResourceSearch(Z)V
    .locals 8

    .line 1
    new-instance v1, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v1, p1, p0, v0}, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel$getResourceSearch$1;-><init>(ZLcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/join/kotlin/quark/viewmodel/d;

    .line 8
    .line 9
    invoke-direct {v2, p0, p1}, Lcom/join/kotlin/quark/viewmodel/d;-><init>(Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;Z)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lcom/join/kotlin/quark/viewmodel/e;

    .line 13
    .line 14
    invoke-direct {v3, p1, p0}, Lcom/join/kotlin/quark/viewmodel/e;-><init>(ZLcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;)V

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
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->showData:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->keyword:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->listData:Landroidx/lifecycle/MutableLiveData;

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
    iput-object p1, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->showData:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setTitle(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
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
    iput-object p1, p0, Lcom/join/kotlin/quark/viewmodel/QuarkSearchViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method
