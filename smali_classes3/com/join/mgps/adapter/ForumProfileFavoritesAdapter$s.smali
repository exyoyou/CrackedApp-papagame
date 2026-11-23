.class Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "s"
.end annotation


# instance fields
.field private final b:Ljava/lang/Object;

.field final synthetic c:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Ljava/lang/Object;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$s;->c:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$s;->b:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$s;->b:Ljava/lang/Object;

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
    iget-object v4, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$s;->b:Ljava/lang/Object;

    .line 39
    .line 40
    instance-of v5, v4, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    check-cast v4, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    if-eqz v5, :cond_0

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    move v7, v5

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/4 v5, 0x0

    .line 71
    const/4 v7, 0x0

    .line 72
    :goto_0
    if-lez v5, :cond_4

    .line 73
    .line 74
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v5, v4}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_1
    instance-of v5, v4, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 87
    .line 88
    if-eqz v5, :cond_3

    .line 89
    .line 90
    check-cast v4, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Lcom/join/mgps/dto/AppBeanMain;

    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    if-eqz v5, :cond_2

    .line 111
    .line 112
    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v5}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    move v7, v5

    .line 121
    goto :goto_1

    .line 122
    :cond_2
    const/4 v5, 0x0

    .line 123
    const/4 v7, 0x0

    .line 124
    :goto_1
    if-lez v5, :cond_4

    .line 125
    .line 126
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v5, v4}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_3
    const/4 v7, 0x0

    .line 139
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    sget-object v8, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 149
    .line 150
    invoke-virtual {v8}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v8, ""

    .line 158
    .line 159
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-eqz v4, :cond_5

    .line 171
    .line 172
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    .line 173
    .line 174
    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 175
    .line 176
    .line 177
    const/4 v2, 0x4

    .line 178
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 189
    .line 190
    .line 191
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-static {v7, v5}, Lcom/join/mgps/Util/UtilsMy;->y0(ILjava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    const/16 v8, 0x2b

    .line 212
    .line 213
    if-lez v5, :cond_6

    .line 214
    .line 215
    const/16 v4, 0x2b

    .line 216
    .line 217
    :cond_6
    const/4 v5, 0x5

    .line 218
    if-eqz v4, :cond_e

    .line 219
    .line 220
    const/16 v9, 0xd

    .line 221
    .line 222
    if-eq v4, v9, :cond_d

    .line 223
    .line 224
    const/4 v9, 0x2

    .line 225
    if-eq v4, v9, :cond_c

    .line 226
    .line 227
    const/4 v9, 0x3

    .line 228
    if-eq v4, v9, :cond_b

    .line 229
    .line 230
    if-eq v4, v5, :cond_a

    .line 231
    .line 232
    const/4 v9, 0x6

    .line 233
    if-eq v4, v9, :cond_b

    .line 234
    .line 235
    const/4 v9, 0x7

    .line 236
    if-eq v4, v9, :cond_e

    .line 237
    .line 238
    const/16 v9, 0x2a

    .line 239
    .line 240
    const-string v10, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 241
    .line 242
    if-eq v4, v9, :cond_8

    .line 243
    .line 244
    if-eq v4, v8, :cond_e

    .line 245
    .line 246
    packed-switch v4, :pswitch_data_0

    .line 247
    .line 248
    .line 249
    goto/16 :goto_3

    .line 250
    .line 251
    :pswitch_0
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_3

    .line 255
    .line 256
    :pswitch_1
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-nez v1, :cond_7

    .line 261
    .line 262
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p1, v10}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :cond_7
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->X2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_3

    .line 274
    .line 275
    :cond_8
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-nez v1, :cond_9

    .line 280
    .line 281
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-virtual {p1, v10}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :cond_9
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->O4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_3

    .line 293
    .line 294
    :cond_a
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_3

    .line 298
    .line 299
    :cond_b
    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 300
    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_c
    :pswitch_2
    invoke-static {v0}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 304
    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_d
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 308
    .line 309
    .line 310
    goto :goto_3

    .line 311
    :cond_e
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    invoke-static {v7, v4}, Lcom/join/mgps/Util/UtilsMy;->y0(ILjava/lang/String;)I

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-lez v4, :cond_f

    .line 320
    .line 321
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_f
    iget-object v4, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$s;->b:Ljava/lang/Object;

    .line 330
    .line 331
    instance-of v7, v4, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 332
    .line 333
    if-eqz v7, :cond_12

    .line 334
    .line 335
    check-cast v4, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 336
    .line 337
    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->z1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 338
    .line 339
    .line 340
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    if-eqz v6, :cond_10

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_10
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    if-ne v4, v5, :cond_11

    .line 352
    .line 353
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 354
    .line 355
    .line 356
    goto :goto_3

    .line 357
    :cond_11
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 358
    .line 359
    .line 360
    goto :goto_3

    .line 361
    :cond_12
    instance-of v7, v4, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 362
    .line 363
    if-eqz v7, :cond_15

    .line 364
    .line 365
    check-cast v4, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 366
    .line 367
    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    check-cast v4, Lcom/join/mgps/dto/AppBeanMain;

    .line 376
    .line 377
    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->y1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/AppBean;)V

    .line 382
    .line 383
    .line 384
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    if-eqz v6, :cond_13

    .line 389
    .line 390
    goto :goto_3

    .line 391
    :cond_13
    invoke-virtual {v4}, Lcom/join/mgps/dto/AppBean;->getDown_status()I

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    if-ne v4, v5, :cond_14

    .line 396
    .line 397
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 398
    .line 399
    .line 400
    goto :goto_3

    .line 401
    :cond_14
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 402
    .line 403
    .line 404
    :cond_15
    :goto_3
    return-void

    .line 405
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
