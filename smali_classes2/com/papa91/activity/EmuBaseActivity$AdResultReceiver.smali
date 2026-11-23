.class public Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdResultReceiver"
.end annotation


# instance fields
.field private hasReward:Z

.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method public constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

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
    .locals 26

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
    iget-object v3, v1, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 8
    .line 9
    iget-boolean v3, v3, Lcom/papa91/activity/EmuBaseActivity;->isSingleGame:Z

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v3, "adAction"

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v6, "adAction\uff1a"

    .line 27
    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/4 v5, 0x7

    .line 35
    if-ne v3, v5, :cond_1

    .line 36
    .line 37
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$1;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$1;-><init>(Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    :try_start_0
    invoke-static {v4}, Lcom/papa91/activity/EmuBaseActivity;->setAdResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 46
    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_1
    const/16 v5, 0x8

    .line 51
    .line 52
    if-ne v3, v5, :cond_2

    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_2
    const/4 v6, 0x6

    .line 57
    if-ne v3, v6, :cond_3

    .line 58
    .line 59
    iput-boolean v4, v1, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->hasReward:Z

    .line 60
    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :cond_3
    const-string v6, ""

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    if-ne v3, v4, :cond_4

    .line 67
    .line 68
    iput-boolean v7, v1, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->hasReward:Z

    .line 69
    .line 70
    iget-object v0, v1, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 71
    .line 72
    const-string v2, "expGameVSAdVideo"

    .line 73
    .line 74
    invoke-virtual {v0, v2, v6}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :cond_4
    const/4 v8, 0x3

    .line 80
    if-ne v3, v8, :cond_5

    .line 81
    .line 82
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$2;

    .line 83
    .line 84
    invoke-direct {v0, v1}, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$2;-><init>(Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    .line 88
    .line 89
    .line 90
    :try_start_1
    invoke-static {v4}, Lcom/papa91/activity/EmuBaseActivity;->setAdResult(I)V

    .line 91
    .line 92
    .line 93
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    if-ne v0, v2, :cond_16

    .line 98
    .line 99
    iget-object v0, v1, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 100
    .line 101
    sget v2, Lcom/papa91/activity/EmuBaseActivity;->scenario:I

    .line 102
    .line 103
    invoke-virtual {v0, v2, v4}, Lcom/papa91/activity/EmuBaseActivity;->getVideoAward(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 104
    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :cond_5
    const/16 v8, 0x62

    .line 109
    .line 110
    const-string v9, "gameId"

    .line 111
    .line 112
    const-string v10, "adSdkType"

    .line 113
    .line 114
    const-string v11, "adCount"

    .line 115
    .line 116
    const-string v12, "howTimes"

    .line 117
    .line 118
    if-ne v3, v8, :cond_7

    .line 119
    .line 120
    new-instance v0, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$3;

    .line 121
    .line 122
    invoke-direct {v0, v1}, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$3;-><init>(Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->runOnUiThread1(Ljava/lang/Runnable;)V

    .line 126
    .line 127
    .line 128
    const-string v0, "url"

    .line 129
    .line 130
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const-string v3, "time"

    .line 135
    .line 136
    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    const-string v5, "V_switch"

    .line 141
    .line 142
    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-nez v5, :cond_6

    .line 147
    .line 148
    invoke-virtual {v2, v12, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-virtual {v2, v11, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-virtual {v2, v10, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    new-instance v5, Landroid/content/Intent;

    .line 165
    .line 166
    const-string v6, "com.tools.AdBroadcast"

    .line 167
    .line 168
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v6, "action"

    .line 172
    .line 173
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    invoke-static {v5}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_2

    .line 192
    .line 193
    :cond_6
    iget-object v2, v1, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 194
    .line 195
    invoke-static {v2, v0, v3}, Lcom/papa91/activity/EmuBaseActivity;->access$200(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_2

    .line 199
    .line 200
    :cond_7
    const/16 v8, 0x63

    .line 201
    .line 202
    const-string v13, "times"

    .line 203
    .line 204
    if-ne v3, v8, :cond_9

    .line 205
    .line 206
    iget-object v0, v1, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 207
    .line 208
    iget-boolean v0, v0, Lcom/papa91/activity/EmuBaseActivity;->isSingleGame:Z

    .line 209
    .line 210
    if-eqz v0, :cond_8

    .line 211
    .line 212
    return-void

    .line 213
    :cond_8
    const-string v0, "content"

    .line 214
    .line 215
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v15

    .line 219
    const-string v0, "dialogUrl"

    .line 220
    .line 221
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v16

    .line 225
    const-string v0, "pic"

    .line 226
    .line 227
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v17

    .line 231
    const-string v0, "ad_id"

    .line 232
    .line 233
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v18

    .line 237
    const-string v0, "btn_l"

    .line 238
    .line 239
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v19

    .line 243
    const-string v0, "btn_r"

    .line 244
    .line 245
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v20

    .line 249
    const-string v0, "btn_url"

    .line 250
    .line 251
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v21

    .line 255
    invoke-virtual {v2, v13, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 256
    .line 257
    .line 258
    move-result v22

    .line 259
    invoke-virtual {v2, v11, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 260
    .line 261
    .line 262
    move-result v25

    .line 263
    invoke-virtual {v2, v12, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 264
    .line 265
    .line 266
    move-result v23

    .line 267
    invoke-virtual {v2, v10, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 268
    .line 269
    .line 270
    move-result v24

    .line 271
    iget-object v0, v1, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 272
    .line 273
    invoke-static {v0, v7}, Lcom/papa91/activity/EmuBaseActivity;->access$302(Lcom/papa91/activity/EmuBaseActivity;Z)Z

    .line 274
    .line 275
    .line 276
    iget-object v14, v1, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 277
    .line 278
    invoke-static/range {v14 .. v25}, Lcom/papa91/activity/EmuBaseActivity;->access$400(Lcom/papa91/activity/EmuBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_2

    .line 282
    .line 283
    :cond_9
    const/16 v8, 0xd

    .line 284
    .line 285
    if-ne v3, v8, :cond_a

    .line 286
    .line 287
    goto/16 :goto_2

    .line 288
    .line 289
    :cond_a
    const/16 v8, 0x11

    .line 290
    .line 291
    if-ne v3, v8, :cond_11

    .line 292
    .line 293
    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    if-nez v3, :cond_10

    .line 302
    .line 303
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 304
    .line 305
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-nez v3, :cond_10

    .line 310
    .line 311
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-nez v0, :cond_b

    .line 318
    .line 319
    goto/16 :goto_1

    .line 320
    .line 321
    :cond_b
    const-string v0, "result"

    .line 322
    .line 323
    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    const-string v3, "amount"

    .line 328
    .line 329
    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    invoke-virtual {v2, v13, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 334
    .line 335
    .line 336
    move-result v8

    .line 337
    const-string v9, "total_reward_amount"

    .line 338
    .line 339
    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    if-nez v0, :cond_e

    .line 344
    .line 345
    sget v9, Lcom/papa91/activity/EmuBaseActivity;->received_times:I

    .line 346
    .line 347
    add-int/2addr v9, v4

    .line 348
    sput v9, Lcom/papa91/activity/EmuBaseActivity;->received_times:I

    .line 349
    .line 350
    sget v9, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    .line 351
    .line 352
    sub-int/2addr v9, v4

    .line 353
    sput v9, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    .line 354
    .line 355
    sput v7, Lcom/papa91/activity/EmuBaseActivity;->reward_amount:I

    .line 356
    .line 357
    sput v7, Lcom/papa91/activity/EmuBaseActivity;->reward_times:I

    .line 358
    .line 359
    sput-object v6, Lcom/papa91/activity/EmuBaseActivity;->unique_id:Ljava/lang/String;

    .line 360
    .line 361
    sget v6, Lcom/papa91/activity/EmuBaseActivity;->total_reward_amount:I

    .line 362
    .line 363
    add-int/2addr v6, v3

    .line 364
    sput v6, Lcom/papa91/activity/EmuBaseActivity;->total_reward_amount:I

    .line 365
    .line 366
    sget-object v6, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 367
    .line 368
    if-eqz v6, :cond_e

    .line 369
    .line 370
    invoke-virtual {v6}, Lcom/papa91/view/DragProgressView;->getSignal()I

    .line 371
    .line 372
    .line 373
    move-result v9

    .line 374
    sub-int/2addr v9, v4

    .line 375
    invoke-virtual {v6, v9}, Lcom/papa91/view/DragProgressView;->setSignal(I)V

    .line 376
    .line 377
    .line 378
    sget v6, Lcom/papa91/activity/EmuBaseActivity;->left_play_reward_count:I

    .line 379
    .line 380
    sget v9, Lcom/papa91/activity/EmuBaseActivity;->received_times:I

    .line 381
    .line 382
    sub-int/2addr v6, v9

    .line 383
    if-ge v6, v4, :cond_c

    .line 384
    .line 385
    sget-object v6, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 386
    .line 387
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 388
    .line 389
    .line 390
    :cond_c
    sget v5, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    .line 391
    .line 392
    if-ge v5, v4, :cond_d

    .line 393
    .line 394
    sget-object v5, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 395
    .line 396
    invoke-virtual {v5}, Lcom/papa91/view/DragProgressView;->getSignal()I

    .line 397
    .line 398
    .line 399
    move-result v5

    .line 400
    if-ge v5, v4, :cond_d

    .line 401
    .line 402
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 403
    .line 404
    invoke-virtual {v0}, Lcom/papa91/view/DragProgressView;->stop()V

    .line 405
    .line 406
    .line 407
    return-void

    .line 408
    :cond_d
    sget-object v5, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 409
    .line 410
    sget v6, Lcom/papa91/activity/EmuBaseActivity;->reward_left_count:I

    .line 411
    .line 412
    invoke-virtual {v5, v6}, Lcom/papa91/view/DragProgressView;->setSignalMax(I)V

    .line 413
    .line 414
    .line 415
    sget-object v5, Lcom/papa91/activity/EmuBaseActivity;->progressView:Lcom/papa91/view/DragProgressView;

    .line 416
    .line 417
    invoke-virtual {v5}, Lcom/papa91/view/DragProgressView;->resume()V

    .line 418
    .line 419
    .line 420
    :cond_e
    :try_start_2
    iget-object v5, v1, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 421
    .line 422
    if-nez v0, :cond_f

    .line 423
    .line 424
    goto :goto_0

    .line 425
    :cond_f
    const/4 v4, 0x0

    .line 426
    :goto_0
    invoke-virtual {v5, v4, v3, v8, v2}, Lcom/papa91/activity/EmuBaseActivity;->setRewardResult1(IIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 427
    .line 428
    .line 429
    goto :goto_2

    .line 430
    :catch_0
    move-exception v0

    .line 431
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 432
    .line 433
    .line 434
    goto :goto_2

    .line 435
    :cond_10
    :goto_1
    return-void

    .line 436
    :cond_11
    const/16 v5, 0x64

    .line 437
    .line 438
    if-ne v3, v5, :cond_13

    .line 439
    .line 440
    const-string v0, "exit"

    .line 441
    .line 442
    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    iget-object v2, v1, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 447
    .line 448
    invoke-virtual {v2}, Lcom/papa91/activity/EmuBaseActivity;->onHandleEmuExit()V

    .line 449
    .line 450
    .line 451
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->exitDlgBack(I)V

    .line 452
    .line 453
    .line 454
    const/4 v2, 0x2

    .line 455
    if-ne v0, v4, :cond_12

    .line 456
    .line 457
    invoke-static {v2}, Lcom/papa91/activity/EmuBaseActivity;->sendGamePlay(I)V

    .line 458
    .line 459
    .line 460
    iget-object v0, v1, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 461
    .line 462
    invoke-static {v0, v4}, Lcom/papa91/activity/EmuBaseActivity;->access$502(Lcom/papa91/activity/EmuBaseActivity;Z)Z

    .line 463
    .line 464
    .line 465
    goto :goto_2

    .line 466
    :cond_12
    if-ne v0, v2, :cond_16

    .line 467
    .line 468
    invoke-static {v2}, Lcom/papa91/activity/EmuBaseActivity;->sendGamePlay(I)V

    .line 469
    .line 470
    .line 471
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 472
    .line 473
    .line 474
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 479
    .line 480
    .line 481
    goto :goto_2

    .line 482
    :cond_13
    const/4 v5, 0x5

    .line 483
    if-ne v3, v5, :cond_14

    .line 484
    .line 485
    iget-object v3, v1, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 486
    .line 487
    invoke-static {v3, v4}, Lcom/papa91/activity/EmuBaseActivity;->access$302(Lcom/papa91/activity/EmuBaseActivity;Z)Z

    .line 488
    .line 489
    .line 490
    :try_start_3
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->access$600()Lcom/papa91/activity/EmuBaseActivity;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    new-instance v4, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$4;

    .line 495
    .line 496
    invoke-direct {v4, v1}, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver$4;-><init>(Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 500
    .line 501
    .line 502
    :catch_1
    iget-object v3, v1, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 503
    .line 504
    invoke-virtual {v3, v0, v2}, Lcom/papa91/activity/EmuBaseActivity;->handleAdError(Landroid/content/Context;Landroid/content/Intent;)V

    .line 505
    .line 506
    .line 507
    goto :goto_2

    .line 508
    :cond_14
    const/16 v4, 0x9

    .line 509
    .line 510
    if-ne v3, v4, :cond_15

    .line 511
    .line 512
    iget-object v0, v1, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 513
    .line 514
    invoke-static {v0, v7}, Lcom/papa91/activity/EmuBaseActivity;->access$302(Lcom/papa91/activity/EmuBaseActivity;Z)Z

    .line 515
    .line 516
    .line 517
    goto :goto_2

    .line 518
    :cond_15
    iget-object v3, v1, Lcom/papa91/activity/EmuBaseActivity$AdResultReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 519
    .line 520
    invoke-virtual {v3, v0, v2}, Lcom/papa91/activity/EmuBaseActivity;->handleAdResult(Landroid/content/Context;Landroid/content/Intent;)V

    .line 521
    .line 522
    .line 523
    :catch_2
    :cond_16
    :goto_2
    return-void
.end method
