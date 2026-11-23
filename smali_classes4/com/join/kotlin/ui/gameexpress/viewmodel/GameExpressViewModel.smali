.class public final Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;
.super Lcom/join/kotlin/base/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameExpressViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameExpressViewModel.kt\ncom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,55:1\n1#2:56\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rR!\u0010\u0004\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "<init>",
        "()V",
        "pageData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/join/kotlin/base/state/ResultState;",
        "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressPageData;",
        "getPageData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loadData",
        "",
        "pageBean",
        "Lcom/join/mgps/dto/ExtBean;",
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
        "SMAP\nGameExpressViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameExpressViewModel.kt\ncom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,55:1\n1#2:56\n*E\n"
    }
.end annotation


# instance fields
.field private final pageData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/state/ResultState<",
            "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressPageData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;->pageData:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;->loadData$lambda$2(Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;Lcom/join/mgps/dto/ExtBean;Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;->loadData$lambda$1(Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;Lcom/join/mgps/dto/ExtBean;Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final loadData$lambda$1(Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;Lcom/join/mgps/dto/ExtBean;Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    sget-object v1, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;->INSTANCE:Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;

    .line 5
    .line 6
    invoke-virtual {v1, p2, p1}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper;->parse(Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressResultData;Lcom/join/mgps/dto/ExtBean;)Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper$ParsedResult;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p1, v0

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;->pageData:Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    new-instance p2, Lcom/join/kotlin/base/state/ResultState$Success;

    .line 15
    .line 16
    new-instance v1, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressPageData;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper$ParsedResult;->getHotTopics()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-object v2, v0

    .line 26
    :goto_1
    if-nez v2, :cond_2

    .line 27
    .line 28
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :cond_2
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper$ParsedResult;->getQualityComments()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    move-object v3, v0

    .line 40
    :goto_2
    if-nez v3, :cond_4

    .line 41
    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :cond_4
    if-eqz p1, :cond_5

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMapper$ParsedResult;->getListItems()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_5
    if-nez v0, :cond_6

    .line 53
    .line 54
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_6
    invoke-direct {v1, v2, v3, v0}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressPageData;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p2, v1}, Lcom/join/kotlin/base/state/ResultState$Success;-><init>(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 68
    .line 69
    return-object p0
.end method

.method private static final loadData$lambda$2(Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;->pageData:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    new-instance v0, Lcom/join/kotlin/base/state/ResultState$Error;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/join/kotlin/base/state/ResultState$Error;-><init>(Lcom/join/kotlin/base/net/AppException;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method


# virtual methods
.method public final getPageData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/state/ResultState<",
            "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressPageData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;->pageData:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final loadData(Lcom/join/mgps/dto/ExtBean;)V
    .locals 10
    .param p1    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "pageBean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;->pageData:Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    new-instance v0, Lcom/join/kotlin/base/state/ResultState$Error;

    .line 17
    .line 18
    new-instance v8, Lcom/join/kotlin/base/net/AppException;

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    const-string v3, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const/16 v6, 0xc

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    move-object v1, v8

    .line 29
    invoke-direct/range {v1 .. v7}, Lcom/join/kotlin/base/net/AppException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v8}, Lcom/join/kotlin/base/state/ResultState$Error;-><init>(Lcom/join/kotlin/base/net/AppException;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;->pageData:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    sget-object v1, Lcom/join/kotlin/base/state/ResultState;->Companion:Lcom/join/kotlin/base/state/ResultState$Companion;

    .line 42
    .line 43
    const-string v2, ""

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/join/kotlin/base/state/ResultState$Companion;->onRequestLoading(Ljava/lang/String;)Lcom/join/kotlin/base/state/ResultState;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel$loadData$1;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-direct {v3, v0}, Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel$loadData$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 56
    .line 57
    .line 58
    new-instance v4, Lcom/join/kotlin/ui/gameexpress/viewmodel/a;

    .line 59
    .line 60
    invoke-direct {v4, p0, p1}, Lcom/join/kotlin/ui/gameexpress/viewmodel/a;-><init>(Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;Lcom/join/mgps/dto/ExtBean;)V

    .line 61
    .line 62
    .line 63
    new-instance v5, Lcom/join/kotlin/ui/gameexpress/viewmodel/b;

    .line 64
    .line 65
    invoke-direct {v5, p0}, Lcom/join/kotlin/ui/gameexpress/viewmodel/b;-><init>(Lcom/join/kotlin/ui/gameexpress/viewmodel/GameExpressViewModel;)V

    .line 66
    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    const/4 v7, 0x0

    .line 70
    const/16 v8, 0x18

    .line 71
    .line 72
    const/4 v9, 0x0

    .line 73
    move-object v2, p0

    .line 74
    invoke-static/range {v2 .. v9}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->request$default(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 75
    .line 76
    .line 77
    return-void
.end method
