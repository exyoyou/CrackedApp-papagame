.class Lcom/join/mgps/adapter/ForumBaseAdapter$j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j0"
.end annotation


# instance fields
.field private final b:Ljava/lang/Object;

.field final synthetic c:Lcom/join/mgps/adapter/ForumBaseAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "business"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;->c:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    if-eqz v0, :cond_15

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_down_url()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget-object v5, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;->b:Ljava/lang/Object;

    .line 43
    .line 44
    instance-of v6, v5, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 45
    .line 46
    const/4 v7, 0x0

    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    check-cast v5, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 50
    .line 51
    invoke-virtual {v5}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    if-eqz v6, :cond_0

    .line 63
    .line 64
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    move v6, v4

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    move v6, v4

    .line 75
    const/4 v4, 0x0

    .line 76
    :goto_0
    if-lez v4, :cond_3

    .line 77
    .line 78
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v4, v5}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_1
    instance-of v6, v5, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 91
    .line 92
    if-eqz v6, :cond_4

    .line 93
    .line 94
    check-cast v5, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 95
    .line 96
    invoke-virtual {v5}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Lcom/join/mgps/dto/AppBeanMain;

    .line 105
    .line 106
    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    if-eqz v6, :cond_2

    .line 115
    .line 116
    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v4}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    move v6, v4

    .line 125
    goto :goto_1

    .line 126
    :cond_2
    move v6, v4

    .line 127
    const/4 v4, 0x0

    .line 128
    :goto_1
    if-lez v4, :cond_3

    .line 129
    .line 130
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v5}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v4, v5}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    :cond_3
    :goto_2
    move v4, v6

    .line 142
    :cond_4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    new-instance v6, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    sget-object v8, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 152
    .line 153
    invoke-virtual {v8}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v8, ""

    .line 161
    .line 162
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_5

    .line 174
    .line 175
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    .line 176
    .line 177
    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 178
    .line 179
    .line 180
    const/4 v2, 0x4

    .line 181
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 192
    .line 193
    .line 194
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    invoke-static {v4, v6}, Lcom/join/mgps/Util/UtilsMy;->y0(ILjava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    const/16 v8, 0x2b

    .line 215
    .line 216
    if-lez v6, :cond_6

    .line 217
    .line 218
    const/16 v5, 0x2b

    .line 219
    .line 220
    :cond_6
    const/4 v6, 0x5

    .line 221
    if-eqz v5, :cond_e

    .line 222
    .line 223
    const/16 v9, 0xd

    .line 224
    .line 225
    if-eq v5, v9, :cond_d

    .line 226
    .line 227
    const/4 v9, 0x2

    .line 228
    if-eq v5, v9, :cond_c

    .line 229
    .line 230
    const/4 v9, 0x3

    .line 231
    if-eq v5, v9, :cond_b

    .line 232
    .line 233
    if-eq v5, v6, :cond_a

    .line 234
    .line 235
    const/4 v9, 0x6

    .line 236
    if-eq v5, v9, :cond_b

    .line 237
    .line 238
    const/4 v9, 0x7

    .line 239
    if-eq v5, v9, :cond_e

    .line 240
    .line 241
    const/16 v9, 0x2a

    .line 242
    .line 243
    const-string v10, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 244
    .line 245
    if-eq v5, v9, :cond_8

    .line 246
    .line 247
    if-eq v5, v8, :cond_e

    .line 248
    .line 249
    packed-switch v5, :pswitch_data_0

    .line 250
    .line 251
    .line 252
    goto/16 :goto_3

    .line 253
    .line 254
    :pswitch_0
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_3

    .line 258
    .line 259
    :pswitch_1
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_7

    .line 264
    .line 265
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p1, v10}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :cond_7
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->X2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_3

    .line 277
    .line 278
    :cond_8
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-nez v1, :cond_9

    .line 283
    .line 284
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {p1, v10}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    return-void

    .line 292
    :cond_9
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->O4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_3

    .line 296
    .line 297
    :cond_a
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_3

    .line 301
    .line 302
    :cond_b
    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 303
    .line 304
    .line 305
    goto :goto_3

    .line 306
    :cond_c
    :pswitch_2
    invoke-static {v0}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 307
    .line 308
    .line 309
    goto :goto_3

    .line 310
    :cond_d
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 311
    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_e
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->y0(ILjava/lang/String;)I

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    if-lez v4, :cond_f

    .line 323
    .line 324
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    goto :goto_3

    .line 332
    :cond_f
    iget-object v4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;->b:Ljava/lang/Object;

    .line 333
    .line 334
    instance-of v5, v4, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 335
    .line 336
    if-eqz v5, :cond_12

    .line 337
    .line 338
    check-cast v4, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 339
    .line 340
    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->z1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 341
    .line 342
    .line 343
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 344
    .line 345
    .line 346
    move-result v5

    .line 347
    if-eqz v5, :cond_10

    .line 348
    .line 349
    goto :goto_3

    .line 350
    :cond_10
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    if-ne v4, v6, :cond_11

    .line 355
    .line 356
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 357
    .line 358
    .line 359
    goto :goto_3

    .line 360
    :cond_11
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 361
    .line 362
    .line 363
    goto :goto_3

    .line 364
    :cond_12
    instance-of v5, v4, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 365
    .line 366
    if-eqz v5, :cond_15

    .line 367
    .line 368
    check-cast v4, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 369
    .line 370
    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    check-cast v4, Lcom/join/mgps/dto/AppBeanMain;

    .line 379
    .line 380
    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->y1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/AppBean;)V

    .line 385
    .line 386
    .line 387
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 388
    .line 389
    .line 390
    move-result v5

    .line 391
    if-eqz v5, :cond_13

    .line 392
    .line 393
    goto :goto_3

    .line 394
    :cond_13
    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBean;->getDown_status()I

    .line 395
    .line 396
    .line 397
    move-result v4

    .line 398
    if-ne v4, v6, :cond_14

    .line 399
    .line 400
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 401
    .line 402
    .line 403
    goto :goto_3

    .line 404
    :cond_14
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 405
    .line 406
    .line 407
    :cond_15
    :goto_3
    return-void

    .line 408
    nop

    .line 409
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
