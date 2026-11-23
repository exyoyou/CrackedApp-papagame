.class public Lcom/join/mgps/dto/NetGetBattleUdpPortBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private error:Ljava/lang/String;

.field private invite:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

.field private match:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

.field private psp:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

.field private test:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->error:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInvite()Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->invite:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMatch()Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->match:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPsp()Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->psp:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTest()Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->test:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->error:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setInvite(Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "invite"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->invite:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    .line 2
    .line 3
    return-void
.end method

.method public setMatch(Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "match"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->match:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    .line 2
    .line 3
    return-void
.end method

.method public setPsp(Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "psp"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->psp:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    .line 2
    .line 3
    return-void
.end method

.method public setTest(Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->test:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "NetGetBattleUdpPortBean{error=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->error:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", test="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->test:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", match="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->match:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", invite="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/dto/NetGetBattleUdpPortBean;->invite:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const/16 v1, 0x7d

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method
