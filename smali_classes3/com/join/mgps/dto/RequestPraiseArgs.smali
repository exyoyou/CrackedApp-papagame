.class public Lcom/join/mgps/dto/RequestPraiseArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "SourceFile"


# instance fields
.field private comment_id:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "comment_id",
            "uid",
            "game_id"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/dto/RequestPraiseArgs;->comment_id:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/join/mgps/dto/RequestPraiseArgs;->game_id:Ljava/lang/String;

    .line 7
    .line 8
    iput p2, p0, Lcom/join/mgps/dto/RequestPraiseArgs;->uid:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getComment_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestPraiseArgs;->comment_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestPraiseArgs;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestPraiseArgs;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public setComment_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestPraiseArgs;->comment_id:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestPraiseArgs;->game_id:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/RequestPraiseArgs;->uid:I

    .line 2
    .line 3
    return-void
.end method
