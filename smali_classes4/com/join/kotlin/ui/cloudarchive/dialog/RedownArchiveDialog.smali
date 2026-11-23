.class public final Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J&\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0012H\u0016J\u001a\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u000e\u0010\'\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\"J\u000e\u0010.\u001a\u00020\u001a2\u0006\u0010(\u001a\u00020)R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001b\u0010\u000b\u001a\u00020\u000c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010!\u001a\u00020\"X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001a\u0010(\u001a\u00020)X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u0006/"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "Landroid/view/View$OnClickListener;",
        "<init>",
        "()V",
        "dataBinding",
        "Lcom/join/android/app/mgsim/wufun/databinding/ModRedownArchiveDialogBinding;",
        "getDataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/ModRedownArchiveDialogBinding;",
        "setDataBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/ModRedownArchiveDialogBinding;)V",
        "viewModle",
        "Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;",
        "getViewModle",
        "()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;",
        "viewModle$delegate",
        "Lkotlin/Lazy;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onClick",
        "",
        "v",
        "show",
        "manager",
        "Landroidx/fragment/app/FragmentManager;",
        "tag",
        "",
        "listener",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;",
        "getListener",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;",
        "setListener",
        "(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V",
        "setClickDelDialogListener",
        "dialogData",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;",
        "getDialogData",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;",
        "setDialogData",
        "(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V",
        "setDatas",
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
.field public dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/dm0;

.field public dialogData:Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

.field public listener:Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;

.field private final viewModle$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/y;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/y;-><init>(Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->viewModle$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;)Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->viewModle_delegate$lambda$0(Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;)Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    move-result-object p0

    return-object p0
.end method

.method private static final viewModle_delegate$lambda$0(Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;)Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;
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
    const-class p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public final getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/dm0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/dm0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "dataBinding"

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

.method public final getDialogData()Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->dialogData:Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "dialogData"

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

.method public final getListener()Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->listener:Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "listener"

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

.method public final getViewModle()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->viewModle$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 8
    .line 9
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

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
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const v1, 0x7f0a1189

    .line 21
    .line 22
    .line 23
    if-ne v0, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->getListener()Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;->onClickOkButn()V

    .line 30
    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const v1, 0x7f0a02f6

    .line 41
    .line 42
    .line 43
    if-ne v0, v1, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->getListener()Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;->onClickCancleButn()V

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    :goto_2
    if-nez p1, :cond_5

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    const v0, 0x7f0a03b8

    .line 61
    .line 62
    .line 63
    if-ne p1, v0, :cond_6

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 66
    .line 67
    .line 68
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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
    const p3, 0x7f0d072e

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/dm0;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/dm0;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/dm0;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/dm0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/16 p2, 0x32

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-virtual {p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/dm0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/16 p2, 0x8

    .line 44
    .line 45
    invoke-virtual {p1, p2, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const-string p3, "archive"

    .line 63
    .line 64
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string p3, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData"

    .line 69
    .line 70
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->getDialogData()Landroidx/lifecycle/MutableLiveData;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->getDialogData()Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/dm0;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1
.end method

.method public final setClickDelDialogListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->setListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/dm0;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/dm0;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/dm0;

    .line 7
    .line 8
    return-void
.end method

.method public final setDatas(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dialogData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->setDialogData(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setDialogData(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->dialogData:Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 7
    .line 8
    return-void
.end method

.method public final setListener(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;->listener:Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;

    .line 7
    .line 8
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "manager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
