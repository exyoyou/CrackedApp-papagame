.class public final Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;
.super Lcom/join/kotlin/module/hmcloud/dialog/HMBaseFragmentDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMMenuFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMMenuFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMMenuFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,443:1\n172#2,9:444\n1#3:453\n*S KotlinDebug\n*F\n+ 1 HMMenuFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMMenuFragment\n*L\n44#1:444,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u0001002\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\u0010\u00103\u001a\u0002042\u0006\u00105\u001a\u000206H\u0016J\u0006\u00107\u001a\u000204J\u0008\u00108\u001a\u000204H\u0002J\u000e\u00109\u001a\u0002042\u0006\u0010:\u001a\u00020\u000bJ\u000e\u0010;\u001a\u0002042\u0006\u0010<\u001a\u000206J\u001a\u0010=\u001a\u0002042\u0006\u0010>\u001a\u00020,2\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\u0010\u0010?\u001a\u0002042\u0008\u0010@\u001a\u0004\u0018\u00010,J\u000e\u0010A\u001a\u0002042\u0006\u0010B\u001a\u00020CJ\u0006\u0010J\u001a\u000204J\u0006\u0010K\u001a\u000204J\u0006\u0010L\u001a\u000204J\u0010\u0010M\u001a\u0002042\u0006\u0010N\u001a\u00020OH\u0016J\u0008\u0010P\u001a\u000204H\u0016J\u0008\u0010Q\u001a\u000204H\u0016J\u0012\u0010R\u001a\u0004\u0018\u00010,2\u0006\u0010S\u001a\u00020\u000bH\u0002J\u0006\u0010Z\u001a\u000204R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001b\u0010\u001f\u001a\u00020 8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008!\u0010\"R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001c\u0010D\u001a\u0004\u0018\u00010EX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\u001c\u0010T\u001a\u0004\u0018\u00010UX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010Y\u00a8\u0006["
    }
    d2 = {
        "Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseFragmentDialog;",
        "<init>",
        "()V",
        "tabAdapter",
        "Lcom/join/mgps/adapter/hmcloud/HMMenuItemAdapter;",
        "getTabAdapter",
        "()Lcom/join/mgps/adapter/hmcloud/HMMenuItemAdapter;",
        "setTabAdapter",
        "(Lcom/join/mgps/adapter/hmcloud/HMMenuItemAdapter;)V",
        "lastIndex",
        "",
        "getLastIndex",
        "()I",
        "setLastIndex",
        "(I)V",
        "settings",
        "Landroidx/fragment/app/Fragment;",
        "getSettings",
        "()Landroidx/fragment/app/Fragment;",
        "setSettings",
        "(Landroidx/fragment/app/Fragment;)V",
        "archive",
        "getArchive",
        "setArchive",
        "popRule",
        "Landroid/widget/PopupWindow;",
        "getPopRule",
        "()Landroid/widget/PopupWindow;",
        "setPopRule",
        "(Landroid/widget/PopupWindow;)V",
        "viewModel",
        "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;",
        "getViewModel",
        "()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmMenuBinding;",
        "getBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmMenuBinding;",
        "setBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmMenuBinding;)V",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onHiddenChanged",
        "",
        "hidden",
        "",
        "close",
        "refresh",
        "setTab",
        "index",
        "setRulePopVisible",
        "visible",
        "onViewCreated",
        "view",
        "showGuide1",
        "target",
        "setRemainTime",
        "time",
        "",
        "countDownTimer",
        "Landroid/os/CountDownTimer;",
        "getCountDownTimer",
        "()Landroid/os/CountDownTimer;",
        "setCountDownTimer",
        "(Landroid/os/CountDownTimer;)V",
        "startTimer",
        "stopTimer",
        "initObserver",
        "onDismiss",
        "dialog",
        "Landroid/content/DialogInterface;",
        "onResume",
        "onDestroy",
        "getRecyclerViewItemView",
        "position",
        "keyGuideFragment",
        "Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;",
        "getKeyGuideFragment",
        "()Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;",
        "setKeyGuideFragment",
        "(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V",
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
        "SMAP\nHMMenuFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMMenuFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMMenuFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,443:1\n172#2,9:444\n1#3:453\n*S KotlinDebug\n*F\n+ 1 HMMenuFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMMenuFragment\n*L\n44#1:444,9\n*E\n"
    }
.end annotation


