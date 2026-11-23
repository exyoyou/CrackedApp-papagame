.class Lorg/webrtc/haima/SocketIORTCClient$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/haima/SocketIORTCClient;->connectToRoomInternal()V
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
    iput-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$13;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string p1, "SocketIORTCClient"

    .line 2
    .line 3
    const-string v0, "Signal-->connect time out"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$13;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 9
    .line 10
    invoke-static {p1}, Lorg/webrtc/haima/SocketIORTCClient;->access$600(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "Signal connect time out"

    .line 15
    .line 16
    invoke-interface {p1, v0}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onChannelConnectStatus(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$13;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 20
    .line 21
    invoke-static {p1}, Lorg/webrtc/haima/SocketIORTCClient;->access$400(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lorg/webrtc/haima/SocketIORTCClient$13;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 26
    .line 27
    invoke-static {v0}, Lorg/webrtc/haima/SocketIORTCClient;->access$400(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-boolean v0, v0, Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;->dnsIPV4Priority:Z

    .line 32
    .line 33
    xor-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    iput-boolean v0, p1, Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;->dnsIPV4Priority:Z

    .line 36
    .line 37
    return-void
.end method
