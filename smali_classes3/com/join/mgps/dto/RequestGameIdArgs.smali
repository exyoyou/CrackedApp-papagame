.class public Lcom/join/mgps/dto/RequestGameIdArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private downloadedGameIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private gameId:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private lastEnterTime:J

.field private page:I

.field private pc:I

.field private pn:I

.field private tagId:Ljava/lang/String;

.field private tagName:Ljava/lang/String;

.field private tagType:Ljava/lang/String;

.field private tag_id:I

.field private token:Ljava/lang/String;

.field private type:I

.field private uid:I

.field private userToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pc:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tag_id:I

    .line 4
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->lastEnterTime:J

    .line 6
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->type:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "page",
            "tagId",
            "tagName",
            "tagType"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 8
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pc:I

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tag_id:I

    .line 10
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->lastEnterTime:J

    .line 12
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->type:I

    .line 13
    iput p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->page:I

    .line 14
    iput-object p2, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagId:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagName:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "game_id",
            "pn",
            "uid"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 26
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pc:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tag_id:I

    const-wide/16 v1, 0x0

    .line 28
    iput-wide v1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->lastEnterTime:J

    .line 29
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->type:I

    .line 30
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->game_id:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->gameId:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pn:I

    .line 33
    iput p2, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->page:I

    .line 34
    iput p3, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "game_id",
            "pn",
            "tag_id",
            "uid"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 18
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pc:I

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->lastEnterTime:J

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->type:I

    .line 21
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->game_id:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pn:I

    .line 23
    iput p3, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tag_id:I

    .line 24
    iput p4, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJLjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "page",
            "uid",
            "lastEnterTime",
            "tagId",
            "type"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 44
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pc:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tag_id:I

    .line 46
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->gameId:Ljava/lang/String;

    .line 47
    iput p2, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->page:I

    .line 48
    iput p3, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    .line 49
    iput-wide p4, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->lastEnterTime:J

    .line 50
    iput-object p6, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagId:Ljava/lang/String;

    .line 51
    iput p7, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "game_id",
            "token",
            "uid"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 36
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pc:I

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tag_id:I

    const-wide/16 v1, 0x0

    .line 38
    iput-wide v1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->lastEnterTime:J

    .line 39
    iput v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->type:I

    .line 40
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->game_id:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->token:Ljava/lang/String;

    .line 42
    iput p3, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    return-void
.end method


# virtual methods
.method public getDownloadedGameIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->downloadedGameIdList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastEnterTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->lastEnterTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->page:I

    .line 2
    .line 3
    return v0
.end method

.method public getPc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pc:I

    .line 2
    .line 3
    return v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pn:I

    .line 2
    .line 3
    return v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTagType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tag_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->userToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDownloadedGameIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadedGameIdList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->downloadedGameIdList:Ljava/util/List;

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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLastEnterTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastEnterTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->lastEnterTime:J

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
    iput p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->page:I

    .line 2
    .line 3
    return-void
.end method

.method public setPc(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pc"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pc:I

    .line 2
    .line 3
    return-void
.end method

.method public setPn(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->pn:I

    .line 2
    .line 3
    return-void
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTagType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tagType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTag_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->tag_id:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->token:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->type:I

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
    iput p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->uid:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestGameIdArgs;->userToken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
