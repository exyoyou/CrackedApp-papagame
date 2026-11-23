.class public Lcom/haima/hmcp/utils/FrameDataProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/EglRenderer$FrameCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "FrameDataProxy"


# instance fields
.field private mDataWorker:Lcom/haima/hmcp/utils/FrameDataWorker;

.field private mFrameId:J

.field private mHmFrameCallback:Lcom/haima/hmcp/listeners/HmFrameCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/haima/hmcp/utils/FrameDataProxy;->mFrameId:J

    .line 7
    .line 8
    return-void
.end method

.method private startWorker(Lcom/haima/hmcp/listeners/HmFrameCallback;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/haima/hmcp/utils/FrameDataWorker;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/utils/FrameDataWorker;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/utils/FrameDataProxy;->mDataWorker:Lcom/haima/hmcp/utils/FrameDataWorker;

    .line 7
    .line 8
    iget-wide v1, p0, Lcom/haima/hmcp/utils/FrameDataProxy;->mFrameId:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/utils/FrameDataWorker;->initFrameId(J)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/utils/FrameDataProxy;->mDataWorker:Lcom/haima/hmcp/utils/FrameDataWorker;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/utils/FrameDataWorker;->setHmFrameCallback(Lcom/haima/hmcp/listeners/HmFrameCallback;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/haima/hmcp/utils/FrameDataProxy;->mDataWorker:Lcom/haima/hmcp/utils/FrameDataWorker;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/FrameDataWorker;->start()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private stopWorker()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/FrameDataProxy;->mDataWorker:Lcom/haima/hmcp/utils/FrameDataWorker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/FrameDataWorker;->quit()Z

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/utils/FrameDataProxy;->mDataWorker:Lcom/haima/hmcp/utils/FrameDataWorker;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getFrameCallbackImp()Lorg/hmwebrtc/EglRenderer$FrameCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/FrameDataProxy;->mHmFrameCallback:Lcom/haima/hmcp/listeners/HmFrameCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return-object v0
.end method

.method public onFrameRendered([J)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/FrameDataProxy;->mDataWorker:Lcom/haima/hmcp/utils/FrameDataWorker;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/FrameDataWorker;->isWorking()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    array-length v1, p1

    .line 20
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/haima/hmcp/utils/FrameDataProxy;->mDataWorker:Lcom/haima/hmcp/utils/FrameDataWorker;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/utils/FrameDataWorker;->push([J)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/haima/hmcp/utils/FrameDataProxy;->mFrameId:J

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/utils/FrameDataProxy;->mDataWorker:Lcom/haima/hmcp/utils/FrameDataWorker;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/FrameDataWorker;->isWorking()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/FrameDataProxy;->mDataWorker:Lcom/haima/hmcp/utils/FrameDataWorker;

    .line 17
    .line 18
    iget-wide v1, p0, Lcom/haima/hmcp/utils/FrameDataProxy;->mFrameId:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/utils/FrameDataWorker;->initFrameId(J)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public setHmFrameCallback(Lcom/haima/hmcp/listeners/HmFrameCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/FrameDataProxy;->mHmFrameCallback:Lcom/haima/hmcp/listeners/HmFrameCallback;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/haima/hmcp/utils/FrameDataProxy;->stopWorker()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/haima/hmcp/utils/FrameDataProxy;->startWorker(Lcom/haima/hmcp/listeners/HmFrameCallback;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
