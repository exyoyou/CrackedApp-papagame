.class public abstract Lcom/join/kotlin/base/activity/BaseVmActivity;
.super Lcom/join/kotlin/base/activity/BaseDownloadActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VM:",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        ">",
        "Lcom/join/kotlin/base/activity/BaseDownloadActivity;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseVmActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseVmActivity.kt\ncom/join/kotlin/base/activity/BaseVmActivity\n+ 2 CommonExt.kt\ncom/join/kotlin/base/utils/CommonExtKt\n*L\n1#1,60:1\n29#2,6:61\n*S KotlinDebug\n*F\n+ 1 BaseVmActivity.kt\ncom/join/kotlin/base/activity/BaseVmActivity\n*L\n28#1:61,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u000c\u001a\u00020\rH&J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H&J\u0010\u0010\u0012\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014J\u0012\u0010\u0015\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\u0012\u0010\u0016\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002J\r\u0010\u0017\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0018\u001a\u00020\u000fH&J\n\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016R\u001c\u0010\u0006\u001a\u00028\u0000X\u0086.\u00a2\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/join/kotlin/base/activity/BaseVmActivity;",
        "VM",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "Lcom/join/kotlin/base/activity/BaseDownloadActivity;",
        "<init>",
        "()V",
        "mViewModel",
        "getMViewModel",
        "()Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "setMViewModel",
        "(Lcom/join/kotlin/base/viewmodel/BaseViewModel;)V",
        "Lcom/join/kotlin/base/viewmodel/BaseViewModel;",
        "layoutId",
        "",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "showLoading",
        "message",
        "",
        "onCreate",
        "init",
        "createViewModel",
        "createObserver",
        "initDataBind",
        "Landroid/view/View;",
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
        "SMAP\nBaseVmActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseVmActivity.kt\ncom/join/kotlin/base/activity/BaseVmActivity\n+ 2 CommonExt.kt\ncom/join/kotlin/base/utils/CommonExtKt\n*L\n1#1,60:1\n29#2,6:61\n*S KotlinDebug\n*F\n+ 1 BaseVmActivity.kt\ncom/join/kotlin/base/activity/BaseVmActivity\n*L\n28#1:61,6\n*E\n"
    }
.end annotation


# instance fields
.field public mViewModel:Lcom/join/kotlin/base/viewmodel/BaseViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVM;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/activity/BaseDownloadActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final createViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVM;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/join/kotlin/base/ext/GetViewModelExtKt;->getVmClazz(Ljava/lang/Object;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 15
    .line 16
    return-object v0
.end method

.method private final init(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->createViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->setMViewModel(Lcom/join/kotlin/base/viewmodel/BaseViewModel;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/join/kotlin/base/activity/BaseVmActivity;->initView(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->createObserver()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic showLoading$default(Lcom/join/kotlin/base/activity/BaseVmActivity;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const-string p1, "\u8bf7\u6c42\u7f51\u7edc\u4e2d..."

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/kotlin/base/activity/BaseVmActivity;->showLoading(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: showLoading"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method


# virtual methods
.method public abstract createObserver()V
.end method

.method public final getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/activity/BaseVmActivity;->mViewModel:Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "mViewModel"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public initDataBind()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract initView(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract layoutId()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/join/kotlin/base/activity/BaseDownloadActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->initDataBind()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->layoutId()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-direct {p0, p1}, Lcom/join/kotlin/base/activity/BaseVmActivity;->init(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final setMViewModel(Lcom/join/kotlin/base/viewmodel/BaseViewModel;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/base/viewmodel/BaseViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVM;)V"
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
    iput-object p1, p0, Lcom/join/kotlin/base/activity/BaseVmActivity;->mViewModel:Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 7
    .line 8
    return-void
.end method

.method public final showLoading(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
