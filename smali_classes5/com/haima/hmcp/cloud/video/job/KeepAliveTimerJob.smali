.class public Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob$KeepAliveTimerCallback;
    }
.end annotation


# instance fields
.field private cancel:Z

.field private mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

.field private mKeepAliveTimerCallback:Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob$KeepAliveTimerCallback;

.field private mWaitStrategy:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob$KeepAliveTimerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->mKeepAliveTimerCallback:Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob$KeepAliveTimerCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->cancel:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->mKeepAliveTimerCallback:Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob$KeepAliveTimerCallback;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->mWaitStrategy:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;

    .line 10
    .line 11
    return-void
.end method

.method public getInnerCloudFile()Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStrategy()Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->mWaitStrategy:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;

    .line 2
    .line 3
    return-object v0
.end method

.method public run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->cancel:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->mKeepAliveTimerCallback:Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob$KeepAliveTimerCallback;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->mWaitStrategy:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;

    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob$KeepAliveTimerCallback;->onTimeOut(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public setStrategy(Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/job/KeepAliveTimerJob;->mWaitStrategy:Lcom/haima/hmcp/cloud/video/strategy/KeepAliveWaitStrategy;

    .line 2
    .line 3
    return-void
.end method
