.class Lcom/join/mgps/adapter/q4$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/q4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/join/mgps/adapter/q4;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/q4;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, ""

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    sget-object v3, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/4 v0, 0x0

    .line 80
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    iget-object v2, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    sget-object v3, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    :cond_3
    if-eqz p1, :cond_4

    .line 105
    .line 106
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    .line 107
    .line 108
    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 109
    .line 110
    .line 111
    const/4 v0, 0x4

    .line 112
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_url_remote()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 125
    .line 126
    iget-object v1, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 127
    .line 128
    iget-object v1, v1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 129
    .line 130
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 138
    .line 139
    iget-object v1, v1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 140
    .line 141
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 146
    .line 147
    if-eqz p1, :cond_5

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    iget-object v2, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 160
    .line 161
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-static {p1, v2}, Lcom/join/mgps/Util/UtilsMy;->w0(ILjava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    const/16 v2, 0x2b

    .line 170
    .line 171
    if-lez p1, :cond_6

    .line 172
    .line 173
    const/16 v1, 0x2b

    .line 174
    .line 175
    :cond_6
    const/4 p1, 0x5

    .line 176
    if-eqz v1, :cond_14

    .line 177
    .line 178
    const/16 v3, 0xd

    .line 179
    .line 180
    if-eq v1, v3, :cond_13

    .line 181
    .line 182
    const/4 v3, 0x2

    .line 183
    if-eq v1, v3, :cond_12

    .line 184
    .line 185
    const/4 v4, 0x3

    .line 186
    if-eq v1, v4, :cond_11

    .line 187
    .line 188
    if-eq v1, p1, :cond_10

    .line 189
    .line 190
    const/4 v4, 0x6

    .line 191
    if-eq v1, v4, :cond_11

    .line 192
    .line 193
    const/4 v4, 0x7

    .line 194
    if-eq v1, v4, :cond_14

    .line 195
    .line 196
    const/16 v4, 0x2a

    .line 197
    .line 198
    const-string v5, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 199
    .line 200
    if-eq v1, v4, :cond_e

    .line 201
    .line 202
    if-eq v1, v2, :cond_14

    .line 203
    .line 204
    packed-switch v1, :pswitch_data_0

    .line 205
    .line 206
    .line 207
    goto/16 :goto_3

    .line 208
    .line 209
    :pswitch_0
    if-eqz v0, :cond_9

    .line 210
    .line 211
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-ne p1, v3, :cond_9

    .line 218
    .line 219
    sget-object p1, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-ne p1, v0, :cond_7

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_7
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {p1, v0}, Lt6/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    if-eqz p1, :cond_19

    .line 253
    .line 254
    invoke-static {p1}, Lcom/join/android/app/common/utils/o;->C(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_8

    .line 259
    .line 260
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 261
    .line 262
    iget-object v0, v0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 263
    .line 264
    invoke-static {v0}, Lcom/join/mgps/dialog/PlugInstallDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 273
    .line 274
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 279
    .line 280
    .line 281
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 286
    .line 287
    iget-object v0, v0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 288
    .line 289
    iget-object v1, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 290
    .line 291
    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/servcie/j;->w(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_3

    .line 295
    .line 296
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 297
    .line 298
    iget-object v0, v0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 299
    .line 300
    invoke-static {v0}, Lcom/join/mgps/dialog/PlugInstallDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 309
    .line 310
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-virtual {p1, v3}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 319
    .line 320
    .line 321
    goto/16 :goto_3

    .line 322
    .line 323
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 324
    .line 325
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 326
    .line 327
    iget-object v0, v0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 328
    .line 329
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_3

    .line 333
    .line 334
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 335
    .line 336
    iget-object p1, p1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 337
    .line 338
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    if-nez p1, :cond_a

    .line 343
    .line 344
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 345
    .line 346
    iget-object p1, p1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 347
    .line 348
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    invoke-virtual {p1, v5}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    :cond_a
    if-eqz v0, :cond_d

    .line 357
    .line 358
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 359
    .line 360
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    .line 361
    .line 362
    .line 363
    move-result p1

    .line 364
    if-ne p1, v3, :cond_d

    .line 365
    .line 366
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 367
    .line 368
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 373
    .line 374
    .line 375
    move-result p1

    .line 376
    if-eqz p1, :cond_b

    .line 377
    .line 378
    return-void

    .line 379
    :cond_b
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 384
    .line 385
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {p1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    if-eqz p1, :cond_c

    .line 394
    .line 395
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 396
    .line 397
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 402
    .line 403
    .line 404
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 405
    .line 406
    invoke-static {v0}, Lcom/php25/PDownload/d;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 407
    .line 408
    .line 409
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 410
    .line 411
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->V4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 412
    .line 413
    .line 414
    :cond_c
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 419
    .line 420
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-virtual {p1, v0}, Lt6/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 429
    .line 430
    iget-object v0, v0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 431
    .line 432
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->q1(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    .line 433
    .line 434
    .line 435
    goto/16 :goto_3

    .line 436
    .line 437
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 438
    .line 439
    iget-object p1, p1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 440
    .line 441
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 442
    .line 443
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->X2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 444
    .line 445
    .line 446
    goto/16 :goto_3

    .line 447
    .line 448
    :cond_e
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 449
    .line 450
    iget-object p1, p1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 451
    .line 452
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 453
    .line 454
    .line 455
    move-result p1

    .line 456
    if-nez p1, :cond_f

    .line 457
    .line 458
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 459
    .line 460
    iget-object p1, p1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 461
    .line 462
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    invoke-virtual {p1, v5}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    return-void

    .line 470
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 471
    .line 472
    iget-object p1, p1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 473
    .line 474
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 475
    .line 476
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->O4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 477
    .line 478
    .line 479
    goto/16 :goto_3

    .line 480
    .line 481
    :cond_10
    if-nez v0, :cond_19

    .line 482
    .line 483
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 484
    .line 485
    iget-object p1, p1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 486
    .line 487
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 488
    .line 489
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 490
    .line 491
    .line 492
    goto/16 :goto_3

    .line 493
    .line 494
    :cond_11
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 495
    .line 496
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 497
    .line 498
    iget-object v0, v0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 499
    .line 500
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 501
    .line 502
    .line 503
    goto/16 :goto_3

    .line 504
    .line 505
    :cond_12
    :pswitch_2
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 506
    .line 507
    invoke-static {p1}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 508
    .line 509
    .line 510
    goto/16 :goto_3

    .line 511
    .line 512
    :cond_13
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 513
    .line 514
    iget-object p1, p1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 515
    .line 516
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 517
    .line 518
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 519
    .line 520
    .line 521
    goto/16 :goto_3

    .line 522
    .line 523
    :cond_14
    if-eqz v0, :cond_15

    .line 524
    .line 525
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 526
    .line 527
    .line 528
    move-result-object p1

    .line 529
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 530
    .line 531
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-virtual {p1, v0}, Lt6/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 540
    .line 541
    iget-object v0, v0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 542
    .line 543
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->s1(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    .line 544
    .line 545
    .line 546
    return-void

    .line 547
    :cond_15
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 548
    .line 549
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    iget-object v1, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 554
    .line 555
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->y0(ILjava/lang/String;)I

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    if-lez v0, :cond_16

    .line 564
    .line 565
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 566
    .line 567
    iget-object p1, p1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 568
    .line 569
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 570
    .line 571
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_3

    .line 579
    .line 580
    :cond_16
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 581
    .line 582
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_status()I

    .line 583
    .line 584
    .line 585
    move-result v0

    .line 586
    if-ne v0, p1, :cond_17

    .line 587
    .line 588
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 589
    .line 590
    iget-object p1, p1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 591
    .line 592
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 593
    .line 594
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 595
    .line 596
    .line 597
    goto :goto_3

    .line 598
    :cond_17
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 599
    .line 600
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object p1

    .line 604
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 605
    .line 606
    .line 607
    move-result p1

    .line 608
    if-eqz p1, :cond_18

    .line 609
    .line 610
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 611
    .line 612
    invoke-static {p1}, Lcom/join/mgps/adapter/q4;->G(Lcom/join/mgps/adapter/q4;)Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 613
    .line 614
    .line 615
    move-result-object p1

    .line 616
    if-eqz p1, :cond_18

    .line 617
    .line 618
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 619
    .line 620
    invoke-static {p1}, Lcom/join/mgps/adapter/q4;->G(Lcom/join/mgps/adapter/q4;)Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 621
    .line 622
    .line 623
    move-result-object p1

    .line 624
    const/16 v0, 0x98

    .line 625
    .line 626
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 627
    .line 628
    .line 629
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 630
    .line 631
    invoke-static {p1}, Lcom/join/mgps/adapter/q4;->G(Lcom/join/mgps/adapter/q4;)Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 632
    .line 633
    .line 634
    move-result-object p1

    .line 635
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 636
    .line 637
    .line 638
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 639
    .line 640
    iget-object v0, p1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 641
    .line 642
    invoke-static {p1}, Lcom/join/mgps/adapter/q4;->G(Lcom/join/mgps/adapter/q4;)Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 643
    .line 644
    .line 645
    move-result-object p1

    .line 646
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->U2(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 647
    .line 648
    .line 649
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 650
    .line 651
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 652
    .line 653
    .line 654
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 655
    .line 656
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 661
    .line 662
    .line 663
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 664
    .line 665
    iget-object v0, v0, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 666
    .line 667
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickGameDownload:Lcom/papa/sim/statistic/Event;

    .line 672
    .line 673
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 674
    .line 675
    .line 676
    goto :goto_3

    .line 677
    :cond_18
    iget-object p1, p0, Lcom/join/mgps/adapter/q4$e;->c:Lcom/join/mgps/adapter/q4;

    .line 678
    .line 679
    iget-object p1, p1, Lcom/join/mgps/adapter/q4;->h:Landroid/content/Context;

    .line 680
    .line 681
    iget-object v0, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 682
    .line 683
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTp_down_url()Ljava/util/List;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    iget-object v2, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 688
    .line 689
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOther_down_switch()I

    .line 690
    .line 691
    .line 692
    move-result v2

    .line 693
    iget-object v3, p0, Lcom/join/mgps/adapter/q4$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 694
    .line 695
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCdn_down_switch()I

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    invoke-static {p1, v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 700
    .line 701
    .line 702
    :cond_19
    :goto_3
    return-void

    .line 703
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
