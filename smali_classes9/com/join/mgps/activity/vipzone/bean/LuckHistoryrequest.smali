.class public Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private action:I

.field private apiVersion:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private gameType:Ljava/lang/String;

.field private page:I

.field private platformType:Ljava/lang/String;

.field private positionMark:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:I

.field private uid:I

.field private userToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ANDROID"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->platformType:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "V3"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->apiVersion:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->action:I

    .line 2
    .line 3
    return v0
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->apiVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->gameType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->page:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlatformType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->platformType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPositionMark()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->positionMark:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->userToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAction(I)V
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
    iput p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->action:I

    .line 2
    .line 3
    return-void
.end method

.method public setApiVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apiVersion"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->apiVersion:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGameType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->gameType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->page:I

    .line 2
    .line 3
    return-void
.end method

.method public setPlatformType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "platformType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->platformType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPositionMark(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionMark"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->positionMark:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->type:I

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
    iput p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setUserToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userToken"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->userToken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
