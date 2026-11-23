.class public interface abstract Lcom/byazt/su/DownloadStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onDownloadActive(Lcom/byazt/e/DownloadShortInfo;I)V
.end method

.method public abstract onDownloadFailed(Lcom/byazt/e/DownloadShortInfo;)V
.end method

.method public abstract onDownloadFinished(Lcom/byazt/e/DownloadShortInfo;)V
.end method

.method public abstract onDownloadPaused(Lcom/byazt/e/DownloadShortInfo;I)V
.end method

.method public abstract onDownloadStart(Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadController;)V
    .param p1    # Lcom/byazt/su/DownloadModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/byazt/su/DownloadController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onIdle()V
.end method

.method public abstract onInstalled(Lcom/byazt/e/DownloadShortInfo;)V
.end method
