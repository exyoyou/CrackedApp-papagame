.class public Lcom/join/mgps/dto/ArenaWelcomeLobby;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private close_show_url:Ljava/lang/String;

.field private config:Lcom/join/mgps/dto/ArenaConfig;

.field private error:Ljava/lang/String;

.field private filter_config:Lcom/join/mgps/dto/ArenaFilterConfig;

.field private server:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

.field private user:Lcom/join/mgps/dto/ArenaUser;


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
.method public getClose_show_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->close_show_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConfig()Lcom/join/mgps/dto/ArenaConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->config:Lcom/join/mgps/dto/ArenaConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->error:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFilter_config()Lcom/join/mgps/dto/ArenaFilterConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->filter_config:Lcom/join/mgps/dto/ArenaFilterConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getServer()Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->server:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUser()Lcom/join/mgps/dto/ArenaUser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->user:Lcom/join/mgps/dto/ArenaUser;

    .line 2
    .line 3
    return-object v0
.end method

.method public setClose_show_url(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "close_show_url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->close_show_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setConfig(Lcom/join/mgps/dto/ArenaConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->config:Lcom/join/mgps/dto/ArenaConfig;

    .line 2
    .line 3
    return-void
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
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->error:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFilter_config(Lcom/join/mgps/dto/ArenaFilterConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter_config"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->filter_config:Lcom/join/mgps/dto/ArenaFilterConfig;

    .line 2
    .line 3
    return-void
.end method

.method public setServer(Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "server"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->server:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    .line 2
    .line 3
    return-void
.end method

.method public setUser(Lcom/join/mgps/dto/ArenaUser;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "user"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->user:Lcom/join/mgps/dto/ArenaUser;

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
    const-string v1, "ArenaWelcomeLobby{error=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->error:Ljava/lang/String;

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
    const-string v1, ", server="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->server:Lcom/join/mgps/dto/NetGetDataBattleUdpPortBean;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", filter_config="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/dto/ArenaWelcomeLobby;->filter_config:Lcom/join/mgps/dto/ArenaFilterConfig;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x7d

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
