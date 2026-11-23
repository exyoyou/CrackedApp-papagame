.class Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressMonitor"
.end annotation


# instance fields
.field mFile:Ljava/io/File;

.field private monitor:Z

.field final synthetic this$1:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$1",
            "file"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;->this$1:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;->monitor:Z

    .line 8
    .line 9
    iput-object p2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;->mFile:Ljava/io/File;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->N1(Ljava/io/File;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p1, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->initSize:J

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;->monitor:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;->this$1:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->access$200(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;->mFile:Ljava/io/File;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N1(Ljava/io/File;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "zip currentSize ="

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;->this$1:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->access$200(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_actual_size()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    const-wide/16 v4, 0x2

    .line 50
    .line 51
    mul-long v2, v2, v4

    .line 52
    .line 53
    const-wide/16 v4, 0x0

    .line 54
    .line 55
    cmp-long v6, v2, v4

    .line 56
    .line 57
    if-gtz v6, :cond_2

    .line 58
    .line 59
    const-wide/16 v2, 0x1

    .line 60
    .line 61
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;->this$1:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;

    .line 62
    .line 63
    iget-object v5, v4, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 64
    .line 65
    iget-wide v6, v4, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->initSize:J

    .line 66
    .line 67
    sub-long v8, v0, v6

    .line 68
    .line 69
    sub-long/2addr v0, v6

    .line 70
    const-wide/16 v6, 0x64

    .line 71
    .line 72
    mul-long v0, v0, v6

    .line 73
    .line 74
    div-long/2addr v0, v2

    .line 75
    long-to-int v1, v0

    .line 76
    move-object v4, v5

    .line 77
    move-wide v5, v8

    .line 78
    move-wide v7, v2

    .line 79
    move v9, v1

    .line 80
    invoke-virtual/range {v4 .. v9}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->updateUnzipRes(JJI)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v1, "totalSize="

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ";zip progress ="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;->this$1:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;

    .line 102
    .line 103
    invoke-static {v1}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;->access$200(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 108
    .line 109
    .line 110
    move-result-wide v1

    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-wide/16 v0, 0x3e8

    .line 115
    .line 116
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    throw v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    .line 125
    .line 126
    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;->monitor:Z

    .line 128
    .line 129
    :cond_3
    return-void
.end method

.method public setMonitor(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$UNZIPResThread$ProgressMonitor;->monitor:Z

    .line 2
    .line 3
    return-void
.end method
