.class Lcom/haima/hmcp/business/WsMessageManager$1;
.super Lcom/haima/hmcp/widgets/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/WsMessageManager;->sendWsMessageCountDown(Lcom/haima/hmcp/beans/WsMessage;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/WsMessageManager;

.field final synthetic val$wsMessage:Lcom/haima/hmcp/beans/WsMessage;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/WsMessageManager;JJLcom/haima/hmcp/beans/WsMessage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/WsMessageManager$1;->this$0:Lcom/haima/hmcp/business/WsMessageManager;

    .line 2
    .line 3
    iput-object p6, p0, Lcom/haima/hmcp/business/WsMessageManager$1;->val$wsMessage:Lcom/haima/hmcp/beans/WsMessage;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/haima/hmcp/widgets/CountDownTimer;-><init>(JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/WsMessageManager$1;->this$0:Lcom/haima/hmcp/business/WsMessageManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/business/WsMessageManager$1;->val$wsMessage:Lcom/haima/hmcp/beans/WsMessage;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/haima/hmcp/beans/WsMessage;->mid:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/haima/hmcp/business/WsMessageManager;->cancelCountDownTimer(ZLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
