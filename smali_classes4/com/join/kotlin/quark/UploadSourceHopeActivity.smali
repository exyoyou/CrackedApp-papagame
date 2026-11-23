.class public final Lcom/join/kotlin/quark/UploadSourceHopeActivity;
.super Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/quark/proxy/UploadSourceHopeClickProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity<",
        "Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/k5;",
        ">;",
        "Lcom/join/kotlin/quark/proxy/UploadSourceHopeClickProxy;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUploadSourceHopeActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UploadSourceHopeActivity.kt\ncom/join/kotlin/quark/UploadSourceHopeActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CommonExt.kt\ncom/join/kotlin/base/utils/CommonExtKt\n*L\n1#1,150:1\n1878#2,3:151\n1878#2,3:156\n29#3,2:154\n32#3,3:159\n*S KotlinDebug\n*F\n+ 1 UploadSourceHopeActivity.kt\ncom/join/kotlin/quark/UploadSourceHopeActivity\n*L\n67#1:151,3\n99#1:156,3\n97#1:154,2\n97#1:159,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0011H\u0014J\u0008\u0010\u0015\u001a\u00020\u0011H\u0016J\u0008\u0010\u0016\u001a\u00020\u0011H\u0016J\u0008\u0010\u0017\u001a\u00020\u0011H\u0016R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/join/kotlin/quark/UploadSourceHopeActivity;",
        "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;",
        "Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivityUploadSourceHopeBinding;",
        "Lcom/join/kotlin/quark/proxy/UploadSourceHopeClickProxy;",
        "<init>",
        "()V",
        "loadSir",
        "Lcom/kingja/loadsir/core/LoadService;",
        "",
        "tagAdapter",
        "Lcom/join/kotlin/quark/adapter/SourceHopeTagAdapter;",
        "getTagAdapter",
        "()Lcom/join/kotlin/quark/adapter/SourceHopeTagAdapter;",
        "tagAdapter$delegate",
        "Lkotlin/Lazy;",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "createObserver",
        "onBackClick",
        "onUploadSourceClick",
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
        "SMAP\nUploadSourceHopeActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UploadSourceHopeActivity.kt\ncom/join/kotlin/quark/UploadSourceHopeActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CommonExt.kt\ncom/join/kotlin/base/utils/CommonExtKt\n*L\n1#1,150:1\n1878#2,3:151\n1878#2,3:156\n29#3,2:154\n32#3,3:159\n*S KotlinDebug\n*F\n+ 1 UploadSourceHopeActivity.kt\ncom/join/kotlin/quark/UploadSourceHopeActivity\n*L\n67#1:151,3\n99#1:156,3\n97#1:154,2\n97#1:159,3\n*E\n"
    }
.end annotation


# instance fields
.field private loadSir:Lcom/kingja/loadsir/core/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingja/loadsir/core/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final tagAdapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/quark/z0;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/kotlin/quark/z0;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->tagAdapter$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    return-void
.end method

