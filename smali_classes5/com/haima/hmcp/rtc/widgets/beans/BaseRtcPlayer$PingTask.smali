.class Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$PingTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;


# direct methods
.method private constructor <init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$PingTask;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$PingTask;-><init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$PingTask;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->access$702(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;J)J

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$PingTask;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "ping:"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$PingTask;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->access$700(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmRtcAdapter;->sendText(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$PingTask;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    .line 45
    .line 46
    iget-object v1, v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHandler:Landroid/os/Handler;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-static {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->access$800(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method
