.class Lcom/wufan/friend/chat/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapp/mgsim/arena/SocketListener$NotifyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wufan/friend/chat/c;


# direct methods
.method constructor <init>(Lcom/wufan/friend/chat/c;)V
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
    iput-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method a(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "roomId",
            "pwd"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/friend/chat/c;->c(Lcom/wufan/friend/chat/c;)Lcom/join/mgps/socket/fight/arena/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/wufan/friend/chat/c;->c(Lcom/wufan/friend/chat/c;)Lcom/join/mgps/socket/fight/arena/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "register_type_GameRoomActivity"

    .line 16
    .line 17
    invoke-static {v1, p1, p2}, Lapp/mgsim/arena/ArenaRequestFactory;->setRoomPassword(Ljava/lang/String;ILjava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onError(Lapp/mgsim/arena/SocketError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socketError"
        }
    .end annotation

    .line 1
    iget p1, p1, Lapp/mgsim/arena/SocketError;->errorType:I

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    if-eq p1, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x5

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/wufan/friend/chat/c;->d(Lcom/wufan/friend/chat/c;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const/4 v0, 0x3

    .line 20
    if-eq p1, v0, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    if-ne p1, v0, :cond_3

    .line 24
    .line 25
    :cond_2
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/wufan/friend/chat/c;->d(Lcom/wufan/friend/chat/c;)V

    .line 28
    .line 29
    .line 30
    :cond_3
    return-void

    .line 31
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/wufan/friend/chat/c;->d(Lcom/wufan/friend/chat/c;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->w()Lcom/join/mgps/dto/FriendBean;

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
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lcom/wufan/friend/chat/c;->V(Lcom/join/mgps/dto/FriendBean;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, "cmd_login"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    .line 41
    .line 42
    if-eqz p1, :cond_d

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getAction()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "invite"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 57
    .line 58
    iget-object v0, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/wufan/friend/chat/c;->o(Lcom/join/mgps/dto/FriendBean;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_2
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getAction()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v0, "join"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_d

    .line 80
    .line 81
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 82
    .line 83
    iget-object v0, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/wufan/friend/chat/c;->p(Lcom/join/mgps/dto/FriendBean;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :cond_3
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 91
    .line 92
    const-string v2, "cmd_create_game_room"

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const-string v3, "cmd_join_room"

    .line 99
    .line 100
    if-nez v0, :cond_4

    .line 101
    .line 102
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_d

    .line 109
    .line 110
    :cond_4
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    .line 113
    .line 114
    iget-object v4, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 115
    .line 116
    invoke-static {v4}, Lcom/wufan/friend/chat/c;->c(Lcom/wufan/friend/chat/c;)Lcom/join/mgps/socket/fight/arena/b;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    if-eqz v4, :cond_5

    .line 121
    .line 122
    iget-object v4, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 123
    .line 124
    invoke-static {v4}, Lcom/wufan/friend/chat/c;->c(Lcom/wufan/friend/chat/c;)Lcom/join/mgps/socket/fight/arena/b;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v4}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    if-eqz v4, :cond_5

    .line 133
    .line 134
    iget-object v4, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 135
    .line 136
    invoke-static {v4}, Lcom/wufan/friend/chat/c;->c(Lcom/wufan/friend/chat/c;)Lcom/join/mgps/socket/fight/arena/b;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v4}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v4, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->E(Lapp/mgsim/arena/ArenaResponse;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    iget-object v4, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    const/4 v4, 0x3

    .line 154
    const/4 v5, 0x1

    .line 155
    const/4 v6, 0x2

    .line 156
    if-eqz v2, :cond_9

    .line 157
    .line 158
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 159
    .line 160
    iget-object p1, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    .line 161
    .line 162
    if-eqz p1, :cond_7

    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getSource()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-ne p1, v5, :cond_6

    .line 169
    .line 170
    const/4 v4, 0x2

    .line 171
    goto :goto_0

    .line 172
    :cond_6
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 173
    .line 174
    iget-object p1, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getSource()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-ne p1, v6, :cond_7

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_7
    const/4 v4, -0x1

    .line 184
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 190
    .line 191
    .line 192
    move-result-wide v2

    .line 193
    const-wide/high16 v7, 0x4022000000000000L    # 9.0

    .line 194
    .line 195
    mul-double v2, v2, v7

    .line 196
    .line 197
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 198
    .line 199
    add-double/2addr v2, v7

    .line 200
    const-wide v7, 0x408f400000000000L    # 1000.0

    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    mul-double v2, v2, v7

    .line 206
    .line 207
    double-to-int v2, v2

    .line 208
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v2, ""

    .line 212
    .line 213
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/wufan/friend/chat/c;->getContext()Landroid/content/Context;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    const-string v2, "friend_invite"

    .line 243
    .line 244
    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->c(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {p1, v4}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->k(I)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {p1, v10}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->j(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    const/high16 v2, 0x20000000

    .line 257
    .line 258
    invoke-virtual {p1, v2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    check-cast p1, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 263
    .line 264
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    invoke-virtual {p0, p1, v10}, Lcom/wufan/friend/chat/c$c;->a(ILjava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 275
    .line 276
    iget-object p1, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    .line 277
    .line 278
    if-eqz p1, :cond_8

    .line 279
    .line 280
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 285
    .line 286
    iget-object p1, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    .line 287
    .line 288
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    .line 289
    .line 290
    .line 291
    move-result v8

    .line 292
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 297
    .line 298
    .line 299
    move-result v11

    .line 300
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 301
    .line 302
    .line 303
    move-result-wide v12

    .line 304
    invoke-virtual/range {v7 .. v13}, Lcom/wufan/friend/chat/c;->n(IILjava/lang/String;ZJ)V

    .line 305
    .line 306
    .line 307
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 308
    .line 309
    iget-object v0, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    .line 310
    .line 311
    invoke-virtual {p1, v0}, Lcom/wufan/friend/chat/c;->e(Lcom/join/mgps/dto/FriendBean;)V

    .line 312
    .line 313
    .line 314
    :cond_8
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    new-instance v0, Lcom/join/mgps/event/w;

    .line 319
    .line 320
    invoke-direct {v0, v6}, Lcom/join/mgps/event/w;-><init>(I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    goto :goto_2

    .line 327
    :cond_9
    iget-object v2, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 328
    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    if-eqz v2, :cond_c

    .line 334
    .line 335
    if-eqz v0, :cond_c

    .line 336
    .line 337
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    if-eqz v2, :cond_b

    .line 342
    .line 343
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    sget-object v3, Lcom/papa91/battle/protocol/RoomCategory;->LIVE:Lcom/papa91/battle/protocol/RoomCategory;

    .line 348
    .line 349
    if-ne v2, v3, :cond_a

    .line 350
    .line 351
    const/4 v5, 0x2

    .line 352
    goto :goto_1

    .line 353
    :cond_a
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    sget-object v3, Lcom/papa91/battle/protocol/RoomCategory;->TOURNAMENT:Lcom/papa91/battle/protocol/RoomCategory;

    .line 358
    .line 359
    if-ne v2, v3, :cond_b

    .line 360
    .line 361
    goto :goto_1

    .line 362
    :cond_b
    const/4 v5, 0x0

    .line 363
    :goto_1
    new-instance v2, Lcom/join/mgps/event/w;

    .line 364
    .line 365
    invoke-direct {v2, v4}, Lcom/join/mgps/event/w;-><init>(I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    invoke-virtual {v2, v3}, Lcom/join/mgps/event/w;->r(I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v5}, Lcom/join/mgps/event/w;->s(I)V

    .line 376
    .line 377
    .line 378
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->joinSpectatorReason:Ljava/lang/String;

    .line 379
    .line 380
    invoke-virtual {v2, p1}, Lcom/join/mgps/event/w;->q(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v0}, Lcom/join/mgps/event/w;->o(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 384
    .line 385
    .line 386
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 387
    .line 388
    iget-object p1, p1, Lcom/wufan/friend/chat/c;->h:Lcom/join/mgps/dto/FriendBean;

    .line 389
    .line 390
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getSource()I

    .line 391
    .line 392
    .line 393
    move-result p1

    .line 394
    invoke-virtual {v2, p1}, Lcom/join/mgps/event/w;->t(I)V

    .line 395
    .line 396
    .line 397
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/wufan/friend/chat/c$c;->a:Lcom/wufan/friend/chat/c;

    .line 405
    .line 406
    invoke-virtual {p1, v1}, Lcom/wufan/friend/chat/c;->V(Lcom/join/mgps/dto/FriendBean;)V

    .line 407
    .line 408
    .line 409
    :cond_d
    :goto_3
    return-void
.end method
