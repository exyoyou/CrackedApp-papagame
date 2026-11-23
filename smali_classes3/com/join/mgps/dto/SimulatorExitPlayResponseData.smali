.class public Lcom/join/mgps/dto/SimulatorExitPlayResponseData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adInfo:Lcom/join/mgps/dto/RecomDatabean;

.field private buddyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private gameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamedetialModleFourBean;",
            ">;"
        }
    .end annotation
.end field

.field private gameMasteryLevel:Lcom/join/mgps/dto/GameMasteryLevel;

.field private pd_info:Lcom/join/mgps/dto/DomainInfoBean;


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
.method public getAdInfo()Lcom/join/mgps/dto/RecomDatabean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->adInfo:Lcom/join/mgps/dto/RecomDatabean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBuddyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->buddyList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamedetialModleFourBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->gameList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameMasteryLevel()Lcom/join/mgps/dto/GameMasteryLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->gameMasteryLevel:Lcom/join/mgps/dto/GameMasteryLevel;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPd_info()Lcom/join/mgps/dto/DomainInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->pd_info:Lcom/join/mgps/dto/DomainInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAdInfo(Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->adInfo:Lcom/join/mgps/dto/RecomDatabean;

    .line 2
    .line 3
    return-void
.end method

.method public setBuddyList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buddyList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->buddyList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setGameList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamedetialModleFourBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->gameList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setGameMasteryLevel(Lcom/join/mgps/dto/GameMasteryLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameMasteryLevel"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->gameMasteryLevel:Lcom/join/mgps/dto/GameMasteryLevel;

    .line 2
    .line 3
    return-void
.end method

.method public setPd_info(Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pd_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorExitPlayResponseData;->pd_info:Lcom/join/mgps/dto/DomainInfoBean;

    .line 2
    .line 3
    return-void
.end method
