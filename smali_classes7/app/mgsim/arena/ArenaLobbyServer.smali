.class public Lapp/mgsim/arena/ArenaLobbyServer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private disabled:I

.field private disabledMessage:Ljava/lang/String;

.field private lobbyServer:Lapp/mgsim/arena/AreaInfo;

.field private ping:[Lapp/mgsim/arena/AreaInfo;

.field private startGameCopper:I


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
.method public getDisabled()I
    .locals 1

    .line 1
    iget v0, p0, Lapp/mgsim/arena/ArenaLobbyServer;->disabled:I

    .line 2
    .line 3
    return v0
.end method

.method public getDisabledMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/ArenaLobbyServer;->disabledMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLobbyServer()Lapp/mgsim/arena/AreaInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/ArenaLobbyServer;->lobbyServer:Lapp/mgsim/arena/AreaInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPing()[Lapp/mgsim/arena/AreaInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/ArenaLobbyServer;->ping:[Lapp/mgsim/arena/AreaInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStartGameCopper()I
    .locals 1

    .line 1
    iget v0, p0, Lapp/mgsim/arena/ArenaLobbyServer;->startGameCopper:I

    .line 2
    .line 3
    return v0
.end method

.method public setDisabled(I)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/mgsim/arena/ArenaLobbyServer;->disabled:I

    .line 2
    .line 3
    return-void
.end method

.method public setDisabledMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/mgsim/arena/ArenaLobbyServer;->disabledMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLobbyServer(Lapp/mgsim/arena/AreaInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/mgsim/arena/ArenaLobbyServer;->lobbyServer:Lapp/mgsim/arena/AreaInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setPing([Lapp/mgsim/arena/AreaInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/mgsim/arena/ArenaLobbyServer;->ping:[Lapp/mgsim/arena/AreaInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setStartGameCopper(I)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/mgsim/arena/ArenaLobbyServer;->startGameCopper:I

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
    const-string v1, "ArenaLobbyServer{lobbyServer="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lapp/mgsim/arena/ArenaLobbyServer;->lobbyServer:Lapp/mgsim/arena/AreaInfo;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", ping="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lapp/mgsim/arena/ArenaLobbyServer;->ping:[Lapp/mgsim/arena/AreaInfo;

    .line 22
    .line 23
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "}"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method
