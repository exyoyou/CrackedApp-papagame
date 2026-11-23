.class public final Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;
.super Lcom/join/kotlin/module/hmcloud/dialog/HMBaseFragmentDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMOpEditFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMOpEditFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMOpEditFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,365:1\n172#2,9:366\n*S KotlinDebug\n*F\n+ 1 HMOpEditFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMOpEditFragment\n*L\n31#1:366,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0006\u0010\"\u001a\u00020\u001fJ$\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u001a\u0010)\u001a\u00020\u001f2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010*\u001a\u0004\u0018\u00010$J\u001a\u0010+\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020$2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0008\u0010,\u001a\u00020\u001fH\u0002J\u0010\u0010-\u001a\u00020\u001f2\u0006\u0010.\u001a\u00020\u0017H\u0016J\u000e\u00105\u001a\u00020\u001f2\u0006\u00106\u001a\u000207J\u0006\u0010>\u001a\u00020\u001fJ\u0010\u0010?\u001a\u00020\u001f2\u0006\u0010@\u001a\u00020AH\u0002J\u0006\u0010H\u001a\u00020\u001fJ\u0006\u0010a\u001a\u00020\u001fJ\u0006\u0010b\u001a\u00020\u001fJ\u0010\u0010c\u001a\u00020\u001f2\u0008\u0008\u0002\u0010d\u001a\u00020\u0017J\u0008\u0010e\u001a\u00020\u001fH\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0019\"\u0004\u0008\u001d\u0010\u001bR\u001c\u0010/\u001a\u0004\u0018\u000100X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001c\u00108\u001a\u0004\u0018\u000109X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u001c\u0010B\u001a\u0004\u0018\u00010CX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\u001c\u0010I\u001a\u0004\u0018\u00010JX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010NR\u001c\u0010O\u001a\u0004\u0018\u00010PX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\u001c\u0010U\u001a\u0004\u0018\u00010VX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR\u001c\u0010[\u001a\u0004\u0018\u00010\\X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`\u00a8\u0006f"
    }
    d2 = {
        "Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseFragmentDialog;",
        "<init>",
        "()V",
        "binding",
        "Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmOpEditPadBinding;",
        "getBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmOpEditPadBinding;",
        "setBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmOpEditPadBinding;)V",
        "viewModel",
        "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;",
        "getViewModel",
        "()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "cfg",
        "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
        "getCfg",
        "()Lcom/join/mgps/dto/hmcloud/HandleCfg;",
        "setCfg",
        "(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V",
        "fold",
        "",
        "getFold",
        "()Z",
        "setFold",
        "(Z)V",
        "isAnimating",
        "setAnimating",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "initObserver",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "measure",
        "view",
        "onViewCreated",
        "refreshUi",
        "onHiddenChanged",
        "hidden",
        "keyEditDialog",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;",
        "getKeyEditDialog",
        "()Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;",
        "setKeyEditDialog",
        "(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;)V",
        "showEditKeyDialog",
        "item",
        "Lcom/join/mgps/dto/hmcloud/HMKeyItem;",
        "saveNameDialog",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;",
        "getSaveNameDialog",
        "()Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;",
        "setSaveNameDialog",
        "(Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;)V",
        "showSaveNameDialog",
        "saveKeys",
        "projectName",
        "",
        "resetConfirmDialog",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;",
        "getResetConfirmDialog",
        "()Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;",
        "setResetConfirmDialog",
        "(Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)V",
        "showResetConfirmDialog",
        "addKeyDialog",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;",
        "getAddKeyDialog",
        "()Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;",
        "setAddKeyDialog",
        "(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;)V",
        "addKeyKeyboardDialog",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;",
        "getAddKeyKeyboardDialog",
        "()Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;",
        "setAddKeyKeyboardDialog",
        "(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;)V",
        "addCombineKeyDialog",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;",
        "getAddCombineKeyDialog",
        "()Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;",
        "setAddCombineKeyDialog",
        "(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;)V",
        "addCombineKeyboardDialog",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;",
        "getAddCombineKeyboardDialog",
        "()Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;",
        "setAddCombineKeyboardDialog",
        "(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;)V",
        "showAddKeyDialog",
        "showCombineKeyDialog",
        "startMenuAnimation",
        "newFold",
        "onDestroy",
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
        "SMAP\nHMOpEditFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMOpEditFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMOpEditFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,365:1\n172#2,9:366\n*S KotlinDebug\n*F\n+ 1 HMOpEditFragment.kt\ncom/join/kotlin/module/hmcloud/menu/HMOpEditFragment\n*L\n31#1:366,9\n*E\n"
    }
