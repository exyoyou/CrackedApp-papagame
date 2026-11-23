.class Lorg/webrtc/haima/SocketIORTCClient$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/SocketIORTCClient;->sendAnswerSdp(Lorg/hmwebrtc/SessionDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/SocketIORTCClient;

.field final synthetic val$sdp:Lorg/hmwebrtc/SessionDescription;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/SocketIORTCClient;Lorg/hmwebrtc/SessionDescription;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$15;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/webrtc/haima/SocketIORTCClient$15;->val$sdp:Lorg/hmwebrtc/SessionDescription;

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
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient$15;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 2
    .line 3
    const-string v1, "sendAnswerSdp"

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
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$15;->val$sdp:Lorg/hmwebrtc/SessionDescription;

    .line 18
    .line 19
    iget-object v1, v1, Lorg/hmwebrtc/SessionDescription;->description:Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "sdp"

    .line 22
    .line 23
    invoke-static {v0, v2, v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$800(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "type"

    .line 27
    .line 28
    const-string v2, "answer"

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lorg/webrtc/haima/SocketIORTCClient;->access$800(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$15;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 34
    .line 35
    invoke-static {v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$900(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v2, v2, Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;->roomId:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v3, p0, Lorg/webrtc/haima/SocketIORTCClient$15;->val$sdp:Lorg/hmwebrtc/SessionDescription;

    .line 42
    .line 43
    iget-object v3, v3, Lorg/hmwebrtc/SessionDescription;->type:Lorg/hmwebrtc/SessionDescription$Type;

    .line 44
    .line 45
    invoke-virtual {v3}, Lorg/hmwebrtc/SessionDescription$Type;->canonicalForm()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v2, v3, v0}, Lorg/webrtc/haima/SocketIORTCClient;->sendMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
