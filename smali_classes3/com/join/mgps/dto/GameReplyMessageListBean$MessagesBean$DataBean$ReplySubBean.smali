.class public Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplySubBean"
.end annotation


# instance fields
.field private reply_text:Ljava/lang/String;

.field private reply_text_id:I

.field private reply_text_uid:I


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
.method public getReply_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->reply_text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReply_text_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->reply_text_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getReply_text_uid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->reply_text_uid:I

    .line 2
    .line 3
    return v0
.end method

.method public setReply_text(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reply_text"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->reply_text:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReply_text_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reply_text_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->reply_text_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setReply_text_uid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reply_text_uid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->reply_text_uid:I

    .line 2
    .line 3
    return-void
.end method
