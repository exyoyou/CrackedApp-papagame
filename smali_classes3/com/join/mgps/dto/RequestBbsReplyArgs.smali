.class public Lcom/join/mgps/dto/RequestBbsReplyArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private commentId:Ljava/lang/Integer;

.field private content:Ljava/lang/String;

.field private pid:Ljava/lang/Integer;

.field private ruid:Ljava/lang/Integer;

.field private uid:Ljava/lang/Integer;


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
.method public getCommentId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestBbsReplyArgs;->commentId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestBbsReplyArgs;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPid()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestBbsReplyArgs;->pid:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRuid()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestBbsReplyArgs;->ruid:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestBbsReplyArgs;->uid:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCommentId(Ljava/lang/Integer;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestBbsReplyArgs;->commentId:Ljava/lang/Integer;

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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestBbsReplyArgs;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPid(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestBbsReplyArgs;->pid:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setRuid(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestBbsReplyArgs;->ruid:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setUid(Ljava/lang/Integer;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/RequestBbsReplyArgs;->uid:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method
