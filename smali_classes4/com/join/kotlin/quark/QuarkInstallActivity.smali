.class public final Lcom/join/kotlin/quark/QuarkInstallActivity;
.super Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/quark/proxy/QuarkInstallClickProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity<",
        "Lcom/join/kotlin/quark/viewmodel/QuarkInstallViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/b4;",
        ">;",
        "Lcom/join/kotlin/quark/proxy/QuarkInstallClickProxy;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u000eH\u0014J\u0008\u0010\u0012\u001a\u00020\u000eH\u0016J\u0008\u0010\u0013\u001a\u00020\u000eH\u0016J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0016H\u0017J\u0018\u0010\u0017\u001a\u00020\u000e2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0019\u001a\u00020\u001aJ\u0012\u0010\u001b\u001a\u00020\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0008H\u0002J\u0012\u0010\u001d\u001a\u00020\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0008H\u0002J\u0012\u0010\u001e\u001a\u00020\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0008H\u0002J\u0012\u0010\u001f\u001a\u00020\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0008H\u0002J\u0008\u0010 \u001a\u00020\u000eH\u0002J\u0008\u0010!\u001a\u00020\u000eH\u0016J\u0008\u0010\"\u001a\u00020\u000eH\u0002J\u0008\u0010#\u001a\u00020\u000eH\u0014R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006$"
    }
    d2 = {
        "Lcom/join/kotlin/quark/QuarkInstallActivity;",
        "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;",
        "Lcom/join/kotlin/quark/viewmodel/QuarkInstallViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivityQuarkInstallBinding;",
        "Lcom/join/kotlin/quark/proxy/QuarkInstallClickProxy;",
        "<init>",
        "()V",
        "quarkTask",
        "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "getQuarkTask",
        "()Lcom/github/snowdream/android/app/downloader/DownloadTask;",
        "setQuarkTask",
        "(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "createObserver",
        "onCloseClick",
        "onEventMainThread",
        "downloadTaskEvent",
        "Lcom/join/mgps/event/DownloadTaskEvent;",
        "updateUI",
        "downloadTask",
        "from",
        "",
        "receiveStart",
        "task",
        "receiveDelete",
        "receiveSuccess",
        "receiveError",
        "updateProgressPartly",
        "onInstallClick",
        "downloadQuark",
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


# instance fields
.field private quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;
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

.method private final downloadQuark()V
    .locals 3

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "2057111073"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0xb

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->A(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v0, "\u5938\u514b\u4e0b\u8f7d\u4e2d..."

    .line 34
    .line 35
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "action"

    .line 43
    .line 44
    const-string v2, "downloadQuark"

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 51
    .line 52
    const-string v1, "isOm"

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 60
    .line 61
    const-string v1, "qkPosition"

    .line 62
    .line 63
    const-string v2, "qk"

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 70
    .line 71
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method private final receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "2057111073"

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const-string p1, "\u4e0b\u8f7d\u6587\u4ef6\u5df2\u5220\u9664"

    .line 17
    .line 18
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;->c:Landroid/widget/ProgressBar;

    .line 28
    .line 29
    const/16 v0, 0x8

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;->e:Landroid/widget/TextView;

    .line 41
    .line 42
    const v0, 0x7f081066

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;->e:Landroid/widget/TextView;

    .line 55
    .line 56
    const-string v0, "\u5b89\u88c5\u5938\u514b"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method private final receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "2057111073"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/b4;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/b4;->c:Landroid/widget/ProgressBar;

    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/b4;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/b4;->e:Landroid/widget/TextView;

    .line 46
    .line 47
    const v1, 0x7f081066

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/b4;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/b4;->e:Landroid/widget/TextView;

    .line 60
    .line 61
    const-string v1, "\u5b89\u88c5\u5938\u514b"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    return-void
.end method

.method private final receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "2057111073"

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iput-object p1, p0, Lcom/join/kotlin/quark/QuarkInstallActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;->c:Landroid/widget/ProgressBar;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;->e:Landroid/widget/TextView;

    .line 37
    .line 38
    const v0, 0x7f0812ff

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;->e:Landroid/widget/TextView;

    .line 51
    .line 52
    const-string v0, "\u4e0b\u8f7d\u4e2d..."

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method private final receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "2057111073"

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;->c:Landroid/widget/ProgressBar;

    .line 23
    .line 24
    const/16 v0, 0x64

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;->c:Landroid/widget/ProgressBar;

    .line 36
    .line 37
    const/16 v0, 0x8

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;->e:Landroid/widget/TextView;

    .line 49
    .line 50
    const v0, 0x7f081066

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;->e:Landroid/widget/TextView;

    .line 63
    .line 64
    const-string v0, "\u5b89\u88c5\u5938\u514b"

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method

.method private final updateProgressPartly()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkInstallActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkInstallActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v1, 0xc

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    :cond_0
    :try_start_0
    const-string v0, "2057111073"

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/kotlin/quark/QuarkInstallActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/join/kotlin/quark/QuarkInstallActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 50
    .line 51
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/join/android/app/mgsim/wufun/databinding/b4;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/b4;->c:Landroid/widget/ProgressBar;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    long-to-int v0, v2

    .line 77
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public createObserver()V
    .locals 0

    return-void
.end method

.method public final getQuarkTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/QuarkInstallActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/QuarkInstallViewModel;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/b4;->u(Lcom/join/kotlin/quark/viewmodel/QuarkInstallViewModel;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lcom/join/android/app/mgsim/wufun/databinding/b4;->t(Lcom/join/kotlin/quark/proxy/QuarkInstallClickProxy;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "2057111073"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/join/kotlin/quark/QuarkInstallActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 46
    .line 47
    return-void
.end method

.method public onCloseClick()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 4
    .param p1    # Lcom/join/mgps/event/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "downloadTaskEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const-string v1, "2057111073"

    .line 15
    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    const/4 v3, 0x5

    .line 19
    packed-switch p1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    :pswitch_0
    goto :goto_0

    .line 23
    :pswitch_1
    const/16 p1, 0x9

    .line 24
    .line 25
    invoke-virtual {p0, v0, p1}, Lcom/join/kotlin/quark/QuarkInstallActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_2
    invoke-virtual {p0, v0, v2}, Lcom/join/kotlin/quark/QuarkInstallActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_3
    invoke-virtual {p0, v0, v3}, Lcom/join/kotlin/quark/QuarkInstallActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 34
    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/b4;->c:Landroid/widget/ProgressBar;

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/kotlin/quark/QuarkInstallActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 60
    .line 61
    invoke-static {p1, p0}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_4
    const/4 p1, 0x7

    .line 66
    invoke-virtual {p0, v0, p1}, Lcom/join/kotlin/quark/QuarkInstallActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_5
    iget-object p1, p0, Lcom/join/kotlin/quark/QuarkInstallActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 71
    .line 72
    if-nez p1, :cond_0

    .line 73
    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_0

    .line 85
    .line 86
    iput-object v0, p0, Lcom/join/kotlin/quark/QuarkInstallActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 87
    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/join/kotlin/quark/QuarkInstallActivity;->updateProgressPartly()V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :pswitch_6
    const/4 p1, 0x3

    .line 93
    invoke-virtual {p0, v0, p1}, Lcom/join/kotlin/quark/QuarkInstallActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :pswitch_7
    const/4 p1, 0x6

    .line 98
    invoke-virtual {p0, v0, p1}, Lcom/join/kotlin/quark/QuarkInstallActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :pswitch_8
    invoke-virtual {p0, v0, v3}, Lcom/join/kotlin/quark/QuarkInstallActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_9
    const/4 p1, 0x2

    .line 107
    invoke-virtual {p0, v0, p1}, Lcom/join/kotlin/quark/QuarkInstallActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :pswitch_a
    const/4 p1, 0x1

    .line 112
    invoke-virtual {p0, v0, p1}, Lcom/join/kotlin/quark/QuarkInstallActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 113
    .line 114
    .line 115
    :cond_1
    :goto_0
    return-void

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onInstallClick()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/quark/QuarkInstallActivity;->downloadQuark()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N4(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "com.quark.browser"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x4

    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v1, p0

    .line 17
    invoke-static/range {v0 .. v5}, Lcom/join/android/app/common/utils/APKUtils;->g(Lcom/join/android/app/common/utils/APKUtils;Landroid/content/Context;Ljava/lang/String;Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;ILjava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final setQuarkTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/QuarkInstallActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-void
.end method

.method public final updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
    .param p1    # Lcom/github/snowdream/android/app/downloader/DownloadTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    goto :goto_0

    .line 7
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/kotlin/quark/QuarkInstallActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/kotlin/quark/QuarkInstallActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/kotlin/quark/QuarkInstallActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/kotlin/quark/QuarkInstallActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
