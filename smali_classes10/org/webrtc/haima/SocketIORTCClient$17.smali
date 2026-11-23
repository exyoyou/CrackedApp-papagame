.class Lorg/webrtc/haima/SocketIORTCClient$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/SocketIORTCClient;->sendLocalIceCandidateRemovals([Lorg/hmwebrtc/IceCandidate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/SocketIORTCClient;

.field final synthetic val$candidates:[Lorg/hmwebrtc/IceCandidate;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/SocketIORTCClient;[Lorg/hmwebrtc/IceCandidate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$17;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/webrtc/haima/SocketIORTCClient$17;->val$candidates:[Lorg/hmwebrtc/IceCandidate;

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
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient$17;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 2
    .line 3
    const-string v1, "sendLocalIceCandidateRemovals"

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
    const-string v2, "remove-candidates"

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lorg/webrtc/haima/SocketIORTCClient;->access$800(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lorg/json/JSONArray;

    .line 25
    .line 26
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lorg/webrtc/haima/SocketIORTCClient$17;->val$candidates:[Lorg/hmwebrtc/IceCandidate;

    .line 30
    .line 31
    array-length v4, v3

    .line 32
    const/4 v5, 0x0

    .line 33
    :goto_0
    if-ge v5, v4, :cond_1

    .line 34
    .line 35
    aget-object v6, v3, v5

    .line 36
    .line 37
    iget-object v7, p0, Lorg/webrtc/haima/SocketIORTCClient$17;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 38
    .line 39
    invoke-static {v7, v6}, Lorg/webrtc/haima/SocketIORTCClient;->access$1100(Lorg/webrtc/haima/SocketIORTCClient;Lorg/hmwebrtc/IceCandidate;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 44
    .line 45
    .line 46
    add-int/lit8 v5, v5, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string v3, "candidates"

    .line 50
    .line 51
    invoke-static {v0, v3, v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$800(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$17;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 55
    .line 56
    invoke-static {v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$500(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v3, Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;->CONNECTED:Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 61
    .line 62
    if-eq v1, v3, :cond_2

    .line 63
    .line 64
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient$17;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 65
    .line 66
    const-string v1, "Sending ICE candidate removals in non connected state."

    .line 67
    .line 68
    invoke-static {v0, v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$1000(Lorg/webrtc/haima/SocketIORTCClient;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$17;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 73
    .line 74
    invoke-static {v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$900(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iget-object v3, v3, Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;->roomId:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v1, v3, v2, v0}, Lorg/webrtc/haima/SocketIORTCClient;->sendMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
