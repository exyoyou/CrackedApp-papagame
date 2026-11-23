.class Lcom/haima/hmcp/cloud/video/DownloadTask$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob$KeepAliveTimerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/video/DownloadTask;->startKeepAliveTimerJob(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

.field final synthetic val$retryStrategy:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$4;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$4;->val$retryStrategy:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/cloud/video/DownloadTask$4;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/cloud/video/DownloadTask$4;->lambda$onTimeOut$0(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    return-void
.end method

.method private synthetic lambda$onTimeOut$0(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$4;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$200(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$4;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 7
    .line 8
    invoke-static {v0, p1, p2, p3}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$300(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onTimeOut(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "start keep alive time out, strategy: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "download-file: "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v1, "12637"

    .line 41
    .line 42
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$4;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$4;->val$retryStrategy:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;

    .line 48
    .line 49
    new-instance v2, Lcom/haima/hmcp/cloud/video/v2;

    .line 50
    .line 51
    invoke-direct {v2, p0, p1, v1, p2}, Lcom/haima/hmcp/cloud/video/v2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask$4;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$000(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
