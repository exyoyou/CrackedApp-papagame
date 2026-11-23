.class public Lcom/join/mgps/dto/MessageCommentReplyResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private result:Z

.field private rid:I


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
.method public getRid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MessageCommentReplyResponse;->rid:I

    .line 2
    .line 3
    return v0
.end method

.method public isResult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/MessageCommentReplyResponse;->result:Z

    .line 2
    .line 3
    return v0
.end method

.method public setResult(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/MessageCommentReplyResponse;->result:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MessageCommentReplyResponse;->rid:I

    .line 2
    .line 3
    return-void
.end method