.end annotation


# instance fields
.field private addCombineKeyDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private addCombineKeyboardDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private addKeyDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private addKeyKeyboardDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private binding:Lcom/join/android/app/mgsim/wufun/databinding/z90;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

.field private fold:Z

.field private isAnimating:Z

.field private keyEditDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resetConfirmDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private saveNameDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;
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
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment$special$$inlined$activityViewModels$default$3;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/mgps/dto/hmcloud/HMKeyItem;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->showEditKeyDialog$lambda$27$lambda$24(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/mgps/dto/hmcloud/HMKeyItem;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->measure$lambda$16$lambda$15(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic O(Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->showResetConfirmDialog$lambda$36$lambda$35(Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->showResetConfirmDialog$lambda$36$lambda$34(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->onCreateView$lambda$10$lambda$6(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->showAddKeyDialog$lambda$42$lambda$41(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/mgps/dto/hmcloud/HMKeyItem;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->showEditKeyDialog$lambda$27$lambda$26(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/mgps/dto/hmcloud/HMKeyItem;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->showAddKeyDialog$lambda$39$lambda$38(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->onCreateView$lambda$10$lambda$3(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->onCreateView$lambda$10$lambda$7(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->onCreateView$lambda$10$lambda$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic X(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->onCreateView$lambda$10$lambda$4(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Y(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->onCreateView$lambda$10$lambda$5(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Z(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->onCreateView$lambda$10$lambda$8(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a0(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->showCombineKeyDialog$lambda$45$lambda$44(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Lcom/join/android/app/mgsim/wufun/databinding/z90;Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->onCreateView$lambda$13$lambda$12(Lcom/join/android/app/mgsim/wufun/databinding/z90;Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->showSaveNameDialog$lambda$30$lambda$29(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0(Lcom/join/mgps/dto/hmcloud/HMOpConfig;FLjava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->initObserver$lambda$2$lambda$1$lambda$0(Lcom/join/mgps/dto/hmcloud/HMOpConfig;FLjava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->showCombineKeyDialog$lambda$48$lambda$47(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->initObserver$lambda$2(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final initObserver$lambda$2(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/z90;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/z90;->c:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->setPreventResize(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getEditOpConfig()Landroidx/lifecycle/MutableLiveData;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    .line 26
    .line 27
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/s0;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/menu/s0;-><init>(Lcom/join/mgps/dto/hmcloud/HMOpConfig;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->setOnInsetsChanged(Lkotlin/jvm/functions/Function4;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getDensity()Ljava/lang/Float;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v2, v1

    .line 44
    :goto_0
    if-eqz p0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getLayoutWidth()Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move-object v3, v1

    .line 52
    :goto_1
    if-eqz p0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->getLayoutHeight()Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->loadKeys(Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method

.method private static final initObserver$lambda$2$lambda$1$lambda$0(Lcom/join/mgps/dto/hmcloud/HMOpConfig;FLjava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "keys"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->setDensity(Ljava/lang/Float;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->setLayoutWidth(Ljava/lang/Integer;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    if-eqz p0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, p3}, Lcom/join/mgps/dto/hmcloud/HMOpConfig;->setLayoutHeight(Ljava/lang/Integer;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method private static final measure$lambda$16$lambda$15(Landroid/view/ViewGroup;Landroid/view/View;)V
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

.method private static final onCreateView$lambda$10$lambda$3(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMenuAction()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance p1, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x3

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {p1, v2, v0, v1, v2}, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;-><init>(Lcom/join/mgps/dto/hmcloud/HandleCfg;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static final onCreateView$lambda$10$lambda$4(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->fold:Z

    .line 2
    .line 3
    xor-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->startMenuAnimation(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final onCreateView$lambda$10$lambda$5(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->showAddKeyDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onCreateView$lambda$10$lambda$6(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->showCombineKeyDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onCreateView$lambda$10$lambda$7(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->showResetConfirmDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onCreateView$lambda$10$lambda$8(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/z90;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/z90;->c:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->setPreventResize(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->showSaveNameDialog()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final onCreateView$lambda$10$lambda$9(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final onCreateView$lambda$13$lambda$12(Lcom/join/android/app/mgsim/wufun/databinding/z90;Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/z90;->c:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->setPreventResize(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->showEditKeyDialog(Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method private final refreshUi()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/z90;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/z90;->d:Lcom/join/android/app/mgsim/wufun/databinding/y90;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getCfg_type()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sget-object v2, Lcom/join/mgps/dto/hmcloud/HandleType;->GAME_PAD:Lcom/join/mgps/dto/hmcloud/HandleType;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/join/mgps/dto/hmcloud/HandleType;->getValue()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/y90;->c:Landroid/widget/TextView;

    .line 26
    .line 27
    const-string v1, "\u6dfb\u52a0\u6447\u6746\u6309\u952e"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-object v2, Lcom/join/mgps/dto/hmcloud/HandleType;->KEYBOARD:Lcom/join/mgps/dto/hmcloud/HandleType;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/join/mgps/dto/hmcloud/HandleType;->getValue()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-ne v1, v2, :cond_1

    .line 40
    .line 41
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/y90;->c:Landroid/widget/TextView;

    .line 42
    .line 43
    const-string v1, "\u6dfb\u52a0\u952e\u76d8\u6309\u952e"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method private final saveKeys(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "requireContext(...)"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "\u8bf7\u8f93\u5165\u81ea\u5b9a\u4e49\u65b9\u6848\u540d\u79f0"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/z90;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/z90;->c:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 74
    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getCfg_type()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getFrom()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-nez v3, :cond_2

    .line 96
    .line 97
    const/4 v3, 0x0

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v3}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getUrl()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    :goto_1
    move-object v5, v3

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    move-object v3, p1

    .line 117
    invoke-virtual/range {v2 .. v7}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->saveCustomOpConfig(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method private static final showAddKeyDialog$lambda$39$lambda$38(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "k"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->addKey(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final showAddKeyDialog$lambda$42$lambda$41(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "k"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->addKey(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method private static final showCombineKeyDialog$lambda$45$lambda$44(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->addCombineKey(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final showCombineKeyDialog$lambda$48$lambda$47(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->addCombineKey(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final showEditKeyDialog$lambda$27$lambda$24(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/mgps/dto/hmcloud/HMKeyItem;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "target"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/z90;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/z90;->c:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->remove(Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getEditKeys()Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p2}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->getKeys()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method private static final showEditKeyDialog$lambda$27$lambda$26(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/mgps/dto/hmcloud/HMKeyItem;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "target"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/z90;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/z90;->c:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->change(Lcom/join/mgps/dto/hmcloud/HMKeyItem;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getEditKeys()Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->getKeys()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method private static final showResetConfirmDialog$lambda$36$lambda$34(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->resetEdit(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private static final showResetConfirmDialog$lambda$36$lambda$35(Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final showSaveNameDialog$lambda$30$lambda$29(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->saveKeys(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static synthetic startMenuAnimation$default(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->startMenuAnimation(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getAddCombineKeyDialog()Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addCombineKeyDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAddCombineKeyboardDialog()Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addCombineKeyboardDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAddKeyDialog()Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addKeyDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAddKeyKeyboardDialog()Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addKeyKeyboardDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBinding()Lcom/join/android/app/mgsim/wufun/databinding/z90;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/z90;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "cfg"

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

.method public final getFold()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->fold:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getKeyEditDialog()Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->keyEditDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResetConfirmDialog()Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->resetConfirmDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSaveNameDialog()Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->saveNameDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->viewModel$delegate:Lkotlin/Lazy;

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
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getEditKeys()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/y0;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/menu/y0;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment$sam$androidx_lifecycle_Observer$0;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final isAnimating()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->isAnimating:Z

    .line 2
    .line 3
    return v0
.end method

.method public final measure(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/join/kotlin/module/hmcloud/menu/o0;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lcom/join/kotlin/module/hmcloud/menu/o0;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

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
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    const/high16 v1, 0x40000000    # 2.0f

    .line 35
    .line 36
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p2, v2, v1}, Landroid/view/View;->measure(II)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 48
    .line 49
    invoke-direct {v1, p1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p2, v1, v1, p1, v0}, Landroid/view/View;->layout(IIII)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMenuAction()Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/join/mgps/dto/hmcloud/HMMenuAction;

    .line 17
    .line 18
    instance-of v0, p1, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOp;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    check-cast p1, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOp;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOp;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->setCfg(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMenuAction()Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v0, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    const/4 v2, 0x3

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-direct {v0, v3, v1, v2, v3}, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOpClose;-><init>(Lcom/join/mgps/dto/hmcloud/HandleCfg;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->initObserver()V

    .line 52
    .line 53
    .line 54
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
    invoke-static {p1, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/z90;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/join/android/app/mgsim/wufun/databinding/z90;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/z90;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/z90;->d:Lcom/join/android/app/mgsim/wufun/databinding/y90;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/y90;->e:Landroid/widget/ImageView;

    .line 20
    .line 21
    new-instance p3, Lcom/join/kotlin/module/hmcloud/menu/z0;

    .line 22
    .line 23
    invoke-direct {p3, p0}, Lcom/join/kotlin/module/hmcloud/menu/z0;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/y90;->d:Landroid/widget/ImageView;

    .line 30
    .line 31
    new-instance p3, Lcom/join/kotlin/module/hmcloud/menu/h0;

    .line 32
    .line 33
    invoke-direct {p3, p0}, Lcom/join/kotlin/module/hmcloud/menu/h0;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/y90;->c:Landroid/widget/TextView;

    .line 40
    .line 41
    new-instance p3, Lcom/join/kotlin/module/hmcloud/menu/i0;

    .line 42
    .line 43
    invoke-direct {p3, p0}, Lcom/join/kotlin/module/hmcloud/menu/i0;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/y90;->f:Landroid/widget/TextView;

    .line 50
    .line 51
    new-instance p3, Lcom/join/kotlin/module/hmcloud/menu/j0;

    .line 52
    .line 53
    invoke-direct {p3, p0}, Lcom/join/kotlin/module/hmcloud/menu/j0;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/y90;->i:Landroid/widget/TextView;

    .line 60
    .line 61
    new-instance p3, Lcom/join/kotlin/module/hmcloud/menu/k0;

    .line 62
    .line 63
    invoke-direct {p3, p0}, Lcom/join/kotlin/module/hmcloud/menu/k0;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/y90;->j:Landroid/widget/TextView;

    .line 70
    .line 71
    new-instance p3, Lcom/join/kotlin/module/hmcloud/menu/l0;

    .line 72
    .line 73
    invoke-direct {p3, p0}, Lcom/join/kotlin/module/hmcloud/menu/l0;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/y90;->g:Landroid/widget/LinearLayout;

    .line 80
    .line 81
    new-instance p2, Lcom/join/kotlin/module/hmcloud/menu/m0;

    .line 82
    .line 83
    invoke-direct {p2}, Lcom/join/kotlin/module/hmcloud/menu/m0;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/z90;

    .line 90
    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/z90;->c:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 94
    .line 95
    const/4 p3, 0x1

    .line 96
    invoke-virtual {p2, p3}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->setEditMode(Z)V

    .line 97
    .line 98
    .line 99
    iget-object p2, p1, Lcom/join/android/app/mgsim/wufun/databinding/z90;->c:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 100
    .line 101
    new-instance p3, Lcom/join/kotlin/module/hmcloud/menu/n0;

    .line 102
    .line 103
    invoke-direct {p3, p1, p0}, Lcom/join/kotlin/module/hmcloud/menu/n0;-><init>(Lcom/join/android/app/mgsim/wufun/databinding/z90;Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p3}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->setOnEditKey(Lkotlin/jvm/functions/Function1;)V

    .line 107
    .line 108
    .line 109
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/z90;

    .line 110
    .line 111
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/z90;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

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
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getEditOpConfig()Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getEditKeys()Landroidx/lifecycle/MutableLiveData;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMenuAction()Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/join/mgps/dto/hmcloud/HMMenuAction;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    instance-of v0, p1, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOp;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    check-cast p1, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOp;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMMenuAction$EditOp;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->setCfg(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->loadEditKeys(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->refreshUi()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/16 p2, 0x20

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->loadEditKeys(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->refreshUi()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final setAddCombineKeyDialog(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addCombineKeyDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;

    .line 2
    .line 3
    return-void
.end method

.method public final setAddCombineKeyboardDialog(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addCombineKeyboardDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;

    .line 2
    .line 3
    return-void
.end method

.method public final setAddKeyDialog(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addKeyDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;

    .line 2
    .line 3
    return-void
.end method

.method public final setAddKeyKeyboardDialog(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addKeyKeyboardDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;

    .line 2
    .line 3
    return-void
.end method

.method public final setAnimating(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->isAnimating:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setBinding(Lcom/join/android/app/mgsim/wufun/databinding/z90;)V
    .locals 0
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/z90;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/z90;

    .line 2
    .line 3
    return-void
.end method

.method public final setCfg(Lcom/join/mgps/dto/hmcloud/HandleCfg;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/hmcloud/HandleCfg;
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
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->cfg:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 7
    .line 8
    return-void
.end method

.method public final setFold(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->fold:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setKeyEditDialog(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->keyEditDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;

    .line 2
    .line 3
    return-void
.end method

.method public final setResetConfirmDialog(Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->resetConfirmDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;

    .line 2
    .line 3
    return-void
.end method

.method public final setSaveNameDialog(Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->saveNameDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;

    .line 2
    .line 3
    return-void
.end method

.method public final showAddKeyDialog()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getCfg_type()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget-object v1, Lcom/join/mgps/dto/hmcloud/HandleType;->GAME_PAD:Lcom/join/mgps/dto/hmcloud/HandleType;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/hmcloud/HandleType;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addKeyDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addKeyDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;

    .line 27
    .line 28
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addKeyDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-class v2, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/u0;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/menu/u0;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;->setOnAddKey(Lkotlin/jvm/functions/Function1;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addKeyKeyboardDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;

    .line 61
    .line 62
    invoke-direct {v0}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addKeyKeyboardDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;

    .line 66
    .line 67
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 68
    .line 69
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addKeyKeyboardDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-class v2, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/v0;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/menu/v0;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;->setOnAddKey(Lkotlin/jvm/functions/Function1;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_0
    return-void
.end method

.method public final showCombineKeyDialog()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getCfg_type()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget-object v1, Lcom/join/mgps/dto/hmcloud/HandleType;->GAME_PAD:Lcom/join/mgps/dto/hmcloud/HandleType;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/hmcloud/HandleType;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "getChildFragmentManager(...)"

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addCombineKeyDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addCombineKeyDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;

    .line 29
    .line 30
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addCombineKeyDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-class v2, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/p0;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/menu/p0;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;->setOnAddKey(Lkotlin/jvm/functions/Function1;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addCombineKeyboardDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;

    .line 62
    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addCombineKeyboardDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;

    .line 71
    .line 72
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 73
    .line 74
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->addCombineKeyboardDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-class v2, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/q0;

    .line 95
    .line 96
    invoke-direct {v1, p0}, Lcom/join/kotlin/module/hmcloud/menu/q0;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardCombineAddDialog;->setOnAddKey(Lkotlin/jvm/functions/Function1;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_0
    return-void
.end method

.method public final showEditKeyDialog(Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V
    .locals 3
    .param p1    # Lcom/join/mgps/dto/hmcloud/HMKeyItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->keyEditDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "requireContext(...)"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->keyEditDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;

    .line 25
    .line 26
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->keyEditDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;->setItem(Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/w0;

    .line 45
    .line 46
    invoke-direct {v1, p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/w0;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;->setOnDelete(Lkotlin/jvm/functions/Function1;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/x0;

    .line 53
    .line 54
    invoke-direct {v1, p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/x0;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;->setOnEdit(Lkotlin/jvm/functions/Function1;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method public final showResetConfirmDialog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->resetConfirmDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "requireContext(...)"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->resetConfirmDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;

    .line 20
    .line 21
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->resetConfirmDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 34
    .line 35
    .line 36
    :cond_1
    const-string v1, "\u91cd\u7f6e"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;->setBtnConfirm(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/g0;

    .line 42
    .line 43
    invoke-direct {v1, p0, v0}, Lcom/join/kotlin/module/hmcloud/menu/g0;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Lcom/join/kotlin/module/hmcloud/menu/r0;

    .line 47
    .line 48
    invoke-direct {v2, v0}, Lcom/join/kotlin/module/hmcloud/menu/r0;-><init>(Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;->setCallback(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final showSaveNameDialog()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    const-string v1, "requireContext(...)"

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getCustomOpConfig()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->getMaxOpConfigSize()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-lt v0, v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v1, "\u6700\u591a\u652f\u6301\u6dfb\u52a03\u4e2a\u81ea\u5b9a\u4e49\u65b9\u6848"

    .line 55
    .line 56
    invoke-static {v0, v1}, Lcom/psk/kotlin/ext/CommonExtKt;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->saveNameDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;

    .line 61
    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v2}, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->saveNameDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;

    .line 77
    .line 78
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 79
    .line 80
    :cond_3
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->saveNameDialog:Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;

    .line 81
    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_4

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getSource()Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    sget-object v2, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->CUSTOM:Lcom/join/mgps/dto/hmcloud/HandleCfgSource;

    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/join/mgps/dto/hmcloud/HandleCfgSource;->getValue()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-nez v1, :cond_5

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eq v1, v2, :cond_6

    .line 115
    .line 116
    :goto_2
    const-string v1, ""

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->setName(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_6
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->getCfg()Lcom/join/mgps/dto/hmcloud/HandleCfg;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lcom/join/mgps/dto/hmcloud/HandleCfg;->getName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->setName(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :goto_3
    new-instance v1, Lcom/join/kotlin/module/hmcloud/menu/t0;

    .line 134
    .line 135
    invoke-direct {v1, p0, v0}, Lcom/join/kotlin/module/hmcloud/menu/t0;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/dialog/HMSaveCustomDialog;->setOnSave(Lkotlin/jvm/functions/Function1;)V

    .line 139
    .line 140
    .line 141
    :cond_7
    return-void
.end method

.method public final startMenuAnimation(Z)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->isAnimating:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/z90;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/z90;->d:Lcom/join/android/app/mgsim/wufun/databinding/y90;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/y90;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 17
    .line 18
    const-string v1, "opEditMenu"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/z90;

    .line 24
    .line 25
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/z90;->d:Lcom/join/android/app/mgsim/wufun/databinding/y90;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/y90;->g:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    const-string v2, "menuMain"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->binding:Lcom/join/android/app/mgsim/wufun/databinding/z90;

    .line 38
    .line 39
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/z90;->d:Lcom/join/android/app/mgsim/wufun/databinding/y90;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/join/android/app/mgsim/wufun/databinding/y90;->d:Landroid/widget/ImageView;

    .line 45
    .line 46
    const-string v3, "arr"

    .line 47
    .line 48
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    int-to-float v1, v1

    .line 56
    neg-float v1, v1

    .line 57
    const/high16 v3, 0x43340000    # 180.0f

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    move v4, v1

    .line 65
    const/4 v1, 0x0

    .line 66
    const/4 v3, 0x0

    .line 67
    const/high16 v5, 0x43340000    # 180.0f

    .line 68
    .line 69
    :goto_0
    const/4 v6, 0x2

    .line 70
    new-array v7, v6, [F

    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    aput v1, v7, v8

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    aput v4, v7, v1

    .line 77
    .line 78
    const-string v4, "translationY"

    .line 79
    .line 80
    invoke-static {v0, v4, v7}, Lcom/nineoldandroids/animation/l;->s0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-wide/16 v9, 0x12c

    .line 85
    .line 86
    invoke-virtual {v0, v9, v10}, Lcom/nineoldandroids/animation/l;->y0(J)Lcom/nineoldandroids/animation/l;

    .line 87
    .line 88
    .line 89
    new-instance v4, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment$startMenuAnimation$1;

    .line 90
    .line 91
    invoke-direct {v4, p0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment$startMenuAnimation$1;-><init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v4}, Lcom/nineoldandroids/animation/a;->a(Lcom/nineoldandroids/animation/a$a;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/l;->r()V

    .line 98
    .line 99
    .line 100
    new-array p1, v6, [F

    .line 101
    .line 102
    aput v3, p1, v8

    .line 103
    .line 104
    aput v5, p1, v1

    .line 105
    .line 106
    const-string v0, "rotation"

    .line 107
    .line 108
    invoke-static {v2, v0, p1}, Lcom/nineoldandroids/animation/l;->s0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    int-to-float v0, v0

    .line 117
    const/high16 v1, 0x40000000    # 2.0f

    .line 118
    .line 119
    div-float/2addr v0, v1

    .line 120
    invoke-virtual {v2, v0}, Landroid/view/View;->setPivotX(F)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    int-to-float v0, v0

    .line 128
    div-float/2addr v0, v1

    .line 129
    invoke-virtual {v2, v0}, Landroid/view/View;->setPivotY(F)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v9, v10}, Lcom/nineoldandroids/animation/l;->y0(J)Lcom/nineoldandroids/animation/l;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/l;->r()V

    .line 136
    .line 137
    .line 138
    :cond_2
    :goto_1
    return-void
.end method
