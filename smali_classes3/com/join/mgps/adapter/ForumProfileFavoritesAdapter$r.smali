.class Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;
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
    name = "r"
.end annotation


# instance fields
.field b:Lcom/join/mgps/dto/CollectionBeanSub;

.field final synthetic c:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "collectionBeanSub"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->c:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 7
    .line 8
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-ge v0, v1, :cond_0

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->f0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_1
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v0, :cond_2

    .line 134
    .line 135
    if-eqz v1, :cond_3

    .line 136
    .line 137
    :cond_2
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->a0(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;Lcom/join/mgps/dto/ExtBean;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 157
    .line 158
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->b1(Landroid/content/Context;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 174
    .line 175
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v3, ""

    .line 183
    .line 184
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_5

    .line 196
    .line 197
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    .line 198
    .line 199
    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 200
    .line 201
    .line 202
    const/4 v2, 0x4

    .line 203
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 204
    .line 205
    .line 206
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 207
    .line 208
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 216
    .line 217
    .line 218
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :cond_5
    if-eqz v0, :cond_6

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    goto :goto_1

    .line 233
    :cond_6
    const/4 v1, 0x0

    .line 234
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 235
    .line 236
    const/16 v3, 0x2b

    .line 237
    .line 238
    if-eqz v2, :cond_7

    .line 239
    .line 240
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    iget-object v4, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 245
    .line 246
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-static {v2, v4}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-lez v2, :cond_7

    .line 255
    .line 256
    const/16 v1, 0x2b

    .line 257
    .line 258
    :cond_7
    const/4 v2, 0x5

    .line 259
    if-eqz v1, :cond_f

    .line 260
    .line 261
    const/16 v4, 0xd

    .line 262
    .line 263
    if-eq v1, v4, :cond_e

    .line 264
    .line 265
    const/4 v4, 0x2

    .line 266
    if-eq v1, v4, :cond_d

    .line 267
    .line 268
    const/4 v4, 0x3

    .line 269
    if-eq v1, v4, :cond_c

    .line 270
    .line 271
    if-eq v1, v2, :cond_b

    .line 272
    .line 273
    const/4 v4, 0x6

    .line 274
    if-eq v1, v4, :cond_c

    .line 275
    .line 276
    const/4 v4, 0x7

    .line 277
    if-eq v1, v4, :cond_f

    .line 278
    .line 279
    const/16 v4, 0x2a

    .line 280
    .line 281
    const-string v5, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 282
    .line 283
    if-eq v1, v4, :cond_9

    .line 284
    .line 285
    if-eq v1, v3, :cond_f

    .line 286
    .line 287
    packed-switch v1, :pswitch_data_0

    .line 288
    .line 289
    .line 290
    goto/16 :goto_2

    .line 291
    .line 292
    :pswitch_0
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_2

    .line 296
    .line 297
    :pswitch_1
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    if-nez v1, :cond_8

    .line 302
    .line 303
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-virtual {p1, v5}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :cond_8
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->X2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_2

    .line 315
    .line 316
    :cond_9
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-nez v1, :cond_a

    .line 321
    .line 322
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-virtual {p1, v5}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    return-void

    .line 330
    :cond_a
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->O4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 331
    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_b
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 335
    .line 336
    .line 337
    goto :goto_2

    .line 338
    :cond_c
    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 339
    .line 340
    .line 341
    goto :goto_2

    .line 342
    :cond_d
    :pswitch_2
    invoke-static {v0}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 343
    .line 344
    .line 345
    goto :goto_2

    .line 346
    :cond_e
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 347
    .line 348
    .line 349
    goto :goto_2

    .line 350
    :cond_f
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 351
    .line 352
    if-eqz v1, :cond_13

    .line 353
    .line 354
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 359
    .line 360
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-lez v1, :cond_10

    .line 369
    .line 370
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 371
    .line 372
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    goto :goto_2

    .line 380
    :cond_10
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 381
    .line 382
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 383
    .line 384
    .line 385
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-eqz v1, :cond_11

    .line 390
    .line 391
    goto :goto_2

    .line 392
    :cond_11
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 393
    .line 394
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-ne v1, v2, :cond_12

    .line 399
    .line 400
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 401
    .line 402
    .line 403
    goto :goto_2

    .line 404
    :cond_12
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 405
    .line 406
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 411
    .line 412
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$r;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 417
    .line 418
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 423
    .line 424
    .line 425
    :cond_13
    :goto_2
    return-void

    .line 426
    nop

    .line 427
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
