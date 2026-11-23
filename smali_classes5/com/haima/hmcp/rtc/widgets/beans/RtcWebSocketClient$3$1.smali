.class Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->onOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3$1;->this$1:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3$1;->this$1:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$200(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3$1;->this$1:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$3;->this$0:Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;->access$200(Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;)Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;->onWebSocketConnected()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
