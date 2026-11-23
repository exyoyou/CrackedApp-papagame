.class public interface abstract Lcom/haima/hmcp/cloud/video/IDownloadTask;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancelDownload(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CancelCallback;)V
.end method

.method public abstract checkHangUpData()Z
.end method

.method public abstract continueTask()Z
.end method

.method public abstract execute(Ljava/util/List;Lcom/haima/hmcp/enums/DownloadMode;Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;",
            "Lcom/haima/hmcp/enums/DownloadMode;",
            "Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getMode()Lcom/haima/hmcp/enums/DownloadMode;
.end method

.method public abstract getTransferData(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V
.end method

.method public abstract getWorkingFiles(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/listeners/WorkingFileCallback;)V
.end method

.method public abstract isRunning()Z
.end method

.method public abstract keepAliveTimeUp()V
.end method

.method public abstract pauseTask()V
.end method

.method public abstract queryFiles(Lcom/haima/hmcp/listeners/QueryCallback;)V
.end method

.method public abstract scanFile(Ljava/lang/String;Lcom/haima/hmcp/listeners/SearchCallback;)V
.end method

.method public abstract setCid(Ljava/lang/String;)V
.end method

.method public abstract setConfig(Lcom/haima/hmcp/cloud/video/bean/DownloadConfig;)V
.end method

.method public abstract setHmcpRequest(Lcom/haima/hmcp/business/HmcpRequest;)V
.end method

.method public abstract setUrl(Ljava/lang/String;)V
.end method

.method public abstract setWebSocketManager(Lcom/haima/hmcp/business/IWebSocket;)V
.end method

.method public abstract updateFiles(Lcom/haima/hmcp/enums/CloudOperation;Ljava/util/List;Lcom/haima/hmcp/listeners/UpdateCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/enums/CloudOperation;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;",
            "Lcom/haima/hmcp/listeners/UpdateCallback;",
            ")V"
        }
    .end annotation
.end method
