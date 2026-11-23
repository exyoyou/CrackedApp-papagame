.class public Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dataType:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private gameIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRecommend:Ljava/lang/String;

.field private location:I

.field private token:Ljava/lang/String;

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
.method public getDataType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->dataType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameIdList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->gameIdList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsRecommend()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->isRecommend:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->location:I

    .line 2
    .line 3
    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDataType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->dataType:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGameIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameIdList"
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
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->gameIdList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setIsRecommend(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRecommend"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->isRecommend:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLocation(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->location:I

    .line 2
    .line 3
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->token:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/QueryDownloadInfoRequestArgs;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
