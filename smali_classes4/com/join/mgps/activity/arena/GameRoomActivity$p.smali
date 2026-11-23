.class Lcom/join/mgps/activity/arena/GameRoomActivity$p;
.super Lcom/join/mgps/socket/fight/arena/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/socket/fight/arena/b$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 6

    .line 1
    const-string v0, "register_type_GameRoomActivity"

    .line 2
    .line 3
    invoke-super {p0}, Lcom/join/mgps/socket/fight/arena/b$c;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 23
    .line 24
    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff01"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->finishActivity()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 46
    .line 47
    invoke-static {v2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$100(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->z(Lapp/mgsim/arena/SocketListener$NotifyObserver;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->updateGameRoomAsync()V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 60
    .line 61
    iget-boolean v2, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->isCreateRoom:Z

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 74
    .line 75
    iget-object v2, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->battleChallengeConfig:Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 76
    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showSetGoldDialog()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const-string v2, "\u83b7\u53d6\u914d\u7f6e\u4fe1\u606f\u5931\u8d25\uff01"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->finishActivity()V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 95
    .line 96
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->from:Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    const-string v2, "game_main"

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 109
    .line 110
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->tv_invite_fight:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 113
    .line 114
    .line 115
    :cond_3
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 116
    .line 117
    iget v2, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->isAllowPcJoin:I

    .line 118
    .line 119
    const/4 v3, 0x1

    .line 120
    if-eqz v2, :cond_5

    .line 121
    .line 122
    if-eq v2, v3, :cond_4

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 130
    .line 131
    iget-object v2, v2, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 132
    .line 133
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    const/4 v3, 0x0

    .line 138
    invoke-static {v0, v2, v3}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPcJoin(Ljava/lang/String;IZ)Lapp/mgsim/arena/ArenaRequest;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 151
    .line 152
    iget-object v2, v2, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 153
    .line 154
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    invoke-static {v0, v2, v3}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPcJoin(Ljava/lang/String;IZ)Lapp/mgsim/arena/ArenaRequest;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v1, v2}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catch_0
    move-exception v1

    .line 167
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    .line 169
    .line 170
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 171
    .line 172
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->password:Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_6

    .line 179
    .line 180
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 181
    .line 182
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_6

    .line 189
    .line 190
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 191
    .line 192
    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$000(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 197
    .line 198
    iget-object v2, v2, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 199
    .line 200
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v4, ""

    .line 210
    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 215
    .line 216
    iget-object v5, v5, Lcom/join/mgps/activity/arena/GameRoomActivity;->password:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-static {v0, v2, v3}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPassword(Ljava/lang/String;ILjava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$p;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 233
    .line 234
    iput-object v4, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->password:Ljava/lang/String;

    .line 235
    .line 236
    :cond_6
    return-void
.end method
