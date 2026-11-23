.class Lcom/join/mgps/adapter/q3$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/q3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field b:Lcom/join/mgps/dto/CollectionBeanSub;

.field final synthetic c:Lcom/join/mgps/adapter/q3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/q3;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "appBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_4

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-ge p1, v0, :cond_0

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 113
    .line 114
    invoke-static {p1}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 122
    .line 123
    invoke-static {p1}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->f0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 138
    .line 139
    invoke-static {p1}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 148
    .line 149
    invoke-static {v0}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 168
    .line 169
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez p1, :cond_2

    .line 178
    .line 179
    if-eqz v0, :cond_3

    .line 180
    .line 181
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 182
    .line 183
    invoke-static {p1}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 191
    .line 192
    invoke-static {p1}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 203
    .line 204
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-static {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->a0(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;Lcom/join/mgps/dto/ExtBean;)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 213
    .line 214
    invoke-static {p1}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 219
    .line 220
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->b1(Landroid/content/Context;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    sget-object v1, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 230
    .line 231
    invoke-virtual {v1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v1, ""

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 248
    .line 249
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_5

    .line 258
    .line 259
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 260
    .line 261
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 262
    .line 263
    .line 264
    const/4 v1, 0x4

    .line 265
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 266
    .line 267
    .line 268
    iget-object v1, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 269
    .line 270
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object v1, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 278
    .line 279
    invoke-static {v1}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 284
    .line 285
    .line 286
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    iget-object v1, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 291
    .line 292
    invoke-static {v1}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :cond_5
    if-eqz p1, :cond_6

    .line 301
    .line 302
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    goto :goto_1

    .line 307
    :cond_6
    const/4 v0, 0x0

    .line 308
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 309
    .line 310
    const/16 v2, 0x2b

    .line 311
    .line 312
    if-eqz v1, :cond_7

    .line 313
    .line 314
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    iget-object v3, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 319
    .line 320
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-lez v1, :cond_7

    .line 329
    .line 330
    const/16 v0, 0x2b

    .line 331
    .line 332
    :cond_7
    const/4 v1, 0x5

    .line 333
    if-eqz v0, :cond_f

    .line 334
    .line 335
    const/16 v3, 0xd

    .line 336
    .line 337
    if-eq v0, v3, :cond_e

    .line 338
    .line 339
    const/4 v3, 0x2

    .line 340
    if-eq v0, v3, :cond_d

    .line 341
    .line 342
    const/4 v3, 0x3

    .line 343
    if-eq v0, v3, :cond_c

    .line 344
    .line 345
    if-eq v0, v1, :cond_b

    .line 346
    .line 347
    const/4 v3, 0x6

    .line 348
    if-eq v0, v3, :cond_c

    .line 349
    .line 350
    const/4 v3, 0x7

    .line 351
    if-eq v0, v3, :cond_f

    .line 352
    .line 353
    const/16 v3, 0x2a

    .line 354
    .line 355
    const-string v4, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 356
    .line 357
    if-eq v0, v3, :cond_9

    .line 358
    .line 359
    if-eq v0, v2, :cond_f

    .line 360
    .line 361
    packed-switch v0, :pswitch_data_0

    .line 362
    .line 363
    .line 364
    goto/16 :goto_2

    .line 365
    .line 366
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 367
    .line 368
    invoke-static {v0}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_2

    .line 376
    .line 377
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 378
    .line 379
    invoke-static {v0}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-nez v0, :cond_8

    .line 388
    .line 389
    iget-object p1, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 390
    .line 391
    invoke-static {p1}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    invoke-virtual {p1, v4}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 404
    .line 405
    invoke-static {v0}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->X2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 410
    .line 411
    .line 412
    goto/16 :goto_2

    .line 413
    .line 414
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 415
    .line 416
    invoke-static {v0}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    if-nez v0, :cond_a

    .line 425
    .line 426
    iget-object p1, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 427
    .line 428
    invoke-static {p1}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    invoke-virtual {p1, v4}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    return-void

    .line 440
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 441
    .line 442
    invoke-static {v0}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->O4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 447
    .line 448
    .line 449
    goto/16 :goto_2

    .line 450
    .line 451
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 452
    .line 453
    invoke-static {v0}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 458
    .line 459
    .line 460
    goto/16 :goto_2

    .line 461
    .line 462
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 463
    .line 464
    invoke-static {v0}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 469
    .line 470
    .line 471
    goto/16 :goto_2

    .line 472
    .line 473
    :cond_d
    :pswitch_2
    invoke-static {p1}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 474
    .line 475
    .line 476
    goto :goto_2

    .line 477
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 478
    .line 479
    invoke-static {v0}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 484
    .line 485
    .line 486
    goto :goto_2

    .line 487
    :cond_f
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 488
    .line 489
    if-eqz v0, :cond_13

    .line 490
    .line 491
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    iget-object v2, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 496
    .line 497
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-lez v0, :cond_10

    .line 506
    .line 507
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 508
    .line 509
    invoke-static {v0}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object p1

    .line 517
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    goto :goto_2

    .line 521
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 522
    .line 523
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 524
    .line 525
    .line 526
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 527
    .line 528
    invoke-static {v0}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    if-eqz v0, :cond_11

    .line 537
    .line 538
    goto :goto_2

    .line 539
    :cond_11
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 540
    .line 541
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    if-ne v0, v1, :cond_12

    .line 546
    .line 547
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 548
    .line 549
    invoke-static {v0}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 554
    .line 555
    .line 556
    goto :goto_2

    .line 557
    :cond_12
    iget-object v0, p0, Lcom/join/mgps/adapter/q3$e;->c:Lcom/join/mgps/adapter/q3;

    .line 558
    .line 559
    invoke-static {v0}, Lcom/join/mgps/adapter/q3;->a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 564
    .line 565
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    iget-object v2, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 570
    .line 571
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    iget-object v3, p0, Lcom/join/mgps/adapter/q3$e;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 576
    .line 577
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    .line 578
    .line 579
    .line 580
    move-result v3

    .line 581
    invoke-static {v0, p1, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 582
    .line 583
    .line 584
    :cond_13
    :goto_2
    return-void

    .line 585
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
