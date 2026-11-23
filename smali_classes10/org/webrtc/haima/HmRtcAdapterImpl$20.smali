.class Lorg/webrtc/haima/HmRtcAdapterImpl$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;->onWebSocketRemoteDescription(Lorg/hmwebrtc/SessionDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

.field final synthetic val$sdp:Lorg/hmwebrtc/SessionDescription;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/hmwebrtc/SessionDescription;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$20;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$20;->val$sdp:Lorg/hmwebrtc/SessionDescription;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$20;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "Already set remote description."

    .line 14
    .line 15
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$20;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 20
    .line 21
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1400(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/SocketIORTCClient;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$20;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 28
    .line 29
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1400(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/SocketIORTCClient;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lorg/webrtc/haima/SocketIORTCClient;->preRelease()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$20;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 37
    .line 38
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1400(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/SocketIORTCClient;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lorg/webrtc/haima/SocketIORTCClient;->disconnectFromRoom()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$20;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-static {v0, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1402(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/SocketIORTCClient;

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$20;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 52
    .line 53
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$2000(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/PeerConnectionClient;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$20;->val$sdp:Lorg/hmwebrtc/SessionDescription;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/PeerConnectionClient;->setRemoteDescription(Lorg/hmwebrtc/SessionDescription;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$20;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 63
    .line 64
    new-instance v1, Lorg/webrtc/haima/HmRtcAdapterImpl$20$1;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lorg/webrtc/haima/HmRtcAdapterImpl$20$1;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl$20;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1900(Lorg/webrtc/haima/HmRtcAdapterImpl;Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    const/16 v0, 0x354c

    .line 73
    .line 74
    invoke-static {v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(I)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$20;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-static {v0, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1802(Lorg/webrtc/haima/HmRtcAdapterImpl;Z)Z

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$20;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 84
    .line 85
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$2100(Lorg/webrtc/haima/HmRtcAdapterImpl;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$20;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 95
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v3, "onRemoteDescription-->"

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method
