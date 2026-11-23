.class public Lcom/join/kotlin/base/BaseApp;
.super Lcom/join/mgps/va/overmind/VApp;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0006\u0010\u0010\u001a\u00020\u0011J\u0008\u0010\u0012\u001a\u00020\u0008H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\u00068VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/join/kotlin/base/BaseApp;",
        "Lcom/join/mgps/va/overmind/VApp;",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "<init>",
        "()V",
        "mAppViewModelStore",
        "Landroidx/lifecycle/ViewModelStore;",
        "mFactory",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "viewModelStore",
        "getViewModelStore",
        "()Landroidx/lifecycle/ViewModelStore;",
        "viewModelStore$delegate",
        "Lkotlin/Lazy;",
        "onCreate",
        "",
        "getAppViewModelProvider",
        "Landroidx/lifecycle/ViewModelProvider;",
        "getAppFactory",
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
.field private mAppViewModelStore:Landroidx/lifecycle/ViewModelStore;

.field private mFactory:Landroidx/lifecycle/ViewModelProvider$Factory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final viewModelStore$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/va/overmind/VApp;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lt5/a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lt5/a;-><init>(Lcom/join/kotlin/base/BaseApp;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/base/BaseApp;->viewModelStore$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic c(Lcom/join/kotlin/base/BaseApp;)Landroidx/lifecycle/ViewModelStore;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/base/BaseApp;->viewModelStore_delegate$lambda$0(Lcom/join/kotlin/base/BaseApp;)Landroidx/lifecycle/ViewModelStore;

    move-result-object p0

    return-object p0
.end method

.method private final getAppFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/BaseApp;->mFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->Companion:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$Companion;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$Companion;->getInstance(Landroid/app/Application;)Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/kotlin/base/BaseApp;->mFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/base/BaseApp;->mFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 14
    .line 15
    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.ViewModelProvider.Factory"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method private static final viewModelStore_delegate$lambda$0(Lcom/join/kotlin/base/BaseApp;)Landroidx/lifecycle/ViewModelStore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/base/BaseApp;->mAppViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "mAppViewModelStore"

    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final getAppViewModelProvider()Landroidx/lifecycle/ViewModelProvider;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/kotlin/base/BaseApp;->getAppFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/BaseApp;->viewModelStore$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/ViewModelStore;

    .line 8
    .line 9
    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/va/overmind/VApp;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/ViewModelStore;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/kotlin/base/BaseApp;->mAppViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 10
    .line 11
    invoke-static {}, Lcom/kingja/loadsir/core/c;->b()Lcom/kingja/loadsir/core/c$b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/join/kotlin/base/widget/loadCallBack/LoadingCallback;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/join/kotlin/base/widget/loadCallBack/LoadingCallback;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/kingja/loadsir/core/c$b;->a(Lcom/kingja/loadsir/callback/Callback;)Lcom/kingja/loadsir/core/c$b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcom/join/kotlin/base/widget/loadCallBack/ErrorCallback;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/join/kotlin/base/widget/loadCallBack/ErrorCallback;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/kingja/loadsir/core/c$b;->a(Lcom/kingja/loadsir/callback/Callback;)Lcom/kingja/loadsir/core/c$b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/join/kotlin/base/widget/loadCallBack/EmptyCallback;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/join/kotlin/base/widget/loadCallBack/EmptyCallback;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/kingja/loadsir/core/c$b;->a(Lcom/kingja/loadsir/callback/Callback;)Lcom/kingja/loadsir/core/c$b;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Lcom/join/kotlin/base/widget/loadCallBack/EmptyAbSdkCallback;

    .line 43
    .line 44
    invoke-direct {v1}, Lcom/join/kotlin/base/widget/loadCallBack/EmptyAbSdkCallback;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/kingja/loadsir/core/c$b;->a(Lcom/kingja/loadsir/callback/Callback;)Lcom/kingja/loadsir/core/c$b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lcom/join/kotlin/quark/loadCallBack/EmptyQuarkSourceCallback;

    .line 52
    .line 53
    invoke-direct {v1}, Lcom/join/kotlin/quark/loadCallBack/EmptyQuarkSourceCallback;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/kingja/loadsir/core/c$b;->a(Lcom/kingja/loadsir/callback/Callback;)Lcom/kingja/loadsir/core/c$b;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-class v1, Lcom/kingja/loadsir/callback/SuccessCallback;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/kingja/loadsir/core/c$b;->h(Ljava/lang/Class;)Lcom/kingja/loadsir/core/c$b;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/kingja/loadsir/core/c$b;->d()V

    .line 67
    .line 68
    .line 69
    return-void
.end method
