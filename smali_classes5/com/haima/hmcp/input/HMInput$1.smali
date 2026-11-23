.class Lcom/haima/hmcp/input/HMInput$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/input/listener/HMInputCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/input/HMInput;->setSender(Lcom/haima/hmcp/input/sender/IHMInputSender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/input/HMInput;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/input/HMInput;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/input/HMInput$1;->this$0:Lcom/haima/hmcp/input/HMInput;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClockDiffChange(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput$1;->this$0:Lcom/haima/hmcp/input/HMInput;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/input/HMInput;->mInputCallback:Lcom/haima/hmcp/input/listener/HMInputCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/haima/hmcp/input/listener/HMInputCallback;->onClockDiffChange(JI)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onConnect(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput$1;->this$0:Lcom/haima/hmcp/input/HMInput;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/input/HMInput;->mInputCallback:Lcom/haima/hmcp/input/listener/HMInputCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/haima/hmcp/input/listener/HMInputCallback;->onConnect(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onDisconnect(ILjava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput$1;->this$0:Lcom/haima/hmcp/input/HMInput;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/input/HMInput;->mInputCallback:Lcom/haima/hmcp/input/listener/HMInputCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/haima/hmcp/input/listener/HMInputCallback;->onDisconnect(ILjava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onFirstDiffClockSuccess(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput$1;->this$0:Lcom/haima/hmcp/input/HMInput;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/input/HMInput;->mInputCallback:Lcom/haima/hmcp/input/listener/HMInputCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/input/listener/HMInputCallback;->onFirstDiffClockSuccess(J)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onHeartBeatSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput$1;->this$0:Lcom/haima/hmcp/input/HMInput;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/input/HMInput;->mInputCallback:Lcom/haima/hmcp/input/listener/HMInputCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/haima/hmcp/input/listener/HMInputCallback;->onHeartBeatSuccess()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onTextMessage(Ljava/lang/String;)V
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
    const-string v1, "HMInput"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput$1;->this$0:Lcom/haima/hmcp/input/HMInput;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/input/HMInput;->parseMsg(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
