.class public final Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J&\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00122\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0012\u0010\u001c\u001a\u00020\u001a2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0012H\u0016J\u000e\u0010$\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001fJ\u001a\u0010%\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001b\u0010\u000b\u001a\u00020\u000c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006*"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "Landroid/view/View$OnClickListener;",
        "<init>",
        "()V",
        "dataBinding",
        "Lcom/join/android/app/mgsim/wufun/databinding/ModCommentlArchiveDialogBinding;",
        "getDataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/ModCommentlArchiveDialogBinding;",
        "setDataBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/ModCommentlArchiveDialogBinding;)V",
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
        "onViewCreated",
        "",
        "view",
        "onClick",
        "v",
        "dialogData",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;",
        "getDialogData",
        "()Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;",
        "setDialogData",
        "(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V",
        "setDatas",
        "show",
        "manager",
        "Landroidx/fragment/app/FragmentManager;",
        "tag",
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


# instance fields
.field public dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/wl0;

.field private dialogData:Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final viewModle$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/d;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/d;-><init>(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->viewModle$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 16
    .line 17
    const-string v2, "\u63d0\u793a"

    .line 18
    .line 19
    const-string v3, "\u8bf7\u8bc4\u4ef7\u4e00\u4e0b\u4f60\u521a\u624d\u73a9\u7684\u4e91\u5b58\u6863\u5427\uff5e"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/16 v7, 0x1c

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    move-object v1, v0

    .line 28
    invoke-direct/range {v1 .. v8}, Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->dialogData:Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->onClick$lambda$4(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->viewModle_delegate$lambda$0(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->onCreateView$lambda$1(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->onClick$lambda$5(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->onClick$lambda$6(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final onClick$lambda$4(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

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
    const-string v2, "LIKE"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->commentArchive(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickEvalCloudButton:Lcom/papa/sim/statistic/Event;

    .line 28
    .line 29
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 30
    .line 31
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "1"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 55
    .line 56
    if-eqz p0, :cond_0

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 p0, 0x0

    .line 64
    :goto_0
    invoke-virtual {v2, p0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v0, v1, p0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 69
    .line 70
    .line 71
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p0
.end method

.method private static final onClick$lambda$5(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

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
    const-string v2, "NEGATIVE"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->commentArchive(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickEvalCloudButton:Lcom/papa/sim/statistic/Event;

    .line 28
    .line 29
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 30
    .line 31
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "4"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 55
    .line 56
    if-eqz p0, :cond_0

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 p0, 0x0

    .line 64
    :goto_0
    invoke-virtual {v2, p0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v0, v1, p0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 69
    .line 70
    .line 71
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p0
.end method

.method private static final onClick$lambda$6(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

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
    const-string v2, "PLAGIARIZE"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->commentArchive(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickEvalCloudButton:Lcom/papa/sim/statistic/Event;

    .line 28
    .line 29
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 30
    .line 31
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "3"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 55
    .line 56
    if-eqz p0, :cond_0

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 p0, 0x0

    .line 64
    :goto_0
    invoke-virtual {v2, p0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v0, v1, p0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 69
    .line 70
    .line 71
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p0
.end method

.method private static final onCreateView$lambda$1(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;I)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "\u8bc4\u4ef7\u6210\u529f"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 22
    .line 23
    .line 24
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final viewModle_delegate$lambda$0(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;
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
.method public final getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/wl0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/wl0;

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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->dialogData:Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewModle()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->viewModle$delegate:Lkotlin/Lazy;

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
    const v1, 0x7f0a1287

    .line 21
    .line 22
    .line 23
    if-ne v0, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_8

    .line 30
    .line 31
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/f;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/f;-><init>(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/join/kotlin/domain/ext/EXTKt;->checkHasLogin(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 37
    .line 38
    .line 39
    goto :goto_4

    .line 40
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const v1, 0x7f0a1adf

    .line 48
    .line 49
    .line 50
    if-ne v0, v1, :cond_4

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_8

    .line 57
    .line 58
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/g;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/g;-><init>(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v0}, Lcom/join/kotlin/domain/ext/EXTKt;->checkHasLogin(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 64
    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_4
    :goto_2
    if-nez p1, :cond_5

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const v1, 0x7f0a11c6

    .line 75
    .line 76
    .line 77
    if-ne v0, v1, :cond_6

    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_8

    .line 84
    .line 85
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/h;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/h;-><init>(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v0}, Lcom/join/kotlin/domain/ext/EXTKt;->checkHasLogin(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_6
    :goto_3
    if-nez p1, :cond_7

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    const v0, 0x7f0a03b8

    .line 102
    .line 103
    .line 104
    if-ne p1, v0, :cond_8

    .line 105
    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 107
    .line 108
    .line 109
    :cond_8
    :goto_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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
    const p3, 0x7f0d072a

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
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/wl0;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/wl0;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/wl0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/wl0;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/16 p2, 0x32

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/wl0;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/16 p2, 0x8

    .line 53
    .line 54
    invoke-virtual {p1, p2, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance p2, Lcom/join/kotlin/ui/cloudarchive/dialog/e;

    .line 62
    .line 63
    invoke-direct {p2, p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/e;-><init>(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->setClickCommentDialogListener(Lkotlin/jvm/functions/Function1;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->getDialogData()Landroidx/lifecycle/MutableLiveData;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->dialogData:Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    const-string p3, "archive"

    .line 97
    .line 98
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string p3, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData"

    .line 103
    .line 104
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    invoke-static {}, Lt6/g;->t()Lt6/g;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 129
    .line 130
    const/4 p3, 0x0

    .line 131
    if-eqz p2, :cond_2

    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    goto :goto_0

    .line 138
    :cond_2
    move-object p2, p3

    .line 139
    :goto_0
    invoke-virtual {p1, p2}, Lt6/g;->p(Ljava/lang/String;)Lcom/join/mgps/db/tables/CloudArchiveTable;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_3

    .line 144
    .line 145
    const/4 p2, 0x3

    .line 146
    invoke-virtual {p1, p2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setIsFirstRun(I)V

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lt6/g;->t()Lt6/g;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p2, p1}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 154
    .line 155
    .line 156
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    sget-object v0, Lcom/papa/sim/statistic/Event;->exitGamePopupWin:Lcom/papa/sim/statistic/Event;

    .line 165
    .line 166
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 167
    .line 168
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 169
    .line 170
    .line 171
    if-eqz p1, :cond_4

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getGameId()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    :cond_4
    invoke-virtual {v1, p3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/wl0;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    return-object p1
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
    return-void
.end method

.method public final setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/wl0;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/wl0;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/wl0;

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->dialogData:Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 7
    .line 8
    return-void
.end method

.method public final setDialogData(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentArchiveDialog;->dialogData:Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;

    .line 2
    .line 3
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
