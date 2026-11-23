.class Lorg/webrtc/haima/HmRtcAdapterImpl$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;->onIceCandidate(Lorg/hmwebrtc/IceCandidate;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

.field final synthetic val$candidate:Lorg/hmwebrtc/IceCandidate;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/hmwebrtc/IceCandidate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$14;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$14;->val$candidate:Lorg/hmwebrtc/IceCandidate;

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
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$14;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$2400(Lorg/webrtc/haima/HmRtcAdapterImpl;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcGlobalConfig;->dropClientCandidate(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$14;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "onIceCandidate-->"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$14;->val$candidate:Lorg/hmwebrtc/IceCandidate;

    .line 42
    .line 43
    invoke-virtual {v0}, Lorg/hmwebrtc/IceCandidate;->isHostGenaration()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "Ignore this Local Candidate, don\'t send to ROM."

    .line 54
    .line 55
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$14;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 60
    .line 61
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1300(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/WebSocketRTCClient;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$14;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 68
    .line 69
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1300(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/WebSocketRTCClient;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$14;->val$candidate:Lorg/hmwebrtc/IceCandidate;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/WebSocketRTCClient;->sendIceCandidate(Lorg/hmwebrtc/IceCandidate;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$14;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 80
    .line 81
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1400(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/SocketIORTCClient;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$14;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 88
    .line 89
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$1400(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/SocketIORTCClient;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$14;->val$candidate:Lorg/hmwebrtc/IceCandidate;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/SocketIORTCClient;->sendLocalIceCandidate(Lorg/hmwebrtc/IceCandidate;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_1
    move-exception v0

    .line 100
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$14;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 101
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v3, "sendLocalIceCandidate-->"

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-static {v0}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    :goto_0
    return-void
.end method
