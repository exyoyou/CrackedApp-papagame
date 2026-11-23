.class public Lcom/join/mgps/dto/RequestSimulatorMomentListArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private gameId:Ljava/lang/String;

.field private page:I

.field private plugVersion:Ljava/lang/String;

.field private selectCondition:I

.field private uid:Ljava/lang/String;


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
.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestSimulatorMomentListArgs;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestSimulatorMomentListArgs;->page:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlugVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestSimulatorMomentListArgs;->plugVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelectCondition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestSimulatorMomentListArgs;->selectCondition:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestSimulatorMomentListArgs;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestSimulatorMomentListArgs;->gameId:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/RequestSimulatorMomentListArgs;->page:I

    .line 2
    .line 3
    return-void
.end method

.method public setPlugVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plugVersion"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestSimulatorMomentListArgs;->plugVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSelectCondition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectCondition"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestSimulatorMomentListArgs;->selectCondition:I

    .line 2
    .line 3
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestSimulatorMomentListArgs;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
