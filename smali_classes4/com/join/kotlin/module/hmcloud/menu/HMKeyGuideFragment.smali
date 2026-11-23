.class public final Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;
.super Lcom/join/kotlin/module/hmcloud/dialog/HMBaseFragmentDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMKeyGuideFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMKeyGuideFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,359:1\n172#2,9:360\n10#3:369\n10#3:370\n295#4,2:371\n295#4,2:373\n*S KotlinDebug\n*F\n+ 1 HMKeyGuideFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment\n*L\n46#1:360,9\n175#1:369\n185#1:370\n188#1:371,2\n203#1:373,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010.\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u000101H\u0016J&\u00102\u001a\u0004\u0018\u00010\u00172\u0006\u00103\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u0001062\u0008\u00100\u001a\u0004\u0018\u000101H\u0016J\u001a\u00107\u001a\u00020/2\u0006\u00108\u001a\u00020\u00172\u0008\u00100\u001a\u0004\u0018\u000101H\u0016J\u0008\u0010E\u001a\u00020/H\u0002J\u0010\u0010F\u001a\u00020/2\u0008\u0010G\u001a\u0004\u0018\u00010HJ\u0006\u0010I\u001a\u00020/J\u0010\u0010J\u001a\u00020/2\u0008\u0010K\u001a\u0004\u0018\u00010LJ\u0006\u0010S\u001a\u00020/J\u0006\u0010T\u001a\u00020/R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u001f\u0010\u0010\u001a\u0010\u0012\u000c\u0012\n \u0013*\u0004\u0018\u00010\u00120\u00120\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001a\u0010(\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001c\u00109\u001a\u0004\u0018\u00010:X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001c\u0010?\u001a\u0004\u0018\u00010@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001c\u0010M\u001a\u0004\u0018\u00010NX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010R\u00a8\u0006U"
    }
    d2 = {
        "Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseFragmentDialog;",
        "<init>",
        "()V",
        "binding",
        "Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmKeyGuideBinding;",
        "getBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmKeyGuideBinding;",
        "setBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmKeyGuideBinding;)V",
        "viewModel",
        "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;",
        "getViewModel",
        "()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "instruction",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "getInstruction",
        "()Landroidx/lifecycle/MutableLiveData;",
        "targetView",
        "Landroid/view/View;",
        "getTargetView",
        "()Landroid/view/View;",
        "setTargetView",
        "(Landroid/view/View;)V",
        "targetLayoutParams",
        "Landroid/widget/FrameLayout$LayoutParams;",
        "getTargetLayoutParams",
        "()Landroid/widget/FrameLayout$LayoutParams;",
        "setTargetLayoutParams",
        "(Landroid/widget/FrameLayout$LayoutParams;)V",
        "lastKey",
        "",
        "getLastKey",
        "()Ljava/lang/String;",
        "setLastKey",
        "(Ljava/lang/String;)V",
        "lastKeyToastTime",
        "",
        "getLastKeyToastTime",
        "()J",
        "setLastKeyToastTime",
        "(J)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
        "guide3Dialog",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;",
        "getGuide3Dialog",
        "()Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;",
        "setGuide3Dialog",
        "(Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;)V",
        "guide31Dialog",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;",
        "getGuide31Dialog",
        "()Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;",
        "setGuide31Dialog",
        "(Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;)V",
        "guideFinish",
        "showGuide3Dialog",
        "item",
        "Lcom/join/mgps/dto/hmcloud/HMKeyItem;",
        "showGuide3",
        "loadKey",
        "config",
        "Lcom/join/mgps/dto/hmcloud/HMOpConfig;",
        "guide",
        "Lcom/join/mgps/customview/guideview/Guide;",
        "getGuide",
        "()Lcom/join/mgps/customview/guideview/Guide;",
        "setGuide",
        "(Lcom/join/mgps/customview/guideview/Guide;)V",
        "guide2Next",
        "showGuide2",
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
        "SMAP\nHMKeyGuideFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMKeyGuideFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 JsonUtil.kt\ncom/join/mgps/cloud/util/JsonUtilKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,359:1\n172#2,9:360\n10#3:369\n10#3:370\n295#4,2:371\n295#4,2:373\n*S KotlinDebug\n*F\n+ 1 HMKeyGuideFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment\n*L\n46#1:360,9\n175#1:369\n185#1:370\n188#1:371,2\n203#1:373,2\n*E\n"
    }
