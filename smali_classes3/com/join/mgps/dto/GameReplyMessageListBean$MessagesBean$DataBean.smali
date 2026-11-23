.class public Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;
    }
.end annotation


# instance fields
.field private comment_score_switch:I

.field private comment_switch:I

.field private current_reply_text:Ljava/lang/String;

.field private current_reply_text_id:I

.field private current_reply_text_uid:I

.field private current_reply_time:J

.field private current_reply_title:Ljava/lang/String;

.field private current_reply_user_ico:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private original_text:Ljava/lang/String;

.field private original_text_id:I

.field private original_text_uid:I

.field private reply_sub:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;


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
.method public getComment_score_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->comment_score_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getComment_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->comment_switch:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurrent_reply_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrent_reply_text_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_text_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurrent_reply_text_uid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_text_uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurrent_reply_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCurrent_reply_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrent_reply_user_ico()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_user_ico:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOriginal_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->original_text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOriginal_text_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->original_text_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getOriginal_text_uid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->original_text_uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getReply_sub()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->reply_sub:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setComment_score_switch(I)V
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
    iput p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->comment_score_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setComment_switch(I)V
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
    iput p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->comment_switch:I

    .line 2
    .line 3
    return-void
.end method

.method public setCurrent_reply_text(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "current_reply_text"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_text:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCurrent_reply_text_id(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "current_reply_text_id"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_text_id:I

    .line 2
    .line 3
    return-void
.end method

.method public setCurrent_reply_text_uid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "current_reply_text_uid"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_text_uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setCurrent_reply_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "current_reply_time"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_time:J

    .line 2
    .line 3
    return-void
.end method

.method public setCurrent_reply_title(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "current_reply_title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCurrent_reply_user_ico(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "current_reply_user_ico"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_user_ico:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->game_id:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->original_text:Ljava/lang/String;

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
    iput p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->original_text_id:I

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
    iput p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->original_text_uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setReply_sub(Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reply_sub"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->reply_sub:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DataBean{game_id=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->game_id:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", original_text=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->original_text:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", original_text_id="

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->original_text_id:I

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", original_text_uid="

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->original_text_uid:I

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ", current_reply_text=\'"

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_text:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, ", current_reply_text_id="

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_text_id:I

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ", current_reply_text_uid="

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_text_uid:I

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, ", reply_sub="

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->reply_sub:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v2, ", current_reply_time="

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-wide v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_time:J

    .line 103
    .line 104
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v2, ", current_reply_title=\'"

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_title:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, ", current_reply_user_ico=\'"

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->current_reply_user_ico:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const/16 v1, 0x7d

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    return-object v0
.end method
