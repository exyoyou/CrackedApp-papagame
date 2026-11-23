.class Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$1;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$1;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$000(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$1;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->innerConnect()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$1;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$108(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$1;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$200(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "RTC Signal WebSocket reconnecting"

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;->onWebSocketConnectStatus(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
