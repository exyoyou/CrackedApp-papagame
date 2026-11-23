.class public Lcom/php25/PDownload/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EBean;
    scope = .enum Lorg/androidannotations/annotations/EBean$Scope;->Singleton:Lorg/androidannotations/annotations/EBean$Scope;
.end annotation


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "com_php25_PDownload_metaFile.db"

    .line 7
    .line 8
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 13
    .line 14
    const-string v0, "CREATE TABLE IF NOT EXISTS DownloadFile (id INTEGER PRIMARY KEY AUTOINCREMENT,tag VARCHAR,url VARCHAR,basePath VARCHAR,name VARCHAR,absolutePath VARCHAR,gameZipPath VARCHAR,totalSize INTEGER,completeSize INTEGER,downloading SMALLINT,showName VARCHAR,createTime VARCHAR,dtype VARCHAR,finished SMALLINT,fileType VARCHAR,finishTime VARCHAR,packageName VARCHAR,tips VARCHAR,portraitURL VARCHAR,percentage VARCHAR,isAutoPause SMALLINT,crc_link_type_val VARCHAR,ver VARCHAR,ver_name VARCHAR,gid VARCHAR,starNumber VARCHAR,romType VARCHAR )"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private b(Landroid/database/Cursor;)Lcom/php25/PDownload/DownloadFile;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cursor"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/php25/PDownload/DownloadFile;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/php25/PDownload/DownloadFile;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "tips"

    .line 7
    .line 8
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x1

    .line 25
    new-array v5, v4, [Ljava/lang/Class;

    .line 26
    .line 27
    const-class v6, Lcom/join/mgps/dto/TipBean;

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    aput-object v6, v5, v7

    .line 31
    .line 32
    const-class v6, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v3, v6, v5}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v1, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/util/List;

    .line 43
    .line 44
    const-string v2, "id"

    .line 45
    .line 46
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->setId(Ljava/lang/Long;)V

    .line 59
    .line 60
    .line 61
    const-string v2, "tag"

    .line 62
    .line 63
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->setTag(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v2, "url"

    .line 75
    .line 76
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->setUrl(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v2, "basePath"

    .line 88
    .line 89
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->setBasePath(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v2, "name"

    .line 101
    .line 102
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->setName(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v2, "showName"

    .line 114
    .line 115
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->setShowName(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v2, "finishTime"

    .line 127
    .line 128
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->setFinishTime(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v2, "dtype"

    .line 140
    .line 141
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->setDtype(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v2, "fileType"

    .line 153
    .line 154
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->setFileType(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string v2, "absolutePath"

    .line 166
    .line 167
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->setAbsolutePath(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const-string v2, "gameZipPath"

    .line 179
    .line 180
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->setGameZipPath(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string v2, "createTime"

    .line 192
    .line 193
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->setCreateTime(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string v2, "totalSize"

    .line 205
    .line 206
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->setTotalSize(Ljava/lang/Integer;)V

    .line 219
    .line 220
    .line 221
    const-string v2, "completeSize"

    .line 222
    .line 223
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    int-to-long v2, v2

    .line 232
    invoke-virtual {v0, v2, v3}, Lcom/php25/PDownload/DownloadFile;->setCompleteSize(J)V

    .line 233
    .line 234
    .line 235
    const-string v2, "packageName"

    .line 236
    .line 237
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-virtual {v0, v2}, Lcom/php25/PDownload/DownloadFile;->setPackageName(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setTipBeans(Ljava/util/List;)V

    .line 249
    .line 250
    .line 251
    const-string v1, "portraitURL"

    .line 252
    .line 253
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setPortraitURL(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    const-string v1, "percentage"

    .line 265
    .line 266
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setPercent(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const-string v1, "crc_link_type_val"

    .line 278
    .line 279
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    const-string v1, "ver"

    .line 291
    .line 292
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setVer(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    const-string v1, "ver_name"

    .line 304
    .line 305
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setVer_name(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    const-string v1, "gid"

    .line 317
    .line 318
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setGid(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    const-string v1, "starNumber"

    .line 330
    .line 331
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setStarNumber(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    const-string v1, "romType"

    .line 343
    .line 344
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-virtual {v0, v1}, Lcom/php25/PDownload/DownloadFile;->setRomType(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    const-string v1, "downloading"

    .line 356
    .line 357
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getShort(I)S

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    const-string v2, "finished"

    .line 366
    .line 367
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getShort(I)S

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-eqz v1, :cond_1

    .line 376
    .line 377
    if-eq v1, v4, :cond_0

    .line 378
    .line 379
    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {v0, v4}, Lcom/php25/PDownload/DownloadFile;->setDownloading(Z)V

    .line 381
    .line 382
    .line 383
    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {v0, v7}, Lcom/php25/PDownload/DownloadFile;->setDownloading(Z)V

    .line 385
    .line 386
    .line 387
    :goto_0
    if-eqz v2, :cond_3

    .line 388
    .line 389
    if-eq v2, v4, :cond_2

    .line 390
    .line 391
    goto :goto_1

    .line 392
    :cond_2
    invoke-virtual {v0, v4}, Lcom/php25/PDownload/DownloadFile;->setFinished(Z)V

    .line 393
    .line 394
    .line 395
    goto :goto_1

    .line 396
    :cond_3
    invoke-virtual {v0, v7}, Lcom/php25/PDownload/DownloadFile;->setFinished(Z)V

    .line 397
    .line 398
    .line 399
    :goto_1
    const-string v1, "isAutoPause"

    .line 400
    .line 401
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getShort(I)S

    .line 406
    .line 407
    .line 408
    move-result p1

    .line 409
    if-eqz p1, :cond_5

    .line 410
    .line 411
    if-eq p1, v4, :cond_4

    .line 412
    .line 413
    goto :goto_2

    .line 414
    :cond_4
    invoke-virtual {v0, v4}, Lcom/php25/PDownload/DownloadFile;->setAutoPause(Z)V

    .line 415
    .line 416
    .line 417
    goto :goto_2

    .line 418
    :cond_5
    invoke-virtual {v0, v7}, Lcom/php25/PDownload/DownloadFile;->setAutoPause(Z)V

    .line 419
    .line 420
    .line 421
    :goto_2
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/php25/PDownload/DownloadFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    .line 8
    const-string v2, "select * from DownloadFile"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-direct {p0, v1}, Lcom/php25/PDownload/a;->b(Landroid/database/Cursor;)Lcom/php25/PDownload/DownloadFile;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public d(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isdownloding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/php25/PDownload/DownloadFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    .line 10
    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    filled-new-array {v1}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "select * from DownloadFile where  fileType=? and finished =0 "

    .line 21
    .line 22
    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    .line 29
    sget-object v1, Lcom/join/mgps/enums/Dtype;->chajian:Lcom/join/mgps/enums/Dtype;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    filled-new-array {v1}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "select * from DownloadFile where fileType=? and finished =1 "

    .line 40
    .line 41
    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-direct {p0, p1}, Lcom/php25/PDownload/a;->b(Landroid/database/Cursor;)Lcom/php25/PDownload/DownloadFile;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method

.method public delete(Lcom/php25/PDownload/DownloadFile;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadFile"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->getId()Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    aput-object p1, v1, v2

    .line 14
    .line 15
    const-string p1, "delete from downloadFile where id=?"

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public e(Lcom/join/mgps/enums/Dtype;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dtype"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/enums/Dtype;",
            ")",
            "Ljava/util/List<",
            "Lcom/php25/PDownload/DownloadFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    .line 10
    sget-object v1, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    filled-new-array {v1}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "select * from DownloadFile where fileType=? and finished =1 "

    .line 21
    .line 22
    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    filled-new-array {p1}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v2, "select * from DownloadFile where dtype=? and finished =1 "

    .line 38
    .line 39
    invoke-virtual {v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/php25/PDownload/a;->b(Landroid/database/Cursor;)Lcom/php25/PDownload/DownloadFile;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/php25/PDownload/DownloadFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    .line 8
    sget-object v2, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    filled-new-array {v2}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "select * from DownloadFile where fileType=?  and finished=0"

    .line 19
    .line 20
    invoke-virtual {v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-direct {p0, v1}, Lcom/php25/PDownload/a;->b(Landroid/database/Cursor;)Lcom/php25/PDownload/DownloadFile;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/php25/PDownload/DownloadFile;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    const-string v1, "select * from DownloadFile where packageName=?"

    .line 4
    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/php25/PDownload/a;->b(Landroid/database/Cursor;)Lcom/php25/PDownload/DownloadFile;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/php25/PDownload/DownloadFile;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    const-string v1, "select * from DownloadFile where tag=?"

    .line 4
    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/php25/PDownload/a;->b(Landroid/database/Cursor;)Lcom/php25/PDownload/DownloadFile;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public update(Lcom/php25/PDownload/DownloadFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadFile"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/php25/PDownload/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->isDownloading()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v2, v1, v3

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->getFinished()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x1

    .line 27
    aput-object v2, v1, v3

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->getFinishTime()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    aput-object v3, v1, v2

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->getTotalSize()Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    aput-object v3, v1, v2

    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->getPercent()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    aput-object v3, v1, v2

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->getCompleteSize()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const/4 v3, 0x5

    .line 59
    aput-object v2, v1, v3

    .line 60
    .line 61
    const/4 v2, 0x6

    .line 62
    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->getGameZipPath()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    aput-object v3, v1, v2

    .line 67
    .line 68
    const/4 v2, 0x7

    .line 69
    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->getVer_name()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    aput-object v3, v1, v2

    .line 74
    .line 75
    const/16 v2, 0x8

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/php25/PDownload/DownloadFile;->getId()Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    aput-object p1, v1, v2

    .line 82
    .line 83
    const-string p1, "update DownloadFile set downloading=? ,finished=? ,finishTime=?,totalSize=?,percentage=? ,completeSize=? ,gameZipPath=?,ver_name=? where id=?"

    .line 84
    .line 85
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
