.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/cloud/IUpDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->internalUpload(Lcom/haima/hmcp/beans/CloudFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field final synthetic val$file:Lcom/haima/hmcp/beans/CloudFile;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/beans/CloudFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$18;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$18;->val$file:Lcom/haima/hmcp/beans/CloudFile;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getBid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$18;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getBid()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$18;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCid()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUploadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$18;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getUploadUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getWebSocket()Lcom/haima/hmcp/business/IWebSocket;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$18;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getWebSocket()Lcom/haima/hmcp/business/IWebSocket;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onBatchComplete(Lcom/haima/hmcp/enums/CloudOperation;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/enums/CloudOperation;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;",
            ">;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/listeners/BatchCloudOperationListener$FileStatus;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onComplete(Lcom/haima/hmcp/enums/CloudOperation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$18;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$1800(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onError(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$18;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$400(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onFail(Lcom/haima/hmcp/beans/CloudFile;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, "["

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, "]"

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$18;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$18;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 46
    .line 47
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 48
    .line 49
    invoke-static {p2, v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$400(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v0, "cloud-file: "

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string p2, "AbsIjkVideoView"

    .line 70
    .line 71
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public onHangUp(Z)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$18;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCloudFileManager:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 7
    .line 8
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$18;->val$file:Lcom/haima/hmcp/beans/CloudFile;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/haima/hmcp/cloud/CloudFileManager;->hangUp(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/beans/CloudFile;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$18;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCloudFileManager:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$18;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 23
    .line 24
    const-string v1, "web-socket connect fail and retry"

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p1, v2, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->refreshStoken(ILjava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    const-string p1, "12607"

    .line 31
    .line 32
    const-string v1, "upload task is hang up"

    .line 33
    .line 34
    invoke-static {p1, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$18;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 38
    .line 39
    invoke-static {p1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$1500(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/enums/CloudOperation;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$18;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {p3, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p3, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$1700(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onSuccess(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/beans/CloudFile;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$18;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$1600(Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/beans/CloudFile;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
