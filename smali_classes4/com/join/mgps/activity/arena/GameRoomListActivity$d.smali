.class Lcom/join/mgps/activity/arena/GameRoomListActivity$d;
.super Landroid/os/Handler;
.source "SourceFile"


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
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$2310(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$2300(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const-string v0, ""

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-ge p1, v1, :cond_5

    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->dismissFastJoinRoomDialog()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1200(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$600(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1200(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 57
    .line 58
    invoke-static {v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$600(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {p1, v2}, Lcom/join/mgps/fragment/roomlist/c;->r0(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$600(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 98
    .line 99
    .line 100
    move-result-wide v2

    .line 101
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 125
    .line 126
    invoke-static {v1}, Lcom/join/mgps/dialog/PlugInstallDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const/4 v0, 0x2

    .line 139
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 148
    .line 149
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1200(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 162
    .line 163
    invoke-static {v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$600(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 168
    .line 169
    .line 170
    move-result-wide v3

    .line 171
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {p1, v2}, Lcom/join/mgps/fragment/roomlist/c;->e0(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-eqz p1, :cond_2

    .line 183
    .line 184
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 185
    .line 186
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->context:Landroid/content/Context;

    .line 187
    .line 188
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    sget-object v2, Lcom/papa/sim/statistic/Event;->JoinLobbyroom:Lcom/papa/sim/statistic/Event;

    .line 193
    .line 194
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 195
    .line 196
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 197
    .line 198
    .line 199
    iget-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 200
    .line 201
    iget-object v4, v4, Lcom/join/mgps/activity/arena/GameRoomListActivity;->context:Landroid/content/Context;

    .line 202
    .line 203
    invoke-static {v4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    iget-object v5, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 225
    .line 226
    invoke-static {v5}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$600(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 231
    .line 232
    .line 233
    move-result-wide v5

    .line 234
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v3, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const-string v3, "1"

    .line 249
    .line 250
    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {p1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 258
    .line 259
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->g(Z)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 268
    .line 269
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$500(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->h(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 278
    .line 279
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$600(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 292
    .line 293
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$600(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;->i(Lcom/papa91/battle/protocol/GameRoom;)Lcom/join/mgps/activity/arena/GameRoomActivity_$a0;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 302
    .line 303
    .line 304
    goto :goto_0

    .line 305
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 306
    .line 307
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$1200(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/join/mgps/fragment/roomlist/d;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 320
    .line 321
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$600(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Lcom/papa91/battle/protocol/GameRoom;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 326
    .line 327
    .line 328
    move-result-wide v2

    .line 329
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    const/16 v1, 0x3f7

    .line 337
    .line 338
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/fragment/roomlist/c;->M0(Ljava/lang/String;I)V

    .line 339
    .line 340
    .line 341
    goto :goto_0

    .line 342
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 343
    .line 344
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$2400(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    if-nez p1, :cond_4

    .line 353
    .line 354
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 355
    .line 356
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$2400(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    goto :goto_0

    .line 364
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 365
    .line 366
    const-string v0, "\u5feb\u901f\u52a0\u5165\u623f\u95f4\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    .line 367
    .line 368
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->showToast(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    goto :goto_0

    .line 372
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 373
    .line 374
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$2500(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Landroid/widget/TextView;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 387
    .line 388
    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$2300(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    .line 401
    .line 402
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 403
    .line 404
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$2600(Lcom/join/mgps/activity/arena/GameRoomListActivity;)Landroid/os/Handler;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    const-wide/16 v2, 0x3e8

    .line 409
    .line 410
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 411
    .line 412
    .line 413
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$d;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 414
    .line 415
    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->access$2700(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V

    .line 416
    .line 417
    .line 418
    :goto_0
    return-void
.end method