.method private static final createObserver$lambda$16$lambda$12(Lcom/join/kotlin/quark/UploadSourceHopeActivity;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;
    .locals 8

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p0, p0, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "loadSir"

    .line 9
    .line 10
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object p0, p1

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    invoke-static {p0, p1, v0, p1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showError$default(Lcom/kingja/loadsir/core/b;Ljava/lang/String;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v3, Lcom/join/kotlin/quark/c1;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lcom/join/kotlin/quark/c1;-><init>(Lcom/join/kotlin/quark/UploadSourceHopeActivity;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lcom/join/kotlin/quark/d1;

    .line 25
    .line 26
    invoke-direct {v4, p0}, Lcom/join/kotlin/quark/d1;-><init>(Lcom/join/kotlin/quark/UploadSourceHopeActivity;)V

    .line 27
    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    const/16 v6, 0x8

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    move-object v1, p0

    .line 34
    move-object v2, p1

    .line 35
    invoke-static/range {v1 .. v7}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->parseState$default(Lcom/join/kotlin/base/activity/BaseVmDialogActivity;Lcom/join/kotlin/base/state/ResultState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method private static final createObserver$lambda$16$lambda$12$lambda$10(Lcom/join/kotlin/quark/UploadSourceHopeActivity;Lcom/join/kotlin/quark/model/bean/SourceTabListBean;)Lkotlin/Unit;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "loadSir"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/kingja/loadsir/core/b;->h()V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/kotlin/quark/model/bean/SourceTabListBean;->getTabs()Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_4

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->getTagAdapter()Lcom/join/kotlin/quark/adapter/SourceHopeTagAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x0

    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    add-int/lit8 v3, v1, 0x1

    .line 46
    .line 47
    if-gez v1, :cond_1

    .line 48
    .line 49
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 50
    .line 51
    .line 52
    :cond_1
    check-cast v2, Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;->getActive()Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/4 v1, 0x0

    .line 68
    :goto_1
    if-eqz v1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;->setSelectTag(Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    move v1, v3

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0
.end method

.method private static final createObserver$lambda$16$lambda$12$lambda$11(Lcom/join/kotlin/quark/UploadSourceHopeActivity;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/AppException;->getErrorMsg()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    const-string p0, "loadSir"

    .line 19
    .line 20
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object p0, p1

    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    invoke-static {p0, p1, v0, p1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showError$default(Lcom/kingja/loadsir/core/b;Ljava/lang/String;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method private static final createObserver$lambda$16$lambda$15(Lcom/join/kotlin/quark/UploadSourceHopeActivity;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/BaseAppCompatActivity;->dismissLoading()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p0, "\u4e0a\u4f20\u5931\u8d25"

    .line 7
    .line 8
    invoke-static {p0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v2, Lcom/join/kotlin/quark/x0;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lcom/join/kotlin/quark/x0;-><init>(Lcom/join/kotlin/quark/UploadSourceHopeActivity;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/join/kotlin/quark/y0;

    .line 18
    .line 19
    invoke-direct {v3}, Lcom/join/kotlin/quark/y0;-><init>()V

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

.method private static final createObserver$lambda$16$lambda$15$lambda$13(Lcom/join/kotlin/quark/UploadSourceHopeActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
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
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "\u4e0a\u4f20\u6210\u529f"

    .line 10
    .line 11
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p0, "\u4e0a\u4f20\u5931\u8d25"

    .line 19
    .line 20
    invoke-static {p0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method private static final createObserver$lambda$16$lambda$15$lambda$14(Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
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

.method private final getTagAdapter()Lcom/join/kotlin/quark/adapter/SourceHopeTagAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->tagAdapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/quark/adapter/SourceHopeTagAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final initView$lambda$1(Lcom/join/kotlin/quark/UploadSourceHopeActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v1, "getUid(...)"

    .line 16
    .line 17
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;->getWebDiskHome(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method private static final initView$lambda$5$lambda$4(Lcom/join/kotlin/quark/UploadSourceHopeActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "view"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->getTagAdapter()Lcom/join/kotlin/quark/adapter/SourceHopeTagAdapter;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Iterable;

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 p2, 0x0

    .line 26
    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_5

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    add-int/lit8 v2, v0, 0x1

    .line 38
    .line 39
    if-gez v0, :cond_0

    .line 40
    .line 41
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 42
    .line 43
    .line 44
    :cond_0
    check-cast v1, Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    if-ne p3, v0, :cond_1

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v0, 0x0

    .line 53
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v1, v0}, Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;->setActive(Ljava/lang/Boolean;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;->getActive()Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    const/4 v0, 0x0

    .line 74
    :goto_2
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;->setSelectTag(Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    move v0, v2

    .line 86
    goto :goto_0

    .line 87
    :cond_5
    invoke-direct {p0}, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->getTagAdapter()Lcom/join/kotlin/quark/adapter/SourceHopeTagAdapter;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public static synthetic j(Lcom/join/kotlin/quark/UploadSourceHopeActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->initView$lambda$5$lambda$4(Lcom/join/kotlin/quark/UploadSourceHopeActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic k(Lcom/join/kotlin/quark/UploadSourceHopeActivity;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->createObserver$lambda$16$lambda$12$lambda$11(Lcom/join/kotlin/quark/UploadSourceHopeActivity;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->createObserver$lambda$16$lambda$15$lambda$14(Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m()Lcom/join/kotlin/quark/adapter/SourceHopeTagAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->tagAdapter_delegate$lambda$0()Lcom/join/kotlin/quark/adapter/SourceHopeTagAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic n(Lcom/join/kotlin/quark/UploadSourceHopeActivity;Lcom/join/kotlin/quark/model/bean/SourceTabListBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->createObserver$lambda$16$lambda$12$lambda$10(Lcom/join/kotlin/quark/UploadSourceHopeActivity;Lcom/join/kotlin/quark/model/bean/SourceTabListBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/join/kotlin/quark/UploadSourceHopeActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->initView$lambda$1(Lcom/join/kotlin/quark/UploadSourceHopeActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/join/kotlin/quark/UploadSourceHopeActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->createObserver$lambda$16$lambda$15$lambda$13(Lcom/join/kotlin/quark/UploadSourceHopeActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/join/kotlin/quark/UploadSourceHopeActivity;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->createObserver$lambda$16$lambda$12(Lcom/join/kotlin/quark/UploadSourceHopeActivity;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/join/kotlin/quark/UploadSourceHopeActivity;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->createObserver$lambda$16$lambda$15(Lcom/join/kotlin/quark/UploadSourceHopeActivity;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final tagAdapter_delegate$lambda$0()Lcom/join/kotlin/quark/adapter/SourceHopeTagAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/quark/adapter/SourceHopeTagAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/quark/adapter/SourceHopeTagAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
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
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;->getHomeData()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lcom/join/kotlin/quark/v0;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Lcom/join/kotlin/quark/v0;-><init>(Lcom/join/kotlin/quark/UploadSourceHopeActivity;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/join/kotlin/quark/UploadSourceHopeActivity$sam$androidx_lifecycle_Observer$0;

    .line 17
    .line 18
    invoke-direct {v3, v2}, Lcom/join/kotlin/quark/UploadSourceHopeActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;->getUploadData()Landroidx/lifecycle/MutableLiveData;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/join/kotlin/quark/w0;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/join/kotlin/quark/w0;-><init>(Lcom/join/kotlin/quark/UploadSourceHopeActivity;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lcom/join/kotlin/quark/UploadSourceHopeActivity$sam$androidx_lifecycle_Observer$0;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Lcom/join/kotlin/quark/UploadSourceHopeActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/k5;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/k5;->u(Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/k5;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lcom/join/android/app/mgsim/wufun/databinding/k5;->t(Lcom/join/kotlin/quark/proxy/UploadSourceHopeClickProxy;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/k5;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/k5;->f:Landroidx/core/widget/NestedScrollView;

    .line 32
    .line 33
    const-string v0, "mainContent"

    .line 34
    .line 35
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/join/kotlin/quark/a1;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/join/kotlin/quark/a1;-><init>(Lcom/join/kotlin/quark/UploadSourceHopeActivity;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadServiceInit(Landroid/view/View;Lkotlin/jvm/functions/Function0;)Lcom/kingja/loadsir/core/b;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/k5;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/k5;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->getTagAdapter()Lcom/join/kotlin/quark/adapter/SourceHopeTagAdapter;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/k5;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/k5;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    .line 72
    new-instance v0, Lcom/join/kotlin/quark/UploadSourceHopeActivity$initView$2$1;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lcom/join/kotlin/quark/UploadSourceHopeActivity$initView$2$1;-><init>(Lcom/join/kotlin/quark/UploadSourceHopeActivity;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lcom/psk/kotlin/util/GridSpacingItemDecoration;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const v2, 0x7f0713c2

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    float-to-int v1, v1

    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v3, 0x4

    .line 96
    invoke-direct {v0, v3, v1, v2}, Lcom/psk/kotlin/util/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0}, Lcom/join/kotlin/quark/UploadSourceHopeActivity;->getTagAdapter()Lcom/join/kotlin/quark/adapter/SourceHopeTagAdapter;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-instance v0, Lcom/join/kotlin/quark/b1;

    .line 107
    .line 108
    invoke-direct {v0, p0}, Lcom/join/kotlin/quark/b1;-><init>(Lcom/join/kotlin/quark/UploadSourceHopeActivity;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;

    .line 119
    .line 120
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string v1, "getUid(...)"

    .line 129
    .line 130
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;->getWebDiskHome(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
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

.method public onUploadSourceClick()V
    .locals 4

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
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;->getSelectTag()Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;->getTab_id()Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "getUid(...)"

    .line 42
    .line 43
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0, v2}, Lcom/join/kotlin/quark/viewmodel/UploadSourceHopeViewModel;->sourceShareCreate(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method
