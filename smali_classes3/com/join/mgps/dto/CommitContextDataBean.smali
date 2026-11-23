.class public Lcom/join/mgps/dto/CommitContextDataBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field comment_data:Lcom/join/mgps/dto/InformationCommentBean;

.field private is_parent:Z

.field is_reward:Lcom/join/mgps/dto/RewardBean;

.field private val:Z


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
.method public getComment_data()Lcom/join/mgps/dto/InformationCommentBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommitContextDataBean;->comment_data:Lcom/join/mgps/dto/InformationCommentBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIs_reward()Lcom/join/mgps/dto/RewardBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CommitContextDataBean;->is_reward:Lcom/join/mgps/dto/RewardBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public isVal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/CommitContextDataBean;->val:Z

    .line 2
    .line 3
    return v0
.end method

.method public is_parent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/CommitContextDataBean;->is_parent:Z

    .line 2
    .line 3
    return v0
.end method

.method public setComment_data(Lcom/join/mgps/dto/InformationCommentBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment_data"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommitContextDataBean;->comment_data:Lcom/join/mgps/dto/InformationCommentBean;

    .line 2
    .line 3
    return-void
.end method

.method public setIs_parent(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_parent"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/CommitContextDataBean;->is_parent:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIs_reward(Lcom/join/mgps/dto/RewardBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_reward"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CommitContextDataBean;->is_reward:Lcom/join/mgps/dto/RewardBean;

    .line 2
    .line 3
    return-void
.end method

.method public setVal(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/CommitContextDataBean;->val:Z

    .line 2
    .line 3
    return-void
.end method
