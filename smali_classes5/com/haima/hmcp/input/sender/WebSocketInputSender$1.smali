.class Lcom/haima/hmcp/input/sender/WebSocketInputSender$1;
.super Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/input/sender/WebSocketInputSender;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/input/sender/WebSocketInputSender;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/input/sender/WebSocketInputSender;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender$1;->this$0:Lcom/haima/hmcp/input/sender/WebSocketInputSender;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "timeframe--connectToInstance=>onClose=code=>"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "=reason=>"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "WebSocketInputSender"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender$1;->this$0:Lcom/haima/hmcp/input/sender/WebSocketInputSender;

    .line 32
    .line 33
    iget-object v1, v0, Lcom/haima/hmcp/input/sender/AbsHMInputSender;->mHmInputSenderCallback:Lcom/haima/hmcp/input/listener/HMInputCallback;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-static {v0}, Lcom/haima/hmcp/input/sender/WebSocketInputSender;->access$000(Lcom/haima/hmcp/input/sender/WebSocketInputSender;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender$1;->this$0:Lcom/haima/hmcp/input/sender/WebSocketInputSender;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/haima/hmcp/input/sender/AbsHMInputSender;->mHmInputSenderCallback:Lcom/haima/hmcp/input/listener/HMInputCallback;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-interface {v0, p1, p2, v1}, Lcom/haima/hmcp/input/listener/HMInputCallback;->onDisconnect(ILjava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onTextMessage==>"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "WebSocketInputSender"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender$1;->this$0:Lcom/haima/hmcp/input/sender/WebSocketInputSender;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/haima/hmcp/input/sender/AbsHMInputSender;->mHmInputSenderCallback:Lcom/haima/hmcp/input/listener/HMInputCallback;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {v0, p1}, Lcom/haima/hmcp/input/listener/HMInputCallback;->onTextMessage(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onOpen()V
    .locals 2

    .line 1
    const-string v0, "WebSocketInputSender"

    .line 2
    .line 3
    const-string v1, "timeframe--connectToInstance=>onOpen"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/input/sender/WebSocketInputSender$1;->this$0:Lcom/haima/hmcp/input/sender/WebSocketInputSender;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/haima/hmcp/input/sender/AbsHMInputSender;->mHmInputSenderCallback:Lcom/haima/hmcp/input/listener/HMInputCallback;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Lcom/haima/hmcp/input/listener/HMInputCallback;->onConnect(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
