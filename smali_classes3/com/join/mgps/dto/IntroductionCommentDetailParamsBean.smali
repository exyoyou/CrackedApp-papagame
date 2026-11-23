.class public Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private comment_id:I

.field private game_id:J

.field private parent_comment_id:I

.field private post_id:I


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
.method public getComment_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->comment_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getGame_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->game_id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getParent_comment_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->parent_comment_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getPost_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->post_id:I

    .line 2
    .line 3
    return v0
.end method

.method public setComment_id(I)V
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
    iput p1, p0, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->comment_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setGame_id(J)V
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
    iput-wide p1, p0, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->game_id:J

    .line 2
    .line 3
    return-void
.end method

.method public setParent_comment_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent_comment_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->parent_comment_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setPost_id(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "post_id"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/join/mgps/dto/IntroductionCommentDetailParamsBean;->post_id:I

    .line 6
    .line 7
    return-void
.end method
