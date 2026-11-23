.class public Lcom/join/mgps/dto/RequestCommentpraiseArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "SourceFile"


# instance fields
.field private channel_num:Ljava/lang/String;

.field private comment_id:Ljava/lang/String;

.field private device_id:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private ip_address:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private mobile_phone_model:Ljava/lang/String;

.field private pn:I

.field private token:Ljava/lang/String;

.field private type:I

.field private uid:I

.field private user_token:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "mac",
            "ip_address",
            "mobile_phone_model",
            "game_id",
            "uid",
            "comment_id",
            "user_token",
            "version",
            "device_id",
            "channel_num",
            "type",
            "pn"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p11, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->channel_num:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p10, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->device_id:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p9, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->version:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->token:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->mac:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->ip_address:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->mobile_phone_model:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p5, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->game_id:Ljava/lang/String;

    .line 19
    .line 20
    iput p6, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->uid:I

    .line 21
    .line 22
    iput-object p7, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->comment_id:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p8, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->user_token:Ljava/lang/String;

    .line 25
    .line 26
    iput p12, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->type:I

    .line 27
    .line 28
    iput p13, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->pn:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public getChannel_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->channel_num:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getComment_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->comment_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->device_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIp_address()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->ip_address:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->mac:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMobile_phone_model()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->mobile_phone_model:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->pn:I

    .line 2
    .line 3
    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getUser_token()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->user_token:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setChannel_num(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel_num"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->channel_num:Ljava/lang/String;

    .line 2
    .line 3
    return-void
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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->comment_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->device_id:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIp_address(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip_address"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->ip_address:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mac"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->mac:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMobile_phone_model(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mobile_phone_model"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->mobile_phone_model:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->pn:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->token:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->type:I

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
    iput p1, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setUser_token(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "user_token"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->user_token:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommentpraiseArgs;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
