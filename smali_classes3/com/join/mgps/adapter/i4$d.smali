.class Lcom/join/mgps/adapter/i4$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/i4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/join/mgps/adapter/i4;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/i4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "downloadTask"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    const-string v1, ""

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 p1, 0x0

    .line 52
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    iget-object v3, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    sget-object v4, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    const/4 v3, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/4 v3, 0x0

    .line 81
    :goto_1
    iget-object v4, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    iget-object v4, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    sget-object v5, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    :cond_3
    if-eqz p1, :cond_4

    .line 106
    .line 107
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    .line 108
    .line 109
    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 110
    .line 111
    .line 112
    const/4 v0, 0x4

    .line 113
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_url_remote()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 126
    .line 127
    iget-object v1, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 128
    .line 129
    iget-object v1, v1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 130
    .line 131
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 139
    .line 140
    iget-object v1, v1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 141
    .line 142
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 147
    .line 148
    if-eqz p1, :cond_5

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    iget-object v4, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 161
    .line 162
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-static {p1, v4}, Lcom/join/mgps/Util/UtilsMy;->w0(ILjava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    const/16 v4, 0x2b

    .line 171
    .line 172
    if-lez p1, :cond_6

    .line 173
    .line 174
    const/16 v2, 0x2b

    .line 175
    .line 176
    :cond_6
    const/4 p1, 0x5

    .line 177
    if-eqz v2, :cond_16

    .line 178
    .line 179
    const/16 v5, 0xd

    .line 180
    .line 181
    if-eq v2, v5, :cond_15

    .line 182
    .line 183
    const/4 v5, 0x2

    .line 184
    if-eq v2, v5, :cond_14

    .line 185
    .line 186
    const/4 v6, 0x3

    .line 187
    if-eq v2, v6, :cond_13

    .line 188
    .line 189
    if-eq v2, p1, :cond_10

    .line 190
    .line 191
    const/4 v0, 0x6

    .line 192
    if-eq v2, v0, :cond_13

    .line 193
    .line 194
    const/4 v0, 0x7

    .line 195
    if-eq v2, v0, :cond_16

    .line 196
    .line 197
    const/16 v0, 0x2a

    .line 198
    .line 199
    const-string v1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 200
    .line 201
    if-eq v2, v0, :cond_e

    .line 202
    .line 203
    if-eq v2, v4, :cond_16

    .line 204
    .line 205
    packed-switch v2, :pswitch_data_0

    .line 206
    .line 207
    .line 208
    goto/16 :goto_5

    .line 209
    .line 210
    :pswitch_0
    if-eqz v3, :cond_9

    .line 211
    .line 212
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-ne p1, v5, :cond_9

    .line 219
    .line 220
    sget-object p1, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-ne p1, v0, :cond_7

    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_7
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 244
    .line 245
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {p1, v0}, Lt6/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-eqz p1, :cond_1d

    .line 254
    .line 255
    invoke-static {p1}, Lcom/join/android/app/common/utils/o;->C(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_8

    .line 260
    .line 261
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 262
    .line 263
    iget-object v0, v0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 264
    .line 265
    invoke-static {v0}, Lcom/join/mgps/dialog/PlugInstallDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 274
    .line 275
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 280
    .line 281
    .line 282
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 287
    .line 288
    iget-object v0, v0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 289
    .line 290
    iget-object v1, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 291
    .line 292
    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/servcie/j;->w(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_5

    .line 296
    .line 297
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 298
    .line 299
    iget-object v0, v0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 300
    .line 301
    invoke-static {v0}, Lcom/join/mgps/dialog/PlugInstallDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 310
    .line 311
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {p1, v5}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 320
    .line 321
    .line 322
    goto/16 :goto_5

    .line 323
    .line 324
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 325
    .line 326
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 327
    .line 328
    iget-object v0, v0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 329
    .line 330
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_5

    .line 334
    .line 335
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 336
    .line 337
    iget-object p1, p1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 338
    .line 339
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    if-nez p1, :cond_a

    .line 344
    .line 345
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 346
    .line 347
    iget-object p1, p1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 348
    .line 349
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    return-void

    .line 357
    :cond_a
    if-eqz v3, :cond_d

    .line 358
    .line 359
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 360
    .line 361
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    if-eqz p1, :cond_b

    .line 370
    .line 371
    return-void

    .line 372
    :cond_b
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 377
    .line 378
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {p1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    if-eqz p1, :cond_c

    .line 387
    .line 388
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 389
    .line 390
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 395
    .line 396
    .line 397
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 398
    .line 399
    invoke-static {v0}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 400
    .line 401
    .line 402
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 403
    .line 404
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->V4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 405
    .line 406
    .line 407
    :cond_c
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 412
    .line 413
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {p1, v0}, Lt6/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 422
    .line 423
    iget-object v0, v0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 424
    .line 425
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->q1(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_5

    .line 429
    .line 430
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 431
    .line 432
    iget-object p1, p1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 433
    .line 434
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 435
    .line 436
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->X2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 437
    .line 438
    .line 439
    goto/16 :goto_5

    .line 440
    .line 441
    :cond_e
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 442
    .line 443
    iget-object p1, p1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 444
    .line 445
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 446
    .line 447
    .line 448
    move-result p1

    .line 449
    if-nez p1, :cond_f

    .line 450
    .line 451
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 452
    .line 453
    iget-object p1, p1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 454
    .line 455
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    invoke-virtual {p1, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    return-void

    .line 463
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 464
    .line 465
    iget-object p1, p1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 466
    .line 467
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 468
    .line 469
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->O4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 470
    .line 471
    .line 472
    goto/16 :goto_5

    .line 473
    .line 474
    :cond_10
    if-nez v3, :cond_1d

    .line 475
    .line 476
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 477
    .line 478
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 479
    .line 480
    .line 481
    iget-object v2, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 482
    .line 483
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    const-string v3, "cld_"

    .line 488
    .line 489
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    iget-object v2, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 498
    .line 499
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isCloudTask()Z

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    if-eqz v2, :cond_11

    .line 504
    .line 505
    sget-object v2, Lcom/papa/sim/statistic/EventP$TypeCode;->cloudGame:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 506
    .line 507
    goto :goto_3

    .line 508
    :cond_11
    sget-object v2, Lcom/papa/sim/statistic/EventP$TypeCode;->game:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 509
    .line 510
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    sget-object v2, Lcom/papa/sim/statistic/EventP$FirstModel;->meTab:Lcom/papa/sim/statistic/EventP$FirstModel;

    .line 519
    .line 520
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    iget-object v2, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 529
    .line 530
    invoke-static {v2}, Lcom/join/mgps/adapter/i4;->r(Lcom/join/mgps/adapter/i4;)I

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    if-ne v2, v0, :cond_12

    .line 535
    .line 536
    sget-object v0, Lcom/papa/sim/statistic/EventP$SecondModel;->myCloudGame:Lcom/papa/sim/statistic/EventP$SecondModel;

    .line 537
    .line 538
    goto :goto_4

    .line 539
    :cond_12
    sget-object v0, Lcom/papa/sim/statistic/EventP$SecondModel;->myGame:Lcom/papa/sim/statistic/EventP$SecondModel;

    .line 540
    .line 541
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 550
    .line 551
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 560
    .line 561
    .line 562
    move-result-object p1

    .line 563
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 564
    .line 565
    iget-object v0, v0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 566
    .line 567
    iget-object v1, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 568
    .line 569
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from()I

    .line 570
    .line 571
    .line 572
    move-result v2

    .line 573
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    invoke-static {v0, v1, v2, p1}, Lcom/join/mgps/Util/UtilsMy;->q4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)V

    .line 578
    .line 579
    .line 580
    goto/16 :goto_5

    .line 581
    .line 582
    :cond_13
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 583
    .line 584
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 585
    .line 586
    iget-object v0, v0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 587
    .line 588
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 589
    .line 590
    .line 591
    goto/16 :goto_5

    .line 592
    .line 593
    :cond_14
    :pswitch_2
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 594
    .line 595
    invoke-static {p1}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 596
    .line 597
    .line 598
    goto/16 :goto_5

    .line 599
    .line 600
    :cond_15
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 601
    .line 602
    iget-object p1, p1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 603
    .line 604
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 605
    .line 606
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 607
    .line 608
    .line 609
    goto/16 :goto_5

    .line 610
    .line 611
    :cond_16
    if-eqz v3, :cond_17

    .line 612
    .line 613
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 614
    .line 615
    .line 616
    move-result-object p1

    .line 617
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 618
    .line 619
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-virtual {p1, v0}, Lt6/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 624
    .line 625
    .line 626
    move-result-object p1

    .line 627
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 628
    .line 629
    iget-object v0, v0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 630
    .line 631
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->s1(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    .line 632
    .line 633
    .line 634
    return-void

    .line 635
    :cond_17
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 636
    .line 637
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 638
    .line 639
    .line 640
    move-result v0

    .line 641
    iget-object v1, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 642
    .line 643
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v1

    .line 647
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->y0(ILjava/lang/String;)I

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    if-lez v0, :cond_18

    .line 652
    .line 653
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 654
    .line 655
    iget-object p1, p1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 656
    .line 657
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 658
    .line 659
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    goto/16 :goto_5

    .line 667
    .line 668
    :cond_18
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 669
    .line 670
    iget-object v0, v0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 671
    .line 672
    iget-object v1, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 673
    .line 674
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 675
    .line 676
    .line 677
    move-result v0

    .line 678
    if-eqz v0, :cond_19

    .line 679
    .line 680
    goto/16 :goto_5

    .line 681
    .line 682
    :cond_19
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 683
    .line 684
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    .line 685
    .line 686
    .line 687
    move-result v0

    .line 688
    if-ne v0, p1, :cond_1a

    .line 689
    .line 690
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 691
    .line 692
    iget-object p1, p1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 693
    .line 694
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 695
    .line 696
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 697
    .line 698
    .line 699
    goto/16 :goto_5

    .line 700
    .line 701
    :cond_1a
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 702
    .line 703
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object p1

    .line 707
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 708
    .line 709
    .line 710
    move-result p1

    .line 711
    if-eqz p1, :cond_1b

    .line 712
    .line 713
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 714
    .line 715
    invoke-static {p1}, Lcom/join/mgps/adapter/i4;->s(Lcom/join/mgps/adapter/i4;)Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 716
    .line 717
    .line 718
    move-result-object p1

    .line 719
    if-eqz p1, :cond_1b

    .line 720
    .line 721
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 722
    .line 723
    invoke-static {p1}, Lcom/join/mgps/adapter/i4;->s(Lcom/join/mgps/adapter/i4;)Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 724
    .line 725
    .line 726
    move-result-object p1

    .line 727
    const/16 v0, 0x98

    .line 728
    .line 729
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 730
    .line 731
    .line 732
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 733
    .line 734
    invoke-static {p1}, Lcom/join/mgps/adapter/i4;->s(Lcom/join/mgps/adapter/i4;)Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 735
    .line 736
    .line 737
    move-result-object p1

    .line 738
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 739
    .line 740
    .line 741
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 742
    .line 743
    iget-object v0, p1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 744
    .line 745
    invoke-static {p1}, Lcom/join/mgps/adapter/i4;->s(Lcom/join/mgps/adapter/i4;)Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 746
    .line 747
    .line 748
    move-result-object p1

    .line 749
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->U2(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 750
    .line 751
    .line 752
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 753
    .line 754
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 755
    .line 756
    .line 757
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 758
    .line 759
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 764
    .line 765
    .line 766
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 767
    .line 768
    iget-object v0, v0, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 769
    .line 770
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickGameDownload:Lcom/papa/sim/statistic/Event;

    .line 775
    .line 776
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 777
    .line 778
    .line 779
    goto :goto_5

    .line 780
    :cond_1b
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 781
    .line 782
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object p1

    .line 786
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 787
    .line 788
    .line 789
    move-result p1

    .line 790
    if-eqz p1, :cond_1c

    .line 791
    .line 792
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 793
    .line 794
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 795
    .line 796
    .line 797
    move-result-object p1

    .line 798
    if-eqz p1, :cond_1c

    .line 799
    .line 800
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 801
    .line 802
    iget-object p1, p1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 803
    .line 804
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 805
    .line 806
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->U2(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 811
    .line 812
    .line 813
    goto :goto_5

    .line 814
    :cond_1c
    iget-object p1, p0, Lcom/join/mgps/adapter/i4$d;->c:Lcom/join/mgps/adapter/i4;

    .line 815
    .line 816
    iget-object p1, p1, Lcom/join/mgps/adapter/i4;->b:Landroid/content/Context;

    .line 817
    .line 818
    iget-object v0, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 819
    .line 820
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    iget-object v2, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 825
    .line 826
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    .line 827
    .line 828
    .line 829
    move-result v2

    .line 830
    iget-object v3, p0, Lcom/join/mgps/adapter/i4$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 831
    .line 832
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    .line 833
    .line 834
    .line 835
    move-result v3

    .line 836
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 837
    .line 838
    .line 839
    :cond_1d
    :goto_5
    return-void

    .line 840
    nop

    .line 841
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
