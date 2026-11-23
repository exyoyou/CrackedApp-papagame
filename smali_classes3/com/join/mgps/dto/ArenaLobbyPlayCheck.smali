.class public Lcom/join/mgps/dto/ArenaLobbyPlayCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private create_money:I

.field private join_money:I

.field private money:I


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
.method public canCreate()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->getMoney()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->getMoney()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->getCreate_money()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-lt v0, v2, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_1
    return v1
.end method

.method public canJoin()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->getMoney()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->getMoney()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->getJoin_money()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-lt v0, v2, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_1
    return v1
.end method

.method public getCreate_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->create_money:I

    .line 2
    .line 3
    return v0
.end method

.method public getJoin_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->join_money:I

    .line 2
    .line 3
    return v0
.end method

.method public getMoney()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->money:I

    .line 2
    .line 3
    return v0
.end method

.method public setCreate_money(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "create_money"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->create_money:I

    .line 2
    .line 3
    return-void
.end method

.method public setJoin_money(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "join_money"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->join_money:I

    .line 2
    .line 3
    return-void
.end method

.method public setMoney(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "money"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaLobbyPlayCheck;->money:I

    .line 2
    .line 3
    return-void
.end method
