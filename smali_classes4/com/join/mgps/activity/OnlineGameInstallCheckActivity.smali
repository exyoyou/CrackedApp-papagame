.class public Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$c;,
        Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0089
.end annotation


# instance fields
.field private checkAdapter:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$c;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private currentCheckingIndex:I

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field private hasDestroyed:Z

.field header:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ivGameIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;",
            ">;"
        }
    .end annotation
.end field

.field private net_game_count_down:I

.field pref:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field progress:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field runnable:Ljava/lang/Runnable;

.field rvCheck:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field tvBtnInstall:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvGameName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tvInstallCount:Landroid/widget/TextView;
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
    const/16 v0, 0x1388

    .line 5
    .line 6
    iput v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->net_game_count_down:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->currentCheckingIndex:I

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->handler:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$a;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$a;-><init>(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->runnable:Ljava/lang/Runnable;

    .line 24
    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->currentCheckingIndex:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$008(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->currentCheckingIndex:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->currentCheckingIndex:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->list:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->checkAdapter:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->checkFinished()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->install()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkFinished()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->hasDestroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->progress:Landroid/widget/ProgressBar;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->list:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$b;

    .line 18
    .line 19
    iget v1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->net_game_count_down:I

    .line 20
    .line 21
    add-int/lit16 v1, v1, 0xc8

    .line 22
    .line 23
    int-to-long v4, v1

    .line 24
    const-wide/16 v6, 0x3e8

    .line 25
    .line 26
    move-object v2, v0

    .line 27
    move-object v3, p0

    .line 28
    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$b;-><init>(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;JJ)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->countDownTimer:Landroid/os/CountDownTimer;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->tvBtnInstall:Landroid/widget/TextView;

    .line 38
    .line 39
    new-instance v1, Lcom/join/mgps/activity/f8;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/f8;-><init>(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private getAvailableStorage()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/f2;->a(Landroid/content/Context;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/join/mgps/dto/Filepath;

    .line 20
    .line 21
    const-string v2, ""

    .line 22
    .line 23
    iget-object v3, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    iget-object v2, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/Filepath;->getPathRoot()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_0

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/join/mgps/dto/Filepath;->getAvailable()J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :cond_3
    const-string v0, "\u65e0\u53ef\u7528\u7a7a\u95f4"

    .line 84
    .line 85
    return-object v0
.end method

.method private getPermissionCount()I
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/16 v2, 0x1000

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method private initRecyclerview()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->list:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v7, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;

    .line 9
    .line 10
    const v3, 0x7f080841

    .line 11
    .line 12
    .line 13
    const-string v4, "Apk\u5b8c\u6574\u6027\u68c0\u6d4b"

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v1, v7

    .line 27
    move-object v2, p0

    .line 28
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;-><init>(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->list:Ljava/util/ArrayList;

    .line 35
    .line 36
    new-instance v7, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;

    .line 37
    .line 38
    const v3, 0x7f080842

    .line 39
    .line 40
    .line 41
    const-string v4, "\u624b\u673a\u517c\u5bb9\u6027"

    .line 42
    .line 43
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 44
    .line 45
    move-object v1, v7

    .line 46
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;-><init>(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->list:Ljava/util/ArrayList;

    .line 53
    .line 54
    new-instance v7, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;

    .line 55
    .line 56
    const v3, 0x7f080840

    .line 57
    .line 58
    .line 59
    const-string v4, "\u7cfb\u7edf\u517c\u5bb9\u6027"

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v2, "Android"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    move-object v1, v7

    .line 81
    move-object v2, p0

    .line 82
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;-><init>(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->list:Ljava/util/ArrayList;

    .line 89
    .line 90
    new-instance v7, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;

    .line 91
    .line 92
    const v3, 0x7f080845

    .line 93
    .line 94
    .line 95
    const-string v4, "\u5269\u4f59\u5b58\u50a8\u7a7a\u95f4"

    .line 96
    .line 97
    invoke-direct {p0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->getAvailableStorage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    move-object v1, v7

    .line 102
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;-><init>(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->list:Ljava/util/ArrayList;

    .line 109
    .line 110
    new-instance v7, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;

    .line 111
    .line 112
    const v3, 0x7f080846

    .line 113
    .line 114
    .line 115
    const-string v4, "\u6076\u610f\u63d2\u4ef6\u68c0\u6d4b"

    .line 116
    .line 117
    const-string v5, "\u65e0"

    .line 118
    .line 119
    move-object v1, v7

    .line 120
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;-><init>(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->list:Ljava/util/ArrayList;

    .line 127
    .line 128
    new-instance v7, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;

    .line 129
    .line 130
    const v3, 0x7f080844

    .line 131
    .line 132
    .line 133
    const-string v4, "\u6743\u9650\u68c0\u6d4b"

    .line 134
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-direct {p0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->getPermissionCount()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v2, "\u9879\u6743\u9650"

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    move-object v1, v7

    .line 157
    move-object v2, p0

    .line 158
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$d;-><init>(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->rvCheck:Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    .line 166
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 167
    .line 168
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 172
    .line 173
    .line 174
    new-instance v0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$c;

    .line 175
    .line 176
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$c;-><init>(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;)V

    .line 177
    .line 178
    .line 179
    iput-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->checkAdapter:Lcom/join/mgps/activity/OnlineGameInstallCheckActivity$c;

    .line 180
    .line 181
    iget-object v1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->rvCheck:Landroidx/recyclerview/widget/RecyclerView;

    .line 182
    .line 183
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->progress:Landroid/widget/ProgressBar;

    .line 187
    .line 188
    iget-object v1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->list:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->handler:Landroid/os/Handler;

    .line 198
    .line 199
    iget-object v1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->runnable:Ljava/lang/Runnable;

    .line 200
    .line 201
    const-wide/16 v2, 0x15e

    .line 202
    .line 203
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    .line 205
    .line 206
    return-void
.end method

.method private initView()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "gameId\u4e3a\u7a7a"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->showToast(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->gameId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-string v0, "\u83b7\u53d6\u4e0b\u8f7d\u4efb\u52a1\u5931\u8d25"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->showToast(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->ivGameIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->tvGameName:Landroid/widget/TextView;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->tvBtnInstall:Landroid/widget/TextView;

    .line 58
    .line 59
    const-string v1, "\u7acb\u5373\u5b89\u88c5"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v1, "\u8fc7\u53bb2\u5c0f\u65f6\u5185\u5df2\u6709"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    const-wide v3, 0x407f400000000000L    # 500.0

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    mul-double v1, v1, v3

    .line 84
    .line 85
    const-wide v3, 0x4072c00000000000L    # 300.0

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    add-double/2addr v1, v3

    .line 91
    double-to-int v1, v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, "\u4eba\u901a\u8fc7\u609f\u996d\u5b89\u88c5\u6b64\u6e38\u620f"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Landroid/text/SpannableString;

    .line 105
    .line 106
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 110
    .line 111
    const-string v2, "#FF2E2E"

    .line 112
    .line 113
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 118
    .line 119
    .line 120
    const/16 v2, 0xb

    .line 121
    .line 122
    const/16 v3, 0x21

    .line 123
    .line 124
    const/16 v4, 0x8

    .line 125
    .line 126
    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->tvInstallCount:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method private install()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->countDownTimer:Landroid/os/CountDownTimer;

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
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->runnable:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->hasDestroyed:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Ljava/io/File;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->task:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->C(Landroid/content/Context;Ljava/io/File;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->lambda$checkFinished$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$checkFinished$0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->install()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

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
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->pref:Lcom/join/mgps/pref/PrefDef_;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->net_game_count_down()Lorg/androidannotations/api/sharedpreferences/i;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-lez v0, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->pref:Lcom/join/mgps/pref/PrefDef_;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->net_game_count_down()Lorg/androidannotations/api/sharedpreferences/i;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/16 v0, 0x1388

    .line 64
    .line 65
    :goto_0
    iput v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->net_game_count_down:I

    .line 66
    .line 67
    invoke-direct {p0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->initView()V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->initRecyclerview()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->hasDestroyed:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->countDownTimer:Landroid/os/CountDownTimer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/OnlineGameInstallCheckActivity;->runnable:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :cond_1
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
