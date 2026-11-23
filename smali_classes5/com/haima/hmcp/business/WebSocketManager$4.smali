.class Lcom/haima/hmcp/business/WebSocketManager$4;
.super Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/WebSocketManager;->connect2Download(Ljava/lang/String;Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/WebSocketManager;

.field final synthetic val$downloadHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/WebSocketManager;Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/WebSocketManager$4;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/WebSocketManager$4;->val$downloadHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/haima/hmcp/websocket/WebSocketConnectionHandler;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/WebSocketManager;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, " connect2Download onClose=code=>"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "=reason=>"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " isInputStopByUserWsServer = "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/haima/hmcp/business/WebSocketManager$4;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/haima/hmcp/business/WebSocketManager;->access$800(Lcom/haima/hmcp/business/WebSocketManager;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$4;->val$downloadHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$4;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/haima/hmcp/business/WebSocketManager;->access$800(Lcom/haima/hmcp/business/WebSocketManager;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$4;->val$downloadHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-interface {v0, p1, p2, v1}, Lcom/haima/hmcp/business/WebSocketManager$SimpleConnectionHandler;->onDisconnect(ILjava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$4;->val$downloadHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$4;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    invoke-static {v0}, Lcom/haima/hmcp/business/WebSocketManager;->access$1100(Lcom/haima/hmcp/business/WebSocketManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$4;->val$downloadHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;

    invoke-interface {v0, p1}, Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;->onMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMessage([BZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$4;->val$downloadHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$4;->this$0:Lcom/haima/hmcp/business/WebSocketManager;

    invoke-static {v0}, Lcom/haima/hmcp/business/WebSocketManager;->access$1100(Lcom/haima/hmcp/business/WebSocketManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$4;->val$downloadHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;

    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;->onMessage([BZ)V

    :cond_0
    return-void
.end method

.method public onOpen()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/WebSocketManager;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "connect2Download=>onOpen"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/business/WebSocketManager$4;->val$downloadHandler:Lcom/haima/hmcp/business/WebSocketManager$SimpleTransmissionConnectionHandler;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Lcom/haima/hmcp/business/WebSocketManager$SimpleConnectionHandler;->onConnect(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
