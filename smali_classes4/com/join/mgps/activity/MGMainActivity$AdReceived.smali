.class Lcom/join/mgps/activity/MGMainActivity$AdReceived;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MGMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdReceived"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
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
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "lastTime"

    .line 8
    .line 9
    const-string v4, "action"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const-class v6, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;

    .line 17
    .line 18
    const-string v7, "url"

    .line 19
    .line 20
    const-string v8, "adSdkType"

    .line 21
    .line 22
    const-string v10, "adAction"

    .line 23
    .line 24
    const-string v11, "com.emu.ad.result"

    .line 25
    .line 26
    const-string v13, "adCount"

    .line 27
    .line 28
    const-string v14, "gameId"

    .line 29
    .line 30
    const-string v15, "howTimes"

    .line 31
    .line 32
    const/4 v12, 0x2

    .line 33
    const/4 v9, 0x1

    .line 34
    if-nez v4, :cond_d

    .line 35
    .line 36
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    const-string v2, "\u8bf7\u8054\u7f51\u540e\u91cd\u8bd5\uff01"

    .line 45
    .line 46
    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 51
    .line 52
    .line 53
    new-instance v0, Landroid/content/Intent;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    const/16 v2, 0x8

    .line 62
    .line 63
    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_0
    iget-object v0, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isShowVideo()Lorg/androidannotations/api/sharedpreferences/d;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-virtual {v2, v15, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-virtual {v2, v13, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-nez v0, :cond_1

    .line 107
    .line 108
    sget-object v0, Lcom/MApplication;->f1:Lcom/join/mgps/dto/PublicVideoCfgBean;

    .line 109
    .line 110
    if-eqz v0, :cond_1

    .line 111
    .line 112
    iget-object v0, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isShowVideo()Lorg/androidannotations/api/sharedpreferences/d;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-virtual {v0, v6}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    new-instance v0, Landroid/content/Intent;

    .line 126
    .line 127
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    const/16 v6, 0x62

    .line 134
    .line 135
    invoke-virtual {v0, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    sget-object v6, Lcom/MApplication;->f1:Lcom/join/mgps/dto/PublicVideoCfgBean;

    .line 139
    .line 140
    invoke-virtual {v6}, Lcom/join/mgps/dto/PublicVideoCfgBean;->getV_switch()I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    const-string v9, "V_switch"

    .line 145
    .line 146
    invoke-virtual {v0, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    sget-object v6, Lcom/MApplication;->f1:Lcom/join/mgps/dto/PublicVideoCfgBean;

    .line 150
    .line 151
    invoke-virtual {v6}, Lcom/join/mgps/dto/PublicVideoCfgBean;->getUrl()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    sget-object v6, Lcom/MApplication;->f1:Lcom/join/mgps/dto/PublicVideoCfgBean;

    .line 159
    .line 160
    invoke-virtual {v6}, Lcom/join/mgps/dto/PublicVideoCfgBean;->getTimes()I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    const-string v7, "time"

    .line 165
    .line 166
    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    .line 180
    .line 181
    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 182
    .line 183
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_1
    iget-object v0, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 188
    .line 189
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 190
    .line 191
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->arcadeGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    if-eqz v7, :cond_c

    .line 206
    .line 207
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    invoke-virtual {v7, v0, v6}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;

    .line 216
    .line 217
    if-eqz v0, :cond_c

    .line 218
    .line 219
    if-nez v4, :cond_2

    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getPlay_cfg()Lcom/join/mgps/dto/PlayCfgV2Bean;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgV2Bean;->getFirst_random_list()Ljava/util/ArrayList;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    if-nez v6, :cond_3

    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getPlay_cfg()Lcom/join/mgps/dto/PlayCfgV2Bean;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgV2Bean;->getSecond_fixed_list()Ljava/util/ArrayList;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getPlay_cfg()Lcom/join/mgps/dto/PlayCfgV2Bean;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgV2Bean;->getSecond_fixed_list()Ljava/util/ArrayList;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 249
    .line 250
    invoke-static {v0, v6, v5}, Lcom/join/mgps/activity/MGMainActivity;->access$1700(Lcom/join/mgps/activity/MGMainActivity;Ljava/util/List;I)Lcom/join/mgps/dto/PlayCfgBean;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    if-eqz v0, :cond_c

    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-ne v5, v9, :cond_5

    .line 261
    .line 262
    iget-object v5, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 263
    .line 264
    iget-object v6, v5, Lcom/join/mgps/activity/MGMainActivity;->ttAdVideo:Lcom/join/mgps/ad/a0;

    .line 265
    .line 266
    if-nez v6, :cond_4

    .line 267
    .line 268
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v5, v2, v0, v9}, Lcom/join/mgps/activity/MGMainActivity;->initTTAd(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_1

    .line 280
    .line 281
    :cond_4
    invoke-virtual {v6, v5, v2, v3, v4}, Lcom/join/mgps/ad/d;->r(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_1

    .line 285
    .line 286
    :cond_5
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    if-ne v5, v12, :cond_7

    .line 291
    .line 292
    iget-object v5, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 293
    .line 294
    iget-object v6, v5, Lcom/join/mgps/activity/MGMainActivity;->gdtAdVideo:Lcom/join/mgps/ad/h;

    .line 295
    .line 296
    if-nez v6, :cond_6

    .line 297
    .line 298
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v17

    .line 302
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v18

    .line 306
    const/16 v22, 0x1

    .line 307
    .line 308
    move-object/from16 v16, v5

    .line 309
    .line 310
    move-object/from16 v19, v2

    .line 311
    .line 312
    move/from16 v20, v3

    .line 313
    .line 314
    move/from16 v21, v4

    .line 315
    .line 316
    invoke-virtual/range {v16 .. v22}, Lcom/join/mgps/activity/MGMainActivity;->initGDTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 317
    .line 318
    .line 319
    goto :goto_1

    .line 320
    :cond_6
    invoke-virtual {v6, v5, v2, v3, v4}, Lcom/join/mgps/ad/d;->r(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 321
    .line 322
    .line 323
    goto :goto_1

    .line 324
    :cond_7
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    const/4 v6, 0x4

    .line 329
    if-ne v5, v6, :cond_8

    .line 330
    .line 331
    goto :goto_1

    .line 332
    :cond_8
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    const/4 v6, 0x7

    .line 337
    if-ne v5, v6, :cond_a

    .line 338
    .line 339
    iget-object v5, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 340
    .line 341
    iget-object v6, v5, Lcom/join/mgps/activity/MGMainActivity;->groMAdVideo:Lcom/join/mgps/ad/l;

    .line 342
    .line 343
    if-nez v6, :cond_9

    .line 344
    .line 345
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v17

    .line 349
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v18

    .line 353
    const/16 v22, 0x1

    .line 354
    .line 355
    move-object/from16 v16, v5

    .line 356
    .line 357
    move-object/from16 v19, v2

    .line 358
    .line 359
    move/from16 v20, v3

    .line 360
    .line 361
    move/from16 v21, v4

    .line 362
    .line 363
    invoke-virtual/range {v16 .. v22}, Lcom/join/mgps/activity/MGMainActivity;->initGroMTTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 364
    .line 365
    .line 366
    goto :goto_1

    .line 367
    :cond_9
    invoke-virtual {v6, v5, v2, v3, v4}, Lcom/join/mgps/ad/d;->r(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 368
    .line 369
    .line 370
    goto :goto_1

    .line 371
    :cond_a
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    const/16 v6, 0x9

    .line 376
    .line 377
    if-ne v5, v6, :cond_c

    .line 378
    .line 379
    iget-object v5, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 380
    .line 381
    iget-object v6, v5, Lcom/join/mgps/activity/MGMainActivity;->reAdVideo:Lcom/join/mgps/ad/s;

    .line 382
    .line 383
    if-nez v6, :cond_b

    .line 384
    .line 385
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v17

    .line 389
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v18

    .line 393
    const/16 v22, 0x1

    .line 394
    .line 395
    move-object/from16 v16, v5

    .line 396
    .line 397
    move-object/from16 v19, v2

    .line 398
    .line 399
    move/from16 v20, v3

    .line 400
    .line 401
    move/from16 v21, v4

    .line 402
    .line 403
    invoke-virtual/range {v16 .. v22}, Lcom/join/mgps/activity/MGMainActivity;->initREAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 404
    .line 405
    .line 406
    goto :goto_1

    .line 407
    :cond_b
    invoke-virtual {v6, v5, v2, v3, v4}, Lcom/join/mgps/ad/d;->r(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 408
    .line 409
    .line 410
    :cond_c
    :goto_1
    iget-object v0, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 411
    .line 412
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    sget-object v2, Lcom/papa/sim/statistic/Event;->onAdvert31:Lcom/papa/sim/statistic/Event;

    .line 417
    .line 418
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 419
    .line 420
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 424
    .line 425
    .line 426
    goto/16 :goto_f

    .line 427
    .line 428
    :cond_d
    if-ne v4, v9, :cond_e

    .line 429
    .line 430
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    invoke-virtual {v2, v0}, Lcom/join/mgps/Util/IntentUtil;->goVip(Landroid/content/Context;)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_f

    .line 438
    .line 439
    :cond_e
    const-string v9, ""

    .line 440
    .line 441
    if-ne v4, v12, :cond_28

    .line 442
    .line 443
    const-string v4, "plugNum"

    .line 444
    .line 445
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    iget-object v4, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 453
    .line 454
    iget-object v4, v4, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 455
    .line 456
    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->arcadeGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    check-cast v4, Ljava/lang/String;

    .line 465
    .line 466
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 467
    .line 468
    .line 469
    move-result v7

    .line 470
    if-eqz v7, :cond_36

    .line 471
    .line 472
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    invoke-virtual {v7, v4, v6}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    check-cast v4, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;

    .line 481
    .line 482
    if-eqz v4, :cond_27

    .line 483
    .line 484
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getSwitch_state()I

    .line 485
    .line 486
    .line 487
    move-result v6

    .line 488
    const/4 v7, 0x1

    .line 489
    if-ne v6, v7, :cond_27

    .line 490
    .line 491
    new-instance v6, Lcom/papa91/wrapper/UserPrefs;

    .line 492
    .line 493
    invoke-direct {v6, v0}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 494
    .line 495
    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .line 500
    .line 501
    iget-object v7, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 502
    .line 503
    invoke-static {v7}, Lcom/join/mgps/activity/MGMainActivity;->access$1800(Lcom/join/mgps/activity/MGMainActivity;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 504
    .line 505
    .line 506
    move-result-object v7

    .line 507
    invoke-virtual {v7}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 508
    .line 509
    .line 510
    move-result v7

    .line 511
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    invoke-virtual {v6, v2, v0}, Lcom/papa91/wrapper/UserPrefs;->getFbaAdGamesConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 526
    .line 527
    .line 528
    move-result v7

    .line 529
    const-wide/16 v18, 0x0

    .line 530
    .line 531
    if-eqz v7, :cond_12

    .line 532
    .line 533
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    .line 534
    .line 535
    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    if-eqz v0, :cond_f

    .line 543
    .line 544
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 553
    .line 554
    .line 555
    move-result-wide v18

    .line 556
    goto :goto_2

    .line 557
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 558
    .line 559
    .line 560
    move-result-wide v18

    .line 561
    :goto_2
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-eqz v0, :cond_10

    .line 566
    .line 567
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 576
    .line 577
    .line 578
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 579
    move v3, v0

    .line 580
    goto :goto_3

    .line 581
    :cond_10
    const/4 v3, 0x0

    .line 582
    :goto_3
    :try_start_1
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 583
    .line 584
    .line 585
    move-result v0

    .line 586
    if-eqz v0, :cond_11

    .line 587
    .line 588
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 597
    .line 598
    .line 599
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 600
    goto :goto_5

    .line 601
    :catch_0
    move-exception v0

    .line 602
    goto :goto_4

    .line 603
    :catch_1
    move-exception v0

    .line 604
    const/4 v3, 0x0

    .line 605
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 606
    .line 607
    .line 608
    :cond_11
    const/4 v0, 0x0

    .line 609
    goto :goto_5

    .line 610
    :cond_12
    const/4 v0, 0x0

    .line 611
    const/4 v3, 0x0

    .line 612
    :goto_5
    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/e0;->z(J)Z

    .line 613
    .line 614
    .line 615
    move-result v7

    .line 616
    if-nez v7, :cond_13

    .line 617
    .line 618
    const/4 v0, 0x0

    .line 619
    const/4 v3, 0x0

    .line 620
    :cond_13
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getSwitch_state()I

    .line 621
    .line 622
    .line 623
    move-result v7

    .line 624
    const/4 v14, 0x1

    .line 625
    if-ne v7, v14, :cond_14

    .line 626
    .line 627
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getDaily_times()I

    .line 628
    .line 629
    .line 630
    move-result v7

    .line 631
    if-ge v0, v7, :cond_14

    .line 632
    .line 633
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getHow_times()I

    .line 634
    .line 635
    .line 636
    move-result v7

    .line 637
    sub-int/2addr v7, v14

    .line 638
    if-lt v3, v7, :cond_14

    .line 639
    .line 640
    iget-object v7, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 641
    .line 642
    invoke-static {v7}, Lcom/join/mgps/activity/MGMainActivity;->access$1800(Lcom/join/mgps/activity/MGMainActivity;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 643
    .line 644
    .line 645
    move-result-object v7

    .line 646
    invoke-static {v7}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 647
    .line 648
    .line 649
    move-result v7

    .line 650
    if-nez v7, :cond_14

    .line 651
    .line 652
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getHow_times()I

    .line 653
    .line 654
    .line 655
    move-result v7

    .line 656
    if-lez v7, :cond_14

    .line 657
    .line 658
    const/4 v7, 0x1

    .line 659
    goto :goto_6

    .line 660
    :cond_14
    const/4 v7, 0x0

    .line 661
    :goto_6
    iget-object v14, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 662
    .line 663
    invoke-static {v14}, Lcom/join/mgps/activity/MGMainActivity;->access$1900(Lcom/join/mgps/activity/MGMainActivity;)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    new-instance v14, Ljava/lang/StringBuilder;

    .line 667
    .line 668
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 669
    .line 670
    .line 671
    const-string v12, "onReceive: "

    .line 672
    .line 673
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    if-eqz v7, :cond_26

    .line 686
    .line 687
    const-string v7, "3051121204680401"

    .line 688
    .line 689
    if-nez v0, :cond_1d

    .line 690
    .line 691
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getPlay_cfg()Lcom/join/mgps/dto/PlayCfgV2Bean;

    .line 692
    .line 693
    .line 694
    move-result-object v12

    .line 695
    invoke-virtual {v12}, Lcom/join/mgps/dto/PlayCfgV2Bean;->getFirst_random_list()Ljava/util/ArrayList;

    .line 696
    .line 697
    .line 698
    move-result-object v12

    .line 699
    if-eqz v12, :cond_16

    .line 700
    .line 701
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 702
    .line 703
    .line 704
    move-result v14

    .line 705
    if-lez v14, :cond_16

    .line 706
    .line 707
    new-instance v14, Ljava/util/ArrayList;

    .line 708
    .line 709
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .line 711
    .line 712
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 713
    .line 714
    .line 715
    move-result-object v18

    .line 716
    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 717
    .line 718
    .line 719
    move-result v19

    .line 720
    if-eqz v19, :cond_15

    .line 721
    .line 722
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v19

    .line 726
    check-cast v19, Lcom/join/mgps/dto/PlayCfgBean;

    .line 727
    .line 728
    invoke-virtual/range {v19 .. v19}, Lcom/join/mgps/dto/PlayCfgBean;->getProbability()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v19

    .line 732
    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 733
    .line 734
    .line 735
    move-result-object v6

    .line 736
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    goto :goto_7

    .line 740
    :cond_15
    invoke-static {v14}, Lcom/join/mgps/ad/p;->b(Ljava/util/List;)I

    .line 741
    .line 742
    .line 743
    move-result v6

    .line 744
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 745
    .line 746
    .line 747
    move-result v14

    .line 748
    if-ge v6, v14, :cond_16

    .line 749
    .line 750
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v6

    .line 754
    check-cast v6, Lcom/join/mgps/dto/PlayCfgBean;

    .line 755
    .line 756
    goto :goto_8

    .line 757
    :cond_16
    const/4 v6, 0x0

    .line 758
    :goto_8
    if-eqz v6, :cond_1c

    .line 759
    .line 760
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v7

    .line 764
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 765
    .line 766
    .line 767
    move-result v12

    .line 768
    const/4 v14, 0x1

    .line 769
    if-ne v12, v14, :cond_17

    .line 770
    .line 771
    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 772
    .line 773
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v6

    .line 777
    invoke-virtual {v2, v6, v7, v5}, Lcom/join/mgps/activity/MGMainActivity;->initTTAd(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 778
    .line 779
    .line 780
    goto/16 :goto_9

    .line 781
    .line 782
    :cond_17
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 783
    .line 784
    .line 785
    move-result v5

    .line 786
    const/4 v12, 0x2

    .line 787
    if-ne v5, v12, :cond_18

    .line 788
    .line 789
    iget-object v5, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 790
    .line 791
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v19

    .line 795
    const/16 v24, 0x0

    .line 796
    .line 797
    move-object/from16 v18, v5

    .line 798
    .line 799
    move-object/from16 v20, v7

    .line 800
    .line 801
    move-object/from16 v21, v2

    .line 802
    .line 803
    move/from16 v22, v3

    .line 804
    .line 805
    move/from16 v23, v0

    .line 806
    .line 807
    invoke-virtual/range {v18 .. v24}, Lcom/join/mgps/activity/MGMainActivity;->initGDTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 808
    .line 809
    .line 810
    const/16 v16, 0x2

    .line 811
    .line 812
    goto :goto_a

    .line 813
    :cond_18
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 814
    .line 815
    .line 816
    move-result v5

    .line 817
    const/4 v12, 0x3

    .line 818
    if-ne v5, v12, :cond_19

    .line 819
    .line 820
    goto :goto_9

    .line 821
    :cond_19
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 822
    .line 823
    .line 824
    move-result v5

    .line 825
    const/4 v12, 0x4

    .line 826
    if-ne v5, v12, :cond_1a

    .line 827
    .line 828
    goto :goto_9

    .line 829
    :cond_1a
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 830
    .line 831
    .line 832
    move-result v5

    .line 833
    const/4 v12, 0x7

    .line 834
    if-ne v5, v12, :cond_1b

    .line 835
    .line 836
    iget-object v5, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 837
    .line 838
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v19

    .line 842
    const/16 v24, 0x0

    .line 843
    .line 844
    move-object/from16 v18, v5

    .line 845
    .line 846
    move-object/from16 v20, v7

    .line 847
    .line 848
    move-object/from16 v21, v2

    .line 849
    .line 850
    move/from16 v22, v3

    .line 851
    .line 852
    move/from16 v23, v0

    .line 853
    .line 854
    invoke-virtual/range {v18 .. v24}, Lcom/join/mgps/activity/MGMainActivity;->initGroMTTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 855
    .line 856
    .line 857
    const/16 v16, 0x7

    .line 858
    .line 859
    goto :goto_a

    .line 860
    :cond_1b
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 861
    .line 862
    .line 863
    move-result v5

    .line 864
    const/16 v12, 0x9

    .line 865
    .line 866
    if-ne v5, v12, :cond_1c

    .line 867
    .line 868
    iget-object v5, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 869
    .line 870
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v19

    .line 874
    const/16 v24, 0x0

    .line 875
    .line 876
    move-object/from16 v18, v5

    .line 877
    .line 878
    move-object/from16 v20, v7

    .line 879
    .line 880
    move-object/from16 v21, v2

    .line 881
    .line 882
    move/from16 v22, v3

    .line 883
    .line 884
    move/from16 v23, v0

    .line 885
    .line 886
    invoke-virtual/range {v18 .. v24}, Lcom/join/mgps/activity/MGMainActivity;->initREAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 887
    .line 888
    .line 889
    const/16 v16, 0x9

    .line 890
    .line 891
    goto :goto_a

    .line 892
    :cond_1c
    :goto_9
    const/16 v16, 0x1

    .line 893
    .line 894
    :goto_a
    move/from16 v2, v16

    .line 895
    .line 896
    goto/16 :goto_e

    .line 897
    .line 898
    :cond_1d
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getPlay_cfg()Lcom/join/mgps/dto/PlayCfgV2Bean;

    .line 899
    .line 900
    .line 901
    move-result-object v6

    .line 902
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgV2Bean;->getSecond_fixed_list()Ljava/util/ArrayList;

    .line 903
    .line 904
    .line 905
    move-result-object v6

    .line 906
    if-eqz v6, :cond_1f

    .line 907
    .line 908
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 909
    .line 910
    .line 911
    move-result v12

    .line 912
    if-lez v12, :cond_1f

    .line 913
    .line 914
    new-instance v12, Ljava/util/ArrayList;

    .line 915
    .line 916
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 917
    .line 918
    .line 919
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 920
    .line 921
    .line 922
    move-result-object v14

    .line 923
    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 924
    .line 925
    .line 926
    move-result v17

    .line 927
    if-eqz v17, :cond_1e

    .line 928
    .line 929
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    move-result-object v17

    .line 933
    check-cast v17, Lcom/join/mgps/dto/PlayCfgBean;

    .line 934
    .line 935
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/dto/PlayCfgBean;->getProbability()Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v17

    .line 939
    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 940
    .line 941
    .line 942
    move-result-object v5

    .line 943
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    .line 945
    .line 946
    const/4 v5, 0x0

    .line 947
    goto :goto_b

    .line 948
    :cond_1e
    invoke-static {v12}, Lcom/join/mgps/ad/p;->b(Ljava/util/List;)I

    .line 949
    .line 950
    .line 951
    move-result v5

    .line 952
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 953
    .line 954
    .line 955
    move-result v12

    .line 956
    if-ge v5, v12, :cond_1f

    .line 957
    .line 958
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    move-result-object v5

    .line 962
    move-object v6, v5

    .line 963
    check-cast v6, Lcom/join/mgps/dto/PlayCfgBean;

    .line 964
    .line 965
    goto :goto_c

    .line 966
    :cond_1f
    const/4 v6, 0x0

    .line 967
    :goto_c
    if-eqz v6, :cond_25

    .line 968
    .line 969
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v7

    .line 973
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 974
    .line 975
    .line 976
    move-result v5

    .line 977
    const/4 v12, 0x1

    .line 978
    if-eq v5, v12, :cond_24

    .line 979
    .line 980
    const/4 v12, 0x2

    .line 981
    if-eq v5, v12, :cond_23

    .line 982
    .line 983
    const/4 v12, 0x4

    .line 984
    if-eq v5, v12, :cond_22

    .line 985
    .line 986
    const/4 v12, 0x7

    .line 987
    if-eq v5, v12, :cond_21

    .line 988
    .line 989
    const/16 v12, 0x9

    .line 990
    .line 991
    if-eq v5, v12, :cond_20

    .line 992
    .line 993
    goto :goto_d

    .line 994
    :cond_20
    iget-object v5, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 995
    .line 996
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v19

    .line 1000
    const/16 v24, 0x0

    .line 1001
    .line 1002
    move-object/from16 v18, v5

    .line 1003
    .line 1004
    move-object/from16 v20, v7

    .line 1005
    .line 1006
    move-object/from16 v21, v2

    .line 1007
    .line 1008
    move/from16 v22, v3

    .line 1009
    .line 1010
    move/from16 v23, v0

    .line 1011
    .line 1012
    invoke-virtual/range {v18 .. v24}, Lcom/join/mgps/activity/MGMainActivity;->initREAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 1013
    .line 1014
    .line 1015
    const/16 v2, 0x9

    .line 1016
    .line 1017
    goto :goto_e

    .line 1018
    :cond_21
    iget-object v5, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1019
    .line 1020
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v19

    .line 1024
    const/16 v24, 0x0

    .line 1025
    .line 1026
    move-object/from16 v18, v5

    .line 1027
    .line 1028
    move-object/from16 v20, v7

    .line 1029
    .line 1030
    move-object/from16 v21, v2

    .line 1031
    .line 1032
    move/from16 v22, v3

    .line 1033
    .line 1034
    move/from16 v23, v0

    .line 1035
    .line 1036
    invoke-virtual/range {v18 .. v24}, Lcom/join/mgps/activity/MGMainActivity;->initGroMTTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 1037
    .line 1038
    .line 1039
    const/4 v2, 0x7

    .line 1040
    goto :goto_e

    .line 1041
    :cond_22
    const/4 v2, 0x4

    .line 1042
    goto :goto_e

    .line 1043
    :cond_23
    iget-object v5, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1044
    .line 1045
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v19

    .line 1049
    const/16 v24, 0x0

    .line 1050
    .line 1051
    move-object/from16 v18, v5

    .line 1052
    .line 1053
    move-object/from16 v20, v7

    .line 1054
    .line 1055
    move-object/from16 v21, v2

    .line 1056
    .line 1057
    move/from16 v22, v3

    .line 1058
    .line 1059
    move/from16 v23, v0

    .line 1060
    .line 1061
    invoke-virtual/range {v18 .. v24}, Lcom/join/mgps/activity/MGMainActivity;->initGDTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 1062
    .line 1063
    .line 1064
    const/4 v2, 0x2

    .line 1065
    goto :goto_e

    .line 1066
    :cond_24
    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1067
    .line 1068
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v5

    .line 1072
    const/4 v6, 0x0

    .line 1073
    invoke-virtual {v2, v5, v7, v6}, Lcom/join/mgps/activity/MGMainActivity;->initTTAd(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1074
    .line 1075
    .line 1076
    :cond_25
    :goto_d
    const/4 v2, 0x1

    .line 1077
    :goto_e
    new-instance v5, Landroid/content/Intent;

    .line 1078
    .line 1079
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v5, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    .line 1084
    .line 1085
    const/16 v6, 0x63

    .line 1086
    .line 1087
    invoke-virtual {v5, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1088
    .line 1089
    .line 1090
    const-string v6, "content"

    .line 1091
    .line 1092
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getTip_text()Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v10

    .line 1096
    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1097
    .line 1098
    .line 1099
    const-string v6, "dialogUrl"

    .line 1100
    .line 1101
    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1102
    .line 1103
    .line 1104
    const-string v6, "pic"

    .line 1105
    .line 1106
    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1107
    .line 1108
    .line 1109
    const-string v6, "ad_id"

    .line 1110
    .line 1111
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1112
    .line 1113
    .line 1114
    const-string v6, "btn_l"

    .line 1115
    .line 1116
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getL_btn_text()Ljava/lang/String;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v7

    .line 1120
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1121
    .line 1122
    .line 1123
    const-string v6, "btn_r"

    .line 1124
    .line 1125
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getR_btn_text()Ljava/lang/String;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v7

    .line 1129
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1130
    .line 1131
    .line 1132
    const-string v6, "btn_url"

    .line 1133
    .line 1134
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getL_btn_url()Ljava/lang/String;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v7

    .line 1138
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getDaily_times()I

    .line 1142
    .line 1143
    .line 1144
    move-result v4

    .line 1145
    sub-int/2addr v4, v0

    .line 1146
    const-string v6, "times"

    .line 1147
    .line 1148
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {v5, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v5, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v5, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1158
    .line 1159
    .line 1160
    iget-object v0, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1161
    .line 1162
    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1163
    .line 1164
    .line 1165
    iget-object v0, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1166
    .line 1167
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v0

    .line 1171
    sget-object v2, Lcom/papa/sim/statistic/Event;->showAdvert31:Lcom/papa/sim/statistic/Event;

    .line 1172
    .line 1173
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 1174
    .line 1175
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 1179
    .line 1180
    .line 1181
    goto/16 :goto_f

    .line 1182
    .line 1183
    :cond_26
    new-instance v4, Landroid/content/Intent;

    .line 1184
    .line 1185
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1189
    .line 1190
    .line 1191
    const/4 v5, 0x7

    .line 1192
    invoke-virtual {v4, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1193
    .line 1194
    .line 1195
    iget-object v5, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1196
    .line 1197
    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1198
    .line 1199
    .line 1200
    iget-object v4, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1201
    .line 1202
    invoke-static {v4}, Lcom/join/mgps/activity/MGMainActivity;->access$1900(Lcom/join/mgps/activity/MGMainActivity;)Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1206
    .line 1207
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1208
    .line 1209
    .line 1210
    iget-object v5, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1211
    .line 1212
    invoke-static {v5}, Lcom/join/mgps/activity/MGMainActivity;->access$1800(Lcom/join/mgps/activity/MGMainActivity;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v5

    .line 1216
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 1217
    .line 1218
    .line 1219
    move-result v5

    .line 1220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v4

    .line 1230
    const/4 v5, 0x1

    .line 1231
    add-int/2addr v3, v5

    .line 1232
    invoke-virtual {v6, v2, v4, v3, v0}, Lcom/papa91/wrapper/UserPrefs;->setFbaAdGamesConfig(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1233
    .line 1234
    .line 1235
    goto/16 :goto_f

    .line 1236
    .line 1237
    :cond_27
    new-instance v0, Landroid/content/Intent;

    .line 1238
    .line 1239
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {v0, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1243
    .line 1244
    .line 1245
    const/4 v2, 0x7

    .line 1246
    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1247
    .line 1248
    .line 1249
    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1250
    .line 1251
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1252
    .line 1253
    .line 1254
    goto/16 :goto_f

    .line 1255
    .line 1256
    :cond_28
    const/4 v3, 0x3

    .line 1257
    if-ne v4, v3, :cond_2a

    .line 1258
    .line 1259
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v0

    .line 1263
    const-string v3, "from"

    .line 1264
    .line 1265
    const/4 v4, 0x0

    .line 1266
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1267
    .line 1268
    .line 1269
    move-result v2

    .line 1270
    const/4 v3, 0x1

    .line 1271
    if-ne v2, v3, :cond_29

    .line 1272
    .line 1273
    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1274
    .line 1275
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v2

    .line 1279
    sget-object v3, Lcom/papa/sim/statistic/Event;->onMemberAdvert31:Lcom/papa/sim/statistic/Event;

    .line 1280
    .line 1281
    new-instance v4, Lcom/papa/sim/statistic/Ext;

    .line 1282
    .line 1283
    invoke-direct {v4}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 1284
    .line 1285
    .line 1286
    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 1287
    .line 1288
    .line 1289
    :cond_29
    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1290
    .line 1291
    const/16 v3, 0x9

    .line 1292
    .line 1293
    invoke-virtual {v2, v3, v9, v0}, Lcom/join/mgps/activity/MGMainActivity;->raseVipToMgsim(ILjava/lang/String;Ljava/lang/String;)V

    .line 1294
    .line 1295
    .line 1296
    goto/16 :goto_f

    .line 1297
    .line 1298
    :cond_2a
    const/4 v3, 0x4

    .line 1299
    if-ne v4, v3, :cond_2b

    .line 1300
    .line 1301
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v2

    .line 1305
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v3

    .line 1309
    invoke-virtual {v3, v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 1310
    .line 1311
    .line 1312
    goto/16 :goto_f

    .line 1313
    .line 1314
    :cond_2b
    const/4 v0, 0x6

    .line 1315
    if-ne v4, v0, :cond_2c

    .line 1316
    .line 1317
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v0

    .line 1321
    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1322
    .line 1323
    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/MGMainActivity;->showDownloadVideoAd(Ljava/lang/String;)V

    .line 1324
    .line 1325
    .line 1326
    goto/16 :goto_f

    .line 1327
    .line 1328
    :cond_2c
    const/4 v3, 0x7

    .line 1329
    if-ne v4, v3, :cond_2d

    .line 1330
    .line 1331
    iget-object v0, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1332
    .line 1333
    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->showPspVideoAd()V

    .line 1334
    .line 1335
    .line 1336
    goto/16 :goto_f

    .line 1337
    .line 1338
    :cond_2d
    const/16 v0, 0x3e9

    .line 1339
    .line 1340
    const-string v3, "playCfg"

    .line 1341
    .line 1342
    if-ne v4, v0, :cond_2e

    .line 1343
    .line 1344
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v0

    .line 1348
    check-cast v0, Lcom/join/mgps/dto/PlayCfgBean;

    .line 1349
    .line 1350
    if-eqz v0, :cond_36

    .line 1351
    .line 1352
    sget-object v2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 1353
    .line 1354
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1355
    .line 1356
    invoke-virtual {v2, v3, v0}, Lcom/MApplication;->I(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V

    .line 1357
    .line 1358
    .line 1359
    goto/16 :goto_f

    .line 1360
    .line 1361
    :cond_2e
    const/16 v0, 0x3ea

    .line 1362
    .line 1363
    if-ne v4, v0, :cond_2f

    .line 1364
    .line 1365
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v0

    .line 1369
    sget-object v2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 1370
    .line 1371
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1372
    .line 1373
    invoke-virtual {v2, v3, v0}, Lcom/MApplication;->Q(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1374
    .line 1375
    .line 1376
    goto/16 :goto_f

    .line 1377
    .line 1378
    :cond_2f
    const/16 v0, 0x3ed

    .line 1379
    .line 1380
    if-ne v4, v0, :cond_33

    .line 1381
    .line 1382
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v0

    .line 1386
    move-object v3, v0

    .line 1387
    check-cast v3, Lcom/join/mgps/dto/PlayCfgBean;

    .line 1388
    .line 1389
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v7

    .line 1393
    const/4 v4, 0x0

    .line 1394
    invoke-virtual {v2, v15, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1395
    .line 1396
    .line 1397
    move-result v8

    .line 1398
    invoke-virtual {v2, v13, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1399
    .line 1400
    .line 1401
    move-result v9

    .line 1402
    const-string v0, "state"

    .line 1403
    .line 1404
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1405
    .line 1406
    .line 1407
    move-result v10

    .line 1408
    const-string v4, "close"

    .line 1409
    .line 1410
    const/4 v5, 0x1

    .line 1411
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1412
    .line 1413
    .line 1414
    move-result v11

    .line 1415
    if-eqz v3, :cond_36

    .line 1416
    .line 1417
    new-instance v2, Ljava/util/HashMap;

    .line 1418
    .line 1419
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1420
    .line 1421
    .line 1422
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v6

    .line 1426
    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    .line 1428
    .line 1429
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v0

    .line 1433
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    .line 1435
    .line 1436
    invoke-virtual {v3}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 1437
    .line 1438
    .line 1439
    move-result v0

    .line 1440
    if-ne v0, v5, :cond_31

    .line 1441
    .line 1442
    iget-object v4, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1443
    .line 1444
    iget-object v0, v4, Lcom/join/mgps/activity/MGMainActivity;->ttGoldAdVideo:Lcom/join/mgps/ad/a0;

    .line 1445
    .line 1446
    if-nez v0, :cond_30

    .line 1447
    .line 1448
    invoke-virtual {v3}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v5

    .line 1452
    invoke-virtual {v3}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v6

    .line 1456
    const/4 v11, 0x1

    .line 1457
    move-object v10, v2

    .line 1458
    invoke-virtual/range {v4 .. v11}, Lcom/join/mgps/activity/MGMainActivity;->initGoldTTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Z)V

    .line 1459
    .line 1460
    .line 1461
    goto/16 :goto_f

    .line 1462
    .line 1463
    :cond_30
    move-object v2, v4

    .line 1464
    move-object v4, v7

    .line 1465
    move v5, v8

    .line 1466
    move v6, v9

    .line 1467
    move v7, v10

    .line 1468
    move v8, v11

    .line 1469
    invoke-virtual/range {v2 .. v8}, Lcom/join/mgps/activity/MGMainActivity;->showGoldFingerVideo(Lcom/join/mgps/dto/PlayCfgBean;Ljava/lang/String;IIIZ)V

    .line 1470
    .line 1471
    .line 1472
    goto :goto_f

    .line 1473
    :cond_31
    invoke-virtual {v3}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 1474
    .line 1475
    .line 1476
    move-result v0

    .line 1477
    const/4 v4, 0x2

    .line 1478
    if-ne v0, v4, :cond_36

    .line 1479
    .line 1480
    iget-object v4, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1481
    .line 1482
    iget-object v0, v4, Lcom/join/mgps/activity/MGMainActivity;->gdtGoldAdVideo:Lcom/join/mgps/ad/h;

    .line 1483
    .line 1484
    if-nez v0, :cond_32

    .line 1485
    .line 1486
    invoke-virtual {v3}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v5

    .line 1490
    invoke-virtual {v3}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v6

    .line 1494
    const/4 v11, 0x1

    .line 1495
    move-object v10, v2

    .line 1496
    invoke-virtual/range {v4 .. v11}, Lcom/join/mgps/activity/MGMainActivity;->initGoldGDTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Z)V

    .line 1497
    .line 1498
    .line 1499
    goto :goto_f

    .line 1500
    :cond_32
    move-object v2, v4

    .line 1501
    move-object v4, v7

    .line 1502
    move v5, v8

    .line 1503
    move v6, v9

    .line 1504
    move v7, v10

    .line 1505
    move v8, v11

    .line 1506
    invoke-virtual/range {v2 .. v8}, Lcom/join/mgps/activity/MGMainActivity;->showGoldFingerVideo(Lcom/join/mgps/dto/PlayCfgBean;Ljava/lang/String;IIIZ)V

    .line 1507
    .line 1508
    .line 1509
    goto :goto_f

    .line 1510
    :cond_33
    const/16 v0, 0x3f1

    .line 1511
    .line 1512
    if-ne v4, v0, :cond_34

    .line 1513
    .line 1514
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v0

    .line 1518
    new-instance v2, Lcom/join/mgps/event/a;

    .line 1519
    .line 1520
    const/4 v3, 0x1

    .line 1521
    invoke-direct {v2, v3}, Lcom/join/mgps/event/a;-><init>(I)V

    .line 1522
    .line 1523
    .line 1524
    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1525
    .line 1526
    .line 1527
    goto :goto_f

    .line 1528
    :cond_34
    const/16 v0, 0x44d

    .line 1529
    .line 1530
    if-ne v4, v0, :cond_35

    .line 1531
    .line 1532
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v0

    .line 1536
    check-cast v0, Lcom/join/mgps/dto/PlayCfgBean;

    .line 1537
    .line 1538
    sget-object v2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 1539
    .line 1540
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1541
    .line 1542
    invoke-virtual {v2, v3, v0}, Lcom/MApplication;->J(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V

    .line 1543
    .line 1544
    .line 1545
    goto :goto_f

    .line 1546
    :cond_35
    const/16 v0, 0x44e

    .line 1547
    .line 1548
    if-ne v4, v0, :cond_36

    .line 1549
    .line 1550
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v0

    .line 1554
    sget-object v2, Lcom/MApplication;->z:Lcom/MApplication;

    .line 1555
    .line 1556
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity$AdReceived;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 1557
    .line 1558
    invoke-virtual {v2, v3, v0}, Lcom/MApplication;->R(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1559
    .line 1560
    .line 1561
    :cond_36
    :goto_f
    return-void
.end method
