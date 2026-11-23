.class public Lcom/join/mgps/dto/RequestCommitReplyArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private content:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private head_portrait:Ljava/lang/String;

.field private ip_address:Ljava/lang/String;

.field private mobile_phone_model:Ljava/lang/String;

.field private random_num:I

.field private reply_comment_id:Ljava/lang/String;

.field private reply_comment_user_id:I

.field private reply_comment_user_name:Ljava/lang/String;

.field private uid:I

.field private user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
            0x0
        }
        names = {
            "uid",
            "game_id",
            "head_portrait",
            "user_name",
            "mobile_phone_model",
            "ip_address",
            "random_num",
            "content",
            "reply_comment_id",
            "reply_comment_user_name",
            "reply_comment_user_id"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->uid:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->game_id:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->head_portrait:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->user_name:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->mobile_phone_model:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->ip_address:Ljava/lang/String;

    .line 15
    .line 16
    iput p7, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->random_num:I

    .line 17
    .line 18
    iput-object p8, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->content:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->reply_comment_id:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->reply_comment_user_name:Ljava/lang/String;

    .line 23
    .line 24
    iput p11, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->reply_comment_user_id:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHead_portrait()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->head_portrait:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIp_address()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->ip_address:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMobile_phone_model()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->mobile_phone_model:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRandom_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->random_num:I

    .line 2
    .line 3
    return v0
.end method

.method public getReply_comment_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->reply_comment_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReply_comment_user_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->reply_comment_user_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getReply_comment_user_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->reply_comment_user_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getUser_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->user_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->content:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHead_portrait(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "head_portrait"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->head_portrait:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->ip_address:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->mobile_phone_model:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->random_num:I

    .line 2
    .line 3
    return-void
.end method

.method public setReply_comment_id(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reply_comment_id"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->reply_comment_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReply_comment_user_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reply_comment_user_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->reply_comment_user_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setReply_comment_user_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reply_comment_user_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->reply_comment_user_name:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "user_name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestCommitReplyArgs;->user_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
