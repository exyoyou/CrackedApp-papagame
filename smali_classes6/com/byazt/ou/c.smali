.class public Lcom/byazt/ou/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/su/DownloadStatusChangeListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x373,
        0x14
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onDownloadActive(Lcom/byazt/e/DownloadShortInfo;I)V
    .locals 0

    return-void
.end method

.method public onDownloadFailed(Lcom/byazt/e/DownloadShortInfo;)V
    .locals 0

    return-void
.end method

.method public onDownloadFinished(Lcom/byazt/e/DownloadShortInfo;)V
    .locals 0

    return-void
.end method

.method public onDownloadPaused(Lcom/byazt/e/DownloadShortInfo;I)V
    .locals 0

    return-void
.end method

.method public onDownloadStart(Lcom/byazt/su/DownloadModel;Lcom/byazt/su/DownloadController;)V
    .locals 0
    .param p1    # Lcom/byazt/su/DownloadModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/byazt/su/DownloadController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onIdle()V
    .locals 0

    return-void
.end method

.method public onInstalled(Lcom/byazt/e/DownloadShortInfo;)V
    .locals 0

    return-void
.end method
