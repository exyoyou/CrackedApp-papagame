.class public interface abstract Lcom/haima/hmcp/cloud/IUpDownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getBid()Ljava/lang/String;
.end method

.method public abstract getCid()Ljava/lang/String;
.end method

.method public abstract getDownloadUrl()Ljava/lang/String;
.end method

.method public abstract getUploadUrl()Ljava/lang/String;
.end method

.method public abstract getWebSocket()Lcom/haima/hmcp/business/IWebSocket;
.end method

.method public abstract onBatchComplete(Lcom/haima/hmcp/enums/CloudOperation;Ljava/util/List;Ljava/util/List;)V
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
.end method

.method public abstract onComplete(Lcom/haima/hmcp/enums/CloudOperation;)V
.end method

.method public abstract onError(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;)V
.end method

.method public abstract onFail(Lcom/haima/hmcp/beans/CloudFile;Ljava/lang/String;)V
.end method

.method public abstract onHangUp(Z)V
.end method

.method public abstract onStop(Lcom/haima/hmcp/enums/CloudOperation;Ljava/lang/String;Ljava/util/List;)V
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
.end method

.method public abstract onSuccess(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/beans/CloudFile;)V
.end method
