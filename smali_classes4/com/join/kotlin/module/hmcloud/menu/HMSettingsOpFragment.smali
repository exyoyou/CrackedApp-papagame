.class public final Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMSettingsOpFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMSettingsOpFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,303:1\n172#2,9:304\n1878#3,3:313\n*S KotlinDebug\n*F\n+ 1 HMSettingsOpFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment\n*L\n44#1:304,9\n288#1:313,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010C\u001a\u0004\u0018\u00010\u00172\u0006\u0010D\u001a\u00020E2\u0008\u0010F\u001a\u0004\u0018\u00010G2\u0008\u0010H\u001a\u0004\u0018\u00010IH\u0016J\u001a\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020\u00172\u0008\u0010H\u001a\u0004\u0018\u00010IH\u0016J\u0010\u0010M\u001a\u00020K2\u0008\u0010N\u001a\u0004\u0018\u00010OJ\u0010\u0010P\u001a\u00020K2\u0008\u0010N\u001a\u0004\u0018\u00010OJ\u0006\u0010Q\u001a\u00020KJ\u000e\u0010R\u001a\u00020K2\u0006\u0010S\u001a\u00020TJ\u0006\u0010U\u001a\u00020KJ\u0010\u0010V\u001a\u00020K2\u0006\u0010W\u001a\u00020XH\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\tR\u001a\u0010\u0013\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u0017X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0017X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019\"\u0004\u0008\u001e\u0010\u001bR\u001a\u0010\u001f\u001a\u00020\u0017X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0019\"\u0004\u0008!\u0010\u001bR\u001a\u0010\"\u001a\u00020\u0017X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0019\"\u0004\u0008$\u0010\u001bR\u001a\u0010%\u001a\u00020&X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010+\u001a\u00020,X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001b\u00101\u001a\u0002028FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00083\u00104R\u001c\u00107\u001a\u0004\u0018\u000108X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u001c\u0010=\u001a\u0004\u0018\u00010>X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010B\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "sbTransparent",
        "Landroid/widget/SeekBar;",
        "getSbTransparent",
        "()Landroid/widget/SeekBar;",
        "setSbTransparent",
        "(Landroid/widget/SeekBar;)V",
        "tvTransparent",
        "Landroid/widget/TextView;",
        "getTvTransparent",
        "()Landroid/widget/TextView;",
        "setTvTransparent",
        "(Landroid/widget/TextView;)V",
        "sbSen",
        "getSbSen",
        "setSbSen",
        "tvSen",
        "getTvSen",
        "setTvSen",
        "ivVibrate",
        "Landroid/view/View;",
        "getIvVibrate",
        "()Landroid/view/View;",
        "setIvVibrate",
        "(Landroid/view/View;)V",
        "ivKeyHide",
        "getIvKeyHide",
        "setIvKeyHide",
        "ivZoom",
        "getIvZoom",
        "setIvZoom",
        "ivKeyboardInput",
        "getIvKeyboardInput",
        "setIvKeyboardInput",
        "binding",
        "Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmSettingsOpBinding;",
        "getBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmSettingsOpBinding;",
        "setBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/FragmentHmSettingsOpBinding;)V",
        "keyTypeAdapter",
        "Lcom/join/mgps/adapter/hmcloud/HMKeyTypeAdapter;",
        "getKeyTypeAdapter",
        "()Lcom/join/mgps/adapter/hmcloud/HMKeyTypeAdapter;",
        "setKeyTypeAdapter",
        "(Lcom/join/mgps/adapter/hmcloud/HMKeyTypeAdapter;)V",
        "viewModel",
        "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;",
        "getViewModel",
        "()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "dialogOpMode",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;",
        "getDialogOpMode",
        "()Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;",
        "setDialogOpMode",
        "(Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;)V",
        "dialogOpTemplate",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;",
        "getDialogOpTemplate",
        "()Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;",
        "setDialogOpTemplate",
        "(Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;)V",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "showDeleteKeyTypeDialog",
        "cfg",
        "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
        "onKeyTypeClick",
        "showOpModeDialog",
        "showOpTemplateDialog",
        "type",
        "",
        "initObserver",
        "toast",
        "msg",
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
        "SMAP\nHMSettingsOpFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMSettingsOpFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,303:1\n172#2,9:304\n1878#3,3:313\n*S KotlinDebug\n*F\n+ 1 HMSettingsOpFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment\n*L\n44#1:304,9\n288#1:313,3\n*E\n"
    }
