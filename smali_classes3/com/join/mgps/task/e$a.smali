.class Lcom/join/mgps/task/e$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/task/e;
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

.field final synthetic f:Lcom/join/mgps/task/e;


# direct methods
.method public constructor <init>(Lcom/join/mgps/task/e;Ljava/io/File;Ljava/io/File;)V
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
    iput-object p1, p0, Lcom/join/mgps/task/e$a;->f:Lcom/join/mgps/task/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/task/e$a;->b:Z

    .line 3
    iput-object p2, p0, Lcom/join/mgps/task/e$a;->c:Ljava/io/File;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/task/e$a;->e:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/task/e;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
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
    iput-object p1, p0, Lcom/join/mgps/task/e$a;->f:Lcom/join/mgps/task/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/task/e$a;->b:Z

    .line 7
    iput-object p2, p0, Lcom/join/mgps/task/e$a;->c:Ljava/io/File;

    .line 8
    iput-object p3, p0, Lcom/join/mgps/task/e$a;->d:Ljava/io/File;

    .line 9
    iput-object p4, p0, Lcom/join/mgps/task/e$a;->e:Ljava/io/File;

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
    iput-boolean p1, p0, Lcom/join/mgps/task/e$a;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public run()V
    .locals 10

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Ljava/util/Random;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int/lit8 v2, v2, 0x32

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, 0x50

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    iget-boolean v4, p0, Lcom/join/mgps/task/e$a;->b:Z

    .line 26
    .line 27
    if-eqz v4, :cond_3

    .line 28
    .line 29
    const/4 v4, 0x3

    .line 30
    if-ge v1, v4, :cond_0

    .line 31
    .line 32
    div-int/lit8 v4, v2, 0x3

    .line 33
    .line 34
    :goto_1
    add-int/2addr v3, v4

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    const/16 v4, 0xf

    .line 37
    .line 38
    if-ge v1, v4, :cond_1

    .line 39
    .line 40
    sub-int v4, v0, v2

    .line 41
    .line 42
    div-int/lit8 v4, v4, 0xc

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/join/mgps/task/e$a;->f:Lcom/join/mgps/task/e;

    .line 46
    .line 47
    invoke-static {v4}, Lcom/join/mgps/task/e;->b(Lcom/join/mgps/task/e;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    int-to-long v5, v3

    .line 52
    invoke-virtual {v4, v5, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 53
    .line 54
    .line 55
    iget-object v4, p0, Lcom/join/mgps/task/e$a;->f:Lcom/join/mgps/task/e;

    .line 56
    .line 57
    invoke-static {v4}, Lcom/join/mgps/task/e;->b(Lcom/join/mgps/task/e;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->T4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 62
    .line 63
    .line 64
    iget-object v4, p0, Lcom/join/mgps/task/e$a;->f:Lcom/join/mgps/task/e;

    .line 65
    .line 66
    iget-boolean v4, v4, Lcom/join/mgps/task/e;->f:Z

    .line 67
    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    new-instance v5, Lcom/join/mgps/event/e0;

    .line 75
    .line 76
    iget-object v6, p0, Lcom/join/mgps/task/e$a;->f:Lcom/join/mgps/task/e;

    .line 77
    .line 78
    invoke-static {v6}, Lcom/join/mgps/task/e;->b(Lcom/join/mgps/task/e;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    iget-object v7, p0, Lcom/join/mgps/task/e$a;->f:Lcom/join/mgps/task/e;

    .line 87
    .line 88
    invoke-static {v7}, Lcom/join/mgps/task/e;->b(Lcom/join/mgps/task/e;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 93
    .line 94
    .line 95
    move-result-wide v7

    .line 96
    const/4 v9, 0x6

    .line 97
    invoke-direct {v5, v9, v6, v7, v8}, Lcom/join/mgps/event/e0;-><init>(ILjava/lang/String;J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v5}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    const-wide/16 v4, 0x3e8

    .line 104
    .line 105
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    add-int/lit8 v1, v1, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/join/mgps/task/e$a;->f:Lcom/join/mgps/task/e;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/join/mgps/task/e;->a()V

    .line 118
    .line 119
    .line 120
    :cond_3
    return-void
.end method
