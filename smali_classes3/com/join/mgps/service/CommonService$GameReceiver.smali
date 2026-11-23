.class Lcom/join/mgps/service/CommonService$GameReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/CommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GameReceiver"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field final synthetic i:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;)V
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
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$GameReceiver;->i:Lcom/join/mgps/service/CommonService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "com.join.android.app.mgsim.wufun.broadcast"

    .line 7
    .line 8
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$GameReceiver;->a:Ljava/lang/String;

    .line 9
    .line 10
    const-string p1, "com.join.android.app.mgsim.wufun.broadcast.acceptInvitePlay"

    .line 11
    .line 12
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$GameReceiver;->b:Ljava/lang/String;

    .line 13
    .line 14
    const-string p1, "com.join.android.app.mgsim.wufun.broadcast.setOnlineState"

    .line 15
    .line 16
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$GameReceiver;->c:Ljava/lang/String;

    .line 17
    .line 18
    const-string p1, "com.join.android.app.mgsim.wufun.broadcast.getOnlineState"

    .line 19
    .line 20
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$GameReceiver;->d:Ljava/lang/String;

    .line 21
    .line 22
    const-string p1, "com.join.android.app.mgsim.wufun.broadcast.gamePlay"

    .line 23
    .line 24
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$GameReceiver;->e:Ljava/lang/String;

    .line 25
    .line 26
    const-string p1, "com.join.android.app.mgsim.wufun.broadcast.addFriends"

    .line 27
    .line 28
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$GameReceiver;->f:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "com.join.android.app.mgsim.wufun.broadcast.friendsApplication"

    .line 31
    .line 32
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$GameReceiver;->g:Ljava/lang/String;

    .line 33
    .line 34
    const-string p1, "com.join.android.app.mgsim.wufun.broadcast.receiveInvitation"

    .line 35
    .line 36
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$GameReceiver;->h:Ljava/lang/String;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    const-string v2, "uid"

    .line 6
    .line 7
    const-string v3, "roomId"

    .line 8
    .line 9
    const-string v4, "gameId"

    .line 10
    .line 11
    :try_start_0
    const-string v5, "packageName"

    .line 12
    .line 13
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-nez v6, :cond_19

    .line 22
    .line 23
    iget-object v6, v1, Lcom/join/mgps/service/CommonService$GameReceiver;->i:Lcom/join/mgps/service/CommonService;

    .line 24
    .line 25
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_19

    .line 34
    .line 35
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget-object v6, v1, Lcom/join/mgps/service/CommonService$GameReceiver;->d:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 45
    const-string v7, "state"

    .line 46
    .line 47
    if-eqz v6, :cond_0

    .line 48
    .line 49
    :try_start_1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->A()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    new-instance v2, Landroid/content/Intent;

    .line 58
    .line 59
    const-string v3, "com.join.android.app.mgsim.wufun.broadcast.onOnlineState"

    .line 60
    .line 61
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    iget-object v0, v1, Lcom/join/mgps/service/CommonService$GameReceiver;->i:Lcom/join/mgps/service/CommonService;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_9

    .line 73
    .line 74
    :cond_0
    iget-object v6, v1, Lcom/join/mgps/service/CommonService$GameReceiver;->c:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    const/4 v8, 0x0

    .line 81
    if-eqz v6, :cond_1

    .line 82
    .line 83
    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2, v0}, Lcom/wufan/friend/chat/c;->U(I)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_9

    .line 95
    .line 96
    :cond_1
    iget-object v6, v1, Lcom/join/mgps/service/CommonService$GameReceiver;->b:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 102
    const/4 v7, 0x2

    .line 103
    const-string v9, "0"

    .line 104
    .line 105
    const/4 v10, 0x1

    .line 106
    const-string v11, ""

    .line 107
    .line 108
    const-string v12, "1"

    .line 109
    .line 110
    if-eqz v6, :cond_e

    .line 111
    .line 112
    :try_start_2
    const-string v2, "accept"

    .line 113
    .line 114
    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->s()Lcom/join/mgps/dto/FriendInviteBean;

    .line 123
    .line 124
    .line 125
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 126
    if-eqz v3, :cond_2

    .line 127
    .line 128
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v4}, Lcom/wufan/friend/chat/c;->s()Lcom/join/mgps/dto/FriendInviteBean;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v4}, Lcom/join/mgps/dto/FriendInviteBean;->getGameId()J

    .line 142
    .line 143
    .line 144
    move-result-wide v4

    .line 145
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 155
    move-object v11, v0

    .line 156
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :cond_2
    :goto_0
    if-ne v2, v10, :cond_6

    .line 162
    .line 163
    new-instance v0, Lcom/join/mgps/event/w;

    .line 164
    .line 165
    const/4 v2, 0x7

    .line 166
    invoke-direct {v0, v2}, Lcom/join/mgps/event/w;-><init>(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v11}, Lcom/join/mgps/event/w;->n(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v2, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 180
    .line 181
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v12}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v11}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 188
    .line 189
    .line 190
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    if-eqz v2, :cond_3

    .line 199
    .line 200
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 205
    .line 206
    .line 207
    :cond_3
    if-eqz v3, :cond_5

    .line 208
    .line 209
    invoke-virtual {v3}, Lcom/join/mgps/dto/FriendInviteBean;->getSource()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-ne v2, v10, :cond_4

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_4
    move-object v9, v12

    .line 217
    :goto_1
    invoke-virtual {v0, v9}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 218
    .line 219
    .line 220
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    sget-object v3, Lcom/papa/sim/statistic/Event;->SuccessInvitation:Lcom/papa/sim/statistic/Event;

    .line 225
    .line 226
    invoke-virtual {v2, v3, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_9

    .line 230
    .line 231
    :cond_6
    if-ne v2, v7, :cond_a

    .line 232
    .line 233
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 234
    .line 235
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v12}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v11}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 242
    .line 243
    .line 244
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    if-eqz v2, :cond_7

    .line 253
    .line 254
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 259
    .line 260
    .line 261
    :cond_7
    if-eqz v3, :cond_9

    .line 262
    .line 263
    invoke-virtual {v3}, Lcom/join/mgps/dto/FriendInviteBean;->getSource()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-ne v2, v10, :cond_8

    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_8
    move-object v9, v12

    .line 271
    :goto_2
    invoke-virtual {v0, v9}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 272
    .line 273
    .line 274
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    sget-object v3, Lcom/papa/sim/statistic/Event;->OverdueInvitation:Lcom/papa/sim/statistic/Event;

    .line 279
    .line 280
    invoke-virtual {v2, v3, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 281
    .line 282
    .line 283
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->P()V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_9

    .line 291
    .line 292
    :cond_a
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 293
    .line 294
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v12}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v11}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 301
    .line 302
    .line 303
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    if-eqz v2, :cond_b

    .line 312
    .line 313
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 318
    .line 319
    .line 320
    :cond_b
    if-eqz v3, :cond_d

    .line 321
    .line 322
    invoke-virtual {v3}, Lcom/join/mgps/dto/FriendInviteBean;->getSource()I

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-ne v2, v10, :cond_c

    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_c
    move-object v9, v12

    .line 330
    :goto_3
    invoke-virtual {v0, v9}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 331
    .line 332
    .line 333
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    sget-object v3, Lcom/papa/sim/statistic/Event;->RefuseInvitation:Lcom/papa/sim/statistic/Event;

    .line 338
    .line 339
    invoke-virtual {v2, v3, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 340
    .line 341
    .line 342
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->P()V

    .line 347
    .line 348
    .line 349
    goto/16 :goto_9

    .line 350
    .line 351
    :cond_e
    iget-object v6, v1, Lcom/join/mgps/service/CommonService$GameReceiver;->e:Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 357
    const-string v13, "action"

    .line 358
    .line 359
    if-eqz v6, :cond_12

    .line 360
    .line 361
    :try_start_5
    invoke-virtual {v0, v13, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 362
    .line 363
    .line 364
    move-result v15

    .line 365
    const-string v5, "startMode"

    .line 366
    .line 367
    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 368
    .line 369
    .line 370
    move-result v5

    .line 371
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 376
    .line 377
    .line 378
    move-result v6

    .line 379
    if-nez v6, :cond_f

    .line 380
    .line 381
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 386
    .line 387
    .line 388
    move-result-wide v11

    .line 389
    goto :goto_4

    .line 390
    :cond_f
    const-wide/16 v11, 0x0

    .line 391
    .line 392
    :goto_4
    move-wide/from16 v17, v11

    .line 393
    .line 394
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    if-nez v4, :cond_10

    .line 403
    .line 404
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    move/from16 v19, v3

    .line 413
    .line 414
    goto :goto_5

    .line 415
    :cond_10
    const/16 v19, 0x0

    .line 416
    .line 417
    :goto_5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    if-nez v3, :cond_11

    .line 426
    .line 427
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    move/from16 v20, v0

    .line 436
    .line 437
    goto :goto_6

    .line 438
    :cond_11
    const/16 v20, 0x0

    .line 439
    .line 440
    :goto_6
    new-array v0, v7, [Ljava/lang/String;

    .line 441
    .line 442
    const-string v2, "channel"

    .line 443
    .line 444
    aput-object v2, v0, v8

    .line 445
    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .line 450
    .line 451
    const-string v3, "actionGamePlay startMode="

    .line 452
    .line 453
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    aput-object v2, v0, v10

    .line 464
    .line 465
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 469
    .line 470
    .line 471
    move-result-object v14

    .line 472
    move/from16 v16, v5

    .line 473
    .line 474
    invoke-virtual/range {v14 .. v20}, Lcom/wufan/friend/chat/c;->q(IIJII)V

    .line 475
    .line 476
    .line 477
    goto/16 :goto_9

    .line 478
    .line 479
    :cond_12
    iget-object v2, v1, Lcom/join/mgps/service/CommonService$GameReceiver;->f:Ljava/lang/String;

    .line 480
    .line 481
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    if-eqz v2, :cond_13

    .line 486
    .line 487
    const-string v2, "from"

    .line 488
    .line 489
    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 494
    .line 495
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 496
    .line 497
    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-virtual {v2, v0}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 514
    .line 515
    .line 516
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    sget-object v3, Lcom/papa/sim/statistic/Event;->addFriends:Lcom/papa/sim/statistic/Event;

    .line 521
    .line 522
    invoke-virtual {v0, v3, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 523
    .line 524
    .line 525
    goto/16 :goto_9

    .line 526
    .line 527
    :cond_13
    iget-object v2, v1, Lcom/join/mgps/service/CommonService$GameReceiver;->g:Ljava/lang/String;

    .line 528
    .line 529
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    if-eqz v2, :cond_14

    .line 534
    .line 535
    const/4 v2, -0x1

    .line 536
    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 537
    .line 538
    .line 539
    move-result v0

    .line 540
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 541
    .line 542
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 543
    .line 544
    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    .line 546
    .line 547
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    invoke-virtual {v2, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 561
    .line 562
    .line 563
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    sget-object v3, Lcom/papa/sim/statistic/Event;->Friendsapplication:Lcom/papa/sim/statistic/Event;

    .line 568
    .line 569
    invoke-virtual {v0, v3, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 570
    .line 571
    .line 572
    goto :goto_9

    .line 573
    :cond_14
    iget-object v0, v1, Lcom/join/mgps/service/CommonService$GameReceiver;->h:Ljava/lang/String;

    .line 574
    .line 575
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    if-eqz v0, :cond_1a

    .line 580
    .line 581
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->s()Lcom/join/mgps/dto/FriendInviteBean;

    .line 586
    .line 587
    .line 588
    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 589
    if-eqz v2, :cond_15

    .line 590
    .line 591
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 592
    .line 593
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 594
    .line 595
    .line 596
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 597
    .line 598
    .line 599
    move-result-object v3

    .line 600
    invoke-virtual {v3}, Lcom/wufan/friend/chat/c;->s()Lcom/join/mgps/dto/FriendInviteBean;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    invoke-virtual {v3}, Lcom/join/mgps/dto/FriendInviteBean;->getGameId()J

    .line 605
    .line 606
    .line 607
    move-result-wide v3

    .line 608
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 618
    move-object v11, v0

    .line 619
    goto :goto_7

    .line 620
    :catch_1
    move-exception v0

    .line 621
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 622
    .line 623
    .line 624
    :cond_15
    :goto_7
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 625
    .line 626
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v0, v12}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0, v11}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 633
    .line 634
    .line 635
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    if-eqz v3, :cond_16

    .line 644
    .line 645
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 646
    .line 647
    .line 648
    move-result v3

    .line 649
    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 650
    .line 651
    .line 652
    :cond_16
    if-eqz v2, :cond_18

    .line 653
    .line 654
    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendInviteBean;->getSource()I

    .line 655
    .line 656
    .line 657
    move-result v2

    .line 658
    if-ne v2, v10, :cond_17

    .line 659
    .line 660
    goto :goto_8

    .line 661
    :cond_17
    move-object v9, v12

    .line 662
    :goto_8
    invoke-virtual {v0, v9}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 663
    .line 664
    .line 665
    :cond_18
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    sget-object v3, Lcom/papa/sim/statistic/Event;->ReceiveInvitation:Lcom/papa/sim/statistic/Event;

    .line 670
    .line 671
    invoke-virtual {v2, v3, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 672
    .line 673
    .line 674
    goto :goto_9

    .line 675
    :cond_19
    return-void

    .line 676
    :catch_2
    move-exception v0

    .line 677
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 678
    .line 679
    .line 680
    :cond_1a
    :goto_9
    return-void
.end method
