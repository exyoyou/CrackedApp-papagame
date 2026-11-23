.class public interface abstract Lcom/join/mgps/callbacks/i;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onCommentCommitSuccess()V
.end method

.method public abstract onHide(Landroidx/fragment/app/Fragment;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation
.end method

.method public abstract onItemClick(IIZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "postId",
            "contentType",
            "isCollection"
        }
    .end annotation
.end method

.method public abstract onProgressItemClick(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation
.end method

.method public abstract onTimeClick(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation
.end method
