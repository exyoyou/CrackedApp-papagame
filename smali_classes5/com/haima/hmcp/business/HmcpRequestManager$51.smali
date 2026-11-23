.class Lcom/haima/hmcp/business/HmcpRequestManager$51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HmcpRequestManager;->getJoinBattle(ZLcom/haima/hmcp/beans/InternalJoinBattle;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

.field final synthetic val$internalJoinBattle:Lcom/haima/hmcp/beans/InternalJoinBattle;

.field final synthetic val$isAllowCompatibleIPV6:Z

.field final synthetic val$joinBattle:Lcom/haima/hmcp/beans/JoinBattle;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnJoinBattleListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HmcpRequestManager;Lcom/haima/hmcp/beans/InternalJoinBattle;ZLcom/haima/hmcp/beans/JoinBattle;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$51;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$51;->val$internalJoinBattle:Lcom/haima/hmcp/beans/InternalJoinBattle;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$51;->val$isAllowCompatibleIPV6:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/business/HmcpRequestManager$51;->val$joinBattle:Lcom/haima/hmcp/beans/JoinBattle;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/haima/hmcp/business/HmcpRequestManager$51;->val$listener:Lcom/haima/hmcp/listeners/OnJoinBattleListener;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "get config fail, cause: "

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
    const-string v1, "12809"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$51;->val$listener:Lcom/haima/hmcp/listeners/OnJoinBattleListener;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-interface {v0, v1, p1}, Lcom/haima/hmcp/listeners/OnJoinBattleListener;->onJoinBattle(ZLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$51;->val$internalJoinBattle:Lcom/haima/hmcp/beans/InternalJoinBattle;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/haima/hmcp/beans/InternalJoinBattle;->isChangeStreamType:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$51;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    const-string v2, ""

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->notifySaasListenerResponse(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/HmcpRequestManager$51;->this$0:Lcom/haima/hmcp/business/HmcpRequestManager;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/haima/hmcp/business/HmcpRequestManager$51;->val$isAllowCompatibleIPV6:Z

    .line 19
    .line 20
    iget-object v2, p0, Lcom/haima/hmcp/business/HmcpRequestManager$51;->val$joinBattle:Lcom/haima/hmcp/beans/JoinBattle;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/haima/hmcp/business/HmcpRequestManager$51;->val$listener:Lcom/haima/hmcp/listeners/OnJoinBattleListener;

    .line 23
    .line 24
    invoke-static {v0, v1, v2, v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->access$3500(Lcom/haima/hmcp/business/HmcpRequestManager;ZLcom/haima/hmcp/beans/JoinBattle;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
