.class Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/commons/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;


# direct methods
.method constructor <init>(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->a:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcn/fly/tools/utils/FileLocker;)Z
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v3

    .line 7
    iget-object v0, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 8
    .line 9
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->d(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->a:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v5, 0x1

    .line 19
    if-le v0, v5, :cond_6

    .line 20
    .line 21
    new-instance v6, Ljava/util/LinkedList;

    .line 22
    .line 23
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->a:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    new-array v7, v0, [[B

    .line 33
    .line 34
    iget-object v8, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->a:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    const/4 v9, 0x0

    .line 41
    :goto_0
    if-ge v9, v8, :cond_0

    .line 42
    .line 43
    iget-object v10, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->a:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    check-cast v10, Lcn/fly/tools/utils/FlyPersistence$i;

    .line 50
    .line 51
    new-instance v11, Lcn/fly/tools/utils/FlyPersistence$g;

    .line 52
    .line 53
    invoke-static {v10}, Lcn/fly/tools/utils/FlyPersistence$i;->b(Lcn/fly/tools/utils/FlyPersistence$i;)[B

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    invoke-direct {v11, v12}, Lcn/fly/tools/utils/FlyPersistence$g;-><init>([B)V

    .line 58
    .line 59
    .line 60
    new-instance v12, Lcn/fly/tools/utils/FlyPersistence$a;

    .line 61
    .line 62
    invoke-virtual {v10}, Lcn/fly/tools/utils/FlyPersistence$i;->a()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v13

    .line 66
    invoke-virtual {v10}, Lcn/fly/tools/utils/FlyPersistence$i;->c()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v14

    .line 70
    invoke-direct {v12, v13, v14}, Lcn/fly/tools/utils/FlyPersistence$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object v13, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 74
    .line 75
    invoke-static {v13}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->h(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Lcn/fly/tools/utils/FlyPersistence$f;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    invoke-virtual {v12}, Lcn/fly/tools/utils/FlyPersistence$a;->b()Ljava/util/HashMap;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    invoke-static {v13, v12}, Lcn/fly/tools/utils/FlyPersistence$f;->a(Lcn/fly/tools/utils/FlyPersistence$f;Ljava/lang/Object;)[B

    .line 84
    .line 85
    .line 86
    move-result-object v12

    .line 87
    iget-object v13, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 88
    .line 89
    invoke-static {v13, v11}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Lcn/fly/tools/utils/FlyPersistence$g;)Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    const/4 v15, 0x0

    .line 94
    invoke-static {v10}, Lcn/fly/tools/utils/FlyPersistence$i;->b(Lcn/fly/tools/utils/FlyPersistence$i;)[B

    .line 95
    .line 96
    .line 97
    move-result-object v16

    .line 98
    array-length v13, v12

    .line 99
    int-to-long v13, v13

    .line 100
    invoke-static {v10}, Lcn/fly/tools/utils/FlyPersistence$i;->c(Lcn/fly/tools/utils/FlyPersistence$i;)J

    .line 101
    .line 102
    .line 103
    move-result-wide v19

    .line 104
    move-wide/from16 v17, v13

    .line 105
    .line 106
    move-object v14, v11

    .line 107
    invoke-virtual/range {v14 .. v20}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->a(B[BJJ)V

    .line 108
    .line 109
    .line 110
    iget-object v13, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 111
    .line 112
    invoke-static {v13}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->i(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Lcn/fly/tools/utils/FlyPersistence$h;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    new-instance v14, Lcn/fly/tools/utils/FlyPersistence$g;

    .line 117
    .line 118
    invoke-static {v10}, Lcn/fly/tools/utils/FlyPersistence$i;->d(Lcn/fly/tools/utils/FlyPersistence$i;)[B

    .line 119
    .line 120
    .line 121
    move-result-object v15

    .line 122
    invoke-direct {v14, v15}, Lcn/fly/tools/utils/FlyPersistence$g;-><init>([B)V

    .line 123
    .line 124
    .line 125
    new-instance v15, Lcn/fly/tools/utils/FlyPersistence$c;

    .line 126
    .line 127
    invoke-static {v10}, Lcn/fly/tools/utils/FlyPersistence$i;->c(Lcn/fly/tools/utils/FlyPersistence$i;)J

    .line 128
    .line 129
    .line 130
    move-result-wide v17

    .line 131
    invoke-static {v10}, Lcn/fly/tools/utils/FlyPersistence$i;->e(Lcn/fly/tools/utils/FlyPersistence$i;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v19

    .line 135
    array-length v10, v12

    .line 136
    move-wide/from16 v23, v3

    .line 137
    .line 138
    int-to-long v2, v10

    .line 139
    const/16 v22, 0x0

    .line 140
    .line 141
    move-object/from16 v16, v15

    .line 142
    .line 143
    move-wide/from16 v20, v2

    .line 144
    .line 145
    invoke-direct/range {v16 .. v22}, Lcn/fly/tools/utils/FlyPersistence$c;-><init>(JLjava/lang/Object;JLcn/fly/tools/utils/FlyPersistence$1;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v13, v14, v15}, Lcn/fly/tools/utils/FlyPersistence$h;->a(Lcn/fly/tools/utils/FlyPersistence$h;Lcn/fly/tools/utils/FlyPersistence$g;Lcn/fly/tools/utils/FlyPersistence$c;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    aput-object v12, v7, v9

    .line 155
    .line 156
    add-int/lit8 v9, v9, 0x1

    .line 157
    .line 158
    move-wide/from16 v3, v23

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_0
    move-wide/from16 v23, v3

    .line 162
    .line 163
    iget-object v2, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 164
    .line 165
    invoke-static {v2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/RandomAccessFile;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    .line 170
    .line 171
    .line 172
    move-result-wide v2
    :try_end_0
    .catch Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$MpfBrokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 173
    const/4 v4, 0x0

    .line 174
    const/4 v9, 0x2

    .line 175
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    .line 176
    .line 177
    iget-object v11, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 178
    .line 179
    invoke-static {v11}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/RandomAccessFile;

    .line 180
    .line 181
    .line 182
    move-result-object v11

    .line 183
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 184
    .line 185
    .line 186
    move-result-object v11

    .line 187
    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 188
    .line 189
    .line 190
    :try_start_2
    new-instance v11, Ljava/io/BufferedOutputStream;

    .line 191
    .line 192
    invoke-direct {v11, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 193
    .line 194
    .line 195
    :try_start_3
    iget-object v4, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 196
    .line 197
    invoke-static {v4}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/RandomAccessFile;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    iget-object v12, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 202
    .line 203
    invoke-static {v12}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->j(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/io/RandomAccessFile;

    .line 204
    .line 205
    .line 206
    move-result-object v12

    .line 207
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->length()J

    .line 208
    .line 209
    .line 210
    move-result-wide v12

    .line 211
    invoke-virtual {v4, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 212
    .line 213
    .line 214
    const/4 v4, 0x0

    .line 215
    :goto_1
    if-ge v4, v0, :cond_1

    .line 216
    .line 217
    aget-object v12, v7, v4

    .line 218
    .line 219
    array-length v13, v12

    .line 220
    const/4 v14, 0x0

    .line 221
    invoke-virtual {v11, v12, v14, v13}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 222
    .line 223
    .line 224
    add-int/lit8 v4, v4, 0x1

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_1
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    .line 236
    .line 237
    :try_start_4
    new-array v0, v9, [Ljava/io/Closeable;

    .line 238
    .line 239
    const/4 v4, 0x0

    .line 240
    aput-object v11, v0, v4

    .line 241
    .line 242
    aput-object v10, v0, v5

    .line 243
    .line 244
    invoke-static {v0}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V
    :try_end_4
    .catch Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$MpfBrokenException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 245
    .line 246
    .line 247
    goto :goto_4

    .line 248
    :catchall_0
    move-exception v0

    .line 249
    move-object v4, v11

    .line 250
    goto :goto_2

    .line 251
    :catchall_1
    move-exception v0

    .line 252
    goto :goto_2

    .line 253
    :catchall_2
    move-exception v0

    .line 254
    move-object v10, v4

    .line 255
    :goto_2
    :try_start_5
    iget-object v11, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 256
    .line 257
    invoke-static {v11}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v11

    .line 261
    invoke-static {v0, v11}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    const-string v11, "sta err sz "

    .line 270
    .line 271
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    iget-object v11, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->a:Ljava/util/List;

    .line 275
    .line 276
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 277
    .line 278
    .line 279
    move-result v11

    .line 280
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iget-object v11, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 288
    .line 289
    invoke-static {v11}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v11

    .line 293
    invoke-static {v0, v11}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    :cond_2
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v11

    .line 304
    if-eqz v11, :cond_3

    .line 305
    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v11

    .line 310
    check-cast v11, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;

    .line 311
    .line 312
    invoke-static {v11}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->g(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)B

    .line 313
    .line 314
    .line 315
    move-result v12

    .line 316
    if-nez v12, :cond_2

    .line 317
    .line 318
    iget-object v12, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 319
    .line 320
    invoke-static {v12, v11}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)V

    .line 321
    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_3
    iget-object v0, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->b:Ljava/util/List;

    .line 325
    .line 326
    iget-object v11, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->a:Ljava/util/List;

    .line 327
    .line 328
    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 329
    .line 330
    .line 331
    :try_start_6
    new-array v0, v9, [Ljava/io/Closeable;

    .line 332
    .line 333
    const/4 v9, 0x0

    .line 334
    aput-object v4, v0, v9

    .line 335
    .line 336
    aput-object v10, v0, v5

    .line 337
    .line 338
    invoke-static {v0}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 339
    .line 340
    .line 341
    const/4 v5, 0x0

    .line 342
    :goto_4
    if-eqz v5, :cond_5

    .line 343
    .line 344
    const/4 v0, 0x0

    .line 345
    :goto_5
    if-ge v0, v8, :cond_5

    .line 346
    .line 347
    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    check-cast v4, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;

    .line 352
    .line 353
    invoke-static {v4, v2, v3}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;->d(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;J)J

    .line 354
    .line 355
    .line 356
    iget-object v5, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 357
    .line 358
    invoke-static {v5, v4}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->b(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)Z

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    if-eqz v5, :cond_4

    .line 363
    .line 364
    aget-object v4, v7, v0

    .line 365
    .line 366
    array-length v4, v4

    .line 367
    int-to-long v4, v4

    .line 368
    add-long/2addr v2, v4

    .line 369
    goto :goto_6

    .line 370
    :cond_4
    iget-object v5, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 371
    .line 372
    invoke-static {v5, v4}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)V

    .line 373
    .line 374
    .line 375
    iget-object v4, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->b:Ljava/util/List;

    .line 376
    .line 377
    iget-object v5, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->a:Ljava/util/List;

    .line 378
    .line 379
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 387
    .line 388
    goto :goto_5

    .line 389
    :cond_5
    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    .line 390
    .line 391
    .line 392
    goto :goto_7

    .line 393
    :catchall_3
    move-exception v0

    .line 394
    new-array v2, v9, [Ljava/io/Closeable;

    .line 395
    .line 396
    const/4 v3, 0x0

    .line 397
    aput-object v4, v2, v3

    .line 398
    .line 399
    aput-object v10, v2, v5

    .line 400
    .line 401
    invoke-static {v2}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 402
    .line 403
    .line 404
    throw v0

    .line 405
    :cond_6
    move-wide/from16 v23, v3

    .line 406
    .line 407
    iget-object v0, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->a:Ljava/util/List;

    .line 408
    .line 409
    const/4 v2, 0x0

    .line 410
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    move-object v2, v0

    .line 415
    check-cast v2, Lcn/fly/tools/utils/FlyPersistence$i;

    .line 416
    .line 417
    new-instance v0, Lcn/fly/tools/utils/FlyPersistence$g;

    .line 418
    .line 419
    invoke-static {v2}, Lcn/fly/tools/utils/FlyPersistence$i;->b(Lcn/fly/tools/utils/FlyPersistence$i;)[B

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    invoke-direct {v0, v3}, Lcn/fly/tools/utils/FlyPersistence$g;-><init>([B)V

    .line 424
    .line 425
    .line 426
    iget-object v3, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 427
    .line 428
    invoke-static {v3, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Lcn/fly/tools/utils/FlyPersistence$g;)Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;

    .line 429
    .line 430
    .line 431
    move-result-object v3
    :try_end_6
    .catch Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$MpfBrokenException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 432
    :try_start_7
    iget-object v0, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 433
    .line 434
    invoke-static {v0, v3, v2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;Lcn/fly/tools/utils/FlyPersistence$i;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 435
    .line 436
    .line 437
    goto :goto_7

    .line 438
    :catchall_4
    move-exception v0

    .line 439
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .line 443
    .line 444
    const-string v5, "set fail "

    .line 445
    .line 446
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    iget-object v4, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 457
    .line 458
    invoke-static {v4}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    invoke-static {v0, v4}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    iget-object v0, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 466
    .line 467
    invoke-static {v0, v3}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$a;)V

    .line 468
    .line 469
    .line 470
    iget-object v0, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->b:Ljava/util/List;

    .line 471
    .line 472
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    :goto_7
    iget-object v0, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 476
    .line 477
    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->g(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)V

    .line 478
    .line 479
    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .line 484
    .line 485
    const-string v2, " all cost "

    .line 486
    .line 487
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 491
    .line 492
    .line 493
    move-result-wide v2

    .line 494
    sub-long v2, v2, v23

    .line 495
    .line 496
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-string v2, " size "

    .line 500
    .line 501
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    iget-object v2, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->a:Ljava/util/List;

    .line 505
    .line 506
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    iget-object v2, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 518
    .line 519
    invoke-static {v2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    invoke-static {v0, v2}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$MpfBrokenException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 524
    .line 525
    .line 526
    goto :goto_8

    .line 527
    :catchall_5
    move-exception v0

    .line 528
    iget-object v2, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 529
    .line 530
    invoke-static {v2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    invoke-static {v0, v2}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    :catchall_6
    :goto_8
    const/4 v2, 0x0

    .line 538
    goto :goto_9

    .line 539
    :catch_0
    move-exception v0

    .line 540
    iget-object v2, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 541
    .line 542
    invoke-static {v2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    invoke-static {v0, v2}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    :try_start_9
    iget-object v2, v1, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile$2;->c:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 550
    .line 551
    invoke-static {v2, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 552
    .line 553
    .line 554
    goto :goto_8

    .line 555
    :goto_9
    return v2
.end method
