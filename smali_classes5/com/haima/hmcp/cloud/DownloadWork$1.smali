.class Lcom/haima/hmcp/cloud/DownloadWork$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/IWorkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/cloud/DownloadWork;->execute(Lcom/haima/hmcp/business/IWebSocket;Ljava/util/List;Lcom/haima/hmcp/beans/CloudFileConfig;Lcom/haima/hmcp/cloud/IWorkListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/cloud/DownloadWork;

.field final synthetic val$listener:Lcom/haima/hmcp/cloud/IWorkListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/cloud/DownloadWork;Lcom/haima/hmcp/cloud/IWorkListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/DownloadWork$1;->this$0:Lcom/haima/hmcp/cloud/DownloadWork;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/cloud/DownloadWork$1;->val$listener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onError(Lcom/haima/hmcp/cloud/InternalCloudFile;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork$1;->this$0:Lcom/haima/hmcp/cloud/DownloadWork;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/cloud/WorkStatus;->IDLE:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/DownloadWork;->access$000(Lcom/haima/hmcp/cloud/DownloadWork;Lcom/haima/hmcp/cloud/WorkStatus;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork$1;->val$listener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/cloud/IWorkListener;->onError(Lcom/haima/hmcp/cloud/InternalCloudFile;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onFinish(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork$1;->this$0:Lcom/haima/hmcp/cloud/DownloadWork;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/cloud/WorkStatus;->IDLE:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/DownloadWork;->access$000(Lcom/haima/hmcp/cloud/DownloadWork;Lcom/haima/hmcp/cloud/WorkStatus;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork$1;->val$listener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/haima/hmcp/cloud/IWorkListener;->onFinish(Ljava/util/ArrayList;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onHangUp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork$1;->val$listener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/cloud/IWorkListener;->onHangUp()Z

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

.method public onStop(ILjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork$1;->this$0:Lcom/haima/hmcp/cloud/DownloadWork;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/cloud/WorkStatus;->IDLE:Lcom/haima/hmcp/cloud/WorkStatus;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/DownloadWork;->access$000(Lcom/haima/hmcp/cloud/DownloadWork;Lcom/haima/hmcp/cloud/WorkStatus;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork$1;->val$listener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p1, p2, p3}, Lcom/haima/hmcp/cloud/IWorkListener;->onStop(ILjava/lang/String;Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/cloud/InternalCloudFile;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/DownloadWork$1;->val$listener:Lcom/haima/hmcp/cloud/IWorkListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/cloud/IWorkListener;->onSuccess(Lcom/haima/hmcp/cloud/InternalCloudFile;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
