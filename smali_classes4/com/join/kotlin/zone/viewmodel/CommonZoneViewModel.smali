.class public final Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;
.super Lcom/join/kotlin/base/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0006R \u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR \u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R \u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0008\"\u0004\u0008\u0015\u0010\nR*\u0010\u0016\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0018\u00010\u00170\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0008\"\u0004\u0008\u001a\u0010\n\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "<init>",
        "()V",
        "title",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getTitle",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setTitle",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "showData",
        "",
        "Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;",
        "getShowData",
        "()Ljava/util/List;",
        "setShowData",
        "(Ljava/util/List;)V",
        "loadBindData",
        "Lcom/join/kotlin/domain/common/LoadBindindData;",
        "getLoadBindData",
        "setLoadBindData",
        "zoneData",
        "Lcom/join/kotlin/base/state/ResultState;",
        "Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;",
        "getZoneData",
        "setZoneData",
        "getGameZone",
        "",
        "zoneId",
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
.field private loadBindData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/domain/common/LoadBindindData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;",
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

.field private zoneData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/state/ResultState<",
            "Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;",
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
    const-string v1, "\u4e13\u533a"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->showData:Ljava/util/List;

    .line 19
    .line 20
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 21
    .line 22
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->loadBindData:Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->zoneData:Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->loadBindData:Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    new-instance v1, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 37
    .line 38
    const/4 v2, 0x2

    .line 39
    invoke-direct {v1, v2}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final getGameZone(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "zoneId"

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
    iget-object p1, p0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->loadBindData:Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    new-instance v0, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    invoke-direct {v0, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v3, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel$getGameZone$1;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-direct {v3, p0, p1, v0}, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel$getGameZone$1;-><init>(Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    iget-object v4, p0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->zoneData:Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/16 v7, 0xc

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    move-object v2, p0

    .line 40
    invoke-static/range {v2 .. v8}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->request$default(Lcom/join/kotlin/base/viewmodel/BaseViewModel;Lkotlin/jvm/functions/Function1;Landroidx/lifecycle/MutableLiveData;ZLjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final getLoadBindData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/domain/common/LoadBindindData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->loadBindData:Landroidx/lifecycle/MutableLiveData;

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
            "Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->showData:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getZoneData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/state/ResultState<",
            "Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->zoneData:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setLoadBindData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/domain/common/LoadBindindData;",
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
    iput-object p1, p0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->loadBindData:Landroidx/lifecycle/MutableLiveData;

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
            "Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;",
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
    iput-object p1, p0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->showData:Ljava/util/List;

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
    iput-object p1, p0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->title:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setZoneData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/base/state/ResultState<",
            "Lcom/join/kotlin/zone/model/bean/GameZoneDataBean;",
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
    iput-object p1, p0, Lcom/join/kotlin/zone/viewmodel/CommonZoneViewModel;->zoneData:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method
