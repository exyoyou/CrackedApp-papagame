.class public Lcom/join/mgps/dto/ServiceStateForMore;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private game_id:Ljava/lang/String;

.field private id:I

.field private server_info:Ljava/lang/String;

.field private server_time:J

.field private type:I

.field private type_txt:Ljava/lang/String;


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
.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ServiceStateForMore;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ServiceStateForMore;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getServer_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ServiceStateForMore;->server_info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getServer_time()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ServiceStateForMore;->server_time:J

    .line 2
    .line 3
    const-wide/16 v2, 0x3e8

    .line 4
    .line 5
    mul-long v0, v0, v2

    .line 6
    .line 7
    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ServiceStateForMore;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public getType_txt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ServiceStateForMore;->type_txt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
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
    iput-object p1, p0, Lcom/join/mgps/dto/ServiceStateForMore;->game_id:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/ServiceStateForMore;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setServer_info(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "server_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ServiceStateForMore;->server_info:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setServer_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "server_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ServiceStateForMore;->server_time:J

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
    iput p1, p0, Lcom/join/mgps/dto/ServiceStateForMore;->type:I

    .line 2
    .line 3
    return-void
.end method

.method public setType_txt(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type_txt"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ServiceStateForMore;->type_txt:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
