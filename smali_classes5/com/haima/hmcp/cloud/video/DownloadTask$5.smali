.class Lcom/haima/hmcp/cloud/video/DownloadTask$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/video/job/ScanFileJob$ScanFileJobCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/video/DownloadTask;->startScanFileJob(Ljava/lang/String;Lcom/haima/hmcp/listeners/SearchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

.field final synthetic val$callback:Lcom/haima/hmcp/listeners/SearchCallback;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/video/DownloadTask;Lcom/haima/hmcp/listeners/SearchCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$5;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$5;->val$callback:Lcom/haima/hmcp/listeners/SearchCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/listeners/SearchCallback;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/cloud/video/DownloadTask$5;->lambda$onDone$0(Lcom/haima/hmcp/listeners/SearchCallback;Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$onDone$0(Lcom/haima/hmcp/listeners/SearchCallback;Ljava/util/List;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/haima/hmcp/listeners/SearchCallback;->onSearched(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method


# virtual methods
.method public onDone(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$5;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$400(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$5;->this$0:Lcom/haima/hmcp/cloud/video/DownloadTask;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/DownloadTask$5;->val$callback:Lcom/haima/hmcp/listeners/SearchCallback;

    .line 9
    .line 10
    new-instance v2, Lcom/haima/hmcp/cloud/video/w2;

    .line 11
    .line 12
    invoke-direct {v2, v1, p1}, Lcom/haima/hmcp/cloud/video/w2;-><init>(Lcom/haima/hmcp/listeners/SearchCallback;Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Lcom/haima/hmcp/cloud/video/DownloadTask;->access$500(Lcom/haima/hmcp/cloud/video/DownloadTask;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
