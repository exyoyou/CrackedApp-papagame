.class public interface abstract Lcom/haima/hmcp/listeners/InnerDownloadCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onDownload(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
.end method

.method public abstract onDownloadFail(ILjava/lang/String;)V
.end method

.method public abstract onDownloadFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V
.end method

.method public abstract onDownloadFinish()V
.end method

.method public abstract onDownloaded(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
.end method

.method public abstract onMovedFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V
.end method

.method public abstract onMovedSuccess(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V
.end method

.method public abstract onProgress(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;JJ)V
.end method

.method public abstract onProgressCheck()J
.end method

.method public abstract onProgressFreeze()V
.end method

.method public abstract onQueryFail(ILjava/lang/String;)V
.end method

.method public abstract onQuerySuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQueryTimeOut()V
.end method

.method public abstract onRetry(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;J)V
.end method

.method public abstract onRunning(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStartKeepAlive(Z)V
.end method

.method public abstract onStopKeepAlive(Z)V
.end method
