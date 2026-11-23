.class Lorg/webrtc/haima/SocketIORTCClient$8;
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
    iput-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$8;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

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
    const-string v0, "Signal-->reconnect"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$8;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 9
    .line 10
    invoke-static {p1}, Lorg/webrtc/haima/SocketIORTCClient;->access$600(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "Signal reconnect"

    .line 15
    .line 16
    invoke-interface {p1, v0}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onChannelConnectStatus(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
