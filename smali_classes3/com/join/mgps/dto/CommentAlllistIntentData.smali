.class public Lcom/join/mgps/dto/CommentAlllistIntentData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field bespeakSwitch:I

.field commentContent:Ljava/lang/String;

.field commentId:Ljava/lang/String;

.field commentScoreSwitch:Ljava/lang/String;

.field commentStars:F

.field cpu_type:I

.field gameId:Ljava/lang/String;

.field gameIsStart:I

.field gameType:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field sgcSwitch:I


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
.method public getBespeakSwitch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->bespeakSwitch:I

    .line 2
    .line 3
    return v0
.end method

.method public getCommentContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->commentContent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->commentId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCommentScoreSwitch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->commentScoreSwitch:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCommentStars()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->commentStars:F

    .line 2
    .line 3
    return v0
.end method

.method public getCpu_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->cpu_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameIsStart()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->gameIsStart:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->gameType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSgcSwitch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->sgcSwitch:I

    .line 2
    .line 3
    return v0
.end method

.method public setBespeakSwitch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bespeakSwitch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->bespeakSwitch:I

    .line 2
    .line 3
    return-void
.end method

.method public setCommentContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentContent"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->commentContent:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->commentId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCommentScoreSwitch(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentScoreSwitch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->commentScoreSwitch:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCommentStars(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentStars"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->commentStars:F

    .line 2
    .line 3
    return-void
.end method

.method public setCpu_type(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cpu_type"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->cpu_type:I

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
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGameIsStart(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameIsStart"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->gameIsStart:I

    .line 2
    .line 3
    return-void
.end method

.method public setGameType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->gameType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSgcSwitch(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sgcSwitch"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/CommentAlllistIntentData;->sgcSwitch:I

    .line 2
    .line 3
    return-void
.end method
