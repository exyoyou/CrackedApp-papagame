.class public Lcom/join/mgps/dto/FriendBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/FriendBean$MemberTitle;
    }
.end annotation


# instance fields
.field private account:Ljava/lang/String;

.field private action:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private banned:Z

.field private elite:Z

.field private friendRequestType:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private id:I

.field private isRecommend:Z

.field private level:I

.field private levelName:Ljava/lang/String;

.field private memberTitle:Lcom/join/mgps/dto/FriendBean$MemberTitle;

.field private message:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private playGameLevel:Lcom/join/mgps/dto/GameLevelBean;

.field private playType:I

.field private readFlag:I

.field private requestIfo:Ljava/lang/String;

.field private roomId:I

.field private roomPwd:Ljava/lang/String;

.field private roomType:I

.field private ruid:I

.field private source:I

.field private state:I

.field private status:I

.field private time:Ljava/lang/String;

.field private timestamp:J

.field private uid:I

.field private vip:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/dto/FriendBean;->state:I

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/dto/FriendBean;->action:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->account:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->action:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->avatar:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFriendRequestType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->friendRequestType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->gameName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->level:I

    .line 2
    .line 3
    return v0
.end method

.method public getLevelName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->levelName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMemberTitle()Lcom/join/mgps/dto/FriendBean$MemberTitle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->memberTitle:Lcom/join/mgps/dto/FriendBean$MemberTitle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->nickName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayGameLevel()Lcom/join/mgps/dto/GameLevelBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->playGameLevel:Lcom/join/mgps/dto/GameLevelBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->playType:I

    .line 2
    .line 3
    return v0
.end method

.method public getReadFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->readFlag:I

    .line 2
    .line 3
    return v0
.end method

.method public getRequestIfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->requestIfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRoomId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->roomId:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoomPwd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->roomPwd:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRoomType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->roomType:I

    .line 2
    .line 3
    return v0
.end method

.method public getRuid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->ruid:I

    .line 2
    .line 3
    return v0
.end method

.method public getSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->source:I

    .line 2
    .line 3
    return v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->state:I

    .line 2
    .line 3
    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean;->time:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/FriendBean;->timestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public isBanned()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendBean;->banned:Z

    .line 2
    .line 3
    return v0
.end method

.method public isElite()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendBean;->elite:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRecommend()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendBean;->isRecommend:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendBean;->vip:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->account:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->action:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->avatar:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBanned(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "banned"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendBean;->banned:Z

    .line 2
    .line 3
    return-void
.end method

.method public setElite(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elite"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendBean;->elite:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFriendRequestType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friendRequestType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->friendRequestType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->gameId:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->gameName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->level:I

    .line 2
    .line 3
    return-void
.end method

.method public setLevelName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "levelName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->levelName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMemberTitle(Lcom/join/mgps/dto/FriendBean$MemberTitle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memberTitle"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->memberTitle:Lcom/join/mgps/dto/FriendBean$MemberTitle;

    .line 2
    .line 3
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nickName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->nickName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayGameLevel(Lcom/join/mgps/dto/GameLevelBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playGameLevel"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->playGameLevel:Lcom/join/mgps/dto/GameLevelBean;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->playType:I

    .line 2
    .line 3
    return-void
.end method

.method public setReadFlag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readFlag"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->readFlag:I

    .line 2
    .line 3
    return-void
.end method

.method public setRecommend(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommend"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendBean;->isRecommend:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRequestIfo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestIfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->requestIfo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRoomId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomId"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->roomId:I

    .line 2
    .line 3
    return-void
.end method

.method public setRoomPwd(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomPwd"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->roomPwd:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRoomType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->roomType:I

    .line 2
    .line 3
    return-void
.end method

.method public setRuid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->ruid:I

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
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->source:I

    .line 2
    .line 3
    return-void
.end method

.method public setState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->state:I

    .line 2
    .line 3
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->status:I

    .line 2
    .line 3
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean;->time:Ljava/lang/String;

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
    iput-wide p1, p0, Lcom/join/mgps/dto/FriendBean;->timestamp:J

    .line 2
    .line 3
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean;->uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setVip(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vip"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendBean;->vip:Z

    .line 2
    .line 3
    return-void
.end method
