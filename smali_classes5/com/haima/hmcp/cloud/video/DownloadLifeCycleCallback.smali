.class public interface abstract Lcom/haima/hmcp/cloud/video/DownloadLifeCycleCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onCancel(Lcom/haima/hmcp/enums/DownloadMode;)V
.end method

.method public abstract onDownload(Lcom/haima/hmcp/beans/CloudFile;)V
.end method

.method public abstract onDownloadFail(Lcom/haima/hmcp/beans/CloudFile;ILjava/lang/String;)V
.end method

.method public abstract onDownloaded(Lcom/haima/hmcp/beans/CloudFile;)V
.end method

.method public abstract onDownloading()V
.end method

.method public abstract onFail(Lcom/haima/hmcp/enums/DownloadMode;ILjava/lang/String;)V
.end method

.method public abstract onFinish(Lcom/haima/hmcp/enums/DownloadMode;)V
.end method

.method public abstract onPermissionNotGranted(Ljava/lang/String;)V
.end method

.method public abstract onProgress(Lcom/haima/hmcp/beans/CloudFile;JJ)V
.end method

.method public abstract onStart(Lcom/haima/hmcp/enums/DownloadMode;)V
.end method
