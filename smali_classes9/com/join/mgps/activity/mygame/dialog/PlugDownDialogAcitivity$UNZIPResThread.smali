.class public Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UNZIPResThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;
    }
.end annotation


# instance fields
.field initSize:J

.field private mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field progressMonitor:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;

.field final synthetic this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "downloadTask",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->progressMonitor:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->initSize:J

    .line 12
    .line 13
    iput-object p2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method hasResource()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 3
    .line 4
    if-eqz v1, :cond_2

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_url_remote()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, ".zip"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, ".zip/"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 74
    .line 75
    .line 76
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    :cond_1
    return v0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :cond_2
    return v0
.end method

.method public interrupt()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->hasResource()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Ljava/io/File;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_1
    new-instance v1, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v1, p0, v3}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;-><init>(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;Ljava/io/File;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->progressMonitor:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v2, v1, v3}, Lcom/join/mgps/Util/s3;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    .line 49
    .line 50
    move-object v1, v2

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->progressMonitor:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;->setMonitor(Z)V

    .line 60
    .line 61
    .line 62
    :cond_1
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 65
    .line 66
    .line 67
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v2, "romsPath6-"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 87
    .line 88
    const/4 v2, 0x5

    .line 89
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 97
    .line 98
    iget-object v2, v2, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 104
    .line 105
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Lcom/join/kotlin/utils/DlTaskManager;->onTaskChanged(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 111
    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    new-instance v1, Ljava/io/File;

    .line 121
    .line 122
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 129
    .line 130
    .line 131
    :try_start_3
    const-string v2, ".downloadTask"

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 142
    .line 143
    invoke-virtual {v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v2, v1, v3}, Lcom/join/mgps/Util/o3;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :catch_1
    move-exception v1

    .line 152
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 153
    .line 154
    .line 155
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 156
    .line 157
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 161
    .line 162
    iget-object v0, v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->callback:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;

    .line 163
    .line 164
    if-eqz v0, :cond_a

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :catchall_0
    move-exception v2

    .line 168
    move-object v5, v2

    .line 169
    move-object v2, v1

    .line 170
    move-object v1, v5

    .line 171
    goto :goto_3

    .line 172
    :catch_2
    move-exception v2

    .line 173
    move-object v5, v2

    .line 174
    move-object v2, v1

    .line 175
    move-object v1, v5

    .line 176
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->progressMonitor:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;

    .line 180
    .line 181
    if-eqz v1, :cond_4

    .line 182
    .line 183
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;->setMonitor(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 184
    .line 185
    .line 186
    :cond_4
    :try_start_6
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->progressMonitor:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;

    .line 187
    .line 188
    if-eqz v1, :cond_5

    .line 189
    .line 190
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;->setMonitor(Z)V

    .line 191
    .line 192
    .line 193
    :cond_5
    if-eqz v2, :cond_6

    .line 194
    .line 195
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 196
    .line 197
    .line 198
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 199
    .line 200
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 204
    .line 205
    iget-object v0, v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->callback:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;

    .line 206
    .line 207
    if-eqz v0, :cond_7

    .line 208
    .line 209
    invoke-interface {v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;->onStartEmuGame()V

    .line 210
    .line 211
    .line 212
    :cond_7
    return-void

    .line 213
    :catchall_1
    move-exception v1

    .line 214
    :goto_3
    :try_start_7
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->progressMonitor:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;

    .line 215
    .line 216
    if-eqz v3, :cond_8

    .line 217
    .line 218
    invoke-virtual {v3, v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;->setMonitor(Z)V

    .line 219
    .line 220
    .line 221
    :cond_8
    if-eqz v2, :cond_9

    .line 222
    .line 223
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 224
    .line 225
    .line 226
    :cond_9
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 227
    :catch_3
    move-exception v1

    .line 228
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 229
    .line 230
    .line 231
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 232
    .line 233
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 237
    .line 238
    iget-object v0, v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->callback:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;

    .line 239
    .line 240
    if-eqz v0, :cond_a

    .line 241
    .line 242
    :goto_4
    invoke-interface {v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;->onStartEmuGame()V

    .line 243
    .line 244
    .line 245
    :cond_a
    return-void

    .line 246
    :catchall_2
    move-exception v1

    .line 247
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->mDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 248
    .line 249
    invoke-virtual {v2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 253
    .line 254
    iget-object v0, v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->callback:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;

    .line 255
    .line 256
    if-eqz v0, :cond_b

    .line 257
    .line 258
    invoke-interface {v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$IStartEmuGameCallback;->onStartEmuGame()V

    .line 259
    .line 260
    .line 261
    :cond_b
    throw v1
.end method
