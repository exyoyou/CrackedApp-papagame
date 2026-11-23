.class public Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GivePriaceBean$MessagesBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field comment_score_switch:Ljava/lang/String;

.field comment_switch:Ljava/lang/String;

.field game_id:Ljava/lang/String;

.field private original_text:Ljava/lang/String;

.field private original_text_id:I

.field private original_text_uid:I

.field private praise_text:Ljava/lang/String;

.field private praise_text_id:I

.field private praise_text_uid:I

.field private praise_time:J

.field private praise_title:Ljava/lang/String;

.field private praise_user_ico:Ljava/lang/String;


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
.method public getComment_score_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->comment_score_switch:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getComment_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->comment_switch:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOriginal_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->original_text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOriginal_text_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->original_text_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getOriginal_text_uid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->original_text_uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getPraise_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPraise_text_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_text_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getPraise_text_uid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_text_uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getPraise_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPraise_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPraise_user_ico()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_user_ico:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setComment_score_switch(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment_score_switch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->comment_score_switch:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setComment_switch(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment_switch"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->comment_switch:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOriginal_text(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "original_text"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->original_text:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOriginal_text_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "original_text_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->original_text_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setOriginal_text_uid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "original_text_uid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->original_text_uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setPraise_text(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "praise_text"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_text:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPraise_text_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "praise_text_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_text_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setPraise_text_uid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "praise_text_uid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_text_uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setPraise_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "praise_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_time:J

    .line 2
    .line 3
    return-void
.end method

.method public setPraise_title(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "praise_title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPraise_user_ico(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "praise_user_ico"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->praise_user_ico:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
