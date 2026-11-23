.class Lcom/join/mgps/activity/arena/GameRoomActivity$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapp/mgsim/arena/SocketListener$NotifyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field volatile a:Z

.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomActivity;


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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->a:Z

    .line 8
    .line 9
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
    iget v0, p1, Lapp/mgsim/arena/SocketError;->errorType:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 7
    .line 8
    iget-object p1, p1, Lapp/mgsim/arena/SocketError;->errorInfo:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 15
    .line 16
    const-string v0, "\u7f51\u7edc\u5f02\u5e38!"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->finishActivity()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$200(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

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
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->handleError(Lapp/mgsim/arena/ArenaResponse;)V

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
    const-string v1, "push_room_ready_timeout_kickout"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-ne v0, p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showReadyTimeOutDialog()V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void

    .line 55
    :cond_3
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 56
    .line 57
    const-string v1, "push_room_start_timeout_kickout"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-ne v0, p1, :cond_4

    .line 82
    .line 83
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showStartGameTimeOut()V

    .line 86
    .line 87
    .line 88
    :cond_4
    return-void

    .line 89
    :cond_5
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 90
    .line 91
    const-string v1, "cmd_set_room_password_altr"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 100
    .line 101
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 104
    .line 105
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->updateRoom(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_6
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 110
    .line 111
    const-string v1, "cmd_set_room_challenge_coins_altr"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 120
    .line 121
    const-string v1, "\u6311\u6218\u91d1\u8bbe\u7f6e\u6210\u529f"

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 127
    .line 128
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 131
    .line 132
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->updateRoom(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_7
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 137
    .line 138
    const-string v1, "cmd_set_room_spectator_join_altr"

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_8

    .line 145
    .line 146
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 147
    .line 148
    const-string v1, "\u65c1\u89c2\u8bbe\u7f6e\u6210\u529f"

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 154
    .line 155
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 158
    .line 159
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->updateRoom(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_8
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 164
    .line 165
    const-string v1, "cmd_set_room_peripheral_join_altr"

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_9

    .line 172
    .line 173
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 174
    .line 175
    const-string v1, "\u8bbe\u7f6e\u6210\u529f"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 181
    .line 182
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 185
    .line 186
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->updateRoom(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_9
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 191
    .line 192
    const-string v1, "cmd_set_room_pc_join_altr"

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_a

    .line 199
    .line 200
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 201
    .line 202
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 205
    .line 206
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->updateRoom(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_a
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 211
    .line 212
    const-string v1, "cmd_set_room_server_play_mode"

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_b

    .line 219
    .line 220
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 221
    .line 222
    const-string v1, "\u6d41\u7545\u6a21\u5f0f\u8bbe\u7f6e\u6210\u529f"

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 228
    .line 229
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 232
    .line 233
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->updateRoom(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_b
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 238
    .line 239
    const-string v1, "cmd_get_kick_out_room_position_info"

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_c

    .line 246
    .line 247
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 248
    .line 249
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast p1, Lcom/papa91/battle/protocol/KickInfo;

    .line 252
    .line 253
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->handleKickPlayerInfo(Lcom/papa91/battle/protocol/KickInfo;)V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :cond_c
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 258
    .line 259
    const-string v1, "cmd_set_room_close_p1_position"

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-nez v0, :cond_15

    .line 266
    .line 267
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 268
    .line 269
    const-string v1, "cmd_set_room_close_p2_position"

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-nez v0, :cond_15

    .line 276
    .line 277
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 278
    .line 279
    const-string v1, "cmd_set_room_close_p3_position"

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-nez v0, :cond_15

    .line 286
    .line 287
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 288
    .line 289
    const-string v1, "cmd_set_room_close_p4_position"

    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-nez v0, :cond_15

    .line 296
    .line 297
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 298
    .line 299
    const-string v1, "cmd_kick_out_room_position"

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-nez v0, :cond_15

    .line 306
    .line 307
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 308
    .line 309
    const-string v1, "push_update_room"

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-nez v0, :cond_15

    .line 316
    .line 317
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 318
    .line 319
    const-string v1, "cmd_player_ready_game"

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-nez v0, :cond_15

    .line 326
    .line 327
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 328
    .line 329
    const-string v1, "cmd_spectator_sit"

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    if-eqz v0, :cond_d

    .line 336
    .line 337
    goto/16 :goto_4

    .line 338
    .line 339
    :cond_d
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 340
    .line 341
    const-string v1, "push_dissolve_room"

    .line 342
    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-eqz v0, :cond_e

    .line 348
    .line 349
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 350
    .line 351
    const-string v0, "\u623f\u95f4\u5df2\u7ecf\u88ab\u89e3\u6563"

    .line 352
    .line 353
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showToast(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 357
    .line 358
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->cancelCountDowner()V

    .line 359
    .line 360
    .line 361
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 362
    .line 363
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->finishActivity()V

    .line 364
    .line 365
    .line 366
    return-void

    .line 367
    :cond_e
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 368
    .line 369
    const-string v1, "push_kick_room"

    .line 370
    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_f

    .line 376
    .line 377
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 378
    .line 379
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->cancelCountDowner()V

    .line 380
    .line 381
    .line 382
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 383
    .line 384
    const-string v0, "\u4f60\u5df2\u88ab\u8e22\u51fa\u623f\u95f4"

    .line 385
    .line 386
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->showKickInfoDialog(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    return-void

    .line 390
    :cond_f
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 391
    .line 392
    const-string v1, "push_start_game_room_broadcast"

    .line 393
    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-nez v0, :cond_11

    .line 399
    .line 400
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 401
    .line 402
    const-string v1, "cmd_lobby_start_game"

    .line 403
    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-eqz v0, :cond_10

    .line 409
    .line 410
    goto :goto_1

    .line 411
    :cond_10
    :goto_0
    return-void

    .line 412
    :cond_11
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 413
    .line 414
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomActivity;->cancelCountDowner()V

    .line 415
    .line 416
    .line 417
    iget-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->a:Z

    .line 418
    .line 419
    if-nez v0, :cond_14

    .line 420
    .line 421
    const/4 v0, 0x1

    .line 422
    iput-boolean v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->a:Z

    .line 423
    .line 424
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 425
    .line 426
    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 427
    .line 428
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 429
    .line 430
    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$300(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    sget-object v2, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    .line 435
    .line 436
    if-ne v1, v2, :cond_12

    .line 437
    .line 438
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 439
    .line 440
    const/4 v1, 0x0

    .line 441
    iput v1, v0, Lcom/join/mgps/activity/arena/GameRoomActivity;->position:I

    .line 442
    .line 443
    goto :goto_2

    .line 444
    :cond_12
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 445
    .line 446
    iget v2, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->position:I

    .line 447
    .line 448
    const/4 v3, -0x1

    .line 449
    if-ne v2, v3, :cond_13

    .line 450
    .line 451
    iput v0, v1, Lcom/join/mgps/activity/arena/GameRoomActivity;->position:I

    .line 452
    .line 453
    :cond_13
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 454
    .line 455
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    sget-object v1, Lcom/papa/sim/statistic/Event;->PlayLobbyroom:Lcom/papa/sim/statistic/Event;

    .line 460
    .line 461
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 462
    .line 463
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 464
    .line 465
    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    iget-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 472
    .line 473
    iget-object v4, v4, Lcom/join/mgps/activity/arena/GameRoomActivity;->mGameRoom:Lcom/papa91/battle/protocol/GameRoom;

    .line 474
    .line 475
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 476
    .line 477
    .line 478
    move-result-wide v4

    .line 479
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    const-string v4, ""

    .line 483
    .line 484
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 496
    .line 497
    invoke-static {v3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 506
    .line 507
    .line 508
    move-result v3

    .line 509
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .line 517
    .line 518
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 519
    .line 520
    iget v5, v5, Lcom/join/mgps/activity/arena/GameRoomActivity;->position:I

    .line 521
    .line 522
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 537
    .line 538
    .line 539
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 540
    .line 541
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    invoke-static {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->access$400(Lcom/join/mgps/activity/arena/GameRoomActivity;Lcom/papa91/battle/protocol/BattleServerAddr;)V

    .line 546
    .line 547
    .line 548
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 549
    .line 550
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->hideLoadingDialog()V

    .line 551
    .line 552
    .line 553
    goto :goto_3

    .line 554
    :cond_14
    const-string p1, "GameRoomActivity"

    .line 555
    .line 556
    const-string v0, "the game have been started ,do not start again!"

    .line 557
    .line 558
    invoke-static {p1, v0}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    :goto_3
    return-void

    .line 562
    :cond_15
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$r;->b:Lcom/join/mgps/activity/arena/GameRoomActivity;

    .line 563
    .line 564
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 565
    .line 566
    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 567
    .line 568
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->updateRoom(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 569
    .line 570
    .line 571
    return-void
.end method