# instance fields
.field private archive:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private binding:Lcom/join/android/app/mgsim/wufun/databinding/nm;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private countDownTimer:Landroid/os/CountDownTimer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private keyGuideFragment:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastIndex:I

.field private popRule:Landroid/widget/PopupWindow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private settings:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public tabAdapter:Lh6/i;

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
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$special$$inlined$activityViewModels$default$3;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Ljava/lang/Long;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->initObserver$lambda$34(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Ljava/lang/Long;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->onViewCreated$lambda$22$lambda$16(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->onViewCreated$lambda$28$lambda$27(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public static synthetic P(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->onViewCreated$lambda$30$lambda$29(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Q(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->onViewCreated$lambda$22$lambda$21(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->onViewCreated$lambda$22$lambda$15(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Lcom/join/kotlin/module/hmcloud/bean/GuideState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->onViewCreated$lambda$26(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Lcom/join/kotlin/module/hmcloud/bean/GuideState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T(Landroid/view/ViewGroup;Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->onCreateView$lambda$2$lambda$1(Landroid/view/ViewGroup;Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V

    return-void
.end method

.method public static synthetic U(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->onViewCreated$lambda$22$lambda$19(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->onViewCreated$lambda$22$lambda$14(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->onViewCreated$lambda$23(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSummary;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->setRulePopVisible$lambda$12$lambda$11(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSummary;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->onViewCreated$lambda$26$lambda$25$lambda$24(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V

    return-void
.end method

.method public static synthetic Z(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Ljava/lang/Long;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->initObserver$lambda$35(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Ljava/lang/Long;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->onViewCreated$lambda$22$lambda$18(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b0(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->showGuide1$lambda$31(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final getRecyclerViewItemView(I)Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/nm;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/nm;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ltz p1, :cond_2

    .line 25
    .line 26
    if-ge p1, v2, :cond_2

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    :cond_2
    if-nez v3, :cond_3

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "position\u4e0d\u5408\u6cd5\uff1a"

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, "\uff08\u603b\u6570\u91cf\uff1a"

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const p1, 0xff09

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    move-object v2, v1

    .line 80
    :goto_1
    if-eqz v2, :cond_5

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eq v0, p1, :cond_5

    .line 91
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "View\u5df2\u88ab\u590d\u7528\uff0c\u4e0d\u5c5e\u4e8eposition="

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    return-object v1

    .line 115
    :cond_5
    return-object v2

    .line 116
    :cond_6
    :goto_2
    return-object v1
.end method

.method private static final initObserver$lambda$34(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Ljava/lang/Long;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->setRemainTime(J)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final initObserver$lambda$35(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Ljava/lang/Long;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->startTimer()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final onCreateView$lambda$2$lambda$1(Landroid/view/ViewGroup;Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V
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
    iget-object p1, p1, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/nm;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/nm;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/high16 v1, 0x40000000    # 2.0f

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 33
    .line 34
    invoke-direct {v1, v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/view/View;->layout(IIII)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$22$lambda$14(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->close()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onViewCreated$lambda$22$lambda$15(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->setRulePopVisible(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static final onViewCreated$lambda$22$lambda$16(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->setTab(I)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final onViewCreated$lambda$22$lambda$18(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

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
    sget-object v0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$BackToApp;->INSTANCE:Lcom/join/mgps/dto/hmcloud/HMMenuAction$BackToApp;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->close()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static final onViewCreated$lambda$22$lambda$19(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

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
    sget-object v0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$RelaunchGame;->INSTANCE:Lcom/join/mgps/dto/hmcloud/HMMenuAction$RelaunchGame;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->close()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static final onViewCreated$lambda$22$lambda$21(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

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
    sget-object v0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$AddTime;->INSTANCE:Lcom/join/mgps/dto/hmcloud/HMMenuAction$AddTime;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 23
    .line 24
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "btnBuy"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setTypeCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 32
    .line 33
    .line 34
    const-string v2, "cloudGameSetting"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setChatId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGameId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v1, p0}, Lcom/papa/sim/statistic/Ext;->setResourceId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 48
    .line 49
    .line 50
    const-string p0, "\u65f6\u957f\u5165\u53e3"

    .line 51
    .line 52
    invoke-virtual {v1, p0}, Lcom/papa/sim/statistic/Ext;->setScenesCode(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 53
    .line 54
    .line 55
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private static final onViewCreated$lambda$23(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getTabAdapter()Lh6/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lh6/i;->g(Z)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method private static final onViewCreated$lambda$26(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Lcom/join/kotlin/module/hmcloud/bean/GuideState;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    instance-of v0, p1, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/bean/GuideState$Page;->getIndex()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/nm;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/nm;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/n;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/n;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method private static final onViewCreated$lambda$26$lambda$25$lambda$24(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getRecyclerViewItemView(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getTabAdapter()Lh6/i;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, v0}, Lh6/i;->f(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->showGuide1(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$28$lambda$27(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static final onViewCreated$lambda$30$lambda$29(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p3}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->dispatchEvent(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x4

    .line 9
    if-ne p2, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method private final refresh()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->lastIndex:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->setTab(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final setRulePopVisible$lambda$12$lambda$11(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSummary;)Lkotlin/Unit;
    .locals 5

    .line 1
    const-string v0, "0\u5206\u949f"

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    invoke-virtual {p5}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSummary;->getFreeTime()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v1, v0

    .line 13
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    if-eqz p5, :cond_1

    .line 17
    .line 18
    invoke-virtual {p5}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSummary;->getVipTime()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-object p0, v0

    .line 26
    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x2

    .line 30
    new-array p1, p0, [Ljava/lang/Object;

    .line 31
    .line 32
    const-string v1, "0"

    .line 33
    .line 34
    if-eqz p5, :cond_2

    .line 35
    .line 36
    invoke-virtual {p5}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSummary;->getDiamond()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-nez v2, :cond_3

    .line 41
    .line 42
    :cond_2
    move-object v2, v1

    .line 43
    :cond_3
    const/4 v3, 0x0

    .line 44
    aput-object v2, p1, v3

    .line 45
    .line 46
    if-eqz p5, :cond_4

    .line 47
    .line 48
    invoke-virtual {p5}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSummary;->getDiamondTime()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-nez v2, :cond_5

    .line 53
    .line 54
    :cond_4
    move-object v2, v0

    .line 55
    :cond_5
    const/4 v4, 0x1

    .line 56
    aput-object v2, p1, v4

    .line 57
    .line 58
    const v2, 0x7f1200ad

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    new-array p0, p0, [Ljava/lang/Object;

    .line 69
    .line 70
    if-eqz p5, :cond_7

    .line 71
    .line 72
    invoke-virtual {p5}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSummary;->getCoin()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-nez p1, :cond_6

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_6
    move-object v1, p1

    .line 80
    :cond_7
    :goto_2
    aput-object v1, p0, v3

    .line 81
    .line 82
    if-eqz p5, :cond_9

    .line 83
    .line 84
    invoke-virtual {p5}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeSummary;->getCoinTime()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-nez p1, :cond_8

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_8
    move-object v0, p1

    .line 92
    :cond_9
    :goto_3
    aput-object v0, p0, v4

    .line 93
    .line 94
    invoke-virtual {p3, v2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 102
    .line 103
    return-object p0
.end method

.method private static final showGuide1$lambda$31(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/join/mgps/customview/guideview/d;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

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
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lcom/join/mgps/customview/guideview/d;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/customview/guideview/d;->e()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->close()V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final getArchive()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->archive:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBinding()Lcom/join/android/app/mgsim/wufun/databinding/nm;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/nm;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCountDownTimer()Landroid/os/CountDownTimer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKeyGuideFragment()Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->keyGuideFragment:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->lastIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPopRule()Landroid/widget/PopupWindow;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->popRule:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSettings()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->settings:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTabAdapter()Lh6/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->tabAdapter:Lh6/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "tabAdapter"

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
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->viewModel$delegate:Lkotlin/Lazy;

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

.method public final initObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getRemainTime()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/p;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/join/kotlin/module/hmcloud/menu/p;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$sam$androidx_lifecycle_Observer$0;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getPlayTime()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/q;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lcom/join/kotlin/module/hmcloud/menu/q;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$sam$androidx_lifecycle_Observer$0;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    invoke-static {p1, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/nm;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/nm;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/nm;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/nm;->h:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/haima/hmcp/HmcpManager;->getGameArchitectureType()Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/haima/hmcp/beans/GameArchitectureType;->ARM:Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 28
    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/16 v0, 0x8

    .line 34
    .line 35
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    if-eqz p2, :cond_2

    .line 39
    .line 40
    new-instance p1, Lcom/join/kotlin/module/hmcloud/menu/s;

    .line 41
    .line 42
    invoke-direct {p1, p2, p0}, Lcom/join/kotlin/module/hmcloud/menu/s;-><init>(Landroid/view/ViewGroup;Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/nm;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/join/android/app/mgsim/wufun/databinding/nm;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    const/high16 v1, 0x40000000    # 2.0f

    .line 80
    .line 81
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 93
    .line 94
    invoke-direct {v1, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p3, p3, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/nm;

    .line 110
    .line 111
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/nm;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string p2, "getRoot(...)"

    .line 119
    .line 120
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->stopTimer()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->saveLastOpConfig()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->saveLastCommonConfig()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMenuAction()Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/join/mgps/dto/hmcloud/HMMenuAction$OnMenuHide;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lcom/join/mgps/dto/hmcloud/HMMenuAction$OnMenuHide;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGameCfgInfoBySrv()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->requestPlaytimeSummary()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->refresh()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->requestPlaytimeSummary()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->initObserver()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/nm;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/nm;->e:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/u;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/u;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/nm;->j:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/v;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/v;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    new-instance p2, Lh6/i;

    .line 37
    .line 38
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/w;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/w;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, v0}, Lh6/i;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->setTabAdapter(Lh6/i;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getTabAdapter()Lh6/i;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->lastIndex:I

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Lh6/i;->f(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getTabAdapter()Lh6/i;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getCid()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p2, v0}, Lh6/i;->e(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/nm;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getTabAdapter()Lh6/i;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 95
    .line 96
    .line 97
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/nm;->c:Landroid/widget/LinearLayout;

    .line 98
    .line 99
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/x;

    .line 100
    .line 101
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/x;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/nm;->h:Landroid/widget/LinearLayout;

    .line 108
    .line 109
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/y;

    .line 110
    .line 111
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/y;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/nm;->f:Landroid/widget/ImageView;

    .line 118
    .line 119
    new-instance p2, Lcom/join/kotlin/module/hmcloud/menu/z;

    .line 120
    .line 121
    invoke-direct {p2, p0}, Lcom/join/kotlin/module/hmcloud/menu/z;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getShowKeyTips()Landroidx/lifecycle/MutableLiveData;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/a0;

    .line 140
    .line 141
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/a0;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V

    .line 142
    .line 143
    .line 144
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$sam$androidx_lifecycle_Observer$0;

    .line 145
    .line 146
    invoke-direct {v1, v0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGuideState()Landroidx/lifecycle/MutableLiveData;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/b0;

    .line 165
    .line 166
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/b0;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V

    .line 167
    .line 168
    .line 169
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$sam$androidx_lifecycle_Observer$0;

    .line 170
    .line 171
    invoke-direct {v1, v0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGameCfgInfoBySrv()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->requestPlaytimeSummary()V

    .line 189
    .line 190
    .line 191
    iget p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->lastIndex:I

    .line 192
    .line 193
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->setTab(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->startTimer()V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/nm;

    .line 200
    .line 201
    if-eqz p1, :cond_1

    .line 202
    .line 203
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/nm;->g:Landroid/widget/FrameLayout;

    .line 204
    .line 205
    if-eqz p1, :cond_1

    .line 206
    .line 207
    new-instance p2, Lcom/join/kotlin/module/hmcloud/menu/c0;

    .line 208
    .line 209
    invoke-direct {p2, p1}, Lcom/join/kotlin/module/hmcloud/menu/c0;-><init>(Landroid/widget/FrameLayout;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 213
    .line 214
    .line 215
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    if-eqz p1, :cond_2

    .line 220
    .line 221
    new-instance p2, Lcom/join/kotlin/module/hmcloud/menu/o;

    .line 222
    .line 223
    invoke-direct {p2, p0}, Lcom/join/kotlin/module/hmcloud/menu/o;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    if-eqz p2, :cond_2

    .line 234
    .line 235
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;

    .line 236
    .line 237
    invoke-direct {v0, p1, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;-><init>(Landroid/app/Dialog;Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 241
    .line 242
    .line 243
    :cond_2
    return-void
.end method

.method public final setArchive(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->archive:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-void
.end method

.method public final setBinding(Lcom/join/android/app/mgsim/wufun/databinding/nm;)V
    .locals 0
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/nm;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/nm;

    .line 2
    .line 3
    return-void
.end method

.method public final setCountDownTimer(Landroid/os/CountDownTimer;)V
    .locals 0
    .param p1    # Landroid/os/CountDownTimer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    return-void
.end method

.method public final setKeyGuideFragment(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->keyGuideFragment:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 2
    .line 3
    return-void
.end method

.method public final setLastIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->lastIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPopRule(Landroid/widget/PopupWindow;)V
    .locals 0
    .param p1    # Landroid/widget/PopupWindow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->popRule:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    return-void
.end method

.method public final setRemainTime(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gtz v2, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/nm;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/nm;->k:Landroid/widget/TextView;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p2, "\u5df2\u5230\u671f"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/nm;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/nm;->k:Landroid/widget/TextView;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2, p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->formatRemainTime(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method public final setRulePopVisible(Z)V
    .locals 9

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->popRule:Landroid/widget/PopupWindow;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const v1, 0x7f0d05dd

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const v1, 0x7f0a196b

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v3, v1

    .line 28
    check-cast v3, Landroid/widget/TextView;

    .line 29
    .line 30
    const v1, 0x7f0a1a6c

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move-object v4, v1

    .line 38
    check-cast v4, Landroid/widget/TextView;

    .line 39
    .line 40
    const v1, 0x7f0a1957

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    move-object v5, v1

    .line 48
    check-cast v5, Landroid/widget/TextView;

    .line 49
    .line 50
    const v1, 0x7f0a193c

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    move-object v7, v1

    .line 58
    check-cast v7, Landroid/widget/TextView;

    .line 59
    .line 60
    new-instance v1, Landroid/widget/PopupWindow;

    .line 61
    .line 62
    const/4 v2, -0x2

    .line 63
    invoke-direct {v1, p1, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->popRule:Landroid/widget/PopupWindow;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    const-string p1, "requireContext(...)"

    .line 73
    .line 74
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getPlaytimeSummary()Landroidx/lifecycle/MutableLiveData;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-instance v8, Lcom/join/kotlin/module/hmcloud/menu/r;

    .line 90
    .line 91
    move-object v2, v8

    .line 92
    invoke-direct/range {v2 .. v7}, Lcom/join/kotlin/module/hmcloud/menu/r;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;)V

    .line 93
    .line 94
    .line 95
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$sam$androidx_lifecycle_Observer$0;

    .line 96
    .line 97
    invoke-direct {v2, v8}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->popRule:Landroid/widget/PopupWindow;

    .line 104
    .line 105
    if-eqz p1, :cond_0

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 108
    .line 109
    .line 110
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 111
    .line 112
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->popRule:Landroid/widget/PopupWindow;

    .line 113
    .line 114
    const/4 v1, 0x0

    .line 115
    if-eqz p1, :cond_2

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-ne p1, v0, :cond_2

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    const/4 v0, 0x0

    .line 125
    :goto_0
    if-eqz v0, :cond_3

    .line 126
    .line 127
    return-void

    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->requestPlaytimeSummary()V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/nm;

    .line 136
    .line 137
    if-eqz p1, :cond_5

    .line 138
    .line 139
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/nm;->j:Landroid/widget/LinearLayout;

    .line 140
    .line 141
    if-eqz p1, :cond_5

    .line 142
    .line 143
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->popRule:Landroid/widget/PopupWindow;

    .line 144
    .line 145
    if-eqz v0, :cond_5

    .line 146
    .line 147
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->popRule:Landroid/widget/PopupWindow;

    .line 152
    .line 153
    if-eqz p1, :cond_5

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 156
    .line 157
    .line 158
    :cond_5
    :goto_1
    return-void
.end method

.method public final setSettings(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->settings:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-void
.end method

.method public final setTab(I)V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    if-le p1, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->showGuide2()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    const/4 v0, 0x2

    .line 12
    if-ne p1, v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string p1, "requireContext(...)"

    .line 23
    .line 24
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x6

    .line 30
    const/4 v6, 0x0

    .line 31
    invoke-static/range {v1 .. v6}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->feedback$default(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    const/4 v0, 0x1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    if-eq p1, v0, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getTabAdapter()Lh6/i;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1, p1}, Lh6/i;->f(I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "beginTransaction(...)"

    .line 57
    .line 58
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->lastIndex:I

    .line 62
    .line 63
    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->settings:Landroidx/fragment/app/Fragment;

    .line 64
    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 70
    .line 71
    .line 72
    :cond_4
    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->archive:Landroidx/fragment/app/Fragment;

    .line 73
    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    if-eq p1, v0, :cond_5

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 79
    .line 80
    .line 81
    :cond_5
    const v2, 0x7f0a0fee

    .line 82
    .line 83
    .line 84
    if-eqz p1, :cond_9

    .line 85
    .line 86
    if-eq p1, v0, :cond_6

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_6
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->archive:Landroidx/fragment/app/Fragment;

    .line 90
    .line 91
    if-nez p1, :cond_7

    .line 92
    .line 93
    new-instance p1, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;

    .line 94
    .line 95
    invoke-direct {p1}, Lcom/join/kotlin/module/hmcloud/menu/HMArchiveFragment;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->archive:Landroidx/fragment/app/Fragment;

    .line 99
    .line 100
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 101
    .line 102
    :cond_7
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->archive:Landroidx/fragment/app/Fragment;

    .line 103
    .line 104
    if-eqz p1, :cond_c

    .line 105
    .line 106
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_8

    .line 111
    .line 112
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 113
    .line 114
    .line 115
    :cond_8
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_9
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->settings:Landroidx/fragment/app/Fragment;

    .line 120
    .line 121
    if-nez p1, :cond_a

    .line 122
    .line 123
    new-instance p1, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsFragment;

    .line 124
    .line 125
    invoke-direct {p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsFragment;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->settings:Landroidx/fragment/app/Fragment;

    .line 129
    .line 130
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 131
    .line 132
    :cond_a
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->settings:Landroidx/fragment/app/Fragment;

    .line 133
    .line 134
    if-eqz p1, :cond_c

    .line 135
    .line 136
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_b

    .line 141
    .line 142
    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 143
    .line 144
    .line 145
    :cond_b
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 146
    .line 147
    .line 148
    :cond_c
    :goto_1
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public final setTabAdapter(Lh6/i;)V
    .locals 1
    .param p1    # Lh6/i;
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->tabAdapter:Lh6/i;

    .line 7
    .line 8
    return-void
.end method

.method public final showGuide1(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 5
    .line 6
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/t;

    .line 10
    .line 11
    invoke-direct {v1, p0, v0}, Lcom/join/kotlin/module/hmcloud/menu/t;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/join/mgps/customview/guideview/GuideBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Lcom/join/mgps/customview/guideview/GuideBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Lcom/join/mgps/customview/guideview/GuideBuilder;->t(Landroid/view/View;)Lcom/join/mgps/customview/guideview/GuideBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {p1, v3}, Lcom/join/mgps/customview/guideview/GuideBuilder;->d(Z)Lcom/join/mgps/customview/guideview/GuideBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/16 v3, 0x96

    .line 29
    .line 30
    invoke-virtual {p1, v3}, Lcom/join/mgps/customview/guideview/GuideBuilder;->c(I)Lcom/join/mgps/customview/guideview/GuideBuilder;

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$showGuide1$1;

    .line 34
    .line 35
    invoke-direct {p1, v1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$showGuide1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Lcom/join/mgps/customview/guideview/GuideBuilder;->a(Lcom/join/mgps/customview/guideview/b;)Lcom/join/mgps/customview/guideview/GuideBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/join/mgps/customview/guideview/GuideBuilder;->b()Lcom/join/mgps/customview/guideview/d;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/guideview/d;->l(Z)V

    .line 49
    .line 50
    .line 51
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Lcom/join/mgps/customview/guideview/d;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/nm;

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/join/android/app/mgsim/wufun/databinding/nm;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/4 v1, 0x0

    .line 69
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/customview/guideview/d;->n(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final showGuide2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->keyGuideFragment:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->keyGuideFragment:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 11
    .line 12
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->keyGuideFragment:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    new-instance v1, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "instruction"

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-class v2, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public final startTimer()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->stopTimer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->calcRemainTime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide/16 v2, 0x3e8

    .line 17
    .line 18
    mul-long v0, v0, v2

    .line 19
    .line 20
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$startTimer$1$1;

    .line 21
    .line 22
    invoke-direct {v2, p0, v0, v1}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$startTimer$1$1;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;J)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 26
    .line 27
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final stopTimer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 10
    .line 11
    return-void
.end method
