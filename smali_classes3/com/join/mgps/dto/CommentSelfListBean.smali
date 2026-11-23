.class public Lcom/join/mgps/dto/CommentSelfListBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;
    }
.end annotation


# instance fields
.field private game_info:Lcom/join/mgps/dto/ForumBean$GameInfo;

.field private self_comment:Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;


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
.method public getGame_info()Lcom/join/mgps/dto/ForumBean$GameInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentSelfListBean;->game_info:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelf_comment()Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommentSelfListBean;->self_comment:Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 2
    .line 3
    return-object v0
.end method

.method public setGame_info(Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommentSelfListBean;->game_info:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setSelf_comment(Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/CommentSelfListBean;->self_comment:Lcom/join/mgps/dto/CommentSelfListBean$SelfComment;

    .line 2
    .line 3
    return-void
.end method
