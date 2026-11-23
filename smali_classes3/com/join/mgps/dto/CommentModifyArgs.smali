.class public Lcom/join/mgps/dto/CommentModifyArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "SourceFile"


# instance fields
.field private channel_num:Ljava/lang/String;

.field private comment_id:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private device_id:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private ip_address:Ljava/lang/String;

.field private m_p_m_status:I

.field private mac:Ljava/lang/String;

.field private mobile_phone_model:Ljava/lang/String;

.field private pn:I

.field private random_num:I

.field private score:F

.field private token:Ljava/lang/String;

.field private uid:I

.field private user_token:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FIII)V
    .locals 2
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
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "version",
            "device_id",
            "mac",
            "ip_address",
            "channel_num",
            "mobile_phone_model",
            "game_id",
            "uid",
            "comment_id",
            "user_token",
            "content",
            "score",
            "pn",
            "random_num",
            "m_p_m_status"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 3
    .line 4
    .line 5
    move/from16 v1, p16

    .line 6
    .line 7
    iput v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->m_p_m_status:I

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->token:Ljava/lang/String;

    .line 11
    .line 12
    move-object v1, p2

    .line 13
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->version:Ljava/lang/String;

    .line 14
    .line 15
    move-object v1, p3

    .line 16
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->device_id:Ljava/lang/String;

    .line 17
    .line 18
    move-object v1, p4

    .line 19
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->mac:Ljava/lang/String;

    .line 20
    .line 21
    move-object v1, p5

    .line 22
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->ip_address:Ljava/lang/String;

    .line 23
    .line 24
    move-object v1, p6

    .line 25
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->channel_num:Ljava/lang/String;

    .line 26
    .line 27
    move-object v1, p7

    .line 28
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->mobile_phone_model:Ljava/lang/String;

    .line 29
    .line 30
    move-object v1, p8

    .line 31
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->game_id:Ljava/lang/String;

    .line 32
    .line 33
    move v1, p9

    .line 34
    iput v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->uid:I

    .line 35
    .line 36
    move-object v1, p10

    .line 37
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->comment_id:Ljava/lang/String;

    .line 38
    .line 39
    move-object v1, p11

    .line 40
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->user_token:Ljava/lang/String;

    .line 41
    .line 42
    move-object v1, p12

    .line 43
    iput-object v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->content:Ljava/lang/String;

    .line 44
    .line 45
    move v1, p13

    .line 46
    iput v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->score:F

    .line 47
    .line 48
    move/from16 v1, p14

    .line 49
    .line 50
    iput v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->pn:I

    .line 51
    .line 52
    move/from16 v1, p15

    .line 53
    .line 54
    iput v1, v0, Lcom/join/mgps/dto/CommentModifyArgs;->random_num:I

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public getChannel_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->channel_num:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getComment_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->comment_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->device_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIp_address()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->ip_address:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getM_p_m_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->m_p_m_status:I

    .line 2
    .line 3
    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->mac:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMobile_phone_model()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->mobile_phone_model:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->pn:I

    .line 2
    .line 3
    return v0
.end method

.method public getRandom_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->random_num:I

    .line 2
    .line 3
    return v0
.end method

.method public getScore()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->score:F

    .line 2
    .line 3
    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getUser_token()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->user_token:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentModifyArgs;->version:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->channel_num:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->comment_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->content:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->device_id:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->game_id:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->ip_address:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setM_p_m_status(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m_p_m_status"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->m_p_m_status:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->mac:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->mobile_phone_model:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->pn:I

    .line 2
    .line 3
    return-void
.end method

.method public setRandom_num(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random_num"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->random_num:I

    .line 2
    .line 3
    return-void
.end method

.method public setScore(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "score"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->score:F

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
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->token:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->uid:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->user_token:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CommentModifyArgs;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
