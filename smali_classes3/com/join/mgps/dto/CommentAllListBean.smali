.class public Lcom/join/mgps/dto/CommentAllListBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;,
        Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;,
        Lcom/join/mgps/dto/CommentAllListBean$GeneralCommentBean;,
        Lcom/join/mgps/dto/CommentAllListBean$HotCommentBean;
    }
.end annotation


# instance fields
.field private game_comment_count:Ljava/lang/String;

.field private game_score:Lcom/join/mgps/dto/GameScore;

.field private general_comment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean$GeneralCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field private hot_comment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean$HotCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field private scoring_details:Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;

.field private self_comment:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;


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
.method public getGame_comment_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean;->game_comment_count:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_score()Lcom/join/mgps/dto/GameScore;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean;->game_score:Lcom/join/mgps/dto/GameScore;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGeneral_comment()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean$GeneralCommentBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean;->general_comment:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHot_comment()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean$HotCommentBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean;->hot_comment:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScoring_details()Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean;->scoring_details:Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelf_comment()Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentAllListBean;->self_comment:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setGame_comment_count(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_comment_count"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean;->game_comment_count:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_score(Lcom/join/mgps/dto/GameScore;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_score"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean;->game_score:Lcom/join/mgps/dto/GameScore;

    .line 2
    .line 3
    return-void
.end method

.method public setGeneral_comment(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "general_comment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean$GeneralCommentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean;->general_comment:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setHot_comment(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hot_comment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentAllListBean$HotCommentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean;->hot_comment:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setScoring_details(Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scoring_details"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean;->scoring_details:Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;

    .line 2
    .line 3
    return-void
.end method

.method public setSelf_comment(Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "self_comment"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentAllListBean;->self_comment:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    .line 2
    .line 3
    return-void
.end method
