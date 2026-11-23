.class public final Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameCategoryViewModel;
.super Lcom/join/kotlin/base/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000b\u001a\u00020\u000cR\'\u0010\u0004\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u0018\u00010\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameCategoryViewModel;",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "<init>",
        "()V",
        "tabData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/join/kotlin/base/state/ResultState;",
        "",
        "Lcom/join/kotlin/ui/legendgame/data/LegendGameTabData;",
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
            "Lcom/join/kotlin/ui/legendgame/data/LegendGameTabData;",
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
    iput-object v0, p0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameCategoryViewModel;->tabData:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    return-void
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
            "Lcom/join/kotlin/ui/legendgame/data/LegendGameTabData;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameCategoryViewModel;->tabData:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final loadTabs()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameCategoryViewModel;->tabData:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    new-instance v1, Lcom/join/kotlin/base/state/ResultState$Success;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Lcom/join/kotlin/ui/legendgame/data/LegendGameTabData;

    .line 7
    .line 8
    new-instance v3, Lcom/join/kotlin/ui/legendgame/data/LegendGameTabData;

    .line 9
    .line 10
    const-string v4, "\u6700\u65b0\u5f00\u670d"

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-direct {v3, v5, v4}, Lcom/join/kotlin/ui/legendgame/data/LegendGameTabData;-><init>(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    aput-object v3, v2, v5

    .line 17
    .line 18
    new-instance v3, Lcom/join/kotlin/ui/legendgame/data/LegendGameTabData;

    .line 19
    .line 20
    const-string v4, "\u54c1\u724c\u5927\u670d"

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-direct {v3, v5, v4}, Lcom/join/kotlin/ui/legendgame/data/LegendGameTabData;-><init>(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    aput-object v3, v2, v5

    .line 27
    .line 28
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {v1, v2}, Lcom/join/kotlin/base/state/ResultState$Success;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
