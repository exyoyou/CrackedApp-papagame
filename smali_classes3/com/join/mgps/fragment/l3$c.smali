.class Lcom/join/mgps/fragment/l3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/l3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field b:Lcom/join/mgps/dto/CollectionBeanSub;

.field final synthetic c:Lcom/join/mgps/fragment/l3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/l3;Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "collectionBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

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
    iget-object p1, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-ge p1, v0, :cond_0

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->f0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 126
    .line 127
    iget-object p1, p1, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 128
    .line 129
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez p1, :cond_2

    .line 162
    .line 163
    if-eqz v0, :cond_3

    .line 164
    .line 165
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 166
    .line 167
    iget-object p1, p1, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 168
    .line 169
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 173
    .line 174
    iget-object p1, p1, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 175
    .line 176
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-static {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->a0(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;Lcom/join/mgps/dto/ExtBean;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 193
    .line 194
    iget-object p1, p1, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 195
    .line 196
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 197
    .line 198
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->b1(Landroid/content/Context;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 214
    .line 215
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v2, ""

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_5

    .line 236
    .line 237
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    .line 238
    .line 239
    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 240
    .line 241
    .line 242
    const/4 v1, 0x4

    .line 243
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 244
    .line 245
    .line 246
    iget-object v1, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 247
    .line 248
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object v1, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 256
    .line 257
    iget-object v1, v1, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 258
    .line 259
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 260
    .line 261
    .line 262
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    iget-object v1, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 267
    .line 268
    iget-object v1, v1, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 269
    .line 270
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :cond_5
    if-eqz p1, :cond_6

    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    goto :goto_1

    .line 281
    :cond_6
    const/4 v0, 0x0

    .line 282
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 283
    .line 284
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    iget-object v2, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 289
    .line 290
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    const/16 v2, 0x2b

    .line 299
    .line 300
    if-lez v1, :cond_7

    .line 301
    .line 302
    const/16 v0, 0x2b

    .line 303
    .line 304
    :cond_7
    const/4 v1, 0x5

    .line 305
    if-eqz v0, :cond_f

    .line 306
    .line 307
    const/16 v3, 0xd

    .line 308
    .line 309
    if-eq v0, v3, :cond_e

    .line 310
    .line 311
    const/4 v3, 0x2

    .line 312
    if-eq v0, v3, :cond_d

    .line 313
    .line 314
    const/4 v3, 0x3

    .line 315
    if-eq v0, v3, :cond_c

    .line 316
    .line 317
    if-eq v0, v1, :cond_b

    .line 318
    .line 319
    const/4 v3, 0x6

    .line 320
    if-eq v0, v3, :cond_c

    .line 321
    .line 322
    const/4 v3, 0x7

    .line 323
    if-eq v0, v3, :cond_f

    .line 324
    .line 325
    const/16 v3, 0x2a

    .line 326
    .line 327
    const-string v4, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 328
    .line 329
    if-eq v0, v3, :cond_9

    .line 330
    .line 331
    if-eq v0, v2, :cond_f

    .line 332
    .line 333
    packed-switch v0, :pswitch_data_0

    .line 334
    .line 335
    .line 336
    goto/16 :goto_2

    .line 337
    .line 338
    :pswitch_0
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 339
    .line 340
    iget-object v0, v0, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 341
    .line 342
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_2

    .line 346
    .line 347
    :pswitch_1
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 348
    .line 349
    iget-object v0, v0, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 350
    .line 351
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-nez v0, :cond_8

    .line 356
    .line 357
    iget-object p1, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 358
    .line 359
    iget-object p1, p1, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 360
    .line 361
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    invoke-virtual {p1, v4}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    return-void

    .line 369
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 370
    .line 371
    iget-object v0, v0, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 372
    .line 373
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->X2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_2

    .line 377
    .line 378
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 379
    .line 380
    iget-object v0, v0, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 381
    .line 382
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-nez v0, :cond_a

    .line 387
    .line 388
    iget-object p1, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 389
    .line 390
    iget-object p1, p1, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 391
    .line 392
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    invoke-virtual {p1, v4}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    return-void

    .line 400
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 401
    .line 402
    iget-object v0, v0, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 403
    .line 404
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->O4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 405
    .line 406
    .line 407
    goto :goto_2

    .line 408
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 409
    .line 410
    iget-object v0, v0, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 411
    .line 412
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 413
    .line 414
    .line 415
    goto :goto_2

    .line 416
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 417
    .line 418
    iget-object v0, v0, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 419
    .line 420
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 421
    .line 422
    .line 423
    goto :goto_2

    .line 424
    :cond_d
    :pswitch_2
    invoke-static {p1}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 425
    .line 426
    .line 427
    goto :goto_2

    .line 428
    :cond_e
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 429
    .line 430
    iget-object v0, v0, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 431
    .line 432
    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 433
    .line 434
    .line 435
    goto :goto_2

    .line 436
    :cond_f
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 437
    .line 438
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    iget-object v2, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 443
    .line 444
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    if-lez v0, :cond_10

    .line 453
    .line 454
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 455
    .line 456
    iget-object v0, v0, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 457
    .line 458
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    goto :goto_2

    .line 466
    :cond_10
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 467
    .line 468
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    if-ne v0, v1, :cond_11

    .line 473
    .line 474
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 475
    .line 476
    iget-object v0, v0, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 477
    .line 478
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 479
    .line 480
    .line 481
    goto :goto_2

    .line 482
    :cond_11
    iget-object v0, p0, Lcom/join/mgps/fragment/l3$c;->c:Lcom/join/mgps/fragment/l3;

    .line 483
    .line 484
    iget-object v0, v0, Lcom/join/mgps/fragment/l3;->i:Landroid/content/Context;

    .line 485
    .line 486
    iget-object v1, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 487
    .line 488
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    iget-object v2, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 493
    .line 494
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    iget-object v3, p0, Lcom/join/mgps/fragment/l3$c;->b:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 499
    .line 500
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    invoke-static {v0, p1, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 505
    .line 506
    .line 507
    :goto_2
    return-void

    .line 508
    nop

    .line 509
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
