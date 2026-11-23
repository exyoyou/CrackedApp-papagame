.class public Lcom/join/mgps/dto/RequestMiniGameArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "SourceFile"


# instance fields
.field private gameId:Ljava/lang/String;

.field private page:I

.field private pageSize:I

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestMiniGameArgs;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestMiniGameArgs;->page:I

    .line 2
    .line 3
    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestMiniGameArgs;->pageSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestMiniGameArgs;->uid:I

    .line 2
    .line 3
    return v0
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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestMiniGameArgs;->gameId:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/RequestMiniGameArgs;->page:I

    .line 2
    .line 3
    return-void
.end method

.method public setPageSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageSize"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestMiniGameArgs;->pageSize:I

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
    iput p1, p0, Lcom/join/mgps/dto/RequestMiniGameArgs;->uid:I

    .line 2
    .line 3
    return-void
.end method
