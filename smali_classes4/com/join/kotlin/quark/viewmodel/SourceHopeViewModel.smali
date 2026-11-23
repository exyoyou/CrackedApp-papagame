.class public final Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;
.super Lcom/join/kotlin/base/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R(\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR!\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u00060\rj\u0008\u0012\u0004\u0012\u00020\u0006`\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00170\rj\u0008\u0012\u0004\u0012\u00020\u0017`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0018\u001a\u0015\u0012\u0011\u0012\u000f \u0007*\u0004\u0018\u00010\u00170\u0017\u00a2\u0006\u0002\u0008\u00190\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\t\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;",
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
        "tabItems",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getTabItems",
        "()Ljava/util/ArrayList;",
        "keyword",
        "getKeyword",
        "()Ljava/lang/String;",
        "setKeyword",
        "(Ljava/lang/String;)V",
        "sortTypeList",
        "Lcom/join/kotlin/quark/model/bean/SortTypeBean;",
        "sortType",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "getSortType",
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

.field private final sortType:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/quark/model/bean/SortTypeBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sortTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/kotlin/quark/model/bean/SortTypeBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tabItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
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
    const-string v1, "\u8d44\u6e90\u8bb8\u613f\u6c60"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    const-string v0, "\u6700\u65b0"

    .line 14
    .line 15
    const-string v1, "\u6211\u7684"

    .line 16
    .line 17
    const-string v2, "\u6700\u70ed"

    .line 18
    .line 19
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->tabItems:Ljava/util/ArrayList;

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    new-array v0, v0, [Lcom/join/kotlin/quark/model/bean/SortTypeBean;

    .line 31
    .line 32
    new-instance v1, Lcom/join/kotlin/quark/model/bean/SortTypeBean;

    .line 33
    .line 34
    const-string v2, "\u5168\u90e8"

    .line 35
    .line 36
    const/4 v3, -0x1

    .line 37
    invoke-direct {v1, v3, v2}, Lcom/join/kotlin/quark/model/bean/SortTypeBean;-><init>(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    aput-object v1, v0, v2

    .line 42
    .line 43
    new-instance v1, Lcom/join/kotlin/quark/model/bean/SortTypeBean;

    .line 44
    .line 45
    const-string v4, "\u5b9e\u73b0\u4e2d"

    .line 46
    .line 47
    invoke-direct {v1, v2, v4}, Lcom/join/kotlin/quark/model/bean/SortTypeBean;-><init>(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    aput-object v1, v0, v4

    .line 52
    .line 53
    new-instance v1, Lcom/join/kotlin/quark/model/bean/SortTypeBean;

    .line 54
    .line 55
    const-string v4, "\u5df2\u5b9e\u73b0"

    .line 56
    .line 57
    invoke-direct {v1, v3, v4}, Lcom/join/kotlin/quark/model/bean/SortTypeBean;-><init>(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 v3, 0x2

    .line 61
    aput-object v1, v0, v3

    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->sortTypeList:Ljava/util/ArrayList;

    .line 68
    .line 69
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {v1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->sortType:Landroidx/lifecycle/MutableLiveData;

    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->keyword:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSortType()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/quark/model/bean/SortTypeBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->sortType:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTabItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->tabItems:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->title:Landroidx/lifecycle/MutableLiveData;

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
    iput-object p1, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->keyword:Ljava/lang/String;

    .line 2
    .line 3
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
    iput-object p1, p0, Lcom/join/kotlin/quark/viewmodel/SourceHopeViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method
