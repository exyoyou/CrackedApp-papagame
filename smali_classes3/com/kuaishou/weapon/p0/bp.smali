.class public Lcom/kuaishou/weapon/p0/bp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "7"

.field public static final b:Ljava/lang/String; = "6"

.field public static final c:Ljava/lang/String; = "5"

.field public static final d:Ljava/lang/String; = "4"

.field public static final e:Ljava/lang/String; = "3"

.field public static final f:Ljava/lang/String; = "2"

.field public static final g:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 21

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v2, Ljava/util/zip/CRC32;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v9

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v10, 0x1

    .line 20
    invoke-static {v3, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    move-object v3, v9

    .line 29
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    .line 31
    .line 32
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 34
    .line 35
    .line 36
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    const-string v11, "0"

    .line 38
    .line 39
    const-string v12, "date_modified"

    .line 40
    .line 41
    const-string v13, "3"

    .line 42
    .line 43
    const-string v14, "date_added"

    .line 44
    .line 45
    const-string v15, "4"

    .line 46
    .line 47
    const-string v8, "5"

    .line 48
    .line 49
    const-string v7, "_data"

    .line 50
    .line 51
    const-string v6, "2"

    .line 52
    .line 53
    const-string v5, "1"

    .line 54
    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    .line 58
    .line 59
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v2, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v16

    .line 81
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v4, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    .line 87
    .line 88
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-virtual {v4, v15, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {v4, v13, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 117
    .line 118
    .line 119
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    .line 121
    .line 122
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const/4 v3, 0x2

    .line 127
    invoke-static {v1, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    const/4 v1, 0x0

    .line 132
    const/16 v16, 0x0

    .line 133
    .line 134
    const/16 v17, 0x0

    .line 135
    .line 136
    const/16 v18, 0x0

    .line 137
    .line 138
    move-object v3, v9

    .line 139
    move-object v10, v5

    .line 140
    move-object v5, v1

    .line 141
    move-object v1, v6

    .line 142
    move-object/from16 v6, v16

    .line 143
    .line 144
    move-object/from16 v19, v7

    .line 145
    .line 146
    move-object/from16 v7, v17

    .line 147
    .line 148
    move-object/from16 v16, v11

    .line 149
    .line 150
    move-object v11, v8

    .line 151
    move-object/from16 v8, v18

    .line 152
    .line 153
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 154
    .line 155
    .line 156
    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 157
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_1

    .line 162
    .line 163
    new-instance v4, Lorg/json/JSONObject;

    .line 164
    .line 165
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 166
    .line 167
    .line 168
    move-object/from16 v8, v19

    .line 169
    .line 170
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v2, v5}, Ljava/util/zip/CRC32;->update([B)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 186
    .line 187
    .line 188
    move-result-wide v5

    .line 189
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-virtual {v4, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    .line 195
    .line 196
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    invoke-virtual {v4, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 205
    .line 206
    .line 207
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4, v10, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 225
    .line 226
    .line 227
    goto :goto_0

    .line 228
    :cond_1
    move-object/from16 v8, v19

    .line 229
    .line 230
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 231
    .line 232
    .line 233
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    const/4 v4, 0x4

    .line 238
    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    const/4 v5, 0x0

    .line 243
    const/4 v6, 0x0

    .line 244
    const/4 v7, 0x0

    .line 245
    const/16 v17, 0x0

    .line 246
    .line 247
    move-object v3, v9

    .line 248
    move-object/from16 v18, v9

    .line 249
    .line 250
    move-object v9, v8

    .line 251
    move-object/from16 v8, v17

    .line 252
    .line 253
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 254
    .line 255
    .line 256
    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 257
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-eqz v4, :cond_2

    .line 262
    .line 263
    new-instance v4, Lorg/json/JSONObject;

    .line 264
    .line 265
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-virtual {v2, v5}, Ljava/util/zip/CRC32;->update([B)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 284
    .line 285
    .line 286
    move-result-wide v5

    .line 287
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    invoke-virtual {v4, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    .line 293
    .line 294
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    invoke-virtual {v4, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 303
    .line 304
    .line 305
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 323
    .line 324
    .line 325
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 326
    .line 327
    .line 328
    :try_start_7
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 329
    .line 330
    const/4 v5, 0x0

    .line 331
    const-string v6, "is_ringtone= ? "

    .line 332
    .line 333
    const/4 v3, 0x1

    .line 334
    new-array v7, v3, [Ljava/lang/String;

    .line 335
    .line 336
    const/16 v17, 0x0

    .line 337
    .line 338
    aput-object v10, v7, v17

    .line 339
    .line 340
    const-string v8, "date_added"

    .line 341
    .line 342
    move-object/from16 v3, v18

    .line 343
    .line 344
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 345
    .line 346
    .line 347
    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 348
    :try_start_8
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    if-eqz v4, :cond_3

    .line 353
    .line 354
    new-instance v4, Lorg/json/JSONObject;

    .line 355
    .line 356
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 357
    .line 358
    .line 359
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    invoke-virtual {v2, v5}, Ljava/util/zip/CRC32;->update([B)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 375
    .line 376
    .line 377
    move-result-wide v5

    .line 378
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    invoke-virtual {v4, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    .line 384
    .line 385
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 390
    .line 391
    .line 392
    move-result v5

    .line 393
    invoke-virtual {v4, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 394
    .line 395
    .line 396
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    move-result v5

    .line 400
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 405
    .line 406
    .line 407
    move-object/from16 v8, v16

    .line 408
    .line 409
    invoke-virtual {v4, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v4, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 416
    .line 417
    .line 418
    goto :goto_1

    .line 419
    :cond_3
    move-object/from16 v8, v16

    .line 420
    .line 421
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 422
    .line 423
    .line 424
    :try_start_9
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 425
    .line 426
    const/4 v5, 0x0

    .line 427
    const-string v6, "is_notification= ? "

    .line 428
    .line 429
    const/4 v3, 0x1

    .line 430
    new-array v7, v3, [Ljava/lang/String;

    .line 431
    .line 432
    aput-object v10, v7, v17

    .line 433
    .line 434
    const-string v16, "date_added"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 435
    .line 436
    move-object/from16 v3, v18

    .line 437
    .line 438
    move-object/from16 v19, v0

    .line 439
    .line 440
    move-object v0, v8

    .line 441
    move-object/from16 v8, v16

    .line 442
    .line 443
    :try_start_a
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 444
    .line 445
    .line 446
    move-result-object v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 447
    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 448
    .line 449
    .line 450
    move-result v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 451
    if-eqz v4, :cond_4

    .line 452
    .line 453
    :try_start_c
    new-instance v4, Lorg/json/JSONObject;

    .line 454
    .line 455
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 456
    .line 457
    .line 458
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v5

    .line 466
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    invoke-virtual {v2, v5}, Ljava/util/zip/CRC32;->update([B)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 474
    .line 475
    .line 476
    move-result-wide v5

    .line 477
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v5

    .line 481
    invoke-virtual {v4, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    .line 483
    .line 484
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    move-result v5

    .line 488
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 489
    .line 490
    .line 491
    move-result v5

    .line 492
    invoke-virtual {v4, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 493
    .line 494
    .line 495
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 496
    .line 497
    .line 498
    move-result v5

    .line 499
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v4, v10, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 510
    .line 511
    .line 512
    move-object/from16 v8, v19

    .line 513
    .line 514
    :try_start_d
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 515
    .line 516
    .line 517
    goto :goto_2

    .line 518
    :catch_0
    move-object/from16 v8, v19

    .line 519
    .line 520
    :catch_1
    nop

    .line 521
    move-object v0, v8

    .line 522
    goto/16 :goto_5

    .line 523
    .line 524
    :cond_4
    move-object/from16 v8, v19

    .line 525
    .line 526
    :goto_2
    :try_start_e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 527
    .line 528
    .line 529
    :try_start_f
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 530
    .line 531
    const/4 v5, 0x0

    .line 532
    const-string v6, "is_alarm= ? "

    .line 533
    .line 534
    const/4 v3, 0x1

    .line 535
    new-array v7, v3, [Ljava/lang/String;

    .line 536
    .line 537
    aput-object v10, v7, v17

    .line 538
    .line 539
    const-string v16, "date_added"
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 540
    .line 541
    move-object/from16 v3, v18

    .line 542
    .line 543
    move-object/from16 v20, v8

    .line 544
    .line 545
    move-object/from16 v8, v16

    .line 546
    .line 547
    :try_start_10
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 548
    .line 549
    .line 550
    move-result-object v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 551
    :try_start_11
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    if-eqz v4, :cond_5

    .line 556
    .line 557
    new-instance v4, Lorg/json/JSONObject;

    .line 558
    .line 559
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 560
    .line 561
    .line 562
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 563
    .line 564
    .line 565
    move-result v5

    .line 566
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v5

    .line 570
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 571
    .line 572
    .line 573
    move-result-object v5

    .line 574
    invoke-virtual {v2, v5}, Ljava/util/zip/CRC32;->update([B)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 578
    .line 579
    .line 580
    move-result-wide v5

    .line 581
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    invoke-virtual {v4, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 586
    .line 587
    .line 588
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 589
    .line 590
    .line 591
    move-result v2

    .line 592
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    invoke-virtual {v4, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 597
    .line 598
    .line 599
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 600
    .line 601
    .line 602
    move-result v2

    .line 603
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 604
    .line 605
    .line 606
    move-result v2

    .line 607
    invoke-virtual {v4, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v4, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 614
    .line 615
    .line 616
    move-object/from16 v0, v20

    .line 617
    .line 618
    :try_start_12
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 619
    .line 620
    .line 621
    goto :goto_3

    .line 622
    :cond_5
    move-object/from16 v0, v20

    .line 623
    .line 624
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 625
    .line 626
    .line 627
    goto :goto_9

    .line 628
    :catch_2
    move-object/from16 v0, v20

    .line 629
    .line 630
    goto :goto_4

    .line 631
    :catch_3
    move-object/from16 v0, v20

    .line 632
    .line 633
    goto :goto_7

    .line 634
    :catch_4
    move-object v0, v8

    .line 635
    goto :goto_7

    .line 636
    :catch_5
    move-object v0, v8

    .line 637
    goto :goto_4

    .line 638
    :catch_6
    move-object/from16 v0, v19

    .line 639
    .line 640
    goto :goto_4

    .line 641
    :catch_7
    move-object/from16 v0, v19

    .line 642
    .line 643
    goto :goto_7

    .line 644
    :catchall_0
    move-exception v0

    .line 645
    move-object v1, v3

    .line 646
    goto :goto_6

    .line 647
    :catch_8
    :goto_4
    nop

    .line 648
    :goto_5
    move-object v1, v3

    .line 649
    goto :goto_8

    .line 650
    :catchall_1
    move-exception v0

    .line 651
    const/4 v1, 0x0

    .line 652
    :goto_6
    if-eqz v1, :cond_6

    .line 653
    .line 654
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 655
    .line 656
    .line 657
    :cond_6
    throw v0

    .line 658
    :catch_9
    :goto_7
    nop

    .line 659
    const/4 v1, 0x0

    .line 660
    :goto_8
    if-eqz v1, :cond_7

    .line 661
    .line 662
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 663
    .line 664
    .line 665
    :cond_7
    :goto_9
    return-object v0
.end method
