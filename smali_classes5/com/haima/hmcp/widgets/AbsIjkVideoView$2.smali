.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->download(Ljava/util/List;Lcom/haima/hmcp/enums/DownloadMode;Lcom/haima/hmcp/listeners/DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field final synthetic val$callback:Lcom/haima/hmcp/listeners/DownloadCallback;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/listeners/DownloadCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->val$callback:Lcom/haima/hmcp/listeners/DownloadCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->lambda$onFail$3()V

    return-void
.end method

.method public static synthetic b(Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->lambda$onCancel$2()V

    return-void
.end method

.method public static synthetic c(Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->lambda$onFinish$1()V

    return-void
.end method

.method public static synthetic d(Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->lambda$onStart$0()V

    return-void
.end method

.method private synthetic lambda$onCancel$2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->downloadOnlyReplay()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onFail$3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->downloadOnlyReplay()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onFinish$1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->downloadOnlyReplay()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onStart$0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->pauseGame()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCancel(Lcom/haima/hmcp/enums/DownloadMode;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    const-wide/16 v1, 0x2

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->queryScene(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "AbsIjkVideoView"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p1, "download-file: nothing to do when download cancel in control lost case"

    .line 14
    .line 15
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 20
    .line 21
    iget v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    if-gt v2, v3, :cond_2

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    sget-object v2, Lcom/haima/hmcp/enums/DownloadMode;->NORMAL:Lcom/haima/hmcp/enums/DownloadMode;

    .line 29
    .line 30
    if-ne p1, v2, :cond_2

    .line 31
    .line 32
    :cond_1
    return-void

    .line 33
    :cond_2
    iget-boolean p1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isBackground:Z

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    const-string p1, "download-file: in background when replay"

    .line 38
    .line 39
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v0, "download-file: curConnectState = "

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 54
    .line 55
    iget v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, " when replay"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    iput v0, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 76
    .line 77
    iget-object v0, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHandler:Landroid/os/Handler;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    new-instance p1, Lcom/haima/hmcp/widgets/u;

    .line 82
    .line 83
    invoke-direct {p1, p0}, Lcom/haima/hmcp/widgets/u;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->downloadOnlyReplay()V

    .line 91
    .line 92
    .line 93
    :goto_0
    return-void
.end method

.method public onDownload(Lcom/haima/hmcp/beans/CloudFile;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "file="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "12633"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onDownloadFail(Lcom/haima/hmcp/beans/CloudFile;ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "file: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "; errorCode: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "; message: "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "12639"

    .line 35
    .line 36
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->val$callback:Lcom/haima/hmcp/listeners/DownloadCallback;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-interface {v0, p1, p2, p3}, Lcom/haima/hmcp/listeners/DownloadCallback;->onDownloadFail(Lcom/haima/hmcp/beans/CloudFile;ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public onDownloaded(Lcom/haima/hmcp/beans/CloudFile;)V
    .locals 1

    .line 1
    const-string v0, "12638"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->val$callback:Lcom/haima/hmcp/listeners/DownloadCallback;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/DownloadCallback;->onDownload(Lcom/haima/hmcp/beans/CloudFile;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onDownloading()V
    .locals 2

    .line 1
    const-string v0, "12630"

    .line 2
    .line 3
    const-string v1, "download task is running"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->val$callback:Lcom/haima/hmcp/listeners/DownloadCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/DownloadCallback;->onDownloading()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onFail(Lcom/haima/hmcp/enums/DownloadMode;ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "errorCode: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "; message: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "; curConnectState: "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 28
    .line 29
    iget v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "12641"

    .line 39
    .line 40
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->val$callback:Lcom/haima/hmcp/listeners/DownloadCallback;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-interface {v0, p2, p3}, Lcom/haima/hmcp/listeners/DownloadCallback;->onDownloadFail(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 51
    .line 52
    iget p3, p2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 53
    .line 54
    const/4 v0, 0x3

    .line 55
    if-gt p3, v0, :cond_2

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    sget-object p3, Lcom/haima/hmcp/enums/DownloadMode;->NORMAL:Lcom/haima/hmcp/enums/DownloadMode;

    .line 60
    .line 61
    if-ne p1, p3, :cond_2

    .line 62
    .line 63
    :cond_1
    return-void

    .line 64
    :cond_2
    iget-boolean p1, p2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isBackground:Z

    .line 65
    .line 66
    const-string p2, "AbsIjkVideoView"

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    const-string p1, "download-file: in background when replay"

    .line 71
    .line 72
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string p3, "download-file: curConnectState = "

    .line 82
    .line 83
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 87
    .line 88
    iget p3, p3, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 89
    .line 90
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p3, " when replay"

    .line 94
    .line 95
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 106
    .line 107
    const/4 p2, 0x0

    .line 108
    iput p2, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 109
    .line 110
    iget-object p2, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHandler:Landroid/os/Handler;

    .line 111
    .line 112
    if-eqz p2, :cond_4

    .line 113
    .line 114
    new-instance p1, Lcom/haima/hmcp/widgets/w;

    .line 115
    .line 116
    invoke-direct {p1, p0}, Lcom/haima/hmcp/widgets/w;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->downloadOnlyReplay()V

    .line 124
    .line 125
    .line 126
    :goto_0
    return-void
.end method

.method public onFinish(Lcom/haima/hmcp/enums/DownloadMode;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mode: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", curConnectState: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 20
    .line 21
    iget v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "12640"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->val$callback:Lcom/haima/hmcp/listeners/DownloadCallback;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/DownloadCallback;->onDownloadFinish()V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 43
    .line 44
    const-wide/16 v1, 0x2

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->queryScene(J)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const-string v1, "AbsIjkVideoView"

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    const-string p1, "download-file: nothing to do when download finish in control lost case"

    .line 55
    .line 56
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 61
    .line 62
    iget v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 63
    .line 64
    const/4 v3, 0x3

    .line 65
    if-gt v2, v3, :cond_3

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    sget-object v2, Lcom/haima/hmcp/enums/DownloadMode;->NORMAL:Lcom/haima/hmcp/enums/DownloadMode;

    .line 70
    .line 71
    if-ne p1, v2, :cond_3

    .line 72
    .line 73
    :cond_2
    return-void

    .line 74
    :cond_3
    iget-boolean p1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isBackground:Z

    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    const-string p1, "download-file: in background when replay"

    .line 79
    .line 80
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v0, "download-file: curConnectState = "

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 95
    .line 96
    iget v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v0, " when replay"

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    iput v0, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 117
    .line 118
    iput v0, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 119
    .line 120
    iget-object v0, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHandler:Landroid/os/Handler;

    .line 121
    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    new-instance p1, Lcom/haima/hmcp/widgets/v;

    .line 125
    .line 126
    invoke-direct {p1, p0}, Lcom/haima/hmcp/widgets/v;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_5
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->downloadOnlyReplay()V

    .line 134
    .line 135
    .line 136
    :goto_0
    return-void
.end method

.method public onPermissionNotGranted(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p1, "12630"

    .line 2
    .line 3
    const-string v0, "write external storage not granted"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "AbsIjkVideoView"

    .line 9
    .line 10
    const-string v0, "need permission: Manifest.permission.WRITE_EXTERNAL_STORAGE"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onPermissionNotGranted(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->val$callback:Lcom/haima/hmcp/listeners/DownloadCallback;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const/16 v0, 0x3ee

    .line 31
    .line 32
    const-string v1, "Write external storage not granted"

    .line 33
    .line 34
    invoke-interface {p1, v0, v1}, Lcom/haima/hmcp/listeners/DownloadCallback;->onDownloadFail(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public onProgress(Lcom/haima/hmcp/beans/CloudFile;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->val$callback:Lcom/haima/hmcp/listeners/DownloadCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move-wide v2, p2

    .line 7
    move-wide v4, p4

    .line 8
    invoke-interface/range {v0 .. v5}, Lcom/haima/hmcp/listeners/DownloadCallback;->onDownloadProgress(Lcom/haima/hmcp/beans/CloudFile;JJ)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onStart(Lcom/haima/hmcp/enums/DownloadMode;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "download-file: download task mode: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", mPlayerState="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 20
    .line 21
    iget v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "AbsIjkVideoView"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "12632"

    .line 36
    .line 37
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/haima/hmcp/enums/DownloadMode;->DOWNLOAD_ONLY:Lcom/haima/hmcp/enums/DownloadMode;

    .line 41
    .line 42
    if-ne p1, v0, :cond_0

    .line 43
    .line 44
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 45
    .line 46
    new-instance v0, Lcom/haima/hmcp/widgets/t;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/haima/hmcp/widgets/t;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView$2;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method
