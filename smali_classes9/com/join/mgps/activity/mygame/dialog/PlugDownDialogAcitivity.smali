.class public Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;,
        Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d07d8
.end annotation


# static fields
.field private static factory:Lcom/github/snowdream/android/app/downloader/b;

.field static listener:Lcom/github/snowdream/android/app/downloader/b$b;

.field private static tasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field appSize:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field callback:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;

.field cancle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field downloadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field downloadType:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field gameid:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field info:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field lodingInfo:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ok:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field plugNumber:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field progressBarZip:Landroid/widget/ProgressBar;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->tasks:Ljava/util/Map;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadType:I

    .line 6
    .line 7
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->normalStartGame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->tasks:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method private checkAndDownRes()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isUncheckSelfSupport()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipNew;->getSelf_support()Lcom/join/mgps/dto/TipBean;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameid:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 34
    .line 35
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadGameNotSelfSupport(Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_url_remote()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->startDownloadRes(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private getResFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "urlString"
        }
    .end annotation

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v1, 0x32

    .line 22
    .line 23
    if-le v0, v1, :cond_1

    .line 24
    .line 25
    const-string v0, "?"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/16 v0, 0x2d

    .line 44
    .line 45
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_1
    :goto_0
    return-object p1
.end method

.method private normalStartGame()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x5

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCheckRes(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    invoke-static {p0, v0, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lcom/papa/sim/statistic/Event;->StartgameLoadFininsh:Lcom/papa/sim/statistic/Event;

    .line 30
    .line 31
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 32
    .line 33
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->notifyUi()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->notifyUi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->notifyUi()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq5/f;->d()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTasks:Ljava/util/List;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameid:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameid:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTasks:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->plugNumber:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->plugNumber:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_1

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const/4 v3, 0x5

    .line 79
    if-ne v2, v3, :cond_1

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    const-wide/16 v4, 0x0

    .line 86
    .line 87
    cmp-long v6, v2, v4

    .line 88
    .line 89
    iput-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->title:Landroid/widget/TextView;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 106
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p1, "\u521d\u59cb\u5316\u5b8c\u6210"

    .line 120
    .line 121
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    .line 132
    .line 133
    const-string v0, ""

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    .line 142
    .line 143
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->notifyUi()V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method private startDownloadRes(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resource_url_remote"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->callback:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;->onStartEmuGame()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->getResFileName(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_2
    move-object v3, v0

    .line 32
    new-instance v0, Lcom/github/snowdream/android/app/downloader/c;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    sget-object v2, Lcom/join/mgps/Util/z;->g:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, "/roms"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-wide/16 v5, 0x0

    .line 63
    .line 64
    move-object v1, v0

    .line 65
    move-object v2, p1

    .line 66
    invoke-direct/range {v1 .. v6}, Lcom/github/snowdream/android/app/downloader/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/b;->b(Lcom/github/snowdream/android/app/downloader/c;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    sget-object p1, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->tasks:Ljava/util/Map;

    .line 75
    .line 76
    if-nez p1, :cond_4

    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->callback:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    invoke-interface {p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;->onStartEmuGame()V

    .line 83
    .line 84
    .line 85
    :cond_3
    return-void

    .line 86
    :cond_4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->i()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_8

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->i()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v1, ""

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->i()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    sget-object v1, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->tasks:Ljava/util/Map;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/c;->i()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-eqz v1, :cond_7

    .line 120
    .line 121
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->callback:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;

    .line 122
    .line 123
    if-eqz p1, :cond_6

    .line 124
    .line 125
    invoke-interface {p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;->onStartEmuGame()V

    .line 126
    .line 127
    .line 128
    :cond_6
    return-void

    .line 129
    :cond_7
    sget-object v1, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->tasks:Ljava/util/Map;

    .line 130
    .line 131
    monitor-enter v1

    .line 132
    :try_start_0
    sget-object v2, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->tasks:Ljava/util/Map;

    .line 133
    .line 134
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    monitor-exit v1

    .line 138
    return-void

    .line 139
    :catchall_0
    move-exception p1

    .line 140
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    throw p1

    .line 142
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->callback:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;

    .line 143
    .line 144
    if-eqz p1, :cond_9

    .line 145
    .line 146
    invoke-interface {p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;->onStartEmuGame()V

    .line 147
    .line 148
    .line 149
    :cond_9
    return-void
.end method

.method private updateProgressPartly()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    .line 24
    .line 25
    mul-double v1, v1, v3

    .line 26
    .line 27
    mul-double v1, v1, v3

    .line 28
    .line 29
    double-to-long v1, v1

    .line 30
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    const-wide/16 v5, 0x0

    .line 37
    .line 38
    const-string v7, ")"

    .line 39
    .line 40
    const-string v8, "/"

    .line 41
    .line 42
    const-string v9, "\u6b63\u5728\u4e0b\u8f7d\uff08"

    .line 43
    .line 44
    cmp-long v10, v3, v5

    .line 45
    .line 46
    if-nez v10, :cond_0

    .line 47
    .line 48
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 49
    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 91
    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 101
    .line 102
    .line 103
    move-result-wide v5

    .line 104
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    const/16 v2, 0xc

    .line 138
    .line 139
    if-ne v1, v2, :cond_1

    .line 140
    .line 141
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBarZip:Landroid/widget/ProgressBar;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 144
    .line 145
    .line 146
    move-result-wide v2

    .line 147
    long-to-int v3, v2

    .line 148
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    long-to-int v3, v2

    .line 159
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 160
    .line 161
    .line 162
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    const/4 v2, 0x2

    .line 169
    if-ne v1, v2, :cond_2

    .line 170
    .line 171
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    .line 172
    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 179
    .line 180
    .line 181
    move-result-wide v3

    .line 182
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v0, "%"

    .line 186
    .line 187
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    :cond_2
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/MApplication;->X:Z

    .line 3
    .line 4
    const-string v1, "PlugDownDialogAcitivity"

    .line 5
    .line 6
    const-string v2, "PlugDownDialogAcitivity oncreate"

    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->plugNumber:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1, v2}, Lq5/f;->c0(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lq5/f;->d()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTasks:Ljava/util/List;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 45
    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameid:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 63
    .line 64
    iget v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadType:I

    .line 65
    .line 66
    const/4 v2, 0x2

    .line 67
    if-eq v1, v2, :cond_1

    .line 68
    .line 69
    const/4 v3, 0x3

    .line 70
    if-ne v1, v3, :cond_2

    .line 71
    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->initPreDownloadFactory()V

    .line 73
    .line 74
    .line 75
    iget v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadType:I

    .line 76
    .line 77
    if-ne v1, v2, :cond_2

    .line 78
    .line 79
    new-instance v1, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$1;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$1;-><init>(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->callback:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;

    .line 85
    .line 86
    invoke-direct {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->checkAndDownRes()V

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->title:Landroid/widget/TextView;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->info:Landroid/widget/TextView;

    .line 101
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v3, "\u521d\u6b21\u52a0\u8f7d\u6e38\u620f\u9700\u521d\u59cb\u5316"

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->d2(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v3, "\u8d44\u6e90\u6587\u4ef6\uff0c\u8bf7\u7a0d\u540e\u2026"

    .line 130
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    const/4 v2, 0x5

    .line 148
    if-ne v1, v2, :cond_7

    .line 149
    .line 150
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTasks:Ljava/util/List;

    .line 151
    .line 152
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_4

    .line 161
    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 167
    .line 168
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    iget-object v5, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->plugNumber:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-eqz v4, :cond_3

    .line 179
    .line 180
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->plugNumber:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-nez v4, :cond_3

    .line 191
    .line 192
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-ne v4, v2, :cond_3

    .line 197
    .line 198
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    .line 199
    .line 200
    .line 201
    move-result-wide v4

    .line 202
    const-wide/16 v6, 0x0

    .line 203
    .line 204
    cmp-long v8, v4, v6

    .line 205
    .line 206
    iput-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameid:Ljava/lang/String;

    .line 210
    .line 211
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_5

    .line 216
    .line 217
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameid:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    iput-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 228
    .line 229
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 230
    .line 231
    if-eqz v1, :cond_6

    .line 232
    .line 233
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->title:Landroid/widget/TextView;

    .line 234
    .line 235
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 243
    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 250
    .line 251
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v3, "\u521d\u59cb\u5316\u5b8c\u6210"

    .line 259
    .line 260
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    .line 269
    .line 270
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    sget-object v2, Lcom/papa/sim/statistic/Event;->showEmuLoadFininsh:Lcom/papa/sim/statistic/Event;

    .line 275
    .line 276
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 277
    .line 278
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 282
    .line 283
    .line 284
    goto :goto_1

    .line 285
    :cond_7
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    sget-object v2, Lcom/papa/sim/statistic/Event;->showEmuLoading:Lcom/papa/sim/statistic/Event;

    .line 290
    .line 291
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 292
    .line 293
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 297
    .line 298
    .line 299
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->notifyUi()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    const/16 v2, 0x404

    .line 311
    .line 312
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 313
    .line 314
    .line 315
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 316
    .line 317
    const/16 v2, 0x1c

    .line 318
    .line 319
    if-lt v1, v2, :cond_8

    .line 320
    .line 321
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 337
    .line 338
    .line 339
    :cond_8
    return-void
.end method

.method cancle()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/papa/sim/statistic/Event;->EmuLoadingBackground:Lcom/papa/sim/statistic/Event;

    .line 9
    .line 10
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 11
    .line 12
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method downloadGameNotSelfSupport(Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "downloadTask"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u83b7\u53d6\u8d44\u6e90\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u518d\u8bd5\u3002"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Lcom/join/mgps/dto/RequestModel;

    .line 26
    .line 27
    invoke-direct {v3}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 31
    .line 32
    .line 33
    new-instance v4, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;

    .line 34
    .line 35
    invoke-direct {v4}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, p1}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setGameId(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v1}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setUid(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->setToken(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, v3}, Lcom/join/mgps/rpc/impl/i;->f0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/16 v2, 0x258

    .line 65
    .line 66
    if-ne v1, v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->showTost(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->callback:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;

    .line 78
    .line 79
    if-eqz p1, :cond_0

    .line 80
    .line 81
    invoke-interface {p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;->onStartEmuGame()V

    .line 82
    .line 83
    .line 84
    :cond_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getVer()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getVer_name()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getDownloadURL()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getResourceURL()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {p2, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getActualSize()J

    .line 120
    .line 121
    .line 122
    move-result-wide v1

    .line 123
    invoke-virtual {p2, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setActual_size(J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getResourceSize()J

    .line 127
    .line 128
    .line 129
    move-result-wide v1

    .line 130
    invoke-virtual {p2, v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_actual_size(J)V

    .line 131
    .line 132
    .line 133
    const/4 p1, 0x0

    .line 134
    invoke-virtual {p2, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFromRecomDown(Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_url_remote()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->startDownloadRes(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->showTost(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->callback:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;

    .line 149
    .line 150
    if-eqz p1, :cond_4

    .line 151
    .line 152
    invoke-interface {p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;->onStartEmuGame()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->showTost(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->callback:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;

    .line 164
    .line 165
    if-eqz p1, :cond_4

    .line 166
    .line 167
    invoke-interface {p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;->onStartEmuGame()V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_3
    const p1, 0x7f12031e

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->showTost(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->callback:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;

    .line 182
    .line 183
    if-eqz p1, :cond_4

    .line 184
    .line 185
    invoke-interface {p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;->onStartEmuGame()V

    .line 186
    .line 187
    .line 188
    :cond_4
    :goto_0
    return-void
.end method

.method public initPreDownloadFactory()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/github/snowdream/android/app/downloader/b;->e()Lcom/github/snowdream/android/app/downloader/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;-><init>(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->listener:Lcom/github/snowdream/android/app/downloader/b$b;

    .line 13
    .line 14
    sget-object v1, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->factory:Lcom/github/snowdream/android/app/downloader/b;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/b;->m(Lcom/github/snowdream/android/app/downloader/b$b;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method notifyUi()V
    .locals 12
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 23
    .line 24
    mul-double v2, v2, v4

    .line 25
    .line 26
    mul-double v2, v2, v4

    .line 27
    .line 28
    double-to-long v2, v2

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v5, "statues="

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v5, ""

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "plugDownDialog"

    .line 52
    .line 53
    invoke-static {v5, v4}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 v4, 0x2

    .line 57
    const-wide/16 v5, 0x0

    .line 58
    .line 59
    const-string v7, ")"

    .line 60
    .line 61
    const-string v8, "\u6b63\u5728\u4e0b\u8f7d\uff08"

    .line 62
    .line 63
    const-string v9, "/"

    .line 64
    .line 65
    if-eq v0, v4, :cond_a

    .line 66
    .line 67
    const/4 v4, 0x3

    .line 68
    if-eq v0, v4, :cond_7

    .line 69
    .line 70
    const/16 v4, 0x64

    .line 71
    .line 72
    const/4 v10, 0x5

    .line 73
    if-eq v0, v10, :cond_2

    .line 74
    .line 75
    const/4 v11, 0x6

    .line 76
    if-eq v0, v11, :cond_7

    .line 77
    .line 78
    const/16 v11, 0x2a

    .line 79
    .line 80
    if-eq v0, v11, :cond_2

    .line 81
    .line 82
    packed-switch v0, :pswitch_data_0

    .line 83
    .line 84
    .line 85
    goto/16 :goto_7

    .line 86
    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 100
    .line 101
    .line 102
    move-result-wide v4

    .line 103
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBarZip:Landroid/widget/ProgressBar;

    .line 131
    .line 132
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 135
    .line 136
    .line 137
    move-result-wide v1

    .line 138
    long-to-int v2, v1

    .line 139
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_7

    .line 143
    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 145
    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v5, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 155
    .line 156
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 157
    .line 158
    .line 159
    move-result-wide v5

    .line 160
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    .line 188
    .line 189
    const-string v2, "\u89e3\u538b\u4e2d.."

    .line 190
    .line 191
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBarZip:Landroid/widget/ProgressBar;

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    .line 200
    .line 201
    const/16 v1, 0x8

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBarZip:Landroid/widget/ProgressBar;

    .line 207
    .line 208
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 209
    .line 210
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 211
    .line 212
    .line 213
    move-result-wide v1

    .line 214
    long-to-int v2, v1

    .line 215
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_7

    .line 219
    .line 220
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 221
    .line 222
    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    .line 228
    .line 229
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->cancle:Landroid/widget/TextView;

    .line 233
    .line 234
    const-string v1, "\u53bb\u67e5\u770b"

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->ok:Landroid/widget/TextView;

    .line 240
    .line 241
    const-string v1, "\u5b89\u88c5"

    .line 242
    .line 243
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_7

    .line 247
    .line 248
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 249
    .line 250
    if-eqz v0, :cond_1

    .line 251
    .line 252
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 253
    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 263
    .line 264
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 265
    .line 266
    .line 267
    move-result-wide v4

    .line 268
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    .line 294
    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    .line 296
    .line 297
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 298
    .line 299
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 300
    .line 301
    .line 302
    move-result-wide v1

    .line 303
    long-to-int v2, v1

    .line 304
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .line 306
    .line 307
    goto :goto_1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 310
    .line 311
    .line 312
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    .line 313
    .line 314
    const-string v1, "\u7b49\u5f85\u4e2d"

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_7

    .line 320
    .line 321
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 322
    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 329
    .line 330
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    const-string v2, "\u521d\u59cb\u5316\u5b8c\u6210"

    .line 338
    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    .line 348
    .line 349
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    .line 350
    .line 351
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 352
    .line 353
    .line 354
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lq5/f;->d()Ljava/util/List;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTasks:Ljava/util/List;

    .line 363
    .line 364
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameid:Ljava/lang/String;

    .line 365
    .line 366
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_3

    .line 371
    .line 372
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameid:Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 383
    .line 384
    goto :goto_3

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTasks:Ljava/util/List;

    .line 386
    .line 387
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    if-eqz v1, :cond_5

    .line 396
    .line 397
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 402
    .line 403
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->plugNumber:Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    if-eqz v2, :cond_4

    .line 414
    .line 415
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->plugNumber:Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    if-nez v2, :cond_4

    .line 426
    .line 427
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    if-ne v2, v10, :cond_4

    .line 432
    .line 433
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    .line 434
    .line 435
    .line 436
    move-result-wide v2

    .line 437
    cmp-long v4, v2, v5

    .line 438
    .line 439
    iput-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 440
    .line 441
    goto :goto_2

    .line 442
    :cond_5
    :goto_3
    new-instance v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$3;

    .line 443
    .line 444
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$3;-><init>(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;)V

    .line 445
    .line 446
    .line 447
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->callback:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;

    .line 448
    .line 449
    iget v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadType:I

    .line 450
    .line 451
    const/4 v2, 0x1

    .line 452
    if-ne v1, v2, :cond_6

    .line 453
    .line 454
    invoke-interface {v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;->onStartEmuGame()V

    .line 455
    .line 456
    .line 457
    goto/16 :goto_7

    .line 458
    .line 459
    :cond_6
    invoke-direct {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->checkAndDownRes()V

    .line 460
    .line 461
    .line 462
    goto/16 :goto_7

    .line 463
    .line 464
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 465
    .line 466
    if-eqz v0, :cond_9

    .line 467
    .line 468
    :try_start_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 469
    .line 470
    .line 471
    move-result-wide v0

    .line 472
    cmp-long v4, v0, v5

    .line 473
    .line 474
    if-nez v4, :cond_8

    .line 475
    .line 476
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 477
    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    .line 479
    .line 480
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .line 482
    .line 483
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 484
    .line 485
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 486
    .line 487
    .line 488
    move-result-wide v4

    .line 489
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v4

    .line 493
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    .line 512
    .line 513
    goto :goto_4

    .line 514
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 515
    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .line 520
    .line 521
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 522
    .line 523
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 524
    .line 525
    .line 526
    move-result-wide v4

    .line 527
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v4

    .line 531
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    .line 550
    .line 551
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    .line 552
    .line 553
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 554
    .line 555
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 556
    .line 557
    .line 558
    move-result-wide v1

    .line 559
    long-to-int v2, v1

    .line 560
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 561
    .line 562
    .line 563
    goto :goto_5

    .line 564
    :catch_1
    move-exception v0

    .line 565
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 566
    .line 567
    .line 568
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    .line 569
    .line 570
    const-string v1, "\u6682\u505c\u4e2d"

    .line 571
    .line 572
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    .line 574
    .line 575
    goto/16 :goto_7

    .line 576
    .line 577
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 578
    .line 579
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 580
    .line 581
    .line 582
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 583
    .line 584
    if-eqz v0, :cond_c

    .line 585
    .line 586
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 587
    .line 588
    .line 589
    move-result-wide v0

    .line 590
    cmp-long v4, v0, v5

    .line 591
    .line 592
    if-nez v4, :cond_b

    .line 593
    .line 594
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 595
    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    .line 597
    .line 598
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 605
    .line 606
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 607
    .line 608
    .line 609
    move-result-wide v4

    .line 610
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v4

    .line 614
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    .line 636
    .line 637
    goto :goto_6

    .line 638
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 639
    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    .line 641
    .line 642
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 649
    .line 650
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 651
    .line 652
    .line 653
    move-result-wide v4

    .line 654
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v4

    .line 658
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    .line 680
    .line 681
    :goto_6
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    .line 682
    .line 683
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 684
    .line 685
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 686
    .line 687
    .line 688
    move-result-wide v1

    .line 689
    long-to-int v2, v1

    .line 690
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 691
    .line 692
    .line 693
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 694
    .line 695
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    .line 699
    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    .line 701
    .line 702
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    .line 704
    .line 705
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 706
    .line 707
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 708
    .line 709
    .line 710
    move-result-wide v2

    .line 711
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    const-string v2, "%"

    .line 715
    .line 716
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    .line 725
    .line 726
    :cond_c
    :goto_7
    return-void

    .line 727
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method ok()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    const/4 v1, 0x5

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/16 v1, 0xb

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, p0, v1}, Lcom/join/android/app/common/utils/APKUtils;->A(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    new-instance v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$2;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$2;-><init>(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->callback:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;

    .line 42
    .line 43
    iget v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadType:I

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    if-ne v1, v2, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;->onStartEmuGame()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->checkAndDownRes()V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

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
    .locals 3
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
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateProgressPartly()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->plugNumber:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 v0, 0x2

    .line 41
    if-eq p1, v0, :cond_a

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    if-eq p1, v2, :cond_9

    .line 45
    .line 46
    const/4 v0, 0x5

    .line 47
    if-eq p1, v0, :cond_8

    .line 48
    .line 49
    const/4 v0, 0x6

    .line 50
    if-eq p1, v0, :cond_7

    .line 51
    .line 52
    const/4 v0, 0x7

    .line 53
    if-eq p1, v0, :cond_6

    .line 54
    .line 55
    const/16 v2, 0xa

    .line 56
    .line 57
    if-eq p1, v2, :cond_4

    .line 58
    .line 59
    const/16 v0, 0xc

    .line 60
    .line 61
    if-eq p1, v0, :cond_3

    .line 62
    .line 63
    const/16 v0, 0xd

    .line 64
    .line 65
    if-eq p1, v0, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 69
    .line 70
    const/16 v0, 0x9

    .line 71
    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 77
    .line 78
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 83
    .line 84
    if-nez p1, :cond_5

    .line 85
    .line 86
    return-void

    .line 87
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 97
    .line 98
    invoke-virtual {p0, p1, v2}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 103
    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 109
    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 115
    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 121
    .line 122
    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 124
    .line 125
    .line 126
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/MApplication;->X:Z

    .line 6
    .line 7
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/MApplication;->X:Z

    .line 6
    .line 7
    return-void
.end method

.method showTost(Ljava/lang/String;)V
    .locals 0
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
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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

.method updateUnzipRes(JJI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "unzipSize",
            "progress"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "\u6b63\u5728\u89e3\u538b\uff08"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, "/"

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {p3, p4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, ")"

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    .line 45
    .line 46
    const-string p2, "\u89e3\u538b\u4e2d.."

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBarZip:Landroid/widget/ProgressBar;

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    .line 58
    .line 59
    const/16 p2, 0x8

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBarZip:Landroid/widget/ProgressBar;

    .line 65
    .line 66
    invoke-virtual {p1, p5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
