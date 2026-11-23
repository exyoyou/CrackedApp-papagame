.class public interface abstract Lcom/join/mgps/adapter/CommentDetailAdapter$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/CommentDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "h"
.end annotation


# virtual methods
.method public abstract onPraise(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bean",
            "position",
            "type"
        }
    .end annotation
.end method

.method public abstract onReply(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bean",
            "position"
        }
    .end annotation
.end method

.method public abstract onReplyReply(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sub",
            "pn",
            "id"
        }
    .end annotation
.end method
