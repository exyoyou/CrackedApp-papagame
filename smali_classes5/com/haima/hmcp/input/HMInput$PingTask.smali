.class Lcom/haima/hmcp/input/HMInput$PingTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/input/HMInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/input/HMInput;


# direct methods
.method private constructor <init>(Lcom/haima/hmcp/input/HMInput;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/input/HMInput$PingTask;->this$0:Lcom/haima/hmcp/input/HMInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/input/HMInput;Lcom/haima/hmcp/input/HMInput$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/input/HMInput$PingTask;-><init>(Lcom/haima/hmcp/input/HMInput;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput$PingTask;->this$0:Lcom/haima/hmcp/input/HMInput;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/input/HMInput;->intervalUtils:Lcom/haima/hmcp/business/IntervalUtils;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/haima/hmcp/business/IntervalUtils;->isInitSuccess()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput$PingTask;->this$0:Lcom/haima/hmcp/input/HMInput;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    iput-wide v2, v0, Lcom/haima/hmcp/input/HMInput;->mSendPing2Time:J

    .line 21
    .line 22
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput$PingTask;->this$0:Lcom/haima/hmcp/input/HMInput;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "ping2:"

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lcom/haima/hmcp/input/HMInput$PingTask;->this$0:Lcom/haima/hmcp/input/HMInput;

    .line 35
    .line 36
    iget-wide v3, v3, Lcom/haima/hmcp/input/HMInput;->mSendPing2Time:J

    .line 37
    .line 38
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2, v1}, Lcom/haima/hmcp/input/HMInput;->sendMessage(Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput$PingTask;->this$0:Lcom/haima/hmcp/input/HMInput;

    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    iput-wide v2, v0, Lcom/haima/hmcp/input/HMInput;->sendPingTime:J

    .line 56
    .line 57
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput$PingTask;->this$0:Lcom/haima/hmcp/input/HMInput;

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v3, "ping:"

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v3, p0, Lcom/haima/hmcp/input/HMInput$PingTask;->this$0:Lcom/haima/hmcp/input/HMInput;

    .line 70
    .line 71
    iget-wide v3, v3, Lcom/haima/hmcp/input/HMInput;->sendPingTime:J

    .line 72
    .line 73
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v0, v2, v1}, Lcom/haima/hmcp/input/HMInput;->sendMessage(Ljava/lang/String;Z)Z

    .line 81
    .line 82
    .line 83
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput$PingTask;->this$0:Lcom/haima/hmcp/input/HMInput;

    .line 84
    .line 85
    iget-object v1, v0, Lcom/haima/hmcp/input/HMInput;->mHandler:Landroid/os/Handler;

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    iget-object v2, v0, Lcom/haima/hmcp/input/HMInput;->intervalUtils:Lcom/haima/hmcp/business/IntervalUtils;

    .line 90
    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    iget v0, v0, Lcom/haima/hmcp/input/HMInput;->mPing2Interval:I

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    iget-object v0, v0, Lcom/haima/hmcp/input/HMInput;->mHmInputConfig:Lcom/haima/hmcp/input/HMInputConfig;

    .line 97
    .line 98
    iget v0, v0, Lcom/haima/hmcp/input/HMInputConfig;->inputPingInternal:I

    .line 99
    .line 100
    :goto_1
    int-to-long v2, v0

    .line 101
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    .line 103
    .line 104
    :cond_2
    return-void
.end method
