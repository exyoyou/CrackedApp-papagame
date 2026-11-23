.class public interface abstract Lcom/byazt/c/IDownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onCanceled(Lcom/byazt/t/DownloadInfo;)V
.end method

.method public abstract onFailed(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V
.end method

.method public abstract onFirstStart(Lcom/byazt/t/DownloadInfo;)V
.end method

.method public abstract onFirstSuccess(Lcom/byazt/t/DownloadInfo;)V
.end method

.method public abstract onPause(Lcom/byazt/t/DownloadInfo;)V
.end method

.method public abstract onPrepare(Lcom/byazt/t/DownloadInfo;)V
.end method

.method public abstract onProgress(Lcom/byazt/t/DownloadInfo;)V
.end method

.method public abstract onRetry(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V
.end method

.method public abstract onRetryDelay(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V
.end method

.method public abstract onStart(Lcom/byazt/t/DownloadInfo;)V
.end method

.method public abstract onSuccessed(Lcom/byazt/t/DownloadInfo;)V
.end method
