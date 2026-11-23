.class Lcom/join/mgps/activity/CheckInviteDialogActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapp/mgsim/arena/SocketListener$NotifyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/CheckInviteDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CheckInviteDialogActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CheckInviteDialogActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Lapp/mgsim/arena/SocketError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    .line 2
    .line 3
    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff01"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showToast(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->access$200(Lcom/join/mgps/activity/CheckInviteDialogActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->handleError(Lapp/mgsim/arena/ArenaResponse;)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_1
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "cmd_login"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->handleShare()V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_2
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, "cmd_share_join_room"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    sget-object v2, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eq v1, v2, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    .line 77
    .line 78
    invoke-static {v2}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->access$100(Lcom/join/mgps/activity/CheckInviteDialogActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->n()Lcom/papa91/battle/protocol/BattleArea;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eq v1, v2, :cond_3

    .line 95
    .line 96
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->showHintDialog(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    .line 103
    .line 104
    invoke-static {v1}, Lcom/join/mgps/activity/CheckInviteDialogActivity;->access$100(Lcom/join/mgps/activity/CheckInviteDialogActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const/4 v2, 0x0

    .line 113
    invoke-virtual {v1, v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->E(Lapp/mgsim/arena/ArenaResponse;)V

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v3, ""

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 131
    .line 132
    .line 133
    move-result-wide v3

    .line 134
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    .line 146
    .line 147
    invoke-static {v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->joinSpectatorReason:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v2, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->h(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    .line 173
    .line 174
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iget-object v1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    .line 179
    .line 180
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    sget-object v2, Lcom/join/mgps/activity/CheckInviteDialogActivity;->fightId:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {p1, v1, v0, v2}, Lcom/papa/sim/statistic/t;->x(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lcom/join/mgps/activity/CheckInviteDialogActivity$f;->a:Lcom/join/mgps/activity/CheckInviteDialogActivity;

    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 200
    .line 201
    .line 202
    :cond_4
    :goto_0
    return-void
.end method
