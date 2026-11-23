.class public Lcom/join/mgps/dto/FriendCardBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private addFriendStatus:Z

.field private friendStatus:Z

.field private likeCount:I

.field private likeStatus:Z

.field private onlineStatus:Z

.field private playGameLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameLevelBean;",
            ">;"
        }
    .end annotation
.end field

.field private userInfo:Lcom/join/mgps/dto/FriendBean;


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
.method public getLikeCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendCardBean;->likeCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlayGameLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameLevelBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendCardBean;->playGameLevels:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserInfo()Lcom/join/mgps/dto/FriendBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendCardBean;->userInfo:Lcom/join/mgps/dto/FriendBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAddFriendStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendCardBean;->addFriendStatus:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFriendStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendCardBean;->friendStatus:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLikeStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendCardBean;->likeStatus:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOnlineStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/FriendCardBean;->onlineStatus:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAddFriendStatus(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addFriendStatus"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendCardBean;->addFriendStatus:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFriendStatus(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friendStatus"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendCardBean;->friendStatus:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLikeCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "likeCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendCardBean;->likeCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setLikeStatus(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "likeStatus"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendCardBean;->likeStatus:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOnlineStatus(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onlineStatus"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/FriendCardBean;->onlineStatus:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPlayGameLevels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playGameLevels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameLevelBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendCardBean;->playGameLevels:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setUserInfo(Lcom/join/mgps/dto/FriendBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendCardBean;->userInfo:Lcom/join/mgps/dto/FriendBean;

    .line 2
    .line 3
    return-void
.end method
