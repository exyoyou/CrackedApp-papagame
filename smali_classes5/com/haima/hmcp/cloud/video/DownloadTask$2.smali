.class Lcom/haima/hmcp/cloud/video/DownloadTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnForceKeepAliveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/video/DownloadTask;->toRequestKeepAlive(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

.field final synthetic val$innerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

.field final synthetic val$retryStrategy:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;

.field final synthetic val$timeStamp:J

.field final synthetic val$waitStrategy:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/video/DownloadTask;JLcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$2;->val$timeStamp:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$2;->val$innerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$2;->val$retryStrategy:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$2;->val$waitStrategy:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/cloud/video/DownloadTask$2;JZLjava/lang/String;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/haima/hmcp/cloud/video/DownloadTask$2;->lambda$onKeepAlive$0(JZLjava/lang/String;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    return-void
.end method

.method private synthetic lambda$onKeepAlive$0(JZLjava/lang/String;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 2
    .line 3
    move-wide v1, p1

    .line 4
    move v3, p3

    .line 5
    move-object v4, p4

    .line 6
    move-object v5, p5

    .line 7
    move-object v6, p6

    .line 8
    move-object v7, p7

    .line 9
    invoke-static/range {v0 .. v7}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$100(Lcom/haima/hmcp/cloud/video/DownloadTask;JZLjava/lang/String;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onKeepAlive(ZLjava/lang/String;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/DownloadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "download-file: success:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, "; message:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$2;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 32
    .line 33
    iget-wide v3, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$2;->val$timeStamp:J

    .line 34
    .line 35
    iget-object v7, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$2;->val$innerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 36
    .line 37
    iget-object v8, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$2;->val$retryStrategy:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;

    .line 38
    .line 39
    iget-object v9, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$2;->val$waitStrategy:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;

    .line 40
    .line 41
    new-instance v10, Lcom/haima/hmcp/cloud/video/u2;

    .line 42
    .line 43
    move-object v1, v10

    .line 44
    move-object v2, p0

    .line 45
    move v5, p1

    .line 46
    move-object v6, p2

    .line 47
    invoke-direct/range {v1 .. v9}, Lcom/haima/hmcp/cloud/video/u2;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask$2;JZLjava/lang/String;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveRetryStrategy;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v10}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$000(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
