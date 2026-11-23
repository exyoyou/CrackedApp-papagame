.class public abstract Lcom/haima/hmcp/business/BaseTransaction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mMainHandler:Landroid/os/Handler;

.field protected mTask:Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;

.field protected mTaskName:Ljava/lang/String;

.field protected mTimeOutSeconds:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/haima/hmcp/business/BaseTransaction;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/business/BaseTransaction;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTask:Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    iput v0, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTimeOutSeconds:I

    .line 17
    .line 18
    iput-object p2, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTaskName:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p2, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/haima/hmcp/business/BaseTransaction;->mMainHandler:Landroid/os/Handler;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method protected cancelTimerTask()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTask:Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseTransaction;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "cancel timer:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTaskName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/haima/hmcp/beans/ReportTimer;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTaskName:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, ""

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTask:Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget v1, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTimeOutSeconds:I

    .line 58
    .line 59
    mul-int/lit16 v1, v1, 0x3e8

    .line 60
    .line 61
    int-to-long v5, v1

    .line 62
    const/4 v7, 0x0

    .line 63
    sget-object v8, Lcom/haima/hmcp/beans/ReportTimer$Action;->CANCEL:Lcom/haima/hmcp/beans/ReportTimer$Action;

    .line 64
    .line 65
    move-object v2, v0

    .line 66
    invoke-direct/range {v2 .. v8}, Lcom/haima/hmcp/beans/ReportTimer;-><init>(Ljava/lang/String;Ljava/lang/String;JZLcom/haima/hmcp/beans/ReportTimer$Action;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEventRaw(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTask:Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;->cancel()V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseTransaction;->mMainHandler:Landroid/os/Handler;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTask:Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTask:Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;

    .line 90
    .line 91
    return-void
.end method

.method public abstract createTask()Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;
.end method

.method protected isTaskOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTask:Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;->isCancel()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method protected startTimerTask()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/business/BaseTransaction;->cancelTimerTask()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/business/BaseTransaction;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "start task:"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTaskName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/haima/hmcp/business/BaseTransaction;->createTask()Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTask:Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Lcom/haima/hmcp/business/BaseTransaction;->mMainHandler:Landroid/os/Handler;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    iget v2, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTimeOutSeconds:I

    .line 41
    .line 42
    mul-int/lit16 v2, v2, 0x3e8

    .line 43
    .line 44
    int-to-long v2, v2

    .line 45
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/haima/hmcp/beans/ReportTimer;

    .line 49
    .line 50
    iget-object v5, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTaskName:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v2, ""

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTask:Lcom/haima/hmcp/business/BaseTransaction$BaseTimerTask;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    iget v1, p0, Lcom/haima/hmcp/business/BaseTransaction;->mTimeOutSeconds:I

    .line 76
    .line 77
    mul-int/lit16 v1, v1, 0x3e8

    .line 78
    .line 79
    int-to-long v7, v1

    .line 80
    const/4 v9, 0x0

    .line 81
    sget-object v10, Lcom/haima/hmcp/beans/ReportTimer$Action;->CREATE:Lcom/haima/hmcp/beans/ReportTimer$Action;

    .line 82
    .line 83
    move-object v4, v0

    .line 84
    invoke-direct/range {v4 .. v10}, Lcom/haima/hmcp/beans/ReportTimer;-><init>(Ljava/lang/String;Ljava/lang/String;JZLcom/haima/hmcp/beans/ReportTimer$Action;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEventRaw(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    const-string v0, "baseTransaction cannot start timerTask"

    .line 96
    .line 97
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method
