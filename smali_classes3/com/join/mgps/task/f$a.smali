.class Lcom/join/mgps/task/f$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/task/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private b:Z

.field c:Ljava/io/File;

.field d:Ljava/io/File;

.field e:Ljava/io/File;

.field final synthetic f:Lcom/join/mgps/task/f;


# direct methods
.method public constructor <init>(Lcom/join/mgps/task/f;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "file",
            "fileApk"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/task/f$a;->f:Lcom/join/mgps/task/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/task/f$a;->b:Z

    .line 3
    iput-object p2, p0, Lcom/join/mgps/task/f$a;->c:Ljava/io/File;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/task/f$a;->e:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/task/f;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "file",
            "fileData",
            "fileApk"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/join/mgps/task/f$a;->f:Lcom/join/mgps/task/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/task/f$a;->b:Z

    .line 7
    iput-object p2, p0, Lcom/join/mgps/task/f$a;->c:Ljava/io/File;

    .line 8
    iput-object p3, p0, Lcom/join/mgps/task/f$a;->d:Ljava/io/File;

    .line 9
    iput-object p4, p0, Lcom/join/mgps/task/f$a;->e:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a(Z)V
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
    iput-boolean p1, p0, Lcom/join/mgps/task/f$a;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public run()V
    .locals 11

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/task/f$a;->b:Z

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/task/f$a;->c:Ljava/io/File;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N1(Ljava/io/File;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object v2, p0, Lcom/join/mgps/task/f$a;->e:Ljava/io/File;

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    move-wide v5, v3

    .line 26
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v7, "zip currentSize ="

    .line 32
    .line 33
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v7, "   surrentApk= "

    .line 40
    .line 41
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/join/mgps/task/f$a;->f:Lcom/join/mgps/task/f;

    .line 48
    .line 49
    invoke-static {v2}, Lcom/join/mgps/task/f;->b(Lcom/join/mgps/task/f;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 54
    .line 55
    .line 56
    move-result-wide v7

    .line 57
    const-wide/16 v9, 0x2

    .line 58
    .line 59
    mul-long v7, v7, v9

    .line 60
    .line 61
    cmp-long v2, v7, v3

    .line 62
    .line 63
    if-nez v2, :cond_1

    .line 64
    .line 65
    const-wide/16 v7, 0x1

    .line 66
    .line 67
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/task/f$a;->f:Lcom/join/mgps/task/f;

    .line 68
    .line 69
    invoke-static {v2}, Lcom/join/mgps/task/f;->b(Lcom/join/mgps/task/f;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-wide/16 v3, 0x64

    .line 74
    .line 75
    add-long/2addr v0, v5

    .line 76
    mul-long v0, v0, v3

    .line 77
    .line 78
    div-long/2addr v0, v7

    .line 79
    invoke-virtual {v2, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v1, "totalSize="

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, ";zip progress ="

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/join/mgps/task/f$a;->f:Lcom/join/mgps/task/f;

    .line 101
    .line 102
    invoke-static {v1}, Lcom/join/mgps/task/f;->b(Lcom/join/mgps/task/f;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 107
    .line 108
    .line 109
    move-result-wide v1

    .line 110
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/task/f$a;->f:Lcom/join/mgps/task/f;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/join/mgps/task/f;->b(Lcom/join/mgps/task/f;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->T4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 120
    .line 121
    .line 122
    const-wide/16 v0, 0x3e8

    .line 123
    .line 124
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/join/mgps/task/f$a;->f:Lcom/join/mgps/task/f;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/join/mgps/task/f;->a()V

    .line 135
    .line 136
    .line 137
    :cond_2
    return-void
.end method
