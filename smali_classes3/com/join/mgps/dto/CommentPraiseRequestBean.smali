.class public Lcom/join/mgps/dto/CommentPraiseRequestBean;
.super Lcom/join/mgps/dto/CommentRequest;
.source "SourceFile"


# instance fields
.field private comment_id:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private type:I

.field private user_token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/CommentRequest;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getComment_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentPraiseRequestBean;->comment_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentPraiseRequestBean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentPraiseRequestBean;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public getUser_token()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentPraiseRequestBean;->user_token:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
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
    iput-object p1, p0, Lcom/join/mgps/dto/CommentPraiseRequestBean;->comment_id:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/CommentPraiseRequestBean;->game_id:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/CommentPraiseRequestBean;->type:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/CommentPraiseRequestBean;->user_token:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
