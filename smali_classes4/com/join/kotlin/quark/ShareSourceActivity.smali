.class public final Lcom/join/kotlin/quark/ShareSourceActivity;
.super Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/quark/proxy/ShareSourceClickProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity<",
        "Lcom/join/kotlin/quark/viewmodel/ShareSourceViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/n4;",
        ">;",
        "Lcom/join/kotlin/quark/proxy/ShareSourceClickProxy;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u000eH\u0014J\u0008\u0010\u0012\u001a\u00020\u000eH\u0016J\u0008\u0010\u0013\u001a\u00020\u000eH\u0016J\u0008\u0010\u0014\u001a\u00020\u000eH\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/join/kotlin/quark/ShareSourceActivity;",
        "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;",
        "Lcom/join/kotlin/quark/viewmodel/ShareSourceViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivityShareSourceBinding;",
        "Lcom/join/kotlin/quark/proxy/ShareSourceClickProxy;",
        "<init>",
        "()V",
        "sourceCallback",
        "Lcom/join/kotlin/quark/callback/IDialogShareSourceCallback;",
        "getSourceCallback",
        "()Lcom/join/kotlin/quark/callback/IDialogShareSourceCallback;",
        "setSourceCallback",
        "(Lcom/join/kotlin/quark/callback/IDialogShareSourceCallback;)V",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "createObserver",
        "onBackClick",
        "onShareClick",
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
.field private sourceCallback:Lcom/join/kotlin/quark/callback/IDialogShareSourceCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final createObserver$lambda$7$lambda$3(Lcom/join/kotlin/quark/ShareSourceActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/join/kotlin/quark/viewmodel/ShareSourceViewModel;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/quark/viewmodel/ShareSourceViewModel;->getSubmitEnable()Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    xor-int/2addr p1, v0

    .line 24
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method

.method private static final createObserver$lambda$7$lambda$6(Lcom/join/kotlin/quark/ShareSourceActivity;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->dismissLoading()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p0, "\u5171\u4eab\u8d44\u6e90\u5931\u8d25"

    .line 7
    .line 8
    invoke-static {p0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v2, Lcom/join/kotlin/quark/z;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lcom/join/kotlin/quark/z;-><init>(Lcom/join/kotlin/quark/ShareSourceActivity;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/join/kotlin/quark/a0;

    .line 18
    .line 19
    invoke-direct {v3}, Lcom/join/kotlin/quark/a0;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/16 v5, 0x8

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v0, p0

    .line 27
    move-object v1, p1

    .line 28
    invoke-static/range {v0 .. v6}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->parseState$default(Lcom/join/kotlin/base/activity/BaseVmDialogActivity;Lcom/join/kotlin/base/state/ResultState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method

.method private static final createObserver$lambda$7$lambda$6$lambda$4(Lcom/join/kotlin/quark/ShareSourceActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const-string p1, "\u5171\u4eab\u8d44\u6e90\u6210\u529f"

    .line 10
    .line 11
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/kotlin/quark/ShareSourceActivity;->sourceCallback:Lcom/join/kotlin/quark/callback/IDialogShareSourceCallback;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/join/kotlin/quark/callback/IDialogShareSourceCallback;->onSuccess()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string p0, "\u5171\u4eab\u8d44\u6e90\u5931\u8d25"

    .line 26
    .line 27
    invoke-static {p0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method private static final createObserver$lambda$7$lambda$6$lambda$5(Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/base/net/AppException;->getErrorMsg()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static synthetic j(Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/quark/ShareSourceActivity;->createObserver$lambda$7$lambda$6$lambda$5(Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/join/kotlin/quark/ShareSourceActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/ShareSourceActivity;->createObserver$lambda$7$lambda$3(Lcom/join/kotlin/quark/ShareSourceActivity;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/join/kotlin/quark/ShareSourceActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/ShareSourceActivity;->createObserver$lambda$7$lambda$6$lambda$4(Lcom/join/kotlin/quark/ShareSourceActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/join/kotlin/quark/ShareSourceActivity;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/ShareSourceActivity;->createObserver$lambda$7$lambda$6(Lcom/join/kotlin/quark/ShareSourceActivity;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/ShareSourceViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/ShareSourceViewModel;->getDiskUrl()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lcom/join/kotlin/quark/b0;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Lcom/join/kotlin/quark/b0;-><init>(Lcom/join/kotlin/quark/ShareSourceActivity;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/join/kotlin/quark/ShareSourceActivity$sam$androidx_lifecycle_Observer$0;

    .line 17
    .line 18
    invoke-direct {v3, v2}, Lcom/join/kotlin/quark/ShareSourceActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/ShareSourceViewModel;->getResultData()Landroidx/lifecycle/MutableLiveData;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/join/kotlin/quark/c0;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/join/kotlin/quark/c0;-><init>(Lcom/join/kotlin/quark/ShareSourceActivity;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lcom/join/kotlin/quark/ShareSourceActivity$sam$androidx_lifecycle_Observer$0;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Lcom/join/kotlin/quark/ShareSourceActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final getSourceCallback()Lcom/join/kotlin/quark/callback/IDialogShareSourceCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/ShareSourceActivity;->sourceCallback:Lcom/join/kotlin/quark/callback/IDialogShareSourceCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->v(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    instance-of v0, p1, Lcom/join/kotlin/quark/callback/IDialogShareSourceCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "null cannot be cast to non-null type com.join.kotlin.quark.callback.IDialogShareSourceCallback"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast p1, Lcom/join/kotlin/quark/callback/IDialogShareSourceCallback;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/join/kotlin/quark/ShareSourceActivity;->sourceCallback:Lcom/join/kotlin/quark/callback/IDialogShareSourceCallback;

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const-string v0, "_wishPoolItem"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    instance-of v0, p1, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/ShareSourceViewModel;

    .line 44
    .line 45
    check-cast p1, Lcom/join/kotlin/quark/model/bean/SourceListItemBean;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/join/kotlin/quark/viewmodel/ShareSourceViewModel;->setWishPoolItem(Lcom/join/kotlin/quark/model/bean/SourceListItemBean;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/n4;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/ShareSourceViewModel;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/n4;->u(Lcom/join/kotlin/quark/viewmodel/ShareSourceViewModel;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/n4;

    .line 70
    .line 71
    invoke-virtual {p1, p0}, Lcom/join/android/app/mgsim/wufun/databinding/n4;->t(Lcom/join/kotlin/quark/proxy/ShareSourceClickProxy;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public onBackClick()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N4(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onShareClick()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->showLoading()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/ShareSourceViewModel;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "getUid(...)"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/kotlin/quark/viewmodel/ShareSourceViewModel;->sourceAngel(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final setSourceCallback(Lcom/join/kotlin/quark/callback/IDialogShareSourceCallback;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/quark/callback/IDialogShareSourceCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/ShareSourceActivity;->sourceCallback:Lcom/join/kotlin/quark/callback/IDialogShareSourceCallback;

    .line 2
    .line 3
    return-void
.end method
