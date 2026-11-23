.class public interface abstract Lcom/haima/hmcp/listeners/DownloadCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onDownload(Lcom/haima/hmcp/beans/CloudFile;)V
.end method

.method public abstract onDownloadFail(ILjava/lang/String;)V
.end method

.method public abstract onDownloadFail(Lcom/haima/hmcp/beans/CloudFile;ILjava/lang/String;)V
.end method

.method public abstract onDownloadFinish()V
.end method

.method public abstract onDownloadProgress(Lcom/haima/hmcp/beans/CloudFile;JJ)V
.end method

.method public abstract onDownloading()V
.end method
