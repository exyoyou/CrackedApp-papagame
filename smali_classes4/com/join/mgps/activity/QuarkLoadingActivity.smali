.class public Lcom/join/mgps/activity/QuarkLoadingActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/QuarkLoadingActivity$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d009b
.end annotation


# static fields
.field public static retryCount:I = 0x0

.field public static final retryTotalCount:I = 0x2


# instance fields
.field gameIconUrl:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameName:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isLaunchAfterDown:Z

.field isLaunchApp:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isLaunching:Z

.field ll_back:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field pb_progress:Lcom/join/mgps/customview/PictureHProgress;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field progressMonitor:Lcom/join/mgps/activity/QuarkLoadingActivity$b;

.field quarkGameUrl:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field quarkId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field statubar:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_loading_progress:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_name:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->isLaunching:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->progressMonitor:Lcom/join/mgps/activity/QuarkLoadingActivity$b;

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->isLaunchApp:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->isLaunchAfterDown:Z

    .line 13
    .line 14
    return-void
.end method

.method private finishStatus()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->isLaunching:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->progressMonitor:Lcom/join/mgps/activity/QuarkLoadingActivity$b;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->a(Z)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->progressMonitor:Lcom/join/mgps/activity/QuarkLoadingActivity$b;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private handleIntent()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v2, "isLaunchApp"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->isLaunchApp:Z

    .line 19
    .line 20
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "3875871586"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->gameIconUrl:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0, v2}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->tv_name:Landroid/widget/TextView;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->gameName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->isLaunchApp:Z

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkLoadingActivity;->launchQuark()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/mgps/activity/QuarkLoadingActivity;->updateDownStatus()V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/QuarkLoadingActivity;->showSpeedStatus(Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "action"

    .line 65
    .line 66
    const-string v2, "downloadQuark"

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 73
    .line 74
    const-string v1, "isOm"

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 82
    .line 83
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/QuarkLoadingActivity;->showProgress(Z)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/QuarkLoadingActivity;->showSpeedStatus(Z)V

    .line 90
    .line 91
    .line 92
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->isLaunchApp:Z

    .line 93
    .line 94
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/QuarkLoadingActivity;->switchStatus(Z)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/activity/QuarkLoadingActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/QuarkLoadingActivity;->lambda$showToast$0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showToast$0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private launchQuark()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "2057111073"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOpenTime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    const-wide/16 v3, 0x0

    .line 52
    .line 53
    cmp-long v5, v1, v3

    .line 54
    .line 55
    if-gtz v5, :cond_1

    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setOpenTime(J)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostUserId()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iget-object v2, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkGameUrl:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p0, v0, v1, v2}, Lcom/join/mgps/activity/QuarkLoadingActivity;->launchApk(Ljava/lang/String;ILjava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->progressMonitor:Lcom/join/mgps/activity/QuarkLoadingActivity$b;

    .line 85
    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->a(Z)V

    .line 90
    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->progressMonitor:Lcom/join/mgps/activity/QuarkLoadingActivity$b;

    .line 94
    .line 95
    :cond_3
    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkId:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

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
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkId:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iput-object p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkId:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->pb_progress:Lcom/join/mgps/customview/PictureHProgress;

    .line 17
    .line 18
    const/16 v0, 0x64

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/PictureHProgress;->setProgress(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method private setStatusBar()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x4000000

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/16 v2, 0x500

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 17
    .line 18
    .line 19
    const/high16 v1, -0x80000000

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->statubar:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 35
    .line 36
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->v(Landroid/content/Context;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->statubar:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private showProgress(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->pb_progress:Lcom/join/mgps/customview/PictureHProgress;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x4

    .line 8
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private showSpeedStatus(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    return-void
.end method

.method private switchStatus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLaunchApp"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->ll_back:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->ll_back:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private updateProgressPartly()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0xc

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x5

    .line 30
    if-ne v0, v1, :cond_2

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->isLaunchApp:Z

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkId:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->pb_progress:Lcom/join/mgps/customview/PictureHProgress;

    .line 51
    .line 52
    const/16 v1, 0x64

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/PictureHProgress;->setProgress(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkId:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->pb_progress:Lcom/join/mgps/customview/PictureHProgress;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    long-to-int v3, v2

    .line 93
    invoke-virtual {v1, v3}, Lcom/join/mgps/customview/PictureHProgress;->setProgress(I)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->tv_loading_progress:Landroid/widget/TextView;

    .line 97
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v3, "\u6b63\u5728\u90e8\u7f72\u6781\u901f\u4e0b\u8f7d\u901a\u9053 "

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 109
    .line 110
    .line 111
    move-result-wide v3

    .line 112
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v0, "%"

    .line 116
    .line 117
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkLoadingActivity;->setStatusBar()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string v0, "\u6e38\u620f\u4fe1\u606f\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 20
    .line 21
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkLoadingActivity;->handleIntent()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0ed5
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkLoadingActivity;->finishStatus()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method cancel()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a1936
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public launchApk(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId",
            "gameUrl"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lma/g;->k(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->E()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/xinzhu/overmind/plugin/b;->i()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v0, "android.intent.action.VIEW"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string p3, "com.quark.browser"

    .line 41
    .line 42
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const/high16 p3, 0x10000000

    .line 46
    .line 47
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    sget-object p3, Lcom/MApplication;->z:Lcom/MApplication;

    .line 51
    .line 52
    invoke-virtual {p3}, Lcom/MApplication;->p()Lcom/join/mgps/pref/PrefDef_;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-virtual {p3}, Lcom/join/mgps/pref/PrefDef_;->has_launch_quark()Lorg/androidannotations/api/sharedpreferences/d;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {p3, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    sget-object p3, Lcom/MApplication;->z:Lcom/MApplication;

    .line 66
    .line 67
    invoke-virtual {p3}, Lcom/MApplication;->p()Lcom/join/mgps/pref/PrefDef_;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-virtual {p3}, Lcom/join/mgps/pref/PrefDef_;->isQuarkSilentDownload()Lorg/androidannotations/api/sharedpreferences/d;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-virtual {p3, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    sget-object p3, Lcom/MApplication;->z:Lcom/MApplication;

    .line 81
    .line 82
    invoke-virtual {p3}, Lcom/MApplication;->p()Lcom/join/mgps/pref/PrefDef_;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {p3}, Lcom/join/mgps/pref/PrefDef_;->quark_first_launch_time()Lorg/androidannotations/api/sharedpreferences/k;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-virtual {p3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    check-cast p3, Ljava/lang/Long;

    .line 95
    .line 96
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    const-wide/16 v2, 0x0

    .line 101
    .line 102
    cmp-long p3, v0, v2

    .line 103
    .line 104
    if-nez p3, :cond_1

    .line 105
    .line 106
    sget-object p3, Lcom/MApplication;->z:Lcom/MApplication;

    .line 107
    .line 108
    invoke-virtual {p3}, Lcom/MApplication;->p()Lcom/join/mgps/pref/PrefDef_;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-virtual {p3}, Lcom/join/mgps/pref/PrefDef_;->quark_first_launch_time()Lorg/androidannotations/api/sharedpreferences/k;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v0

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p3, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_1
    new-instance p3, Ljava/lang/Thread;

    .line 128
    .line 129
    new-instance v0, Lcom/join/mgps/activity/QuarkLoadingActivity$a;

    .line 130
    .line 131
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/QuarkLoadingActivity$a;-><init>(Lcom/join/mgps/activity/QuarkLoadingActivity;Landroid/content/Intent;I)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 138
    .line 139
    .line 140
    const/4 p1, 0x1

    .line 141
    return p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkLoadingActivity;->finishStatus()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTaskEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq p1, v2, :cond_7

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    if-eq p1, v3, :cond_6

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    if-eq p1, v2, :cond_5

    .line 18
    .line 19
    const/4 v1, 0x6

    .line 20
    if-eq p1, v1, :cond_4

    .line 21
    .line 22
    const/4 v1, 0x7

    .line 23
    if-eq p1, v1, :cond_3

    .line 24
    .line 25
    const/16 v3, 0x8

    .line 26
    .line 27
    if-eq p1, v3, :cond_1

    .line 28
    .line 29
    const/16 v4, 0x30

    .line 30
    .line 31
    if-eq p1, v4, :cond_0

    .line 32
    .line 33
    packed-switch p1, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :pswitch_0
    const/16 p1, 0x9

    .line 39
    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/QuarkLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_1
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/QuarkLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_2
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/QuarkLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    :pswitch_3
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/QuarkLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 53
    .line 54
    .line 55
    if-eqz v0, :cond_8

    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkId:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_8

    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->tv_loading_progress:Landroid/widget/TextView;

    .line 70
    .line 71
    const-string v0, "\u6b63\u5728\u90e8\u7f72\u6781\u901f\u4e0b\u8f7d\u901a\u9053"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->pb_progress:Lcom/join/mgps/customview/PictureHProgress;

    .line 77
    .line 78
    const/4 v0, 0x4

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 84
    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    const-string p1, "3875871586"

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    iput-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 102
    .line 103
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkLoadingActivity;->updateProgressPartly()V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/QuarkLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/QuarkLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/QuarkLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 116
    .line 117
    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->quarkId:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_8

    .line 131
    .line 132
    iput-boolean v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->isLaunchAfterDown:Z

    .line 133
    .line 134
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkLoadingActivity;->launchQuark()V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_6
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/QuarkLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_7
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/QuarkLoadingActivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 143
    .line 144
    .line 145
    :cond_8
    :goto_0
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/activity/QuarkLoadingActivity;->handleIntent()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/v8;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/v8;-><init>(Lcom/join/mgps/activity/QuarkLoadingActivity;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method updateDownStatus()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->isLaunchApp:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->isLaunchAfterDown:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/QuarkLoadingActivity;->showProgress(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->progressMonitor:Lcom/join/mgps/activity/QuarkLoadingActivity$b;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->a(Z)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->progressMonitor:Lcom/join/mgps/activity/QuarkLoadingActivity$b;

    .line 23
    .line 24
    :cond_0
    new-instance v1, Lcom/join/mgps/activity/QuarkLoadingActivity$b;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/QuarkLoadingActivity$b;-><init>(Lcom/join/mgps/activity/QuarkLoadingActivity;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->progressMonitor:Lcom/join/mgps/activity/QuarkLoadingActivity$b;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/QuarkLoadingActivity$b;->a(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->progressMonitor:Lcom/join/mgps/activity/QuarkLoadingActivity$b;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method updateLaunchProgress(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->pb_progress:Lcom/join/mgps/customview/PictureHProgress;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/PictureHProgress;->setProgress(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->tv_loading_progress:Landroid/widget/TextView;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "\u6b63\u5728\u542f\u52a8\u6781\u901f\u4e0b\u8f7d\u901a\u9053 "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/QuarkLoadingActivity;->pb_progress:Lcom/join/mgps/customview/PictureHProgress;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/customview/PictureHProgress;->getProgress()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "%"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "from"
        }
    .end annotation

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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/QuarkLoadingActivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/QuarkLoadingActivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/QuarkLoadingActivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/QuarkLoadingActivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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
