.class Lcom/haima/hmcp/business/MessageManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/MessageManager;->resendMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/beans/Message;Lcom/haima/hmcp/listeners/OnSendMessageListener;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/MessageManager;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnSendMessageListener;

.field final synthetic val$message:Lcom/haima/hmcp/beans/Message;

.field final synthetic val$socketType:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/MessageManager;Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/beans/Message;Lcom/haima/hmcp/listeners/OnSendMessageListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/MessageManager$1;->this$0:Lcom/haima/hmcp/business/MessageManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/MessageManager$1;->val$socketType:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/business/MessageManager$1;->val$message:Lcom/haima/hmcp/beans/Message;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/business/MessageManager$1;->val$listener:Lcom/haima/hmcp/listeners/OnSendMessageListener;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/MessageManager$1;->this$0:Lcom/haima/hmcp/business/MessageManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/business/MessageManager$1;->val$socketType:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/haima/hmcp/business/MessageManager$1;->val$message:Lcom/haima/hmcp/beans/Message;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/haima/hmcp/business/MessageManager$1;->val$listener:Lcom/haima/hmcp/listeners/OnSendMessageListener;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/haima/hmcp/business/MessageManager;->access$000(Lcom/haima/hmcp/business/MessageManager;Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Lcom/haima/hmcp/beans/Message;Lcom/haima/hmcp/listeners/OnSendMessageListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
