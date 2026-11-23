.class Lcom/join/mgps/activity/FullShareWebActivity$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapp/mgsim/arena/SocketListener$NotifyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/FullShareWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/FullShareWebActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FullShareWebActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/FullShareWebActivity$n;Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/FullShareWebActivity$n;->b(Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    return-void
.end method

.method private synthetic b(Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/FullShareWebActivity;->access$000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2600(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v1, v2}, Lcom/join/mgps/socket/fight/arena/c;->i(Lcom/papa91/battle/protocol/BattleArea;Z)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v0, p1, p2, v2, v1}, Lcom/join/mgps/Util/UtilsMy;->g4(Landroid/content/Context;Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
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
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/FullShareWebActivity;->myError(Lapp/mgsim/arena/SocketError;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->request:Lapp/mgsim/arena/ArenaRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v0, v0, Lapp/mgsim/arena/ArenaRequest;->register_type:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "register_type_NewArenaMainFragment"

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const-string v1, "register_type_public"

    .line 12
    .line 13
    if-ne v0, v1, :cond_8

    .line 14
    .line 15
    :cond_0
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseCode:I

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/FullShareWebActivity;->handleFailure(Lapp/mgsim/arena/ArenaResponse;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "cmd_login"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$1900(Lcom/join/mgps/activity/FullShareWebActivity;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_8

    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$1900(Lcom/join/mgps/activity/FullShareWebActivity;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/FullShareWebActivity;->doSearchRoomCmd(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_2
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 59
    .line 60
    const-string v1, "cmd_search_room_by_id"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/FullShareWebActivity;->handleSearchRoomResponse(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :cond_3
    iget-object v0, p1, Lapp/mgsim/arena/ArenaResponse;->responseType:Ljava/lang/String;

    .line 80
    .line 81
    const-string v1, "cmd_join_room"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_8

    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/join/mgps/activity/FullShareWebActivity;->cancelRegisterObserver()V

    .line 92
    .line 93
    .line 94
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->data:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2000(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const/4 v1, 0x0

    .line 109
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->E(Lapp/mgsim/arena/ArenaResponse;)V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v2, ""

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 127
    .line 128
    .line 129
    move-result-wide v3

    .line 130
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/join/mgps/activity/FullShareWebActivity;->dismissLoadingDialog()V

    .line 144
    .line 145
    .line 146
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 147
    .line 148
    invoke-static {v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2100(Lcom/join/mgps/activity/FullShareWebActivity;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 152
    .line 153
    invoke-static {v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2200(Lcom/join/mgps/activity/FullShareWebActivity;)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    iget-object v3, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 158
    .line 159
    invoke-static {v3}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2300(Lcom/join/mgps/activity/FullShareWebActivity;)I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    add-int/2addr v1, v3

    .line 164
    iget-object v3, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 165
    .line 166
    invoke-static {v3}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2400(Lcom/join/mgps/activity/FullShareWebActivity;)I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    add-int/2addr v1, v3

    .line 171
    iget-object v3, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 172
    .line 173
    invoke-static {v3}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2500(Lcom/join/mgps/activity/FullShareWebActivity;)I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    add-int/2addr v1, v3

    .line 178
    new-instance v3, Lcom/join/mgps/dto/NetBattleStartGameDto;

    .line 179
    .line 180
    invoke-direct {v3}, Lcom/join/mgps/dto/NetBattleStartGameDto;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    iget-object v5, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 189
    .line 190
    invoke-static {v5}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2600(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 195
    .line 196
    .line 197
    move-result-wide v5

    .line 198
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setGameID(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/BattleServerAddr;->getBattleRoomId()J

    .line 221
    .line 222
    .line 223
    move-result-wide v5

    .line 224
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setRoomID(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    iget-object v5, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 243
    .line 244
    invoke-static {v5}, Lcom/join/mgps/activity/FullShareWebActivity;->access$1100(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setUserID(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/BattleServerAddr;->getHost()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setServerIP(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/BattleServerAddr;->getPort()I

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setServerPort(I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    sget-object v5, Lcom/papa91/battle/protocol/RoomCategory;->LIVE:Lcom/papa91/battle/protocol/RoomCategory;

    .line 292
    .line 293
    if-ne v4, v5, :cond_4

    .line 294
    .line 295
    const/4 p1, 0x3

    .line 296
    goto :goto_0

    .line 297
    :cond_4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    sget-object v4, Lcom/papa91/battle/protocol/RoomCategory;->TOURNAMENT:Lcom/papa91/battle/protocol/RoomCategory;

    .line 302
    .line 303
    if-ne p1, v4, :cond_5

    .line 304
    .line 305
    const/4 p1, 0x2

    .line 306
    goto :goto_0

    .line 307
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 308
    .line 309
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2600(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    :goto_0
    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setRoomMode(I)V

    .line 318
    .line 319
    .line 320
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 321
    .line 322
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2600(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPeripheralJoin()Z

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setAllowPeripheralJoin(Z)V

    .line 331
    .line 332
    .line 333
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 334
    .line 335
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2600(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPCJoin()Z

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setAllowPCJoin(Z)V

    .line 344
    .line 345
    .line 346
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 347
    .line 348
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2600(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameType()Lcom/papa91/battle/protocol/GameRoom$GameType;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom$GameType;->getNumber()I

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setGameype(I)V

    .line 361
    .line 362
    .line 363
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 364
    .line 365
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2600(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setGroupId(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setP1Name(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setP2Name(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    const/4 p1, 0x0

    .line 383
    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setOldGame(I)V

    .line 384
    .line 385
    .line 386
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 387
    .line 388
    invoke-static {v2}, Lcom/join/mgps/activity/FullShareWebActivity;->access$1100(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setUserName(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 400
    .line 401
    invoke-static {v2}, Lcom/join/mgps/activity/FullShareWebActivity;->access$1100(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setUserIcon(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 413
    .line 414
    invoke-static {v2}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2600(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getSeatsNumber()I

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setGamePlayers(I)V

    .line 423
    .line 424
    .line 425
    const/4 v2, 0x1

    .line 426
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setTcptype(I)V

    .line 427
    .line 428
    .line 429
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 430
    .line 431
    invoke-static {v2}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2700(Lcom/join/mgps/activity/FullShareWebActivity;)I

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setPorder(I)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setNetPlayers(I)V

    .line 439
    .line 440
    .line 441
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 442
    .line 443
    invoke-static {v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2600(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    if-nez v1, :cond_6

    .line 452
    .line 453
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 454
    .line 455
    invoke-static {v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2600(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getOpenBattleScore()Z

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setOpenBattleScore(Z)V

    .line 464
    .line 465
    .line 466
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    const-string v2, ">>>>>>>>>>>>>>>>>>>tbl>>>>>>>>>>>>>>>>>>>>>>join game!!!!!! "

    .line 472
    .line 473
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v3}, Lcom/join/mgps/dto/NetBattleStartGameDto;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 484
    .line 485
    invoke-static {v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2000(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/join/mgps/socket/fight/arena/b;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 490
    .line 491
    invoke-static {v2}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2600(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 496
    .line 497
    .line 498
    move-result v2

    .line 499
    const-string v4, "register_type_GameRoomActivity"

    .line 500
    .line 501
    invoke-static {v4, v2}, Lapp/mgsim/arena/ArenaRequestFactory;->startLobbyGame(Ljava/lang/String;I)Lapp/mgsim/arena/ArenaRequest;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    invoke-virtual {v1, v2}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 506
    .line 507
    .line 508
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 509
    .line 510
    invoke-static {v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2600(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    if-eqz v1, :cond_7

    .line 515
    .line 516
    iget-object v1, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 517
    .line 518
    invoke-static {v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2600(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    if-eqz v1, :cond_7

    .line 527
    .line 528
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    iget-object v2, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 533
    .line 534
    invoke-static {v2}, Lcom/join/mgps/activity/FullShareWebActivity;->access$2600(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    int-to-long v4, v2

    .line 543
    invoke-virtual {v1, p1, v4, v5}, Lcom/wufan/friend/chat/c;->i(IJ)V

    .line 544
    .line 545
    .line 546
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$n;->a:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 547
    .line 548
    new-instance v1, Lcom/join/mgps/activity/r1;

    .line 549
    .line 550
    invoke-direct {v1, p0, v3, v0}, Lcom/join/mgps/activity/r1;-><init>(Lcom/join/mgps/activity/FullShareWebActivity$n;Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 554
    .line 555
    .line 556
    :cond_8
    :goto_1
    return-void
.end method
