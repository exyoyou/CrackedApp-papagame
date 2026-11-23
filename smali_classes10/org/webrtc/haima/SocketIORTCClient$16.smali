.class Lorg/webrtc/haima/SocketIORTCClient$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/SocketIORTCClient;->sendLocalIceCandidate(Lorg/hmwebrtc/IceCandidate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/SocketIORTCClient;

.field final synthetic val$candidate:Lorg/hmwebrtc/IceCandidate;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/SocketIORTCClient;Lorg/hmwebrtc/IceCandidate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$16;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/webrtc/haima/SocketIORTCClient$16;->val$candidate:Lorg/hmwebrtc/IceCandidate;

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
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient$16;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 2
    .line 3
    const-string v1, "sendLocalIceCandidate"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$000(Lorg/webrtc/haima/SocketIORTCClient;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "type"

    .line 18
    .line 19
    const-string v2, "candidate"

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lorg/webrtc/haima/SocketIORTCClient;->access$800(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$16;->val$candidate:Lorg/hmwebrtc/IceCandidate;

    .line 25
    .line 26
    iget v1, v1, Lorg/hmwebrtc/IceCandidate;->sdpMLineIndex:I

    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v3, "label"

    .line 33
    .line 34
    invoke-static {v0, v3, v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$800(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$16;->val$candidate:Lorg/hmwebrtc/IceCandidate;

    .line 38
    .line 39
    iget-object v1, v1, Lorg/hmwebrtc/IceCandidate;->sdpMid:Ljava/lang/String;

    .line 40
    .line 41
    const-string v3, "id"

    .line 42
    .line 43
    invoke-static {v0, v3, v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$800(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$16;->val$candidate:Lorg/hmwebrtc/IceCandidate;

    .line 47
    .line 48
    iget-object v1, v1, Lorg/hmwebrtc/IceCandidate;->sdp:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v0, v2, v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$800(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$16;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 54
    .line 55
    invoke-static {v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$500(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    sget-object v3, Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;->CONNECTED:Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-lt v1, v3, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$16;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 72
    .line 73
    invoke-static {v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$500(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    sget-object v3, Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;->CANDIDATE_RECVED:Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-le v1, v3, :cond_1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$16;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 91
    .line 92
    invoke-static {v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$900(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    iget-object v3, v3, Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;->roomId:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v1, v3, v2, v0}, Lorg/webrtc/haima/SocketIORTCClient;->sendMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient$16;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 103
    .line 104
    const-string v1, "Sending ICE candidate in non connected state."

    .line 105
    .line 106
    invoke-static {v0, v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$1000(Lorg/webrtc/haima/SocketIORTCClient;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method
