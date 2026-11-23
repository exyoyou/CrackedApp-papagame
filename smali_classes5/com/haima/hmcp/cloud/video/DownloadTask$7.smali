.class Lcom/haima/hmcp/cloud/video/DownloadTask$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/video/job/WebSocketOpenTimerJob$WebSocketOpenTimerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/video/DownloadTask;->startAccessOpenTimerJob(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$7;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$7;->val$runnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/cloud/video/DownloadTask$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask$7;->lambda$null$2()V

    return-void
.end method

.method public static synthetic b(Lcom/haima/hmcp/cloud/video/DownloadTask$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask$7;->lambda$onTimeOut$1()V

    return-void
.end method

.method public static synthetic c(Lcom/haima/hmcp/cloud/video/DownloadTask$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask$7;->lambda$onTimeOut$0()V

    return-void
.end method

.method public static synthetic d(Lcom/haima/hmcp/cloud/video/DownloadTask$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask$7;->lambda$onTimeOut$3()V

    return-void
.end method

.method private synthetic lambda$null$2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$7;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 2
    .line 3
    const/16 v1, 0x3e9

    .line 4
    .line 5
    const-string v2, "web-socket is not ready"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->onDownloadFail(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$onTimeOut$0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$7;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$600(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onTimeOut$1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$7;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$700(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onTimeOut$3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$7;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/cloud/video/c3;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/haima/hmcp/cloud/video/c3;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask$7;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$000(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onTimeOut()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$7;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/cloud/video/z2;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/haima/hmcp/cloud/video/z2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask$7;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$000(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$7;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 12
    .line 13
    new-instance v1, Lcom/haima/hmcp/cloud/video/a3;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/haima/hmcp/cloud/video/a3;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask$7;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$000(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$7;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$800(Lcom/haima/hmcp/cloud/video/DownloadTask;)Lcom/haima/hmcp/business/IWebSocket;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "download-file: "

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$7;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$800(Lcom/haima/hmcp/cloud/video/DownloadTask;)Lcom/haima/hmcp/business/IWebSocket;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v2, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 38
    .line 39
    invoke-interface {v0, v2}, Lcom/haima/hmcp/business/IWebSocket;->isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, "wait access` open time out, but access is connected and task continue"

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$7;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$7;->val$runnable:Ljava/lang/Runnable;

    .line 70
    .line 71
    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$000(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_0
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, "wait access open time out"

    .line 86
    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v0, "12630"

    .line 98
    .line 99
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$7;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 103
    .line 104
    new-instance v1, Lcom/haima/hmcp/cloud/video/b3;

    .line 105
    .line 106
    invoke-direct {v1, p0}, Lcom/haima/hmcp/cloud/video/b3;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask$7;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$000(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
