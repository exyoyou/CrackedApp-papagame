.class Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;
.super Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 p2, 0x2

    .line 2
    if-ne p1, p2, :cond_2

    .line 3
    .line 4
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$100(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$500(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget p2, p2, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;->mReConnectCount:I

    .line 17
    .line 18
    if-lt p1, p2, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$400(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$300(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Ljava/lang/Runnable;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$200(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$200(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string p2, "RTC Signal WebSocket connect error"

    .line 50
    .line 51
    invoke-interface {p1, p2}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;->onWebSocketConnectStatus(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 55
    .line 56
    const/4 p2, 0x0

    .line 57
    invoke-static {p1, p2}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$102(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;I)I

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$400(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Landroid/os/Handler;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 68
    .line 69
    invoke-static {p2}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$300(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Ljava/lang/Runnable;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$500(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget v0, v0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;->mReConnectDelay:I

    .line 80
    .line 81
    int-to-long v0, v0

    .line 82
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 87
    .line 88
    invoke-static {p2}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$200(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    if-eqz p2, :cond_3

    .line 93
    .line 94
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 95
    .line 96
    invoke-static {p2}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$200(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-interface {p2, p1}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;->onWebSocketDisconnected(I)V

    .line 101
    .line 102
    .line 103
    :cond_3
    :goto_0
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "rtcmessage onMessage "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "RtcWebSocketClient"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$400(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Landroid/os/Handler;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3$2;

    .line 30
    .line 31
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3$2;-><init>(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onOpen()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$100(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$400(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$300(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Ljava/lang/Runnable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {v0, v1}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$102(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;I)I

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "onOpen:"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$100(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "RtcWebSocketClient"

    .line 54
    .line 55
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$400(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Landroid/os/Handler;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3$1;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3$1;-><init>(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    return-void
.end method
