.class public Lcom/join/mgps/dto/FriendInviteBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private accountId:I

.field private avatar:Ljava/lang/String;

.field private eliteField:Z

.field private fromAccountId:I

.field private fromNickname:Ljava/lang/String;

.field private gameId:J

.field private gameName:Ljava/lang/String;

.field private lobbyRoomId:I

.field private roomPasswd:Ljava/lang/String;

.field private source:I

.field private timestamp:J


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
.method public getAccountId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->accountId:I

    .line 2
    .line 3
    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->avatar:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFromAccountId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->fromAccountId:I

    .line 2
    .line 3
    return v0
.end method

.method public getFromNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->fromNickname:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->gameId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->gameName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLobbyRoomId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->lobbyRoomId:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoomPasswd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->roomPasswd:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->source:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->timestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isEliteField()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->eliteField:Z

    .line 2
    .line 3
    return v0
.end method

.method public set(Lcom/wufan/friend/chat/protocol/GameInviteNotification;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GameInviteNotification;->getFromAccountId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->fromAccountId:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GameInviteNotification;->getAccountId()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->accountId:I

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GameInviteNotification;->getFromNickname()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->fromNickname:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GameInviteNotification;->getLobbyRoomId()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    long-to-int v1, v0

    .line 27
    iput v1, p0, Lcom/join/mgps/dto/FriendInviteBean;->lobbyRoomId:I

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GameInviteNotification;->getGameId()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iput-wide v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->gameId:J

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GameInviteNotification;->getAvatar()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->avatar:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GameInviteNotification;->getGameName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->gameName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GameInviteNotification;->getRoomPasswd()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->roomPasswd:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GameInviteNotification;->getEliteField()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput-boolean v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->eliteField:Z

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GameInviteNotification;->getSource()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->source:I

    .line 64
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    iput-wide v0, p0, Lcom/join/mgps/dto/FriendInviteBean;->timestamp:J

    .line 70
    .line 71
    return-void
.end method

.method public setAccountId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->accountId:I

    .line 2
    .line 3
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avatar"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->avatar:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEliteField(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eliteField"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->eliteField:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFromAccountId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromAccountId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->fromAccountId:I

    .line 2
    .line 3
    return-void
.end method

.method public setFromNickname(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromNickname"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->fromNickname:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGameId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->gameId:J

    .line 2
    .line 3
    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->gameName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLobbyRoomId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lobbyRoomId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->lobbyRoomId:I

    .line 2
    .line 3
    return-void
.end method

.method public setRoomPasswd(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomPasswd"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->roomPasswd:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSource(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->source:I

    .line 2
    .line 3
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/FriendInviteBean;->timestamp:J

    .line 2
    .line 3
    return-void
.end method
