.class public final Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/domain/common/LoadBindClickProxy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0008\u0010\u0014\u001a\u00020\u0011H\u0016J\u0008\u0010\u0015\u001a\u00020\u0011H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000b\u001a\u00020\u000c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;",
        "Lcom/BaseAppCompatActivity;",
        "Lcom/join/kotlin/domain/common/LoadBindClickProxy;",
        "<init>",
        "()V",
        "dataBinding",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivityVasingleGameIndexBinding;",
        "getDataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/ActivityVasingleGameIndexBinding;",
        "dataBinding$delegate",
        "Lkotlin/Lazy;",
        "viewModle",
        "Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;",
        "getViewModle",
        "()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;",
        "viewModle$delegate",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onClickReload",
        "onClickSetNetWork",
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
.field private final dataBinding$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModle$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/z1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/z1;-><init>(Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->dataBinding$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/a2;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/a2;-><init>(Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->viewModle$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    return-void
.end method

.method private static final dataBinding_delegate$lambda$0(Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;)Lcom/join/android/app/mgsim/wufun/databinding/o5;
    .locals 1

    .line 1
    const v0, 0x7f0d00b8

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/o5;

    .line 9
    .line 10
    return-object p0
.end method

.method public static synthetic j(Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;)Lcom/join/android/app/mgsim/wufun/databinding/o5;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->dataBinding_delegate$lambda$0(Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;)Lcom/join/android/app/mgsim/wufun/databinding/o5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;)Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->viewModle_delegate$lambda$1(Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;)Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->onCreate$lambda$3(Ljava/lang/Integer;)V

    return-void
.end method

.method private static final onCreate$lambda$3(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    .line 11
    :goto_0
    if-nez p0, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x2

    .line 19
    if-eq v0, v1, :cond_3

    .line 20
    .line 21
    :goto_1
    if-nez p0, :cond_2

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    :cond_3
    :goto_2
    return-void
.end method

.method private static final viewModle_delegate$lambda$1(Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;)Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    new-instance v1, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    .line 4
    .line 5
    invoke-direct {v1}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 9
    .line 10
    .line 11
    const-class p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public final getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/o5;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->dataBinding$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/o5;

    .line 13
    .line 14
    return-object v0
.end method

.method public final getViewModle()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->viewModle$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    .line 8
    .line 9
    return-object v0
.end method

.method public onClickReload()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->loadDatas(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onClickSetNetWork()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity$onCreate$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity$onCreate$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->setListener(Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/o5;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/o5;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/16 v0, 0x32

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v0, v1}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/o5;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/16 v0, 0x1e

    .line 41
    .line 42
    invoke-virtual {p1, v0, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v0, "gameId"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->initDatas(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->loadDatas(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;->getShowStatus()Landroidx/lifecycle/MutableLiveData;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/b2;

    .line 80
    .line 81
    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/b2;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
