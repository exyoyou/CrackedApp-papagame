.class Lcom/join/mgps/activity/arena/GameRoomListActivity$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapp/mgsim/arena/SocketListener$NotifyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socketError"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$300(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Z

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->refreshGameRoomList(I)V

    .line 14
    .line 15
    .line 16
    iget v0, p1, Lapp/mgsim/arena/SocketError;->errorType:I

    .line 17
    .line 18
    const/4 v2, 0x6

    .line 19
    if-eq v0, v2, :cond_5

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    if-ne v0, v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v2, 0x5

    .line 26
    if-ne v0, v2, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1300(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    if-eq v0, v1, :cond_3

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    if-ne v0, v1, :cond_4

    .line 38
    .line 39
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 40
    .line 41
    iget-object p1, p1, Lapp/mgsim/arena/SocketError;->errorInfo:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showLoginDialog()V

    .line 49
    .line 50
    .line 51
    :cond_4
    return-void

    .line 52
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 53
    .line 54
    iget-object p1, p1, Lapp/mgsim/arena/SocketError;->errorInfo:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->finishActivity()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$300(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Z

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "cmd_login"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$100(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->n()Lcom/papa91/battle/protocol/BattleArea;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$202(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/BattleArea;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$200(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/BattleArea;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showBattleArea(Lcom/papa91/battle/protocol/BattleArea;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 57
    .line 58
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    .line 59
    .line 60
    iget-boolean v1, p1, Lapp/mgsim/arena/ArenaRequest;->isElite:Z

    .line 61
    .line 62
    iget-boolean p1, p1, Lapp/mgsim/arena/ArenaRequest;->isRefreshing:Z

    .line 63
    .line 64
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->delaySubscribeGameList(ZZ)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 69
    .line 70
    const-string v1, "push_update_area_online_people_broadcast"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 79
    .line 80
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p1, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->updateOnlineCounts(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 89
    .line 90
    const-string v1, "cmd_join_battle_area"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    const/4 v1, 0x1

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$100(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$400(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/BattleArea;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->D(Lcom/papa91/battle/protocol/BattleArea;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 119
    .line 120
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->refreshGameRoomList(I)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_3

    .line 124
    .line 125
    :cond_4
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 126
    .line 127
    const-string v2, "cmd_quick_join_room"

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    const/4 v2, 0x0

    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$100(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0, v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->E(Lapp/mgsim/arena/ArenaResponse;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 150
    .line 151
    iget-object v1, p1, Lapp/mgsim/arena/ArenaResponse;->joinSpectatorReason:Ljava/lang/String;

    .line 152
    .line 153
    invoke-static {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$502(Lcom/join/mgps/activity/arena/GameRoomListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 157
    .line 158
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 161
    .line 162
    invoke-static {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$602(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom;

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_5
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 167
    .line 168
    const-string v3, "push_global_broadcast_all"

    .line 169
    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_6

    .line 175
    .line 176
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 177
    .line 178
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast p1, Lcom/papa91/battle/protocol/Notification;

    .line 181
    .line 182
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handleMsgBroadcast(Lcom/papa91/battle/protocol/Notification;)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_6
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 187
    .line 188
    const-string v3, "push_refresh_room_list_update"

    .line 189
    .line 190
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_7

    .line 195
    .line 196
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 197
    .line 198
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->printLog(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast p1, Ljava/util/List;

    .line 204
    .line 205
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 206
    .line 207
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handleRoomListUpdate(Ljava/util/List;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_7
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 212
    .line 213
    const-string v3, "push_refresh_room_list_dissolve"

    .line 214
    .line 215
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_8

    .line 220
    .line 221
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 222
    .line 223
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->printLog(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p1, Ljava/util/List;

    .line 229
    .line 230
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 231
    .line 232
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handleRoomListDelete(Ljava/util/List;)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :cond_8
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 237
    .line 238
    const-string v3, "push_room_list_ing"

    .line 239
    .line 240
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    const/4 v4, 0x0

    .line 245
    if-eqz v0, :cond_9

    .line 246
    .line 247
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 248
    .line 249
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->printLog(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 253
    .line 254
    invoke-virtual {v0, p1, v4}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handlePushRoomListData(Lapp/mgsim/arena/ArenaResponse;Z)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :cond_9
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 259
    .line 260
    const-string v3, "push_room_list_finish"

    .line 261
    .line 262
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_b

    .line 267
    .line 268
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 269
    .line 270
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->printLog(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    .line 274
    .line 275
    iget v0, v0, Lapp/mgsim/arena/ArenaRequest;->roomType:I

    .line 276
    .line 277
    if-ne v0, v1, :cond_a

    .line 278
    .line 279
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 280
    .line 281
    invoke-static {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$702(Lcom/join/mgps/activity/arena/GameRoomListActivity;Z)Z

    .line 282
    .line 283
    .line 284
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 285
    .line 286
    invoke-virtual {v0, p1, v4}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->updateRoomCount(Lapp/mgsim/arena/ArenaResponse;Z)V

    .line 287
    .line 288
    .line 289
    goto :goto_0

    .line 290
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 291
    .line 292
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->updateRoomCount(Lapp/mgsim/arena/ArenaResponse;Z)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 296
    .line 297
    invoke-static {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$802(Lcom/join/mgps/activity/arena/GameRoomListActivity;Z)Z

    .line 298
    .line 299
    .line 300
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 301
    .line 302
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->handlePushRoomListData(Lapp/mgsim/arena/ArenaResponse;Z)V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :cond_b
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 307
    .line 308
    const-string v3, "cmd_create_game_room"

    .line 309
    .line 310
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-nez v0, :cond_c

    .line 315
    .line 316
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 317
    .line 318
    const-string v5, "cmd_join_room"

    .line 319
    .line 320
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_16

    .line 325
    .line 326
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 327
    .line 328
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->hideLoadingDialog()V

    .line 329
    .line 330
    .line 331
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    .line 334
    .line 335
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 336
    .line 337
    invoke-static {v5}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$100(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    invoke-virtual {v5}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-virtual {v5, v2}, Lcom/join/mgps/socket/fight/arena/ArenaService;->E(Lapp/mgsim/arena/ArenaResponse;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    sget-object v5, Lcom/papa91/battle/protocol/RoomCategory;->LIVE:Lcom/papa91/battle/protocol/RoomCategory;

    .line 353
    .line 354
    const/4 v6, 0x2

    .line 355
    if-ne v2, v5, :cond_d

    .line 356
    .line 357
    const/4 v2, 0x2

    .line 358
    goto :goto_1

    .line 359
    :cond_d
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    sget-object v5, Lcom/papa91/battle/protocol/RoomCategory;->TOURNAMENT:Lcom/papa91/battle/protocol/RoomCategory;

    .line 364
    .line 365
    if-ne v2, v5, :cond_e

    .line 366
    .line 367
    const/4 v2, 0x1

    .line 368
    goto :goto_1

    .line 369
    :cond_e
    const/4 v2, 0x0

    .line 370
    :goto_1
    iget-object v5, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 371
    .line 372
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    const-string v5, ""

    .line 377
    .line 378
    if-eqz v3, :cond_14

    .line 379
    .line 380
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 381
    .line 382
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->context:Landroid/content/Context;

    .line 383
    .line 384
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    sget-object v3, Lcom/papa/sim/statistic/Event;->JoinLobbyroom:Lcom/papa/sim/statistic/Event;

    .line 389
    .line 390
    new-instance v7, Lcom/papa/sim/statistic/Ext;

    .line 391
    .line 392
    invoke-direct {v7}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 393
    .line 394
    .line 395
    new-instance v8, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 401
    .line 402
    .line 403
    move-result-wide v9

    .line 404
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v5

    .line 414
    invoke-virtual {v7, v5}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 415
    .line 416
    .line 417
    move-result-object v5

    .line 418
    iget-object v7, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 419
    .line 420
    iget-object v7, v7, Lcom/join/mgps/activity/arena/GameRoomListActivity;->context:Landroid/content/Context;

    .line 421
    .line 422
    invoke-static {v7}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 423
    .line 424
    .line 425
    move-result-object v7

    .line 426
    invoke-virtual {v7}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 427
    .line 428
    .line 429
    move-result-object v7

    .line 430
    invoke-virtual {v7}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 431
    .line 432
    .line 433
    move-result v7

    .line 434
    invoke-virtual {v5, v7}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 435
    .line 436
    .line 437
    move-result-object v5

    .line 438
    const-string v7, "0"

    .line 439
    .line 440
    invoke-virtual {v5, v7}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    invoke-virtual {p1, v3, v5}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 445
    .line 446
    .line 447
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 448
    .line 449
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$900(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 453
    .line 454
    .line 455
    move-result p1

    .line 456
    const/4 v3, -0x1

    .line 457
    if-eqz p1, :cond_11

    .line 458
    .line 459
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 460
    .line 461
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    if-eqz p1, :cond_10

    .line 466
    .line 467
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 468
    .line 469
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1000(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->l0()I

    .line 474
    .line 475
    .line 476
    move-result p1

    .line 477
    if-ne p1, v6, :cond_f

    .line 478
    .line 479
    goto :goto_2

    .line 480
    :cond_f
    const/4 v4, 0x1

    .line 481
    :goto_2
    move v3, v4

    .line 482
    :cond_10
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 483
    .line 484
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->l(I)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    iget-object v2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 493
    .line 494
    invoke-static {v2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1100(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/dto/BattleChallengeConfig;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->a(Lcom/join/mgps/dto/BattleChallengeConfig;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    invoke-virtual {p1, v3}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->e(I)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->f(Z)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 523
    .line 524
    .line 525
    goto/16 :goto_3

    .line 526
    .line 527
    :cond_11
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 528
    .line 529
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1200(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    if-eqz p1, :cond_13

    .line 534
    .line 535
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 536
    .line 537
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1200(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 538
    .line 539
    .line 540
    move-result-object p1

    .line 541
    invoke-virtual {p1}, Lcom/join/mgps/fragment/roomlist/c;->l0()I

    .line 542
    .line 543
    .line 544
    move-result p1

    .line 545
    if-ne p1, v6, :cond_12

    .line 546
    .line 547
    const/4 v1, 0x0

    .line 548
    :cond_12
    move v3, v1

    .line 549
    :cond_13
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 550
    .line 551
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->l(I)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 556
    .line 557
    .line 558
    move-result-object p1

    .line 559
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 564
    .line 565
    .line 566
    move-result-object p1

    .line 567
    invoke-virtual {p1, v3}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->e(I)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 568
    .line 569
    .line 570
    move-result-object p1

    .line 571
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 572
    .line 573
    .line 574
    move-result-object p1

    .line 575
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 576
    .line 577
    .line 578
    goto/16 :goto_3

    .line 579
    .line 580
    :cond_14
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 581
    .line 582
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v3

    .line 594
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    if-nez v3, :cond_17

    .line 599
    .line 600
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v4

    .line 608
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v3

    .line 612
    if-eqz v3, :cond_15

    .line 613
    .line 614
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccount()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    const-string v3, "pa"

    .line 619
    .line 620
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 621
    .line 622
    .line 623
    move-result v1

    .line 624
    if-eqz v1, :cond_15

    .line 625
    .line 626
    goto :goto_4

    .line 627
    :cond_15
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 628
    .line 629
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->context:Landroid/content/Context;

    .line 630
    .line 631
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    sget-object v3, Lcom/papa/sim/statistic/Event;->JoinLobbyroom:Lcom/papa/sim/statistic/Event;

    .line 636
    .line 637
    new-instance v4, Lcom/papa/sim/statistic/Ext;

    .line 638
    .line 639
    invoke-direct {v4}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 640
    .line 641
    .line 642
    iget-object v6, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 643
    .line 644
    iget-object v6, v6, Lcom/join/mgps/activity/arena/GameRoomListActivity;->context:Landroid/content/Context;

    .line 645
    .line 646
    invoke-static {v6}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 647
    .line 648
    .line 649
    move-result-object v6

    .line 650
    invoke-virtual {v6}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 651
    .line 652
    .line 653
    move-result-object v6

    .line 654
    invoke-virtual {v6}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 655
    .line 656
    .line 657
    move-result v6

    .line 658
    invoke-virtual {v4, v6}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 659
    .line 660
    .line 661
    move-result-object v4

    .line 662
    new-instance v6, Ljava/lang/StringBuilder;

    .line 663
    .line 664
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 668
    .line 669
    .line 670
    move-result-wide v7

    .line 671
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v5

    .line 681
    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 682
    .line 683
    .line 684
    move-result-object v4

    .line 685
    const-string v5, "1"

    .line 686
    .line 687
    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 688
    .line 689
    .line 690
    move-result-object v4

    .line 691
    invoke-virtual {v1, v3, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 692
    .line 693
    .line 694
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 695
    .line 696
    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 697
    .line 698
    .line 699
    move-result-object v1

    .line 700
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->l(I)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->joinSpectatorReason:Ljava/lang/String;

    .line 705
    .line 706
    invoke-virtual {v1, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->h(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 707
    .line 708
    .line 709
    move-result-object p1

    .line 710
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 715
    .line 716
    .line 717
    move-result-object p1

    .line 718
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 719
    .line 720
    .line 721
    move-result-object p1

    .line 722
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 723
    .line 724
    .line 725
    :cond_16
    :goto_3
    return-void

    .line 726
    :cond_17
    :goto_4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 727
    .line 728
    .line 729
    move-result-object p1

    .line 730
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$o;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 731
    .line 732
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goChangeNickname(Landroid/content/Context;)V

    .line 733
    .line 734
    .line 735
    return-void
.end method
