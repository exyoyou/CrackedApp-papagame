.class public final Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;
.super Lcom/join/kotlin/base/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000b\u001a\u00020\u000cR\'\u0010\u0004\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u0018\u00010\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "<init>",
        "()V",
        "tabData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/join/kotlin/base/state/ResultState;",
        "",
        "Lcom/join/kotlin/ui/netgame/data/NetGameTypeData;",
        "getTabData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loadTabs",
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
.field private final tabData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/state/ResultState<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/netgame/data/NetGameTypeData;",
            ">;>;>;"
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
    iput-object v0, p0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;->tabData:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;Lcom/join/kotlin/ui/netgame/data/NetGameZoneResultData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;->loadTabs$lambda$0(Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;Lcom/join/kotlin/ui/netgame/data/NetGameZoneResultData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;->loadTabs$lambda$1(Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final loadTabs$lambda$0(Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;Lcom/join/kotlin/ui/netgame/data/NetGameZoneResultData;)Lkotlin/Unit;
    .locals 8

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/ui/netgame/data/NetGameZoneResultData;->getGame_type()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object p0, p0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;->tabData:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Ljava/util/Collection;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 26
    :goto_2
    if-nez v0, :cond_3

    .line 27
    .line 28
    new-instance v0, Lcom/join/kotlin/base/state/ResultState$Success;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Lcom/join/kotlin/base/state/ResultState$Success;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_3
    new-instance v0, Lcom/join/kotlin/base/state/ResultState$Error;

    .line 35
    .line 36
    new-instance p1, Lcom/join/kotlin/base/net/AppException;

    .line 37
    .line 38
    const/4 v2, -0x1

    .line 39
    const-string v3, "\u52a0\u8f7d\u5931\u8d25"

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    const/16 v6, 0xc

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    move-object v1, p1

    .line 47
    invoke-direct/range {v1 .. v7}, Lcom/join/kotlin/base/net/AppException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p1}, Lcom/join/kotlin/base/state/ResultState$Error;-><init>(Lcom/join/kotlin/base/net/AppException;)V

    .line 51
    .line 52
    .line 53
    :goto_3
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 57
    .line 58
    return-object p0
.end method

.method private static final loadTabs$lambda$1(Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;->tabData:Landroidx/lifecycle/MutableLiveData;

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
.method public final getTabData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/state/ResultState<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/netgame/data/NetGameTypeData;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;->tabData:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final loadTabs()V
    .locals 10

    .line 1
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;->tabData:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    new-instance v1, Lcom/join/kotlin/base/state/ResultState$Error;

    .line 12
    .line 13
    new-instance v9, Lcom/join/kotlin/base/net/AppException;

    .line 14
    .line 15
    const/4 v3, -0x1

    .line 16
    const-string v4, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/16 v7, 0xc

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    move-object v2, v9

    .line 24
    invoke-direct/range {v2 .. v8}, Lcom/join/kotlin/base/net/AppException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v9}, Lcom/join/kotlin/base/state/ResultState$Error;-><init>(Lcom/join/kotlin/base/net/AppException;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;->tabData:Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    sget-object v1, Lcom/join/kotlin/base/state/ResultState;->Companion:Lcom/join/kotlin/base/state/ResultState$Companion;

    .line 37
    .line 38
    const-string v2, ""

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/join/kotlin/base/state/ResultState$Companion;->onRequestLoading(Ljava/lang/String;)Lcom/join/kotlin/base/state/ResultState;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance v3, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel$loadTabs$1;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-direct {v3, v0}, Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel$loadTabs$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 51
    .line 52
    .line 53
    new-instance v4, Lcom/join/kotlin/ui/netgame/viewmodel/c;

    .line 54
    .line 55
    invoke-direct {v4, p0}, Lcom/join/kotlin/ui/netgame/viewmodel/c;-><init>(Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;)V

    .line 56
    .line 57
    .line 58
    new-instance v5, Lcom/join/kotlin/ui/netgame/viewmodel/d;

    .line 59
    .line 60
    invoke-direct {v5, p0}, Lcom/join/kotlin/ui/netgame/viewmodel/d;-><init>(Lcom/join/kotlin/ui/netgame/viewmodel/NetGameCategoryViewModel;)V

    .line 61
    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v7, 0x0

    .line 65
    const/16 v8, 0x18

    .line 66
    .line 67
    const/4 v9, 0x0

    .line 68
    move-object v2, p0

    .line 69
    invoke-static/range {v2 .. v9}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->request$default(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 70
    .line 71
    .line 72
    return-void
.end method
