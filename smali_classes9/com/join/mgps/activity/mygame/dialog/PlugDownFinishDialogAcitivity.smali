.class public Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d07d9
.end annotation


# instance fields
.field appSize:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field cancle:Landroid/widget/ImageView;
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

.field icon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->notifyUi()V

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
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->notifyUi()V
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
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->notifyUi()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTasks:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->plugNumber:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->plugNumber:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/4 v3, 0x5

    .line 56
    if-ne v2, v3, :cond_0

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    const-wide/16 v4, 0x0

    .line 63
    .line 64
    cmp-long v6, v2, v4

    .line 65
    .line 66
    iput-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->title:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, "\u521d\u59cb\u5316\u5b8c\u6210"

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    sget-object v0, Lcom/papa/sim/statistic/Event;->showEmuLoadFininsh:Lcom/papa/sim/statistic/Event;

    .line 113
    .line 114
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 115
    .line 116
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    .line 123
    .line 124
    const-string v0, ""

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->notifyUi()V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method private updateProgressPartly()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    const-string v7, "/"

    .line 39
    .line 40
    cmp-long v8, v3, v5

    .line 41
    .line 42
    if-nez v8, :cond_0

    .line 43
    .line 44
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 81
    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 88
    .line 89
    .line 90
    move-result-wide v5

    .line 91
    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    const/16 v2, 0xc

    .line 122
    .line 123
    if-ne v1, v2, :cond_1

    .line 124
    .line 125
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->progressBarZip:Landroid/widget/ProgressBar;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 128
    .line 129
    .line 130
    move-result-wide v2

    .line 131
    long-to-int v3, v2

    .line 132
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 139
    .line 140
    .line 141
    move-result-wide v2

    .line 142
    long-to-int v3, v2

    .line 143
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 144
    .line 145
    .line 146
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    const/4 v2, 0x2

    .line 153
    if-ne v1, v2, :cond_2

    .line 154
    .line 155
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    .line 156
    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v0, "/S"

    .line 170
    .line 171
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    :cond_2
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    const-string v0, "PlugDownDialogAcitivity"

    .line 2
    .line 3
    const-string v1, "PlugDownDialogAcitivity oncreate"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->plugNumber:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Lq5/f;->c0(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 30
    .line 31
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lq5/f;->d()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTasks:Ljava/util/List;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->title:Landroid/widget/TextView;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v2, "\u6b63\u5728\u521d\u59cb\u5316"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->ok:Landroid/widget/TextView;

    .line 78
    .line 79
    const-string v1, "\u540e\u53f0\u4e0b\u8f7d"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    const/4 v1, 0x5

    .line 91
    if-ne v0, v1, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTasks:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_2

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->plugNumber:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_1

    .line 122
    .line 123
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->plugNumber:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-nez v3, :cond_1

    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-ne v3, v1, :cond_1

    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFinishTime()J

    .line 142
    .line 143
    .line 144
    move-result-wide v3

    .line 145
    const-wide/16 v5, 0x0

    .line 146
    .line 147
    cmp-long v7, v3, v5

    .line 148
    .line 149
    iput-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 153
    .line 154
    if-eqz v0, :cond_3

    .line 155
    .line 156
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->title:Landroid/widget/TextView;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->info:Landroid/widget/TextView;

    .line 166
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 173
    .line 174
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v2, "\u521d\u59cb\u5316\u5b8c\u6210"

    .line 182
    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 194
    .line 195
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    sget-object v1, Lcom/papa/sim/statistic/Event;->showEmuLoadFininsh:Lcom/papa/sim/statistic/Event;

    .line 209
    .line 210
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 211
    .line 212
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_4
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    sget-object v1, Lcom/papa/sim/statistic/Event;->showEmuLoading:Lcom/papa/sim/statistic/Event;

    .line 224
    .line 225
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 226
    .line 227
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 231
    .line 232
    .line 233
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->notifyUi()V

    .line 234
    .line 235
    .line 236
    return-void
.end method

.method cancle()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 20
    .line 21
    .line 22
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 27
    .line 28
    .line 29
    :goto_2
    return-void
.end method

.method notifyUi()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    const/4 v4, 0x2

    .line 30
    const-wide/16 v5, 0x0

    .line 31
    .line 32
    const-string v7, "/"

    .line 33
    .line 34
    if-eq v0, v4, :cond_6

    .line 35
    .line 36
    const/4 v4, 0x3

    .line 37
    if-eq v0, v4, :cond_3

    .line 38
    .line 39
    const/4 v4, 0x5

    .line 40
    const/16 v8, 0x64

    .line 41
    .line 42
    if-eq v0, v4, :cond_2

    .line 43
    .line 44
    const/4 v4, 0x6

    .line 45
    if-eq v0, v4, :cond_3

    .line 46
    .line 47
    const/16 v4, 0x2a

    .line 48
    .line 49
    if-eq v0, v4, :cond_2

    .line 50
    .line 51
    packed-switch v0, :pswitch_data_0

    .line 52
    .line 53
    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    .line 88
    .line 89
    const-string v1, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->progressBarZip:Landroid/widget/ProgressBar;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 99
    .line 100
    .line 101
    move-result-wide v1

    .line 102
    long-to-int v2, v1

    .line 103
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_5

    .line 107
    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 109
    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    .line 140
    .line 141
    const-string v2, "\u89e3\u538b\u4e2d.."

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->progressBarZip:Landroid/widget/ProgressBar;

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    .line 152
    .line 153
    const/16 v1, 0x8

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->progressBarZip:Landroid/widget/ProgressBar;

    .line 159
    .line 160
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 161
    .line 162
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 163
    .line 164
    .line 165
    move-result-wide v1

    .line 166
    long-to-int v2, v1

    .line 167
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_5

    .line 171
    .line 172
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 173
    .line 174
    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    .line 180
    .line 181
    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->ok:Landroid/widget/TextView;

    .line 185
    .line 186
    const-string v1, "\u5b89\u88c5"

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_5

    .line 192
    .line 193
    :pswitch_3
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 194
    .line 195
    if-eqz v0, :cond_1

    .line 196
    .line 197
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 198
    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 205
    .line 206
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 207
    .line 208
    .line 209
    move-result-wide v4

    .line 210
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    .line 235
    .line 236
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 237
    .line 238
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 239
    .line 240
    .line 241
    move-result-wide v1

    .line 242
    long-to-int v2, v1

    .line 243
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 249
    .line 250
    .line 251
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    .line 252
    .line 253
    const-string v1, "\u7b49\u5f85\u4e2d"

    .line 254
    .line 255
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_5

    .line 259
    .line 260
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 261
    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 268
    .line 269
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v2, "\u521d\u59cb\u5316\u5b8c\u6210"

    .line 277
    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    .line 287
    .line 288
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    .line 289
    .line 290
    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 291
    .line 292
    .line 293
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->ok:Landroid/widget/TextView;

    .line 294
    .line 295
    const-string v1, "\u5f00\u59cb\u6e38\u620f"

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_5

    .line 301
    .line 302
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 303
    .line 304
    if-eqz v0, :cond_5

    .line 305
    .line 306
    :try_start_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 307
    .line 308
    .line 309
    move-result-wide v0

    .line 310
    cmp-long v4, v0, v5

    .line 311
    .line 312
    if-nez v4, :cond_4

    .line 313
    .line 314
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 315
    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 322
    .line 323
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 324
    .line 325
    .line 326
    move-result-wide v4

    .line 327
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    goto :goto_2

    .line 352
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 353
    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .line 358
    .line 359
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 360
    .line 361
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 362
    .line 363
    .line 364
    move-result-wide v4

    .line 365
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    .line 388
    .line 389
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    .line 390
    .line 391
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 392
    .line 393
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 394
    .line 395
    .line 396
    move-result-wide v1

    .line 397
    long-to-int v2, v1

    .line 398
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 399
    .line 400
    .line 401
    goto :goto_3

    .line 402
    :catch_1
    move-exception v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 404
    .line 405
    .line 406
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    .line 407
    .line 408
    const-string v1, "\u6682\u505c\u4e2d"

    .line 409
    .line 410
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_5

    .line 414
    .line 415
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 416
    .line 417
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 418
    .line 419
    .line 420
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 421
    .line 422
    if-eqz v0, :cond_8

    .line 423
    .line 424
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 425
    .line 426
    .line 427
    move-result-wide v0

    .line 428
    cmp-long v4, v0, v5

    .line 429
    .line 430
    if-nez v4, :cond_7

    .line 431
    .line 432
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 433
    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .line 438
    .line 439
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 440
    .line 441
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 442
    .line 443
    .line 444
    move-result-wide v4

    .line 445
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    .line 468
    .line 469
    goto :goto_4

    .line 470
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 471
    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .line 476
    .line 477
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 478
    .line 479
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 480
    .line 481
    .line 482
    move-result-wide v4

    .line 483
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v4

    .line 487
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    .line 506
    .line 507
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    .line 508
    .line 509
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 510
    .line 511
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 512
    .line 513
    .line 514
    move-result-wide v1

    .line 515
    long-to-int v2, v1

    .line 516
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 517
    .line 518
    .line 519
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 520
    .line 521
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->lodingInfo:Landroid/widget/TextView;

    .line 526
    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    const-string v0, "/S"

    .line 536
    .line 537
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    .line 546
    .line 547
    :cond_8
    :goto_5
    return-void

    .line 548
    nop

    .line 549
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
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->lastGame:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Lcom/papa/sim/statistic/Event;->startAfterEmuLoad:Lcom/papa/sim/statistic/Event;

    .line 48
    .line 49
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 50
    .line 51
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 58
    .line 59
    .line 60
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
    invoke-direct {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->updateProgressPartly()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->plugNumber:Ljava/lang/String;

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
    iput-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 69
    .line 70
    const/16 v0, 0x9

    .line 71
    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 77
    .line 78
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 83
    .line 84
    if-nez p1, :cond_5

    .line 85
    .line 86
    return-void

    .line 87
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 97
    .line 98
    invoke-virtual {p0, p1, v2}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 103
    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 109
    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 115
    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 121
    .line 122
    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 124
    .line 125
    .line 126
    :goto_0
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
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownFinishDialogAcitivity;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

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