.end annotation


# instance fields
.field public binding:Lcom/join/android/app/mgsim/wufun/databinding/qm;

.field private dialogOpMode:Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dialogOpTemplate:Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public ivKeyHide:Landroid/view/View;

.field public ivKeyboardInput:Landroid/view/View;

.field public ivVibrate:Landroid/view/View;

.field public ivZoom:Landroid/view/View;

.field public keyTypeAdapter:Lh6/d;

.field public sbSen:Landroid/widget/SeekBar;

.field public sbTransparent:Landroid/widget/SeekBar;

.field public tvSen:Landroid/widget/TextView;

.field public tvTransparent:Landroid/widget/TextView;

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
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$special$$inlined$activityViewModels$default$3;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->onViewCreated$lambda$8(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->onViewCreated$lambda$5(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic O(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Float;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->initObserver$lambda$34(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Float;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->onViewCreated$lambda$17$lambda$14(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->showOpTemplateDialog$lambda$26(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->onViewCreated$lambda$17$lambda$11(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->onViewCreated$lambda$17$lambda$9(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;IZ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->showOpTemplateDialog$lambda$28$lambda$27(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;IZ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->onViewCreated$lambda$17$lambda$12(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->initObserver$lambda$42(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->onViewCreated$lambda$2(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->onViewCreated$lambda$7(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Y(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->onViewCreated$lambda$17$lambda$13(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Z(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->showDeleteKeyTypeDialog$lambda$19$lambda$18(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->onViewCreated$lambda$17$lambda$10(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b0(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->onViewCreated$lambda$0(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->initObserver$lambda$36(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->initObserver$lambda$37(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->initObserver$lambda$38(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->initObserver$lambda$35(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Landroid/widget/FrameLayout;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->showOpTemplateDialog$lambda$30(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Landroid/widget/FrameLayout;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Lcom/facebook/drawee/view/SimpleDraweeView;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->onViewCreated$lambda$17$lambda$16(Lcom/facebook/drawee/view/SimpleDraweeView;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i0(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->initObserver$lambda$32(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final initObserver$lambda$31(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getKeyTypeAdapter()Lh6/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lh6/d;->k(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getKeyTypeAdapter()Lh6/d;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/qm;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final initObserver$lambda$32(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getKeyTypeAdapter()Lh6/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Lh6/d;->setItems(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getKeyTypeAdapter()Lh6/d;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/qm;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method private static final initObserver$lambda$33(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Float;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x64

    .line 6
    .line 7
    int-to-float v0, v0

    .line 8
    mul-float p1, p1, v0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getSbTransparent()Landroid/widget/SeekBar;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eq v0, p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getSbTransparent()Landroid/widget/SeekBar;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method

.method private static final initObserver$lambda$34(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Float;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/high16 v0, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float/2addr p1, v0

    .line 8
    const/16 v0, 0x64

    .line 9
    .line 10
    int-to-float v0, v0

    .line 11
    mul-float p1, p1, v0

    .line 12
    .line 13
    float-to-int p1, p1

    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getSbSen()Landroid/widget/SeekBar;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eq v0, p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getSbSen()Landroid/widget/SeekBar;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method

.method private static final initObserver$lambda$35(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getIvVibrate()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final initObserver$lambda$36(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getIvKeyHide()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final initObserver$lambda$37(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getIvZoom()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final initObserver$lambda$38(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getIvKeyboardInput()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final initObserver$lambda$41(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x6

    .line 7
    new-array v1, v0, [Lkotlin/Pair;

    .line 8
    .line 9
    sget-object v2, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_NONE:Lcom/haima/hmcp/enums/TouchMode;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const v3, 0x7f12021d

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    aput-object v2, v1, v3

    .line 32
    .line 33
    sget-object v2, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_MOUSE:Lcom/haima/hmcp/enums/TouchMode;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const v4, 0x7f12021e

    .line 44
    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/4 v4, 0x1

    .line 55
    aput-object v2, v1, v4

    .line 56
    .line 57
    sget-object v2, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_SCREEN:Lcom/haima/hmcp/enums/TouchMode;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const v5, 0x7f12021f

    .line 68
    .line 69
    .line 70
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const/4 v5, 0x2

    .line 79
    aput-object v2, v1, v5

    .line 80
    .line 81
    sget-object v2, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_MULTIPLE:Lcom/haima/hmcp/enums/TouchMode;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const v6, 0x7f120220

    .line 92
    .line 93
    .line 94
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const/4 v6, 0x3

    .line 103
    aput-object v2, v1, v6

    .line 104
    .line 105
    sget-object v2, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_SCREEN_SLIDE:Lcom/haima/hmcp/enums/TouchMode;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const v7, 0x7f120221

    .line 116
    .line 117
    .line 118
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-static {v2, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    const/4 v7, 0x4

    .line 127
    aput-object v2, v1, v7

    .line 128
    .line 129
    sget-object v2, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_MOUSE_SLIDE:Lcom/haima/hmcp/enums/TouchMode;

    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const v8, 0x7f120222

    .line 140
    .line 141
    .line 142
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-static {v2, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    const/4 v8, 0x5

    .line 151
    aput-object v2, v1, v8

    .line 152
    .line 153
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Ljava/lang/Integer;

    .line 162
    .line 163
    if-eqz v1, :cond_1

    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    goto :goto_0

    .line 170
    :cond_1
    const v1, 0x7f12021c

    .line 171
    .line 172
    .line 173
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/qm;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    iget-object v9, v2, Lcom/join/android/app/mgsim/wufun/databinding/qm;->y:Landroid/widget/TextView;

    .line 178
    .line 179
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {v9, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    new-array p0, v0, [Landroid/widget/LinearLayout;

    .line 187
    .line 188
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/qm;->s:Landroid/widget/LinearLayout;

    .line 189
    .line 190
    aput-object v0, p0, v3

    .line 191
    .line 192
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/qm;->p:Landroid/widget/LinearLayout;

    .line 193
    .line 194
    aput-object v0, p0, v4

    .line 195
    .line 196
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/qm;->t:Landroid/widget/LinearLayout;

    .line 197
    .line 198
    aput-object v0, p0, v5

    .line 199
    .line 200
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/qm;->r:Landroid/widget/LinearLayout;

    .line 201
    .line 202
    aput-object v0, p0, v6

    .line 203
    .line 204
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/qm;->u:Landroid/widget/LinearLayout;

    .line 205
    .line 206
    aput-object v0, p0, v7

    .line 207
    .line 208
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/qm;->q:Landroid/widget/LinearLayout;

    .line 209
    .line 210
    aput-object v0, p0, v8

    .line 211
    .line 212
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    check-cast p0, Ljava/lang/Iterable;

    .line 217
    .line 218
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    const/4 v0, 0x0

    .line 223
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-eqz v1, :cond_4

    .line 228
    .line 229
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    add-int/lit8 v2, v0, 0x1

    .line 234
    .line 235
    if-gez v0, :cond_2

    .line 236
    .line 237
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 238
    .line 239
    .line 240
    :cond_2
    check-cast v1, Landroid/widget/LinearLayout;

    .line 241
    .line 242
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    if-ne v0, v5, :cond_3

    .line 247
    .line 248
    const/4 v0, 0x1

    .line 249
    goto :goto_2

    .line 250
    :cond_3
    const/4 v0, 0x0

    .line 251
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 252
    .line 253
    .line 254
    move v0, v2

    .line 255
    goto :goto_1

    .line 256
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 257
    .line 258
    return-object p0
.end method

.method private static final initObserver$lambda$42(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpTemplate:Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getCurrentKeyType()Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;->setTemplateList(Ljava/util/List;Lcom/join/mgps/dto/hmcloud/HandleCfg;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method public static synthetic j0(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->showOpModeDialog$lambda$22(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->onViewCreated$lambda$6(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->showOpModeDialog$lambda$23(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m0(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->showOpTemplateDialog$lambda$30$lambda$29(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n0(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Float;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->initObserver$lambda$33(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Float;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;ILcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->showOpTemplateDialog$lambda$28(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;ILcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final onViewCreated$lambda$0(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->onKeyTypeClick(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final onViewCreated$lambda$17$lambda$10(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_NONE:Lcom/haima/hmcp/enums/TouchMode;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final onViewCreated$lambda$17$lambda$11(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_MOUSE:Lcom/haima/hmcp/enums/TouchMode;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final onViewCreated$lambda$17$lambda$12(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_SCREEN:Lcom/haima/hmcp/enums/TouchMode;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final onViewCreated$lambda$17$lambda$13(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_MULTIPLE:Lcom/haima/hmcp/enums/TouchMode;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final onViewCreated$lambda$17$lambda$14(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_SCREEN_SLIDE:Lcom/haima/hmcp/enums/TouchMode;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final onViewCreated$lambda$17$lambda$15(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/haima/hmcp/enums/TouchMode;->TOUCH_MODE_MOUSE_SLIDE:Lcom/haima/hmcp/enums/TouchMode;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final onViewCreated$lambda$17$lambda$16(Lcom/facebook/drawee/view/SimpleDraweeView;I)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->w(I)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->N(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->F(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Ls3/a;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method private static final onViewCreated$lambda$17$lambda$9(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->setTouchMode(I)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method private static final onViewCreated$lambda$2(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "edit"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->setFrom(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->editCustomOpConfig(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final onViewCreated$lambda$3(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->showDeleteKeyTypeDialog(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final onViewCreated$lambda$5(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getKeyVibrate()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getIvVibrate()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    xor-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static final onViewCreated$lambda$6(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getKeyHide()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getIvKeyHide()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    xor-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static final onViewCreated$lambda$7(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getPinchToZoom()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getIvZoom()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    xor-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static final onViewCreated$lambda$8(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getKeyboardInput()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getIvKeyboardInput()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    xor-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static synthetic p0(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->onViewCreated$lambda$17$lambda$15(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->onViewCreated$lambda$3(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->initObserver$lambda$31(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s0(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->initObserver$lambda$41(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Ljava/lang/Integer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final showDeleteKeyTypeDialog$lambda$19$lambda$18(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {p0, p1, v0, v1, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->deleteCustomOpConfig$default(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/HandleCfg;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final showOpModeDialog$lambda$22(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->showOpTemplateDialog(I)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final showOpModeDialog$lambda$23(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->showOpTemplateDialog(I)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final showOpTemplateDialog$lambda$26(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMenuAction()Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->setFrom(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOp;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-direct {v1, p1, v2, v3, v0}, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOp;-><init>(Lcom/join/mgps/dto/hmcloud/HandleCfg;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method private static final showOpTemplateDialog$lambda$28(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;ILcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/s2;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/s2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->deleteCustomOpConfig(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lkotlin/jvm/functions/Function1;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final showOpTemplateDialog$lambda$28$lambda$27(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;IZ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->loadTemplate(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->refreshKeyboardTypeList()V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private static final showOpTemplateDialog$lambda$30(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Landroid/widget/FrameLayout;Lcom/join/mgps/dto/hmcloud/HandleCfg;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "cfg"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/t1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/t1;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->loadTemplateKeys(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method private static final showOpTemplateDialog$lambda$30$lambda$29(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpTemplate:Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;->setTemplateKeys(Lcom/join/mgps/dto/hmcloud/HMOpConfig;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method private final toast(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/join/android/app/mgsim/wufun/databinding/qm;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/qm;

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

.method public final getDialogOpMode()Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpMode:Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDialogOpTemplate()Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpTemplate:Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIvKeyHide()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->ivKeyHide:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "ivKeyHide"

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

.method public final getIvKeyboardInput()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->ivKeyboardInput:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "ivKeyboardInput"

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

.method public final getIvVibrate()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->ivVibrate:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "ivVibrate"

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

.method public final getIvZoom()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->ivZoom:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "ivZoom"

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

.method public final getKeyTypeAdapter()Lh6/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->keyTypeAdapter:Lh6/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "keyTypeAdapter"

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

.method public final getSbSen()Landroid/widget/SeekBar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->sbSen:Landroid/widget/SeekBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "sbSen"

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

.method public final getSbTransparent()Landroid/widget/SeekBar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->sbTransparent:Landroid/widget/SeekBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "sbTransparent"

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

.method public final getTvSen()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->tvSen:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "tvSen"

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

.method public final getTvTransparent()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->tvTransparent:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "tvTransparent"

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
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->viewModel$delegate:Lkotlin/Lazy;

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
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getCurrentKeyType()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/h2;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/join/kotlin/module/hmcloud/menu/h2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getKeyTypeList()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/i2;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lcom/join/kotlin/module/hmcloud/menu/i2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getKeyAlpha()Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/j2;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lcom/join/kotlin/module/hmcloud/menu/j2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;

    .line 69
    .line 70
    invoke-direct {v3, v2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMouseSensitivity()Landroidx/lifecycle/MutableLiveData;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/k2;

    .line 89
    .line 90
    invoke-direct {v2, p0}, Lcom/join/kotlin/module/hmcloud/menu/k2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;

    .line 94
    .line 95
    invoke-direct {v3, v2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getKeyVibrate()Landroidx/lifecycle/MutableLiveData;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/l2;

    .line 114
    .line 115
    invoke-direct {v2, p0}, Lcom/join/kotlin/module/hmcloud/menu/l2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 116
    .line 117
    .line 118
    new-instance v3, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;

    .line 119
    .line 120
    invoke-direct {v3, v2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getKeyHide()Landroidx/lifecycle/MutableLiveData;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/m2;

    .line 139
    .line 140
    invoke-direct {v2, p0}, Lcom/join/kotlin/module/hmcloud/menu/m2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 141
    .line 142
    .line 143
    new-instance v3, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;

    .line 144
    .line 145
    invoke-direct {v3, v2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getPinchToZoom()Landroidx/lifecycle/MutableLiveData;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/n2;

    .line 164
    .line 165
    invoke-direct {v2, p0}, Lcom/join/kotlin/module/hmcloud/menu/n2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 166
    .line 167
    .line 168
    new-instance v3, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;

    .line 169
    .line 170
    invoke-direct {v3, v2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getKeyboardInput()Landroidx/lifecycle/MutableLiveData;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/o2;

    .line 189
    .line 190
    invoke-direct {v2, p0}, Lcom/join/kotlin/module/hmcloud/menu/o2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 191
    .line 192
    .line 193
    new-instance v3, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;

    .line 194
    .line 195
    invoke-direct {v3, v2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getTouchMode()Landroidx/lifecycle/MutableLiveData;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/q2;

    .line 214
    .line 215
    invoke-direct {v2, p0}, Lcom/join/kotlin/module/hmcloud/menu/q2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 216
    .line 217
    .line 218
    new-instance v3, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;

    .line 219
    .line 220
    invoke-direct {v3, v2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getTemplateList()Landroidx/lifecycle/MutableLiveData;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/r2;

    .line 239
    .line 240
    invoke-direct {v2, p0}, Lcom/join/kotlin/module/hmcloud/menu/r2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 241
    .line 242
    .line 243
    new-instance v3, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;

    .line 244
    .line 245
    invoke-direct {v3, v2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 249
    .line 250
    .line 251
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
    invoke-static {p1, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/qm;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/qm;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->setBinding(Lcom/join/android/app/mgsim/wufun/databinding/qm;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/qm;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/qm;->a()Landroid/widget/FrameLayout;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "getRoot(...)"

    .line 23
    .line 24
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const p2, 0x7f0a1477

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Landroid/widget/SeekBar;

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->setSbTransparent(Landroid/widget/SeekBar;)V

    .line 37
    .line 38
    .line 39
    const p2, 0x7f0a1905

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {p0, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->setTvTransparent(Landroid/widget/TextView;)V

    .line 49
    .line 50
    .line 51
    const p2, 0x7f0a09fb

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p0, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->setIvVibrate(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    const p2, 0x7f0a09d7

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p0, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->setIvKeyHide(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    const p2, 0x7f0a09fd

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p0, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->setIvZoom(Landroid/view/View;)V

    .line 79
    .line 80
    .line 81
    const p2, 0x7f0a09d8

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p0, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->setIvKeyboardInput(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    const p2, 0x7f0a1476

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    check-cast p2, Landroid/widget/SeekBar;

    .line 99
    .line 100
    invoke-virtual {p0, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->setSbSen(Landroid/widget/SeekBar;)V

    .line 101
    .line 102
    .line 103
    const p2, 0x7f0a18e1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->setTvSen(Landroid/widget/TextView;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/qm;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/qm;->a()Landroid/widget/FrameLayout;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    return-object p1
.end method

.method public final onKeyTypeClick(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/hmcloud/HandleCfg;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->isAddKeyType(Lcom/join/mgps/dto/hmcloud/HandleCfg;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getCustomOpConfig()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMaxOpConfigSize()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-lt p1, v0, :cond_0

    .line 34
    .line 35
    const-string p1, "\u6700\u591a\u652f\u6301\u6dfb\u52a03\u4e2a\u81ea\u5b9a\u4e49\u65b9\u6848"

    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->toast(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->showOpModeDialog()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->switchOpConfig(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
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
    new-instance p1, Lh6/d;

    .line 10
    .line 11
    new-instance p2, Lcom/join/kotlin/module/hmcloud/menu/w2;

    .line 12
    .line 13
    invoke-direct {p2, p0}, Lcom/join/kotlin/module/hmcloud/menu/w2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/w1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/w1;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/x1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/menu/x1;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p2, v0, v1}, Lh6/d;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->setKeyTypeAdapter(Lh6/d;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/qm;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    .line 38
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getKeyTypeAdapter()Lh6/d;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    const v0, 0x7f0713ac

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$onViewCreated$4$1;

    .line 74
    .line 75
    invoke-direct {v1, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$onViewCreated$4$1;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->initObserver()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getSbTransparent()Landroid/widget/SeekBar;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const/16 p2, 0x64

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getKeyAlpha()Landroidx/lifecycle/MutableLiveData;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Ljava/lang/Float;

    .line 119
    .line 120
    if-eqz p1, :cond_0

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    goto :goto_0

    .line 127
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 128
    .line 129
    :goto_0
    int-to-float v0, p2

    .line 130
    mul-float p1, p1, v0

    .line 131
    .line 132
    float-to-int p1, p1

    .line 133
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getSbTransparent()Landroid/widget/SeekBar;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getTvTransparent()Landroid/widget/TextView;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-static {p1, v2, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const/16 p1, 0x25

    .line 157
    .line 158
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getSbTransparent()Landroid/widget/SeekBar;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$onViewCreated$5;

    .line 173
    .line 174
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$onViewCreated$5;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getIvVibrate()Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/y1;

    .line 185
    .line 186
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/y1;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getIvKeyHide()Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/z1;

    .line 197
    .line 198
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/z1;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getIvZoom()Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/a2;

    .line 209
    .line 210
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/a2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getIvKeyboardInput()Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/b2;

    .line 221
    .line 222
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/b2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getBinding()Lcom/join/android/app/mgsim/wufun/databinding/qm;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/c2;

    .line 233
    .line 234
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/menu/c2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 235
    .line 236
    .line 237
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm;->s:Landroid/widget/LinearLayout;

    .line 238
    .line 239
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/d2;

    .line 240
    .line 241
    invoke-direct {v2, v0}, Lcom/join/kotlin/module/hmcloud/menu/d2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    .line 246
    .line 247
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm;->p:Landroid/widget/LinearLayout;

    .line 248
    .line 249
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/f2;

    .line 250
    .line 251
    invoke-direct {v2, v0}, Lcom/join/kotlin/module/hmcloud/menu/f2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    .line 256
    .line 257
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm;->t:Landroid/widget/LinearLayout;

    .line 258
    .line 259
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/x2;

    .line 260
    .line 261
    invoke-direct {v2, v0}, Lcom/join/kotlin/module/hmcloud/menu/x2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    .line 266
    .line 267
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm;->r:Landroid/widget/LinearLayout;

    .line 268
    .line 269
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/y2;

    .line 270
    .line 271
    invoke-direct {v2, v0}, Lcom/join/kotlin/module/hmcloud/menu/y2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    .line 276
    .line 277
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm;->u:Landroid/widget/LinearLayout;

    .line 278
    .line 279
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/z2;

    .line 280
    .line 281
    invoke-direct {v2, v0}, Lcom/join/kotlin/module/hmcloud/menu/z2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    .line 286
    .line 287
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm;->q:Landroid/widget/LinearLayout;

    .line 288
    .line 289
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/u1;

    .line 290
    .line 291
    invoke-direct {v2, v0}, Lcom/join/kotlin/module/hmcloud/menu/u1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    .line 296
    .line 297
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/v1;

    .line 298
    .line 299
    invoke-direct {v0}, Lcom/join/kotlin/module/hmcloud/menu/v1;-><init>()V

    .line 300
    .line 301
    .line 302
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm;->m:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 303
    .line 304
    const-string v2, "sdvNone"

    .line 305
    .line 306
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    const v2, 0x7f080930

    .line 310
    .line 311
    .line 312
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 320
    .line 321
    const-string v2, "sdvMouse"

    .line 322
    .line 323
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    const v2, 0x7f080931

    .line 327
    .line 328
    .line 329
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm;->n:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 337
    .line 338
    const-string v2, "sdvScreen"

    .line 339
    .line 340
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    const v2, 0x7f080932

    .line 344
    .line 345
    .line 346
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm;->l:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 354
    .line 355
    const-string v2, "sdvMultiple"

    .line 356
    .line 357
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    const v2, 0x7f080933

    .line 361
    .line 362
    .line 363
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm;->o:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 371
    .line 372
    const-string v2, "sdvScreenSlide"

    .line 373
    .line 374
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    const v2, 0x7f080934

    .line 378
    .line 379
    .line 380
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 388
    .line 389
    const-string v1, "sdvMouseSlide"

    .line 390
    .line 391
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    const v1, 0x7f080935

    .line 395
    .line 396
    .line 397
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getSbSen()Landroid/widget/SeekBar;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getSbSen()Landroid/widget/SeekBar;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$onViewCreated$11;

    .line 416
    .line 417
    invoke-direct {v0, p2, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment$onViewCreated$11;-><init>(ILcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 421
    .line 422
    .line 423
    return-void
.end method

.method public final setBinding(Lcom/join/android/app/mgsim/wufun/databinding/qm;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/qm;
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/qm;

    .line 7
    .line 8
    return-void
.end method

.method public final setDialogOpMode(Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpMode:Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;

    .line 2
    .line 3
    return-void
.end method

.method public final setDialogOpTemplate(Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpTemplate:Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;

    .line 2
    .line 3
    return-void
.end method

.method public final setIvKeyHide(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->ivKeyHide:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setIvKeyboardInput(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->ivKeyboardInput:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setIvVibrate(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->ivVibrate:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setIvZoom(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->ivZoom:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setKeyTypeAdapter(Lh6/d;)V
    .locals 1
    .param p1    # Lh6/d;
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->keyTypeAdapter:Lh6/d;

    .line 7
    .line 8
    return-void
.end method

.method public final setSbSen(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1    # Landroid/widget/SeekBar;
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->sbSen:Landroid/widget/SeekBar;

    .line 7
    .line 8
    return-void
.end method

.method public final setSbTransparent(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1    # Landroid/widget/SeekBar;
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->sbTransparent:Landroid/widget/SeekBar;

    .line 7
    .line 8
    return-void
.end method

.method public final setTvSen(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->tvSen:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public final setTvTransparent(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->tvTransparent:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public final showDeleteKeyTypeDialog(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V
    .locals 3
    .param p1    # Lcom/join/mgps/dto/hmcloud/HandleCfg;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "requireActivity(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 18
    .line 19
    .line 20
    const-string v1, "\u786e\u5b9a\u5220\u9664\u5417\uff1f"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;->setContent(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/g2;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1, v0}, Lcom/join/kotlin/module/hmcloud/menu/g2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x2

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static {v0, v1, v2, p1, v2}, Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;->setCallback$default(Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final showOpModeDialog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpMode:Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "requireActivity(...)"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpMode:Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;

    .line 20
    .line 21
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpMode:Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpMode:Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpMode:Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getCurrentKeyType()Landroidx/lifecycle/MutableLiveData;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getCfg_type()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    :cond_3
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;->setTip(I)V

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpMode:Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/u2;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/menu/u2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/v2;

    .line 83
    .line 84
    invoke-direct {v2, p0}, Lcom/join/kotlin/module/hmcloud/menu/v2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/module/hmcloud/dialog/HMOpModeDialog;->setCallback(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 88
    .line 89
    .line 90
    :cond_5
    return-void
.end method

.method public final showOpTemplateDialog(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpTemplate:Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpTemplate:Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpTemplate:Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "requireActivity(...)"

    .line 32
    .line 33
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v3}, Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpTemplate:Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;

    .line 40
    .line 41
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpTemplate:Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const/4 v1, 0x0

    .line 55
    :goto_1
    if-eqz v1, :cond_4

    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpTemplate:Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 62
    .line 63
    .line 64
    :cond_4
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpTemplate:Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/e2;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/menu/e2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;->setCallback(Lkotlin/jvm/functions/Function1;)V

    .line 74
    .line 75
    .line 76
    :cond_5
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpTemplate:Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/p2;

    .line 81
    .line 82
    invoke-direct {v1, p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/p2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;->setOnItemDelete(Lkotlin/jvm/functions/Function1;)V

    .line 86
    .line 87
    .line 88
    :cond_6
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpTemplate:Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;

    .line 89
    .line 90
    if-eqz v0, :cond_7

    .line 91
    .line 92
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/t2;

    .line 93
    .line 94
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/menu/t2;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;->setOnItemSelected(Lkotlin/jvm/functions/Function2;)V

    .line 98
    .line 99
    .line 100
    :cond_7
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGameId()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lq5/f;->L(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_8

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-nez v0, :cond_9

    .line 123
    .line 124
    :cond_8
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getGameId()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    :cond_9
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->dialogOpTemplate:Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;

    .line 133
    .line 134
    if-eqz v1, :cond_a

    .line 135
    .line 136
    invoke-virtual {v1, v0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMOpTemplateDialog;->setTip(Ljava/lang/String;I)V

    .line 137
    .line 138
    .line 139
    :cond_a
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->loadTemplate(I)V

    .line 144
    .line 145
    .line 146
    return-void
.end method
