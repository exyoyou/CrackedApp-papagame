.class Lcom/haima/hmcp/cloud/video/DownloadTask$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/video/observer/WebSocketOpenObserver$WebSocketStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/video/DownloadTask;->createWsServerOpenObserver(Ljava/lang/Runnable;)Lcom/haima/hmcp/listeners/WebSocketObserver;
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
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$8;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$8;->val$runnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/cloud/video/DownloadTask$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask$8;->lambda$onOpen$1()V

    return-void
.end method

.method public static synthetic b(Lcom/haima/hmcp/cloud/video/DownloadTask$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/video/DownloadTask$8;->lambda$onOpen$0()V

    return-void
.end method

.method private synthetic lambda$onOpen$0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$8;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$1000(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onOpen$1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$8;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$900(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 0

    return-void
.end method

.method public onOpen()V
    .locals 3

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
    const-string v2, "download-file: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "ws-server is open and continue"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "12630"

    .line 26
    .line 27
    invoke-static {v0, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$8;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 31
    .line 32
    new-instance v1, Lcom/haima/hmcp/cloud/video/d3;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/haima/hmcp/cloud/video/d3;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask$8;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$000(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$8;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 41
    .line 42
    new-instance v1, Lcom/haima/hmcp/cloud/video/e3;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/haima/hmcp/cloud/video/e3;-><init>(Lcom/haima/hmcp/cloud/video/DownloadTask$8;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$000(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$8;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$8;->val$runnable:Ljava/lang/Runnable;

    .line 53
    .line 54
    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$000(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
