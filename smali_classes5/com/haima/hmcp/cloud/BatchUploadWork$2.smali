.class Lcom/haima/hmcp/cloud/BatchUploadWork$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/IUploadSummaryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/BatchUploadWork;->batchUploadTaskExecute(Lcom/haima/hmcp/business/IWebSocket;Lcom/haima/hmcp/beans/CloudFileConfig;Ljava/util/List;Ljava/util/List;Lcom/haima/hmcp/cloud/IUploadSummaryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/BatchUploadWork;

.field final synthetic val$checkFailedFiles:Ljava/util/List;

.field final synthetic val$summaryListener:Lcom/haima/hmcp/cloud/IUploadSummaryListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/BatchUploadWork;Ljava/util/List;Lcom/haima/hmcp/cloud/IUploadSummaryListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadWork;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$2;->val$checkFailedFiles:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$2;->val$summaryListener:Lcom/haima/hmcp/cloud/IUploadSummaryListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onHangUp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$2;->val$summaryListener:Lcom/haima/hmcp/cloud/IUploadSummaryListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/IUploadSummaryListener;->onHangUp()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public onUploadComplete(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;",
            ">;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$2;->val$checkFailedFiles:Ljava/util/List;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadWork;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$2;->val$checkFailedFiles:Ljava/util/List;

    .line 19
    .line 20
    const-string v2, "File check failed"

    .line 21
    .line 22
    invoke-static {p2, v1, v2}, Lcom/haima/hmcp/cloud/BatchUploadWork;->access$300(Lcom/haima/hmcp/cloud/BatchUploadWork;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadWork;

    .line 30
    .line 31
    sget-object v1, Lcom/haima/hmcp/cloud/WorkStatus;->IDLE:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 32
    .line 33
    invoke-static {p2, v1}, Lcom/haima/hmcp/cloud/BatchUploadWork;->access$000(Lcom/haima/hmcp/cloud/BatchUploadWork;Lcom/haima/hmcp/cloud/WorkStatus;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$2;->val$summaryListener:Lcom/haima/hmcp/cloud/IUploadSummaryListener;

    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-interface {p2, p1, v0}, Lcom/haima/hmcp/cloud/IUploadSummaryListener;->onUploadComplete(Ljava/util/List;Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public onUploadError(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$2;->this$0:Lcom/haima/hmcp/cloud/BatchUploadWork;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/cloud/WorkStatus;->IDLE:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/BatchUploadWork;->access$000(Lcom/haima/hmcp/cloud/BatchUploadWork;Lcom/haima/hmcp/cloud/WorkStatus;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BatchUploadWork$2;->val$summaryListener:Lcom/haima/hmcp/cloud/IUploadSummaryListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/cloud/IUploadSummaryListener;->onUploadError(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
