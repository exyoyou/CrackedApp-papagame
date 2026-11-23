.class Lorg/webrtc/haima/SocketIORTCClient$4;
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
    iput-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$4;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

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
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$4;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/webrtc/haima/SocketIORTCClient;->access$500(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    sget-object v0, Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;->CONNECTED:Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lt p1, v1, :cond_0

    .line 18
    .line 19
    const-string p1, "SocketIORTCClient"

    .line 20
    .line 21
    const-string v0, "SocketIO connected again, ignore it."

    .line 22
    .line 23
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$4;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 27
    .line 28
    invoke-static {p1}, Lorg/webrtc/haima/SocketIORTCClient;->access$600(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v1, "Signal connected again, current state is: "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lorg/webrtc/haima/SocketIORTCClient$4;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 43
    .line 44
    invoke-static {v1}, Lorg/webrtc/haima/SocketIORTCClient;->access$500(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {p1, v0}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onThrowSignalExceptionMsg(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$4;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 60
    .line 61
    invoke-static {p1, v0}, Lorg/webrtc/haima/SocketIORTCClient;->access$700(Lorg/webrtc/haima/SocketIORTCClient;Lorg/webrtc/haima/SocketIORTCClient$ConnectionState;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lorg/webrtc/haima/SocketIORTCClient$4;->this$0:Lorg/webrtc/haima/SocketIORTCClient;

    .line 65
    .line 66
    invoke-static {p1}, Lorg/webrtc/haima/SocketIORTCClient;->access$600(Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/AppRTCClient$SignalingEvents;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Lorg/webrtc/haima/AppRTCClient$SignalingEvents;->onChannelConnected()V

    .line 71
    .line 72
    .line 73
    return-void
.end method
