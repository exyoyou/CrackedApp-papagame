.class Lcom/join/mgps/fragment/f4$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapp/mgsim/arena/SocketListener$NotifyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/f4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/f4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f4;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/f4$i;->a:Lcom/join/mgps/fragment/f4;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$i;->a:Lcom/join/mgps/fragment/f4;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/f4;->U(Lcom/join/mgps/fragment/f4;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$i;->a:Lcom/join/mgps/fragment/f4;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/fragment/f4;->g0()V

    .line 13
    .line 14
    .line 15
    iget v0, p1, Lapp/mgsim/arena/SocketError;->errorType:I

    .line 16
    .line 17
    const/4 v1, 0x6

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$i;->a:Lcom/join/mgps/fragment/f4;

    .line 28
    .line 29
    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5!"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/f4;->showToast(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$i;->a:Lcom/join/mgps/fragment/f4;

    .line 36
    .line 37
    iget-object p1, p1, Lapp/mgsim/arena/SocketError;->errorInfo:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/f4;->showToast(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$i;->a:Lcom/join/mgps/fragment/f4;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/fragment/f4;->H0()V

    .line 45
    .line 46
    .line 47
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
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$i;->a:Lcom/join/mgps/fragment/f4;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/f4;->U(Lcom/join/mgps/fragment/f4;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    .line 11
    .line 12
    if-eqz v0, :cond_8

    .line 13
    .line 14
    iget-object v0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "register_type_NewArenaMainFragment"

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const-string v1, "register_type_public"

    .line 21
    .line 22
    if-ne v0, v1, :cond_8

    .line 23
    .line 24
    :cond_1
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$i;->a:Lcom/join/mgps/fragment/f4;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/f4;->q0(Lapp/mgsim/arena/ArenaResponse;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "cmd_login"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$i;->a:Lcom/join/mgps/fragment/f4;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/join/mgps/fragment/f4;->S(Lcom/join/mgps/fragment/f4;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_8

    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$i;->a:Lcom/join/mgps/fragment/f4;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/join/mgps/fragment/f4;->S(Lcom/join/mgps/fragment/f4;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/f4;->i0(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :cond_3
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 68
    .line 69
    const-string v1, "cmd_search_room_by_id"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$i;->a:Lcom/join/mgps/fragment/f4;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/f4;->r0(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :cond_4
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 89
    .line 90
    const-string v1, "cmd_join_room"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_8

    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$i;->a:Lcom/join/mgps/fragment/f4;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/join/mgps/fragment/f4;->d0()V

    .line 101
    .line 102
    .line 103
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/join/mgps/fragment/f4$i;->a:Lcom/join/mgps/fragment/f4;

    .line 108
    .line 109
    invoke-static {v1}, Lcom/join/mgps/fragment/f4;->M(Lcom/join/mgps/fragment/f4;)Lcom/join/mgps/socket/fight/arena/b;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-nez v1, :cond_5

    .line 114
    .line 115
    return-void

    .line 116
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/fragment/f4$i;->a:Lcom/join/mgps/fragment/f4;

    .line 117
    .line 118
    invoke-static {v1}, Lcom/join/mgps/fragment/f4;->M(Lcom/join/mgps/fragment/f4;)Lcom/join/mgps/socket/fight/arena/b;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const/4 v2, 0x0

    .line 127
    invoke-virtual {v1, v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->E(Lapp/mgsim/arena/ArenaResponse;)V

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v3, ""

    .line 140
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 145
    .line 146
    .line 147
    move-result-wide v3

    .line 148
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    sget-object v3, Lcom/papa91/battle/protocol/RoomCategory;->LIVE:Lcom/papa91/battle/protocol/RoomCategory;

    .line 164
    .line 165
    if-ne v2, v3, :cond_6

    .line 166
    .line 167
    const/4 v2, 0x2

    .line 168
    goto :goto_0

    .line 169
    :cond_6
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    sget-object v3, Lcom/papa91/battle/protocol/RoomCategory;->TOURNAMENT:Lcom/papa91/battle/protocol/RoomCategory;

    .line 174
    .line 175
    if-ne v2, v3, :cond_7

    .line 176
    .line 177
    const/4 v2, 0x1

    .line 178
    goto :goto_0

    .line 179
    :cond_7
    const/4 v2, 0x0

    .line 180
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/fragment/f4$i;->a:Lcom/join/mgps/fragment/f4;

    .line 181
    .line 182
    invoke-static {v3}, Lcom/join/mgps/fragment/f4;->U(Lcom/join/mgps/fragment/f4;)Landroid/app/Activity;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-static {v3}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v3, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->l(I)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->joinSpectatorReason:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v2, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->h(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$i;->a:Lcom/join/mgps/fragment/f4;

    .line 213
    .line 214
    iget v0, v0, Lcom/join/mgps/fragment/f4;->W:I

    .line 215
    .line 216
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->b(I)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$i;->a:Lcom/join/mgps/fragment/f4;

    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/join/mgps/fragment/f4;->g0()V

    .line 226
    .line 227
    .line 228
    :cond_8
    :goto_1
    return-void
.end method
