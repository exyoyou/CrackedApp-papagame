.class public Lcom/join/mgps/dto/RequestSiliencebean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private game_id:Ljava/lang/String;

.field private silence_room_switch:I

.field private uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "silence_room_switch",
            "game_id"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/mgps/dto/RequestSiliencebean;->uid:I

    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/dto/RequestSiliencebean;->silence_room_switch:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/join/mgps/dto/RequestSiliencebean;->game_id:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestSiliencebean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSilence_room_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestSiliencebean;->silence_room_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestSiliencebean;->uid:I

    .line 2
    .line 3
    return v0
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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestSiliencebean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSilence_room_switch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "silence_room_switch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestSiliencebean;->silence_room_switch:I

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
    iput p1, p0, Lcom/join/mgps/dto/RequestSiliencebean;->uid:I

    .line 2
    .line 3
    return-void
.end method
