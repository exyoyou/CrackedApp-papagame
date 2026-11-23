.class Lorg/webrtc/haima/SocketIORTCClient$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/SocketIORTCClient;->sendJoinMsgToRoom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/SocketIORTCClient;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/SocketIORTCClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$14;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

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
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient$14;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 2
    .line 3
    const-string v1, "sendJoinMsgToRoom"

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
    const-string v2, "join"

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lorg/webrtc/haima/SocketIORTCClient;->access$800(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$14;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 25
    .line 26
    invoke-static {v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$900(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v3, v3, Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;->roomId:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v3, v2, v0}, Lorg/webrtc/haima/SocketIORTCClient;->sendMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, "send join msg to signal server roomId = "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$14;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 46
    .line 47
    invoke-static {v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$900(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v1, v1, Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;->roomId:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "SocketIORTCClient"

    .line 61
    .line 62
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
