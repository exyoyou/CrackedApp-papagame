.class public Lcom/join/mgps/dto/RequestModGameTagArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private gameId:Ljava/lang/String;

.field private lastEnterTime:J

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "lastEnterTime",
            "uid"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/RequestModGameTagArgs;->gameId:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Lcom/join/mgps/dto/RequestModGameTagArgs;->lastEnterTime:J

    .line 5
    iput p4, p0, Lcom/join/mgps/dto/RequestModGameTagArgs;->uid:I

    return-void
.end method


# virtual methods
.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestModGameTagArgs;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastEnterTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/RequestModGameTagArgs;->lastEnterTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestModGameTagArgs;->uid:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestModGameTagArgs;->gameId:Ljava/lang/String;

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
    iput-wide p1, p0, Lcom/join/mgps/dto/RequestModGameTagArgs;->lastEnterTime:J

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
    iput p1, p0, Lcom/join/mgps/dto/RequestModGameTagArgs;->uid:I

    .line 2
    .line 3
    return-void
.end method
