.class Lorg/webrtc/haima/HmRtcAdapterImpl$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;->onRemoteDescription(Lorg/hmwebrtc/SessionDescription;)V
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
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$7;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$7;->val$sdp:Lorg/hmwebrtc/SessionDescription;

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
    const-string v0, "onRemoteDescription-->"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$7;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 4
    .line 5
    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "Already set remote description."

    .line 16
    .line 17
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$7;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 22
    .line 23
    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1300(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/WebSocketRTCClient;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$7;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 30
    .line 31
    new-instance v2, Lorg/webrtc/haima/HmRtcAdapterImpl$SignalV2ReleaseRunnable;

    .line 32
    .line 33
    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1300(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/WebSocketRTCClient;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-direct {v2, v1, v3}, Lorg/webrtc/haima/HmRtcAdapterImpl$SignalV2ReleaseRunnable;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/webrtc/haima/WebSocketRTCClient;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1900(Lorg/webrtc/haima/HmRtcAdapterImpl;Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$7;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-static {v1, v2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1302(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/webrtc/haima/WebSocketRTCClient;)Lorg/webrtc/haima/WebSocketRTCClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    .line 48
    .line 49
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$7;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 50
    .line 51
    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$2000(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/PeerConnectionClient;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$7;->val$sdp:Lorg/hmwebrtc/SessionDescription;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lorg/webrtc/haima/PeerConnectionClient;->setRemoteDescription(Lorg/hmwebrtc/SessionDescription;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .line 59
    .line 60
    :try_start_2
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$7;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    invoke-static {v1, v2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1802(Lorg/webrtc/haima/HmRtcAdapterImpl;Z)Z

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$7;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 67
    .line 68
    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$2100(Lorg/webrtc/haima/HmRtcAdapterImpl;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catch_0
    move-exception v1

    .line 77
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$7;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 78
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v2, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :catch_1
    move-exception v1

    .line 103
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$7;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 104
    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-static {v1}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v2, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method
