.class Lcom/haima/hmcp/business/WsMessageManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/WsMessageManager;->resendMessage(Lcom/haima/hmcp/beans/WsMessage;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/WsMessageManager;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnSendWsMessageListener;

.field final synthetic val$wsMessage:Lcom/haima/hmcp/beans/WsMessage;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/WsMessageManager;Lcom/haima/hmcp/beans/WsMessage;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/WsMessageManager$2;->this$0:Lcom/haima/hmcp/business/WsMessageManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/WsMessageManager$2;->val$wsMessage:Lcom/haima/hmcp/beans/WsMessage;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/business/WsMessageManager$2;->val$listener:Lcom/haima/hmcp/listeners/OnSendWsMessageListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/WsMessageManager;->access$000()Ljava/lang/String;

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
    const-string v2, "====sendWsMessage====resendMessage="

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/haima/hmcp/business/WsMessageManager$2;->val$wsMessage:Lcom/haima/hmcp/beans/WsMessage;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/haima/hmcp/beans/WsMessage;->payload:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager$2;->this$0:Lcom/haima/hmcp/business/WsMessageManager;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/haima/hmcp/business/WsMessageManager$2;->val$wsMessage:Lcom/haima/hmcp/beans/WsMessage;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/haima/hmcp/business/WsMessageManager$2;->val$listener:Lcom/haima/hmcp/listeners/OnSendWsMessageListener;

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Lcom/haima/hmcp/business/WsMessageManager;->access$100(Lcom/haima/hmcp/business/WsMessageManager;Lcom/haima/hmcp/beans/WsMessage;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
