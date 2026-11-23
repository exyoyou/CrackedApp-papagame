.class Lcom/join/mgps/fragment/k4$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/k4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/k4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/k4;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/dto/AppBean;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, ""

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    .line 48
    .line 49
    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 v2, 0x4

    .line 53
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getDown_url_remote()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    if-nez v0, :cond_6

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 115
    .line 116
    invoke-static {v1}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 131
    .line 132
    invoke-static {v0}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 141
    .line 142
    invoke-static {v1}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-ge v0, v1, :cond_3

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 180
    .line 181
    invoke-static {v0}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 189
    .line 190
    invoke-static {v0}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {v0, p1}, Lcom/join/android/app/common/utils/APKUtils;->f0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-lez v0, :cond_5

    .line 215
    .line 216
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 217
    .line 218
    invoke-static {v0}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 231
    .line 232
    invoke-static {v0}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->Z0(Landroid/content/Context;Lcom/join/mgps/dto/AppBean;)V

    .line 237
    .line 238
    .line 239
    :goto_1
    return-void

    .line 240
    :cond_6
    if-eqz v0, :cond_7

    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    goto :goto_2

    .line 247
    :cond_7
    const/4 v1, 0x0

    .line 248
    :goto_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    const/16 v3, 0x2b

    .line 261
    .line 262
    if-lez v2, :cond_8

    .line 263
    .line 264
    const/16 v1, 0x2b

    .line 265
    .line 266
    :cond_8
    const/4 v2, 0x5

    .line 267
    if-eqz v1, :cond_10

    .line 268
    .line 269
    const/16 v4, 0xd

    .line 270
    .line 271
    if-eq v1, v4, :cond_f

    .line 272
    .line 273
    const/4 v4, 0x2

    .line 274
    if-eq v1, v4, :cond_e

    .line 275
    .line 276
    const/4 v4, 0x3

    .line 277
    if-eq v1, v4, :cond_d

    .line 278
    .line 279
    if-eq v1, v2, :cond_c

    .line 280
    .line 281
    const/4 v4, 0x6

    .line 282
    if-eq v1, v4, :cond_d

    .line 283
    .line 284
    const/4 v4, 0x7

    .line 285
    if-eq v1, v4, :cond_10

    .line 286
    .line 287
    const/16 v4, 0x2a

    .line 288
    .line 289
    const-string v5, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 290
    .line 291
    if-eq v1, v4, :cond_a

    .line 292
    .line 293
    if-eq v1, v3, :cond_10

    .line 294
    .line 295
    packed-switch v1, :pswitch_data_0

    .line 296
    .line 297
    .line 298
    goto/16 :goto_3

    .line 299
    .line 300
    :pswitch_0
    iget-object p1, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 301
    .line 302
    invoke-static {p1}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_3

    .line 310
    .line 311
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 312
    .line 313
    invoke-static {p1}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    if-nez p1, :cond_9

    .line 322
    .line 323
    iget-object p1, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 324
    .line 325
    invoke-virtual {p1, v5}, Lcom/join/mgps/fragment/k4;->showToast(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 330
    .line 331
    invoke-static {p1}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->X2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_3

    .line 339
    .line 340
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 341
    .line 342
    invoke-static {p1}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    if-nez p1, :cond_b

    .line 351
    .line 352
    iget-object p1, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 353
    .line 354
    invoke-virtual {p1, v5}, Lcom/join/mgps/fragment/k4;->showToast(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    return-void

    .line 358
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 359
    .line 360
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->O4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_3

    .line 368
    .line 369
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 370
    .line 371
    invoke-static {p1}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 376
    .line 377
    .line 378
    goto :goto_3

    .line 379
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 380
    .line 381
    invoke-static {p1}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 386
    .line 387
    .line 388
    goto :goto_3

    .line 389
    :cond_e
    :pswitch_2
    invoke-static {v0}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 390
    .line 391
    .line 392
    goto :goto_3

    .line 393
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 394
    .line 395
    invoke-static {p1}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 400
    .line 401
    .line 402
    goto :goto_3

    .line 403
    :cond_10
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-lez v1, :cond_11

    .line 416
    .line 417
    iget-object v0, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 418
    .line 419
    invoke-static {v0}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p1

    .line 427
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    goto :goto_3

    .line 431
    :cond_11
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->y1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/AppBean;)V

    .line 432
    .line 433
    .line 434
    iget-object v1, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 435
    .line 436
    invoke-static {v1}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-eqz v1, :cond_12

    .line 445
    .line 446
    goto :goto_3

    .line 447
    :cond_12
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getDown_status()I

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    if-ne v1, v2, :cond_13

    .line 452
    .line 453
    iget-object p1, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 454
    .line 455
    invoke-static {p1}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 460
    .line 461
    .line 462
    goto :goto_3

    .line 463
    :cond_13
    iget-object v1, p0, Lcom/join/mgps/fragment/k4$e;->b:Lcom/join/mgps/fragment/k4;

    .line 464
    .line 465
    invoke-static {v1}, Lcom/join/mgps/fragment/k4;->O(Lcom/join/mgps/fragment/k4;)Landroid/app/Activity;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getTp_down_url()Ljava/util/List;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getOther_down_switch()I

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBean;->getCdn_down_switch()I

    .line 478
    .line 479
    .line 480
    move-result p1

    .line 481
    invoke-static {v1, v0, v2, v3, p1}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 482
    .line 483
    .line 484
    :goto_3
    return-void

    .line 485
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
