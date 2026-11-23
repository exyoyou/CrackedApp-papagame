.class Lorg/webrtc/haima/HmRtcAdapterImpl$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmRtcAdapterImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$5;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$5;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1300(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/WebSocketRTCClient;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$5;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 11
    .line 12
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1300(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/WebSocketRTCClient;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lorg/webrtc/haima/WebSocketRTCClient;->offerReceived()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "wsclient have received offer sdp."

    .line 27
    .line 28
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "wsclient not received offer to try socket.io"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$5;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 42
    .line 43
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1400(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/SocketIORTCClient;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$5;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 50
    .line 51
    new-instance v1, Lorg/webrtc/haima/SocketIORTCClient;

    .line 52
    .line 53
    iget-object v2, v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->myself:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 54
    .line 55
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1500(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-direct {v1, v2, v3}, Lorg/webrtc/haima/SocketIORTCClient;-><init>(Lorg/webrtc/haima/AppRTCClient$SignalingEvents;Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1402(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/SocketIORTCClient;

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$5;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 66
    .line 67
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1400(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/SocketIORTCClient;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$5;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 72
    .line 73
    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1600(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/SocketIORTCClient;->connectToRoom(Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$5;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 83
    .line 84
    iget-object v1, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->myself:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v3, "Exception, call: mWSClientCheckRunable, "

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-void
.end method
