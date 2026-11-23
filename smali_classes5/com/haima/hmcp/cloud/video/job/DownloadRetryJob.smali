.class public Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob$DownloadRetryCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadRetryJob"


# instance fields
.field private cancel:Z

.field private mCallback:Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob$DownloadRetryCallback;

.field private mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob$DownloadRetryCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;->mCallback:Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob$DownloadRetryCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;->cancel:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;->mCallback:Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob$DownloadRetryCallback;

    .line 6
    .line 7
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "download-file: download retry job cancel"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getFile()Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 2
    .line 3
    return-object v0
.end method

.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;->cancel:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;->mCallback:Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob$DownloadRetryCallback;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob$DownloadRetryCallback;->onDownloadRetry(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/DownloadRetryJob;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "download-file: download retry job is execute"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