.end annotation


# instance fields
.field public binding:Lcom/join/android/app/mgsim/wufun/databinding/mm;

.field private guide:Lcom/join/mgps/customview/guideview/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private guide31Dialog:Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private guide3Dialog:Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final instruction:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastKeyToastTime:J

.field private targetLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private targetView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMBaseFragmentDialog;-><init>()V

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
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$special$$inlined$activityViewModels$default$3;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 31
    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->instruction:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->showGuide2$lambda$23$lambda$21(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->onViewCreated$lambda$3(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->showGuide3Dialog$lambda$9$lambda$8(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic P(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Lcom/join/mgps/dto/hmcloud/HMKeyItem;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->loadKey$lambda$20$lambda$19(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Lcom/join/mgps/dto/hmcloud/HMKeyItem;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Landroid/view/View;IIIILcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;ZZF)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->showGuide2$lambda$23$lambda$22(Landroid/view/View;IIIILcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;ZZF)V

    return-void
.end method

.method public static synthetic R(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->onViewCreated$lambda$2(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->onViewCreated$lambda$0(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->showGuide3Dialog$lambda$9$lambda$6(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic U(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Lcom/join/kotlin/module/hmcloud/bean/GuideState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->onViewCreated$lambda$4(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Lcom/join/kotlin/module/hmcloud/bean/GuideState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final guideFinish()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->guideNext(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->instruction:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->instruction:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "cloudGameSetting"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "btnOk"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "\u5b8c\u6210"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "buildScene(...)"

    .line 56
    .line 57
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    return-void
.end method

.method private static final loadKey$lambda$20$lambda$19(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Lcom/join/mgps/dto/hmcloud/HMKeyItem;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "lp"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getGuide()Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;->getIndex()Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->targetView:Landroid/view/View;

    .line 31
    .line 32
    iput-object p3, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->targetLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 33
    .line 34
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.method private static final onViewCreated$lambda$0(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/mm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/mm;->c:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 p1, 0x8

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, v0, Lcom/join/android/app/mgsim/wufun/databinding/mm;->e:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 21
    .line 22
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$onViewCreated$2$1$1;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$onViewCreated$2$1$1;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->setOnEventListener(Lcom/join/kotlin/module/hmcloud/pad/OnHMOpEventListener;)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method private static final onViewCreated$lambda$3(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->loadKey(Lcom/join/mgps/dto/hmcloud/HMOpConfig;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final onViewCreated$lambda$4(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Lcom/join/kotlin/module/hmcloud/bean/GuideState;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->instruction:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    instance-of v0, p1, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    check-cast p1, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;->getIndex()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x2

    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;->getIndex()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v0, 0x3

    .line 36
    if-ne p1, v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->showGuide3()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method private static final showGuide2$lambda$23$lambda$21(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v3, v1, v2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->guideNext$default(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;ZILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide:Lcom/join/mgps/customview/guideview/d;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/customview/guideview/d;->e()V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final showGuide2$lambda$23$lambda$22(Landroid/view/View;IIIILcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;ZZF)V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/customview/guideview/GuideBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/customview/guideview/GuideBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/guideview/GuideBuilder;->t(Landroid/view/View;)Lcom/join/mgps/customview/guideview/GuideBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/16 v1, 0xc8

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/guideview/GuideBuilder;->c(I)Lcom/join/mgps/customview/guideview/GuideBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    div-int/lit8 v1, p1, 0x2

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/guideview/GuideBuilder;->h(I)Lcom/join/mgps/customview/guideview/GuideBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0, v2}, Lcom/join/mgps/customview/guideview/GuideBuilder;->d(Z)Lcom/join/mgps/customview/guideview/GuideBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/guideview/GuideBuilder;->h(I)Lcom/join/mgps/customview/guideview/GuideBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/guideview/GuideBuilder;->q(Z)Lcom/join/mgps/customview/guideview/GuideBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance v2, Landroid/graphics/Rect;

    .line 37
    .line 38
    add-int/2addr p4, p2

    .line 39
    add-int/2addr p1, p3

    .line 40
    invoke-direct {v2, p2, p3, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2}, Lcom/join/mgps/customview/guideview/GuideBuilder;->s(Landroid/graphics/Rect;)Lcom/join/mgps/customview/guideview/GuideBuilder;

    .line 44
    .line 45
    .line 46
    new-instance p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$1;

    .line 47
    .line 48
    invoke-direct {p0, p5}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$1;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/guideview/GuideBuilder;->p(Lcom/join/mgps/customview/guideview/GuideBuilder$b;)Lcom/join/mgps/customview/guideview/GuideBuilder;

    .line 52
    .line 53
    .line 54
    new-instance p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$2;

    .line 55
    .line 56
    invoke-direct {p0, p6, p7, p8}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$showGuide2$1$1$2;-><init>(ZZF)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/guideview/GuideBuilder;->a(Lcom/join/mgps/customview/guideview/b;)Lcom/join/mgps/customview/guideview/GuideBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/customview/guideview/GuideBuilder;->b()Lcom/join/mgps/customview/guideview/d;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    iput-object p0, p5, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide:Lcom/join/mgps/customview/guideview/d;

    .line 67
    .line 68
    if-eqz p0, :cond_0

    .line 69
    .line 70
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/guideview/d;->l(Z)V

    .line 71
    .line 72
    .line 73
    :cond_0
    iget-object p0, p5, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide:Lcom/join/mgps/customview/guideview/d;

    .line 74
    .line 75
    if-eqz p0, :cond_1

    .line 76
    .line 77
    invoke-virtual {p5}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p5}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/mm;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p2}, Lcom/join/android/app/mgsim/wufun/databinding/mm;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/customview/guideview/d;->n(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    return-void
.end method

.method private static final showGuide3Dialog$lambda$9$lambda$6(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guideFinish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final showGuide3Dialog$lambda$9$lambda$8(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guideFinish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/join/android/app/mgsim/wufun/databinding/mm;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/mm;

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

.method public final getGuide()Lcom/join/mgps/customview/guideview/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide:Lcom/join/mgps/customview/guideview/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGuide31Dialog()Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide31Dialog:Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGuide3Dialog()Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide3Dialog:Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInstruction()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->instruction:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->lastKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastKeyToastTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->lastKeyToastTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTargetLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->targetLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTargetView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->targetView:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->viewModel$delegate:Lkotlin/Lazy;

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

.method public final guide2Next()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGuideState()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/kotlin/module/hmcloud/bean/GuideState;

    .line 14
    .line 15
    instance-of v1, v0, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;->getIndex()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x2

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x1

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static {v0, v3, v1, v2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->guideNext$default(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide:Lcom/join/mgps/customview/guideview/d;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/customview/guideview/d;->e()V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final loadKey(Lcom/join/mgps/dto/hmcloud/HMOpConfig;)V
    .locals 11
    .param p1    # Lcom/join/mgps/dto/hmcloud/HMOpConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/mm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getCloudGamingCfgInfo()Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;->getGame_button_tips()Lcom/join/mgps/dto/hmcloud/GameButtonTips;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/dto/hmcloud/GameButtonTips;->getDefault_position()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-class v4, Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    .line 33
    .line 34
    invoke-virtual {v3, v1, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object v1, v2

    .line 40
    :goto_0
    const/4 v3, 0x0

    .line 41
    if-eqz p1, :cond_6

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getKeys()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    if-eqz v4, :cond_6

    .line 48
    .line 49
    check-cast v4, Ljava/lang/Iterable;

    .line 50
    .line 51
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    const/4 v6, 0x1

    .line 60
    if-eqz v5, :cond_4

    .line 61
    .line 62
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    move-object v7, v5

    .line 67
    check-cast v7, Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    .line 68
    .line 69
    invoke-virtual {v7}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    move-object v9, v1

    .line 74
    check-cast v9, Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    .line 75
    .line 76
    if-eqz v9, :cond_2

    .line 77
    .line 78
    invoke-virtual {v9}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    move-object v10, v2

    .line 84
    :goto_1
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-eqz v8, :cond_3

    .line 89
    .line 90
    invoke-virtual {v7}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getX()I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    invoke-virtual {v9}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getX()I

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    if-ne v8, v10, :cond_3

    .line 99
    .line 100
    invoke-virtual {v7}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getY()I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    invoke-virtual {v9}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getY()I

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    if-ne v8, v10, :cond_3

    .line 109
    .line 110
    invoke-virtual {v7}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getWidth()I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    invoke-virtual {v9}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getWidth()I

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    if-ne v8, v10, :cond_3

    .line 119
    .line 120
    invoke-virtual {v7}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getHeight()I

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    invoke-virtual {v9}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getHeight()I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-ne v7, v8, :cond_3

    .line 129
    .line 130
    const/4 v7, 0x1

    .line 131
    goto :goto_2

    .line 132
    :cond_3
    const/4 v7, 0x0

    .line 133
    :goto_2
    if-eqz v7, :cond_1

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_4
    move-object v5, v2

    .line 137
    :goto_3
    check-cast v5, Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    .line 138
    .line 139
    if-eqz v5, :cond_6

    .line 140
    .line 141
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getGuide()Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    if-nez v4, :cond_5

    .line 146
    .line 147
    new-instance v4, Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;

    .line 148
    .line 149
    invoke-direct {v4}, Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v4}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->setGuide(Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getGuide()Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    if-eqz v4, :cond_6

    .line 160
    .line 161
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;->setIndex(Ljava/lang/Integer;)V

    .line 166
    .line 167
    .line 168
    const/4 v3, 0x1

    .line 169
    :cond_6
    if-nez v3, :cond_b

    .line 170
    .line 171
    if-eqz p1, :cond_b

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getKeys()Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    if-eqz v4, :cond_b

    .line 178
    .line 179
    check-cast v4, Ljava/lang/Iterable;

    .line 180
    .line 181
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-eqz v5, :cond_9

    .line 190
    .line 191
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    move-object v6, v5

    .line 196
    check-cast v6, Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    .line 197
    .line 198
    invoke-virtual {v6}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    move-object v7, v1

    .line 203
    check-cast v7, Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    .line 204
    .line 205
    if-eqz v7, :cond_8

    .line 206
    .line 207
    invoke-virtual {v7}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    goto :goto_4

    .line 212
    :cond_8
    move-object v7, v2

    .line 213
    :goto_4
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    if-eqz v6, :cond_7

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_9
    move-object v5, v2

    .line 221
    :goto_5
    check-cast v5, Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    .line 222
    .line 223
    if-eqz v5, :cond_b

    .line 224
    .line 225
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getGuide()Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    if-nez v1, :cond_a

    .line 230
    .line 231
    new-instance v1, Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;

    .line 232
    .line 233
    invoke-direct {v1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5, v1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->setGuide(Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;)V

    .line 237
    .line 238
    .line 239
    :cond_a
    invoke-virtual {v5}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getGuide()Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    if-eqz v1, :cond_b

    .line 244
    .line 245
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;->setIndex(Ljava/lang/Integer;)V

    .line 250
    .line 251
    .line 252
    :cond_b
    iget-object v1, v0, Lcom/join/android/app/mgsim/wufun/databinding/mm;->e:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 253
    .line 254
    new-instance v3, Lcom/join/kotlin/module/hmcloud/menu/h;

    .line 255
    .line 256
    invoke-direct {v3, p0}, Lcom/join/kotlin/module/hmcloud/menu/h;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v3}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->setOnItemLayout(Lkotlin/jvm/functions/Function3;)V

    .line 260
    .line 261
    .line 262
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/mm;->e:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 263
    .line 264
    if-eqz p1, :cond_c

    .line 265
    .line 266
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getDensity()Ljava/lang/Float;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    goto :goto_6

    .line 271
    :cond_c
    move-object v1, v2

    .line 272
    :goto_6
    if-eqz p1, :cond_d

    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getLayoutWidth()Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    goto :goto_7

    .line 279
    :cond_d
    move-object v3, v2

    .line 280
    :goto_7
    if-eqz p1, :cond_e

    .line 281
    .line 282
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getLayoutHeight()Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    :cond_e
    if-eqz p1, :cond_f

    .line 287
    .line 288
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getKeys()Ljava/util/List;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    if-nez p1, :cond_10

    .line 293
    .line 294
    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    :cond_10
    invoke-virtual {v0, v1, v3, v2, p1}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->loadKeys(Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)V

    .line 299
    .line 300
    .line 301
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->instruction:Landroidx/lifecycle/MutableLiveData;

    .line 302
    .line 303
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 308
    .line 309
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    if-eqz p1, :cond_11

    .line 314
    .line 315
    return-void

    .line 316
    :cond_11
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGuideState()Landroidx/lifecycle/MutableLiveData;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    check-cast p1, Lcom/join/kotlin/module/hmcloud/bean/GuideState;

    .line 329
    .line 330
    instance-of v0, p1, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;

    .line 331
    .line 332
    if-eqz v0, :cond_12

    .line 333
    .line 334
    check-cast p1, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;

    .line 335
    .line 336
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;->getIndex()I

    .line 337
    .line 338
    .line 339
    move-result p1

    .line 340
    const/4 v0, 0x2

    .line 341
    if-ne p1, v0, :cond_12

    .line 342
    .line 343
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->showGuide2()V

    .line 344
    .line 345
    .line 346
    :cond_12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "instruction"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->instruction:Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
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
    invoke-static {p1, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/mm;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/mm;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->setBinding(Lcom/join/android/app/mgsim/wufun/databinding/mm;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/mm;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/mm;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/mm;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/mm;->d:Lcom/join/mgps/customview/hmfloat/HMAutoDockLayout;

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/hmfloat/HMAutoDockLayout;->setTranslateX(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/mm;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/mm;->c:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/i;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/i;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->instruction:Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/j;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/menu/j;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$sam$androidx_lifecycle_Observer$0;

    .line 45
    .line 46
    invoke-direct {v2, v1}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lcom/haima/hmcp/beans/GameArchitectureType;->X86:Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 53
    .line 54
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/haima/hmcp/HmcpManager;->getGameArchitectureType()Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-ne p1, v0, :cond_5

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getCloudGamingCfgInfo()Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const/4 v0, 0x0

    .line 73
    if-eqz p1, :cond_0

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;->getHandle_cfg()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_0

    .line 80
    .line 81
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    move-object p1, v0

    .line 89
    :goto_0
    if-eqz p1, :cond_1

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getUrl()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :cond_1
    if-eqz v0, :cond_3

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_2

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    const/4 p2, 0x0

    .line 105
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/k;

    .line 113
    .line 114
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/k;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p1, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->loadTemplateKeys(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lkotlin/jvm/functions/Function1;)V

    .line 118
    .line 119
    .line 120
    :cond_5
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGuideState()Landroidx/lifecycle/MutableLiveData;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/l;

    .line 133
    .line 134
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/l;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V

    .line 135
    .line 136
    .line 137
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$sam$androidx_lifecycle_Observer$0;

    .line 138
    .line 139
    invoke-direct {v1, v0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public final setBinding(Lcom/join/android/app/mgsim/wufun/databinding/mm;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/mm;
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/mm;

    .line 7
    .line 8
    return-void
.end method

.method public final setGuide(Lcom/join/mgps/customview/guideview/d;)V
    .locals 0
    .param p1    # Lcom/join/mgps/customview/guideview/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide:Lcom/join/mgps/customview/guideview/d;

    .line 2
    .line 3
    return-void
.end method

.method public final setGuide31Dialog(Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide31Dialog:Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;

    .line 2
    .line 3
    return-void
.end method

.method public final setGuide3Dialog(Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide3Dialog:Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;

    .line 2
    .line 3
    return-void
.end method

.method public final setLastKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->lastKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLastKeyToastTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->lastKeyToastTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setTargetLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout$LayoutParams;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->targetLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    .line 3
    return-void
.end method

.method public final setTargetView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->targetView:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public final showGuide2()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/mm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/f;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/menu/f;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->targetView:Landroid/view/View;

    .line 11
    .line 12
    const-string v2, "WF"

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string v0, "guide target view is null."

    .line 17
    .line 18
    invoke-static {v2, v0}, Lcom/papa91/arc/ext/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v3, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->targetLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v5, 0x0

    .line 31
    :goto_0
    if-eqz v3, :cond_2

    .line 32
    .line 33
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 34
    .line 35
    move v6, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 v6, 0x0

    .line 38
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    iget-object v3, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->targetLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 45
    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    :goto_2
    move v7, v3

    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_4

    .line 61
    .line 62
    iget-object v3, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->targetLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    :goto_3
    move v8, v3

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    const v10, 0x7f071294

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    const v11, 0x7f07148a

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    const v10, 0x7f071395

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    const/4 v3, 0x1

    .line 111
    if-ge v5, v9, :cond_5

    .line 112
    .line 113
    const/4 v10, 0x1

    .line 114
    goto :goto_4

    .line 115
    :cond_5
    const/4 v10, 0x0

    .line 116
    :goto_4
    add-int v12, v6, v8

    .line 117
    .line 118
    add-int/2addr v12, v9

    .line 119
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/mm;->e:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-le v12, v0, :cond_6

    .line 126
    .line 127
    const/4 v0, 0x1

    .line 128
    goto :goto_5

    .line 129
    :cond_6
    const/4 v0, 0x0

    .line 130
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v4, "guide target view: ["

    .line 136
    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v4, ", "

    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v9, "], ["

    .line 152
    .line 153
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const/16 v4, 0x5d

    .line 166
    .line 167
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-static {v2, v3}, Lcom/papa91/arc/ext/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    new-instance v12, Lcom/join/kotlin/module/hmcloud/menu/g;

    .line 178
    .line 179
    move-object v2, v12

    .line 180
    move-object v3, v1

    .line 181
    move v4, v8

    .line 182
    move-object v8, p0

    .line 183
    move v9, v10

    .line 184
    move v10, v0

    .line 185
    invoke-direct/range {v2 .. v11}, Lcom/join/kotlin/module/hmcloud/menu/g;-><init>(Landroid/view/View;IIIILcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;ZZF)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v12}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method public final showGuide3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getCloudGamingCfgInfo()Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;->getGame_button_tips()Lcom/join/mgps/dto/hmcloud/GameButtonTips;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/GameButtonTips;->getDefault_position()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-class v2, Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->showGuide3Dialog(Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final showGuide3Dialog(Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V
    .locals 3
    .param p1    # Lcom/join/mgps/dto/hmcloud/HMKeyItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getGuide()Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;->getImg()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 27
    :goto_2
    const-string v1, "requireContext(...)"

    .line 28
    .line 29
    if-nez v0, :cond_6

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide3Dialog:Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v2}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide3Dialog:Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;

    .line 48
    .line 49
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 50
    .line 51
    :cond_3
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide3Dialog:Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 56
    .line 57
    .line 58
    :cond_4
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide3Dialog:Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;->setData(Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V

    .line 63
    .line 64
    .line 65
    :cond_5
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide3Dialog:Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyDialog;

    .line 66
    .line 67
    if-eqz p1, :cond_a

    .line 68
    .line 69
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/d;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/d;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_6
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide31Dialog:Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;

    .line 79
    .line 80
    if-nez v0, :cond_7

    .line 81
    .line 82
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v2}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide31Dialog:Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;

    .line 95
    .line 96
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 97
    .line 98
    :cond_7
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide31Dialog:Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;

    .line 99
    .line 100
    if-eqz v0, :cond_8

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 103
    .line 104
    .line 105
    :cond_8
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide31Dialog:Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;

    .line 106
    .line 107
    if-eqz v0, :cond_9

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->setData(Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V

    .line 110
    .line 111
    .line 112
    :cond_9
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->guide31Dialog:Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKey1Dialog;

    .line 113
    .line 114
    if-eqz p1, :cond_a

    .line 115
    .line 116
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/e;

    .line 117
    .line 118
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/e;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 122
    .line 123
    .line 124
    :cond_a
    :goto_3
    return-void
.end method
