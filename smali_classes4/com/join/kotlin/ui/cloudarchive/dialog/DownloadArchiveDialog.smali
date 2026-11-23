.class public final Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$UpdateLocalArchiveEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J&\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0002J\u0012\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0012H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "Landroid/view/View$OnClickListener;",
        "<init>",
        "()V",
        "viewModle",
        "Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;",
        "getViewModle",
        "()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;",
        "viewModle$delegate",
        "Lkotlin/Lazy;",
        "dataBinding",
        "Lcom/join/android/app/mgsim/wufun/databinding/DownloadArchiveDialogBinding;",
        "getDataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/DownloadArchiveDialogBinding;",
        "setDataBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/DownloadArchiveDialogBinding;)V",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "downLoadArchive",
        "",
        "onClick",
        "v",
        "UpdateLocalArchiveEvent",
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
.field public dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/qi;

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
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/dialog/j;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/j;-><init>(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->viewModle$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic M(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;)Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->viewModle_delegate$lambda$0(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;)Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->onCreateView$lambda$4(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic O(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->onCreateView$lambda$6(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic P(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->onCreateView$lambda$5(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;Ljava/lang/String;)V

    return-void
.end method

.method private final downLoadArchive()V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 7
    .line 8
    :goto_0
    move-object v6, v0

    .line 9
    if-nez v6, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v0, ""

    .line 13
    .line 14
    invoke-virtual {v6, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "getAbsolutePath(...)"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, "/Download/cloudarchive/"

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getCloud_archive_local_path()Landroidx/lifecycle/MutableLiveData;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    move-object v2, v0

    .line 99
    check-cast v2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getCloud_archive_local_path()Landroidx/lifecycle/MutableLiveData;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    move-object v3, v0

    .line 117
    check-cast v3, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getDownloadType()Landroidx/lifecycle/MutableLiveData;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    check-cast v0, Ljava/lang/Number;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    invoke-virtual/range {v1 .. v6}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->downloadArchive(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;ILandroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    :cond_1
    return-void
.end method

.method private static final onCreateView$lambda$4(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getProgress()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "observe progress="

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static final onCreateView$lambda$5(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getProgressText()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "progressTextShow="

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static final onCreateView$lambda$6(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;Ljava/lang/Integer;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 27
    .line 28
    invoke-direct {v1, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;-><init>(ILcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x4

    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ne v1, v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getProgress()Landroidx/lifecycle/MutableLiveData;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/16 v0, 0x64

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_0
    const/16 v0, 0x8

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-ne v1, v0, :cond_3

    .line 66
    .line 67
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, "requireActivity(...)"

    .line 72
    .line 73
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    check-cast v2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 100
    .line 101
    invoke-virtual {v1, v0, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->reportDownloadArchive(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getDownloadType()Landroidx/lifecycle/MutableLiveData;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Ljava/lang/Integer;

    .line 122
    .line 123
    if-nez v0, :cond_1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    const/4 v1, 0x1

    .line 131
    if-ne v0, v1, :cond_2

    .line 132
    .line 133
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$UpdateLocalArchiveEvent;

    .line 138
    .line 139
    invoke-direct {v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$UpdateLocalArchiveEvent;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 146
    .line 147
    .line 148
    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v0, "onstatus status="

    .line 154
    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method private static final viewModle_delegate$lambda$0(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;)Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;
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
    const-class p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public final getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/qi;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/qi;

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

.method public final getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->viewModle$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 8
    .line 9
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 20
    .line 21
    const/4 v2, 0x6

    .line 22
    invoke-direct {v0, v2, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;-><init>(ILcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->cancleDownloadTask(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 54
    .line 55
    .line 56
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
    const p3, 0x7f0d024a

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
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/qi;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/qi;)V

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
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/qi;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/qi;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/16 p2, 0x32

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/qi;

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    const-string p3, "archive"

    .line 72
    .line 73
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    const-string v0, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData"

    .line 78
    .line 79
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    check-cast p3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getDownloadType()Landroidx/lifecycle/MutableLiveData;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    const-string p3, "downloadType"

    .line 96
    .line 97
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-virtual {p2, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getCloud_archive_local_path()Landroidx/lifecycle/MutableLiveData;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    const-string p3, "cloud_archive_local_path"

    .line 117
    .line 118
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const-string p3, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData"

    .line 123
    .line 124
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 128
    .line 129
    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 145
    .line 146
    if-eqz p1, :cond_3

    .line 147
    .line 148
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 165
    .line 166
    if-eqz p2, :cond_2

    .line 167
    .line 168
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    goto :goto_0

    .line 173
    :cond_2
    const/4 p2, 0x0

    .line 174
    :goto_0
    invoke-virtual {p1, p2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    if-eqz p1, :cond_3

    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getArchive()Landroidx/lifecycle/MutableLiveData;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 193
    .line 194
    if-eqz p2, :cond_3

    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getProgress()Landroidx/lifecycle/MutableLiveData;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    new-instance p2, Lcom/join/kotlin/ui/cloudarchive/dialog/k;

    .line 216
    .line 217
    invoke-direct {p2, p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/k;-><init>(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getProgressTextShow()Landroidx/lifecycle/MutableLiveData;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    new-instance p2, Lcom/join/kotlin/ui/cloudarchive/dialog/l;

    .line 236
    .line 237
    invoke-direct {p2, p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/l;-><init>(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getViewModle()Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getStatus()Landroidx/lifecycle/MutableLiveData;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    new-instance p2, Lcom/join/kotlin/ui/cloudarchive/dialog/m;

    .line 256
    .line 257
    invoke-direct {p2, p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/m;-><init>(Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    if-eqz p1, :cond_4

    .line 268
    .line 269
    new-instance p2, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$6;

    .line 270
    .line 271
    invoke-direct {p2}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog$onCreateView$6;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 275
    .line 276
    .line 277
    :cond_4
    invoke-direct {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->downLoadArchive()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/qi;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    return-object p1
.end method

.method public final setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/qi;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/qi;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/DownloadArchiveDialog;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/qi;

    .line 7
    .line 8
    return-void
.end method
