.class public final Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMArchiveFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMArchiveFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMArchiveFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,110:1\n172#2,9:111\n*S KotlinDebug\n*F\n+ 1 HMArchiveFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMArchiveFragment\n*L\n23#1:111,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u001a\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00112\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u001c\u0010\u001b\u001a\u00020\u00192\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0011H\u0002J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fR\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\n\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;",
        "getViewModel",
        "()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmArchiveBinding;",
        "getBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmArchiveBinding;",
        "setBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmArchiveBinding;)V",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "measure",
        "toFormatTime",
        "",
        "date",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHMArchiveFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMArchiveFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMArchiveFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,110:1\n172#2,9:111\n*S KotlinDebug\n*F\n+ 1 HMArchiveFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMArchiveFragment\n*L\n23#1:111,9\n*E\n"
    }
.end annotation


# instance fields
.field public binding:Lcom/join/android/app/mgsim/wufun/databinding/lm;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment$special$$inlined$activityViewModels$default$3;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic M(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->measure$lambda$6$lambda$5(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N(Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->onViewCreated$lambda$2(Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic O(Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->onViewCreated$lambda$3(Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;Landroid/view/View;)V

    return-void
.end method

.method private final measure(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/c;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lcom/join/kotlin/module/hmcloud/menu/c;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const v1, 0x7f071349

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sub-int/2addr p1, v0

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    const/high16 v1, 0x40000000    # 2.0f

    .line 47
    .line 48
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {p2, v2, v1}, Landroid/view/View;->measure(II)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    .line 61
    invoke-direct {v1, p1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p2, v1, v1, p1, v0}, Landroid/view/View;->layout(IIII)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_0
    return-void
.end method

.method private static final measure$lambda$6$lambda$5(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/high16 v1, 0x40000000    # 2.0f

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 25
    .line 26
    invoke-direct {v1, v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/view/View;->layout(IIII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMenuAction()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$MenuClose;->INSTANCE:Lcom/join/mgps/dto/hmcloud/HMMenuAction$MenuClose;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMenuAction()Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$ShowUploadArchive;->INSTANCE:Lcom/join/mgps/dto/hmcloud/HMMenuAction$ShowUploadArchive;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 36
    .line 37
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "AD"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setTypeCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 45
    .line 46
    .line 47
    const-string v2, "cloudGameSave"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setChatId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGameId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setResourceId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 61
    .line 62
    .line 63
    const-string v2, "\u609f\u996d\u4e91\u5b58\u6863"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->isCloudVip()Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_0

    .line 77
    .line 78
    const-string p0, "cloudGameVip"

    .line 79
    .line 80
    invoke-virtual {v1, p0}, Lcom/papa/sim/statistic/Ext;->setResultCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 81
    .line 82
    .line 83
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 84
    .line 85
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method private static final onViewCreated$lambda$3(Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getToast()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "\u5173\u95ed\u4e91\u4e3b\u673a\u540e\uff0c\u5c06\u81ea\u52a8\u5728\u4e91\u7aef\u751f\u6210\u5b58\u6863\uff0c\u540e\u7eed\u6e38\u620f\u53ef\u7ee7\u7eed\u6e38\u620f\u8fdb\u5ea6"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/join/android/app/mgsim/wufun/databinding/lm;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/lm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "binding"

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

.method public final getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-static {p1, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/lm;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/lm;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->setBinding(Lcom/join/android/app/mgsim/wufun/databinding/lm;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/lm;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/lm;->a()Landroid/widget/FrameLayout;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p2, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->measure(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/lm;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/lm;->a()Landroid/widget/FrameLayout;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->W()Lcom/join/mgps/hmcloud/HMCloudGameManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/hmcloud/HMCloudGameManager;->b0()Lcom/join/mgps/hmcloud/HMCloudGameManager$f;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    iget p2, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->e:I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne p2, v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/lm;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/lm;->i:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v0, 0x8

    .line 37
    .line 38
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-wide p1, p1, Lcom/join/mgps/hmcloud/HMCloudGameManager$f;->t:J

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/lm;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/lm;->c:Landroid/widget/TextView;

    .line 48
    .line 49
    const-wide/16 v1, 0x0

    .line 50
    .line 51
    cmp-long v3, p1, v1

    .line 52
    .line 53
    if-lez v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->toFormatTime(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const-string p1, ""

    .line 61
    .line 62
    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/lm;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/lm;->h:Landroid/widget/ImageView;

    .line 70
    .line 71
    new-instance p2, Lcom/join/kotlin/module/hmcloud/menu/a;

    .line 72
    .line 73
    invoke-direct {p2, p0}, Lcom/join/kotlin/module/hmcloud/menu/a;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/lm;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/lm;->d:Landroid/widget/ImageView;

    .line 84
    .line 85
    new-instance p2, Lcom/join/kotlin/module/hmcloud/menu/b;

    .line 86
    .line 87
    invoke-direct {p2, p0}, Lcom/join/kotlin/module/hmcloud/menu/b;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final setBinding(Lcom/join/android/app/mgsim/wufun/databinding/lm;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/lm;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/lm;

    .line 7
    .line 8
    return-void
.end method

.method public final toFormatTime(J)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    const-string p2, "yyyy/MM/dd HH:mm"

    .line 9
    .line 10
    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method
