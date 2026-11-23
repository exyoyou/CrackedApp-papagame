.class public abstract Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private volatile mIsRunning:Z

.field protected volatile mUpdateIntervalMillis:J


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected abstract doWork()V
.end method

.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;->mIsRunning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;->doWork()V

    iget-object v0, p0, Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;->mUpdateIntervalMillis:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public startRepeating(J)V
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    cmp-long v3, p1, v0

    if-lez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intervalMillis must be greater than 0. Saw: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkArgument(ZLjava/lang/String;)Z

    iput-wide p1, p0, Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;->mUpdateIntervalMillis:J

    iget-boolean p1, p0, Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;->mIsRunning:Z

    if-nez p1, :cond_1

    iput-boolean v2, p0, Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;->mIsRunning:Z

    iget-object p1, p0, Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;->mIsRunning:Z

    iget-object v0, p0, Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
