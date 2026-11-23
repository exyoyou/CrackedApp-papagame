.class public Lcom/join/mgps/activity/EndGameLaunchActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d004a
.end annotation


# instance fields
.field private archiveName:Ljava/lang/String;

.field private archivePath:Ljava/lang/String;

.field endgameInfo:Lcom/join/mgps/dto/EndGameBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private factory:Lcom/github/snowdream/android/app/downloader/b;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isFromZero:Z

.field ivGameIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private lastProgress:I

.field launchProgress:Ljava/lang/Runnable;

.field private listener:Lcom/github/snowdream/android/app/downloader/b$b;

.field private mActivity:Landroid/app/Activity;

.field playBackRunnable:Ljava/lang/Runnable;

.field playBackUrl:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field progress:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field startAutoProgress:Ljava/lang/Runnable;

.field startMode:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field tvLoading:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/activity/EndGameLaunchActivity$b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/EndGameLaunchActivity$b;-><init>(Lcom/join/mgps/activity/EndGameLaunchActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->playBackRunnable:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/join/mgps/activity/EndGameLaunchActivity$d;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/EndGameLaunchActivity$d;-><init>(Lcom/join/mgps/activity/EndGameLaunchActivity;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->startAutoProgress:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance v0, Lcom/join/mgps/activity/EndGameLaunchActivity$e;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/EndGameLaunchActivity$e;-><init>(Lcom/join/mgps/activity/EndGameLaunchActivity;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->launchProgress:Ljava/lang/Runnable;

    .line 24
    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/EndGameLaunchActivity;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/EndGameLaunchActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->lastProgress:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1000(Lcom/join/mgps/activity/EndGameLaunchActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->archivePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/EndGameLaunchActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->lastProgress:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$108(Lcom/join/mgps/activity/EndGameLaunchActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->lastProgress:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->lastProgress:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$1100(Lcom/join/mgps/activity/EndGameLaunchActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->archiveName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$112(Lcom/join/mgps/activity/EndGameLaunchActivity;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->lastProgress:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->lastProgress:I

    .line 5
    .line 6
    return v0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/EndGameLaunchActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lcom/join/mgps/activity/EndGameLaunchActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/EndGameLaunchActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/EndGameLaunchActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/EndGameLaunchActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->isFromZero:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$700(Lcom/join/mgps/activity/EndGameLaunchActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$802(Lcom/join/mgps/activity/EndGameLaunchActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$900(Lcom/join/mgps/activity/EndGameLaunchActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method private initListener()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/github/snowdream/android/app/downloader/b;->e()Lcom/github/snowdream/android/app/downloader/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/activity/EndGameLaunchActivity$f;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/EndGameLaunchActivity$f;-><init>(Lcom/join/mgps/activity/EndGameLaunchActivity;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->listener:Lcom/github/snowdream/android/app/downloader/b$b;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/b;->m(Lcom/github/snowdream/android/app/downloader/b$b;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/b;->i()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private startDownloadArchieve(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFromZero"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->startMode:I

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->startPlayBack()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iput-boolean p1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->isFromZero:Z

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    const/16 p1, 0x50

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/EndGameLaunchActivity;->setLoadingProgress(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->endgameInfo:Lcom/join/mgps/dto/EndGameBean;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    const-string p1, "\u83b7\u53d6\u6b8b\u5c40\u4fe1\u606f\u5931\u8d25"

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/EndGameLaunchActivity;->showTost(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->endgameInfo:Lcom/join/mgps/dto/EndGameBean;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getEndgameId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, "_v2"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->archiveName:Ljava/lang/String;

    .line 57
    .line 58
    sget-object p1, Lcom/join/mgps/Util/z;->j:Ljava/lang/String;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->archivePath:Ljava/lang/String;

    .line 61
    .line 62
    new-instance p1, Ljava/io/File;

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->archivePath:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->archiveName:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_3

    .line 96
    .line 97
    new-instance p1, Lcom/github/snowdream/android/app/downloader/c;

    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->endgameInfo:Lcom/join/mgps/dto/EndGameBean;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameBean;->getArchive()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->archiveName:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v3, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->archivePath:Ljava/lang/String;

    .line 108
    .line 109
    const-wide/16 v4, 0x0

    .line 110
    .line 111
    move-object v0, p1

    .line 112
    invoke-direct/range {v0 .. v5}, Lcom/github/snowdream/android/app/downloader/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/b;->b(Lcom/github/snowdream/android/app/downloader/c;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->startEndGame()V

    .line 122
    .line 123
    .line 124
    :goto_0
    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->initListener()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->ivGameIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->endgameInfo:Lcom/join/mgps/dto/EndGameBean;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/dto/EndGameBean;->getGameIcon()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->gameId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x1

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v2, 0x5

    .line 46
    if-eq v0, v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/EndGameLaunchActivity;->startDownloadArchieve(Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v2, "gameDownloadDetail"

    .line 58
    .line 59
    iget-object v3, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->gameId:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v2, v3}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 66
    .line 67
    const-string v2, "fromRecomDown"

    .line 68
    .line 69
    invoke-virtual {v0, v2, v1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Z)Lorg/androidannotations/api/builder/e;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 74
    .line 75
    const-string v1, "_from"

    .line 76
    .line 77
    const/16 v2, 0x9d

    .line 78
    .line 79
    invoke-virtual {v0, v1, v2}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;I)Lorg/androidannotations/api/builder/e;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/join/mgps/service/CommonService_$n0;

    .line 84
    .line 85
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->startAutoProgress:Ljava/lang/Runnable;

    .line 91
    .line 92
    const-wide/16 v2, 0x96

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    .line 96
    .line 97
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->listener:Lcom/github/snowdream/android/app/downloader/b$b;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/b;->j(Lcom/github/snowdream/android/app/downloader/b$b;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 28
    .line 29
    .line 30
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
    const/4 v1, 0x2

    .line 10
    const/16 v2, 0x32

    .line 11
    .line 12
    if-eq p1, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    if-eq p1, v1, :cond_0

    .line 16
    .line 17
    const/16 v1, 0xb

    .line 18
    .line 19
    if-eq p1, v1, :cond_0

    .line 20
    .line 21
    const/16 v1, 0x30

    .line 22
    .line 23
    if-eq p1, v1, :cond_0

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v3, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->gameId:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v3, 0x0

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/EndGameLaunchActivity;->setLoadingProgress(I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v3}, Lcom/join/mgps/activity/EndGameLaunchActivity;->startDownloadArchieve(Z)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    const/16 p1, 0x64

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/EndGameLaunchActivity;->setLoadingProgress(I)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v3}, Lcom/join/mgps/activity/EndGameLaunchActivity;->startDownloadArchieve(Z)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v3, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->gameId:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 105
    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    long-to-double v0, v0

    .line 113
    mul-double v0, v0, v3

    .line 114
    .line 115
    double-to-int p1, v0

    .line 116
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/EndGameLaunchActivity;->setLoadingProgress(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    long-to-double v0, v0

    .line 139
    mul-double v0, v0, v3

    .line 140
    .line 141
    double-to-int p1, v0

    .line 142
    add-int/2addr p1, v2

    .line 143
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/EndGameLaunchActivity;->setLoadingProgress(I)V

    .line 144
    .line 145
    .line 146
    :cond_4
    :goto_0
    return-void
.end method

.method public onPlayVideo()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/join/mgps/Util/z;->j:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "/record/"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->playBackUrl:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->mActivity:Landroid/app/Activity;

    .line 29
    .line 30
    const-string v1, "\u56de\u653e\u5931\u8d25\uff01"

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->playBackUrl:Ljava/lang/String;

    .line 45
    .line 46
    const-string v2, "/"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v2, Ljava/io/File;

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/EndGameLaunchActivity;->toRePlayGame(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-static {}, Lcom/join/android/app/common/http/d;->B()Lcom/join/android/app/common/http/d$j;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->playBackUrl:Ljava/lang/String;

    .line 97
    .line 98
    new-instance v3, Lcom/join/mgps/activity/EndGameLaunchActivity$a;

    .line 99
    .line 100
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/EndGameLaunchActivity$a;-><init>(Lcom/join/mgps/activity/EndGameLaunchActivity;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2, v0, v3}, Lcom/join/android/app/common/http/d$j;->a(Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/d$p;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    return-void
.end method

.method setLoadingProgress(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    :cond_0
    const/16 v0, 0x64

    .line 5
    .line 6
    if-le p1, v0, :cond_1

    .line 7
    .line 8
    const/16 p1, 0x64

    .line 9
    .line 10
    :cond_1
    iget v1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->lastProgress:I

    .line 11
    .line 12
    if-ge p1, v1, :cond_2

    .line 13
    .line 14
    move p1, v1

    .line 15
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const v2, 0x7f0711c8

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    mul-int v1, v1, p1

    .line 27
    .line 28
    div-int/2addr v1, v0

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->progress:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->progress:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    iput p1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->lastProgress:I

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->tvLoading:Landroid/widget/TextView;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "\u6b63\u5728\u8fdb\u5165\u6e38\u620f"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, "%"

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method showTost(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

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

.method startEndGame()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->launchProgress:Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->launchProgress:Ljava/lang/Runnable;

    .line 22
    .line 23
    const-wide/16 v2, 0x64

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method startPlayBack()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->playBackRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->playBackRunnable:Ljava/lang/Runnable;

    .line 22
    .line 23
    const-wide/16 v2, 0x64

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method toRePlayGame(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->gameId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget v3, p0, Lcom/join/mgps/activity/EndGameLaunchActivity;->startMode:I

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    move-object v4, p1

    .line 25
    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/UtilsMy;->F4(Landroid/content/Context;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/join/mgps/activity/EndGameLaunchActivity$c;

    .line 41
    .line 42
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/EndGameLaunchActivity$c;-><init>(Lcom/join/mgps/activity/EndGameLaunchActivity;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-wide/16 v2, 0x3e8

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method
