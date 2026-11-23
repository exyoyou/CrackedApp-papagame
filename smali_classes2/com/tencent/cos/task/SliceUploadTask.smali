.class public Lcom/tencent/cos/task/SliceUploadTask;
.super Lcom/tencent/cos/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/task/SliceUploadTask$SimpleUploadRequestBody;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tencent.cos.task.SliceUploadTask"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/tencent/cos/network/HttpRequest;Lcom/tencent/cos/COSConfig;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/cos/task/Task;-><init>(Lcom/tencent/cos/network/HttpRequest;Lcom/tencent/cos/COSConfig;Lokhttp3/OkHttpClient;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public doGetRequest()Lcom/tencent/cos/model/COSResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public doPostRequest()Lcom/tencent/cos/model/COSResult;
    .locals 20

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    new-instance v0, Lcom/tencent/cos/task/slice/FileSlicePart;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/tencent/cos/task/slice/FileSlicePart;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    iput-boolean v7, v8, Lcom/tencent/cos/task/Task;->isCancelled:Z

    .line 10
    .line 11
    const/4 v9, 0x1

    .line 12
    :try_start_0
    iget-object v1, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v10, v1

    .line 19
    check-cast v10, Lcom/tencent/cos/model/PutObjectRequest;

    .line 20
    .line 21
    invoke-virtual {v10}, Lcom/tencent/cos/model/PutObjectRequest;->getSrcPath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v11

    .line 25
    invoke-virtual {v10}, Lcom/tencent/cos/model/PutObjectRequest;->getsha()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v12

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/tencent/cos/task/slice/FileSlicePart;->getDirPath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-static {v11}, Lcom/tencent/cos/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, ".tmp"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    new-instance v1, Ljava/io/File;

    .line 63
    .line 64
    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_4

    .line 72
    .line 73
    sget-object v1, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    const-string v2, "\u5f00\u59cb\u5206\u7247\u4e0a\u4f20"

    .line 76
    .line 77
    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 81
    .line 82
    const-wide/16 v3, 0x0

    .line 83
    .line 84
    const-wide/16 v5, 0x0

    .line 85
    .line 86
    move-object/from16 v1, p0

    .line 87
    .line 88
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/cos/task/SliceUploadTask;->sliceUpload(Lcom/tencent/cos/network/HttpRequest;JJ)Lcom/tencent/cos/model/COSResult;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lcom/tencent/cos/model/PutObjectResult;

    .line 93
    .line 94
    iget v2, v1, Lcom/tencent/cos/model/COSResult;->code:I

    .line 95
    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    .line 106
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-interface {v0, v2, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 119
    .line 120
    .line 121
    :cond_0
    return-object v1

    .line 122
    :cond_1
    if-nez v2, :cond_3

    .line 123
    .line 124
    iget-object v2, v1, Lcom/tencent/cos/model/PutObjectResult;->session:Ljava/lang/String;

    .line 125
    .line 126
    if-nez v2, :cond_3

    .line 127
    .line 128
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_2

    .line 135
    .line 136
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-interface {v0, v2, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onSuccess(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 149
    .line 150
    .line 151
    :cond_2
    return-object v1

    .line 152
    :cond_3
    invoke-virtual {v8, v10, v1, v0}, Lcom/tencent/cos/task/SliceUploadTask;->prepareFileSlice(Lcom/tencent/cos/model/PutObjectRequest;Lcom/tencent/cos/model/PutObjectResult;Lcom/tencent/cos/task/slice/FileSlicePart;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v13}, Lcom/tencent/cos/task/slice/FileSlicePart;->saveFileSlicePart(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_4
    invoke-virtual {v0, v13}, Lcom/tencent/cos/task/slice/FileSlicePart;->loadFileSlicePart(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-boolean v2, v0, Lcom/tencent/cos/task/slice/FileSlicePart;->slice_init_flag:Z

    .line 163
    .line 164
    if-eqz v2, :cond_11

    .line 165
    .line 166
    :goto_1
    sget-object v1, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    .line 167
    .line 168
    const-string v2, "\u5f00\u59cb\u4e0a\u4f20data\u5206\u7247"

    .line 169
    .line 170
    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object v14, v0, Lcom/tencent/cos/task/slice/FileSlicePart;->session:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v10}, Lcom/tencent/cos/model/PutObjectRequest;->getFilesize()J

    .line 176
    .line 177
    .line 178
    move-result-wide v15

    .line 179
    move-object v6, v12

    .line 180
    :goto_2
    iget-object v1, v0, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceParts:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-ge v7, v1, :cond_a

    .line 187
    .line 188
    iget-object v1, v0, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceParts:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Lcom/tencent/cos/task/slice/SlicePart;

    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/tencent/cos/task/slice/SlicePart;->getOverFlag()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_5

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_5
    iget-object v1, v0, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceParts:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    check-cast v1, Lcom/tencent/cos/task/slice/SlicePart;

    .line 210
    .line 211
    invoke-virtual {v1}, Lcom/tencent/cos/task/slice/SlicePart;->getOffset()J

    .line 212
    .line 213
    .line 214
    move-result-wide v1

    .line 215
    iget-object v3, v0, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceParts:Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    check-cast v3, Lcom/tencent/cos/task/slice/SlicePart;

    .line 222
    .line 223
    invoke-virtual {v3}, Lcom/tencent/cos/task/slice/SlicePart;->getSliceSize()I

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    iget-object v12, v0, Lcom/tencent/cos/task/slice/FileSlicePart;->sha:Ljava/lang/String;

    .line 228
    .line 229
    move-wide v5, v1

    .line 230
    :goto_3
    cmp-long v1, v5, v15

    .line 231
    .line 232
    if-gez v1, :cond_9

    .line 233
    .line 234
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 235
    .line 236
    invoke-static {v11, v5, v6, v10}, Lcom/tencent/cos/utils/FileUtils;->getFileContentByte(Ljava/lang/String;JI)[B

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    move-object/from16 v1, p0

    .line 241
    .line 242
    move-object v4, v14

    .line 243
    move-wide/from16 v17, v5

    .line 244
    .line 245
    move-object/from16 v19, v11

    .line 246
    .line 247
    move v11, v7

    .line 248
    move-object v7, v12

    .line 249
    invoke-virtual/range {v1 .. v7}, Lcom/tencent/cos/task/SliceUploadTask;->uploadSliceDataRequset_4(Lcom/tencent/cos/network/HttpRequest;[BLjava/lang/String;JLjava/lang/String;)Lcom/tencent/cos/network/HttpRequest;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    iput-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 254
    .line 255
    move-object/from16 v1, p0

    .line 256
    .line 257
    move-wide/from16 v3, v17

    .line 258
    .line 259
    move-wide v5, v15

    .line 260
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/cos/task/SliceUploadTask;->sliceUpload(Lcom/tencent/cos/network/HttpRequest;JJ)Lcom/tencent/cos/model/COSResult;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    check-cast v1, Lcom/tencent/cos/model/PutObjectResult;

    .line 265
    .line 266
    iget v2, v1, Lcom/tencent/cos/model/COSResult;->code:I

    .line 267
    .line 268
    if-eqz v2, :cond_8

    .line 269
    .line 270
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    if-eqz v0, :cond_6

    .line 277
    .line 278
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 279
    .line 280
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 285
    .line 286
    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-interface {v0, v2, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 291
    .line 292
    .line 293
    :cond_6
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    .line 294
    .line 295
    if-eqz v0, :cond_7

    .line 296
    .line 297
    invoke-interface {v0}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onFail()V

    .line 298
    .line 299
    .line 300
    :cond_7
    return-object v1

    .line 301
    :cond_8
    int-to-long v1, v10

    .line 302
    add-long v5, v17, v1

    .line 303
    .line 304
    invoke-virtual {v0, v11, v9}, Lcom/tencent/cos/task/slice/FileSlicePart;->updateSlicePart(IZ)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v13}, Lcom/tencent/cos/task/slice/FileSlicePart;->saveFileSlicePart(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    add-int/lit8 v7, v11, 0x1

    .line 311
    .line 312
    move-object/from16 v11, v19

    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_9
    move-object/from16 v19, v11

    .line 316
    .line 317
    move v11, v7

    .line 318
    move-object v6, v12

    .line 319
    move-object/from16 v11, v19

    .line 320
    .line 321
    goto/16 :goto_2

    .line 322
    .line 323
    :cond_a
    sget-object v7, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    .line 324
    .line 325
    const-string v1, "\u4e0a\u4f20finish\u5206\u7247"

    .line 326
    .line 327
    invoke-static {v7, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 331
    .line 332
    move-object/from16 v1, p0

    .line 333
    .line 334
    move-object v3, v14

    .line 335
    move-wide v4, v15

    .line 336
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/cos/task/SliceUploadTask;->uploadSliceFinishRequset_4(Lcom/tencent/cos/network/HttpRequest;Ljava/lang/String;JLjava/lang/String;)Lcom/tencent/cos/network/HttpRequest;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    iput-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 341
    .line 342
    const-wide/16 v3, 0x0

    .line 343
    .line 344
    const-wide/16 v5, 0x0

    .line 345
    .line 346
    move-object/from16 v1, p0

    .line 347
    .line 348
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/cos/task/SliceUploadTask;->sliceUpload(Lcom/tencent/cos/network/HttpRequest;JJ)Lcom/tencent/cos/model/COSResult;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    check-cast v1, Lcom/tencent/cos/model/PutObjectResult;

    .line 353
    .line 354
    iget v2, v1, Lcom/tencent/cos/model/COSResult;->code:I

    .line 355
    .line 356
    if-eqz v2, :cond_d

    .line 357
    .line 358
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 359
    .line 360
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    if-eqz v0, :cond_b

    .line 365
    .line 366
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 367
    .line 368
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 373
    .line 374
    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    invoke-interface {v0, v2, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 379
    .line 380
    .line 381
    :cond_b
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    .line 382
    .line 383
    if-eqz v0, :cond_c

    .line 384
    .line 385
    invoke-interface {v0}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onFail()V

    .line 386
    .line 387
    .line 388
    :cond_c
    return-object v1

    .line 389
    :cond_d
    const-string v1, "\u4e0a\u4f20list\u5206\u7247"

    .line 390
    .line 391
    invoke-static {v7, v1}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    iget-object v1, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 395
    .line 396
    invoke-virtual {v8, v1}, Lcom/tencent/cos/task/SliceUploadTask;->uploadSliceListRequset_4(Lcom/tencent/cos/network/HttpRequest;)Lcom/tencent/cos/network/HttpRequest;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    iput-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 401
    .line 402
    const-wide/16 v3, 0x0

    .line 403
    .line 404
    const-wide/16 v5, 0x0

    .line 405
    .line 406
    move-object/from16 v1, p0

    .line 407
    .line 408
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/cos/task/SliceUploadTask;->sliceUpload(Lcom/tencent/cos/network/HttpRequest;JJ)Lcom/tencent/cos/model/COSResult;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    check-cast v1, Lcom/tencent/cos/model/PutObjectResult;

    .line 413
    .line 414
    iget v2, v1, Lcom/tencent/cos/model/COSResult;->code:I

    .line 415
    .line 416
    if-nez v2, :cond_e

    .line 417
    .line 418
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 419
    .line 420
    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    if-eqz v2, :cond_f

    .line 425
    .line 426
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 427
    .line 428
    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    iget-object v3, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 433
    .line 434
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    invoke-interface {v2, v3, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onSuccess(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 439
    .line 440
    .line 441
    goto :goto_4

    .line 442
    :cond_e
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 443
    .line 444
    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    if-eqz v2, :cond_f

    .line 449
    .line 450
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 451
    .line 452
    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    iget-object v3, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 457
    .line 458
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    invoke-interface {v2, v3, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 463
    .line 464
    .line 465
    :cond_f
    :goto_4
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    .line 466
    .line 467
    if-eqz v2, :cond_10

    .line 468
    .line 469
    invoke-interface {v2}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onSendFinish()V

    .line 470
    .line 471
    .line 472
    :cond_10
    invoke-virtual {v0, v13}, Lcom/tencent/cos/task/slice/FileSlicePart;->deleteFile(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    return-object v1

    .line 476
    :cond_11
    move-object/from16 v19, v11

    .line 477
    .line 478
    invoke-virtual {v0, v13}, Lcom/tencent/cos/task/slice/FileSlicePart;->deleteFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .line 480
    .line 481
    move-object/from16 v11, v19

    .line 482
    .line 483
    goto/16 :goto_0

    .line 484
    .line 485
    :catch_0
    move-exception v0

    .line 486
    iget-boolean v1, v8, Lcom/tencent/cos/task/Task;->isCancelled:Z

    .line 487
    .line 488
    const-string v2, "}"

    .line 489
    .line 490
    const-string v3, ",message:"

    .line 491
    .line 492
    const-string v4, "{code:"

    .line 493
    .line 494
    if-eqz v1, :cond_14

    .line 495
    .line 496
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    .line 497
    .line 498
    if-eqz v0, :cond_12

    .line 499
    .line 500
    invoke-interface {v0}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onCancel()V

    .line 501
    .line 502
    .line 503
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    sget-object v1, Lcom/tencent/cos/common/Const;->ERROR_CLIENT_EXCEPTION:Lcom/tencent/cos/common/Const;

    .line 512
    .line 513
    invoke-virtual {v1}, Lcom/tencent/cos/common/Const;->getCode()I

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    const-string v1, "\u4efb\u52a1\u53d6\u6d88\u6210\u529f"

    .line 524
    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    new-instance v1, Lcom/tencent/cos/network/HttpResponse;

    .line 532
    .line 533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-direct {v1, v0}, Lcom/tencent/cos/network/HttpResponse;-><init>(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    iget-object v0, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 541
    .line 542
    invoke-virtual {v0}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    invoke-virtual {v1, v0}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 547
    .line 548
    .line 549
    invoke-static {v1}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    iget-object v1, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 554
    .line 555
    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    if-eqz v1, :cond_13

    .line 560
    .line 561
    iget-object v1, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 562
    .line 563
    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    check-cast v1, Lcom/tencent/cos/task/listener/IUploadTaskListener;

    .line 568
    .line 569
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 570
    .line 571
    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    invoke-interface {v1, v2, v0}, Lcom/tencent/cos/task/listener/IUploadTaskListener;->onCancel(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 576
    .line 577
    .line 578
    :cond_13
    sget-object v1, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    .line 579
    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    .line 581
    .line 582
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    .line 584
    .line 585
    const-string v3, " task "

    .line 586
    .line 587
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    iget-object v3, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 591
    .line 592
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    invoke-virtual {v3}, Lcom/tencent/cos/model/COSRequest;->getRequestId()I

    .line 597
    .line 598
    .line 599
    move-result v3

    .line 600
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    const-string v3, "  is canceled"

    .line 604
    .line 605
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    return-object v0

    .line 616
    :cond_14
    iget v1, v8, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 617
    .line 618
    iget-object v5, v8, Lcom/tencent/cos/task/Task;->config:Lcom/tencent/cos/COSConfig;

    .line 619
    .line 620
    invoke-virtual {v5}, Lcom/tencent/cos/COSConfig;->getMaxRetryCount()I

    .line 621
    .line 622
    .line 623
    move-result v5

    .line 624
    invoke-static {v1, v5, v0}, Lcom/tencent/cos/network/COSRetryHandler;->retryRequest(IILjava/lang/Exception;)Z

    .line 625
    .line 626
    .line 627
    move-result v1

    .line 628
    if-eqz v1, :cond_16

    .line 629
    .line 630
    iget-object v1, v8, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    .line 631
    .line 632
    if-eqz v1, :cond_15

    .line 633
    .line 634
    invoke-interface {v1}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onRetry()V

    .line 635
    .line 636
    .line 637
    :cond_15
    iget v1, v8, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 638
    .line 639
    add-int/2addr v1, v9

    .line 640
    iput v1, v8, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 641
    .line 642
    sget-object v1, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    .line 643
    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    .line 645
    .line 646
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    const-string v3, ";retry ="

    .line 657
    .line 658
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    iget v3, v8, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 662
    .line 663
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    invoke-static {v1, v2, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/cos/task/SliceUploadTask;->doGetRequest()Lcom/tencent/cos/model/COSResult;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    return-object v0

    .line 678
    :cond_16
    iget-object v1, v8, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    .line 679
    .line 680
    if-eqz v1, :cond_17

    .line 681
    .line 682
    invoke-interface {v1}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onFail()V

    .line 683
    .line 684
    .line 685
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 686
    .line 687
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    sget-object v4, Lcom/tencent/cos/common/Const;->ERROR_OTHER_EXCEPTION:Lcom/tencent/cos/common/Const;

    .line 694
    .line 695
    invoke-virtual {v4}, Lcom/tencent/cos/common/Const;->getCode()I

    .line 696
    .line 697
    .line 698
    move-result v4

    .line 699
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v3

    .line 709
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    new-instance v2, Lcom/tencent/cos/network/HttpResponse;

    .line 716
    .line 717
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    invoke-direct {v2, v1}, Lcom/tencent/cos/network/HttpResponse;-><init>(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    iget-object v1, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 725
    .line 726
    invoke-virtual {v1}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    .line 727
    .line 728
    .line 729
    move-result v1

    .line 730
    invoke-virtual {v2, v1}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 731
    .line 732
    .line 733
    invoke-static {v2}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 738
    .line 739
    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    if-eqz v2, :cond_18

    .line 744
    .line 745
    iget-object v2, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 746
    .line 747
    invoke-virtual {v2}, Lcom/tencent/cos/network/HttpRequest;->getListener()Lcom/tencent/cos/task/listener/ITaskListener;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    iget-object v3, v8, Lcom/tencent/cos/task/Task;->httpRequest:Lcom/tencent/cos/network/HttpRequest;

    .line 752
    .line 753
    invoke-virtual {v3}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 754
    .line 755
    .line 756
    move-result-object v3

    .line 757
    invoke-interface {v2, v3, v1}, Lcom/tencent/cos/task/listener/ITaskListener;->onFailed(Lcom/tencent/cos/model/COSRequest;Lcom/tencent/cos/model/COSResult;)V

    .line 758
    .line 759
    .line 760
    :cond_18
    sget-object v2, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    .line 761
    .line 762
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v3

    .line 766
    invoke-static {v2, v3, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 767
    .line 768
    .line 769
    return-object v1
.end method

.method protected prepareFileSlice(Lcom/tencent/cos/model/PutObjectRequest;Lcom/tencent/cos/model/PutObjectResult;Lcom/tencent/cos/task/slice/FileSlicePart;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/tencent/cos/model/COSRequest;->getAppid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->appid:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/tencent/cos/model/COSRequest;->getBucket()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->bucket:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/tencent/cos/model/COSRequest;->getCosPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->cosPath:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/tencent/cos/model/PutObjectRequest;->getSrcPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->srcPath:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/tencent/cos/model/PutObjectRequest;->getBiz_attr()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->biz_attr:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/tencent/cos/model/PutObjectRequest;->getInsertOnly()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->insertOnly:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/tencent/cos/model/PutObjectRequest;->getsha()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->sha:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/tencent/cos/model/COSRequest;->getSign()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->sign:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/tencent/cos/model/COSRequest;->getRequestId()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->requestId:I

    .line 54
    .line 55
    iget v0, p2, Lcom/tencent/cos/model/PutObjectResult;->slice_size:I

    .line 56
    .line 57
    iput v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceSize:I

    .line 58
    .line 59
    iget-object p2, p2, Lcom/tencent/cos/model/PutObjectResult;->session:Ljava/lang/String;

    .line 60
    .line 61
    iput-object p2, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->session:Ljava/lang/String;

    .line 62
    .line 63
    const/4 p2, 0x1

    .line 64
    iput-boolean p2, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->slice_init_flag:Z

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/tencent/cos/model/PutObjectRequest;->getFilesize()J

    .line 67
    .line 68
    .line 69
    move-result-wide p1

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    iget v1, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceSize:I

    .line 76
    .line 77
    add-int/lit8 v2, v1, -0x1

    .line 78
    .line 79
    int-to-long v2, v2

    .line 80
    add-long/2addr p1, v2

    .line 81
    int-to-long v1, v1

    .line 82
    div-long/2addr p1, v1

    .line 83
    long-to-int p2, p1

    .line 84
    const/4 p1, 0x0

    .line 85
    const/4 v1, 0x0

    .line 86
    :goto_0
    if-ge v1, p2, :cond_0

    .line 87
    .line 88
    new-instance v2, Lcom/tencent/cos/task/slice/SlicePart;

    .line 89
    .line 90
    invoke-direct {v2}, Lcom/tencent/cos/task/slice/SlicePart;-><init>()V

    .line 91
    .line 92
    .line 93
    iget v3, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceSize:I

    .line 94
    .line 95
    mul-int v3, v3, v1

    .line 96
    .line 97
    int-to-long v3, v3

    .line 98
    invoke-virtual {v2, v3, v4}, Lcom/tencent/cos/task/slice/SlicePart;->setOffset(J)V

    .line 99
    .line 100
    .line 101
    iget v3, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceSize:I

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Lcom/tencent/cos/task/slice/SlicePart;->setSliceSize(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, p1}, Lcom/tencent/cos/task/slice/SlicePart;->setOverFlag(Z)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v1, v1, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    iput-object v0, p3, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceParts:Ljava/util/ArrayList;

    .line 116
    .line 117
    return-void
.end method

.method protected sliceUpload(Lcom/tencent/cos/network/HttpRequest;JJ)Lcom/tencent/cos/model/COSResult;
    .locals 16

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    const-string v0, "application/json"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v11, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 7
    .line 8
    const/4 v12, 0x1

    .line 9
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/cos/task/Task;->getDomainUrl(Lcom/tencent/cos/network/HttpRequest;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lokhttp3/Request$Builder;

    .line 14
    .line 15
    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getHeaders()Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    move-object v13, v1

    .line 35
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/util/Map$Entry;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v13, v3, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v13

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getContentType()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    sget-object v2, Lcom/tencent/cos/common/COSHttpRequestHead;->VALUE:Lcom/tencent/cos/common/HeadValue;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    new-instance v1, Lorg/json/JSONObject;

    .line 80
    .line 81
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getBodys()Ljava/util/Map;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_1

    .line 101
    .line 102
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Ljava/util/Map$Entry;

    .line 107
    .line 108
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    check-cast v4, Ljava/lang/String;

    .line 113
    .line 114
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_1
    sget-object v2, Lcom/tencent/cos/common/COSHttpRequestHead;->VALUE:Lcom/tencent/cos/common/HeadValue;

    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    goto/16 :goto_4

    .line 140
    .line 141
    :cond_2
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    .line 142
    .line 143
    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getContentType()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getBodys()Ljava/util/Map;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_3

    .line 175
    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    check-cast v2, Ljava/util/Map$Entry;

    .line 181
    .line 182
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    check-cast v3, Ljava/lang/String;

    .line 187
    .line 188
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    check-cast v2, Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v0, v3, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    goto :goto_2

    .line 199
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->isUploadFlag()Z

    .line 200
    .line 201
    .line 202
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 203
    if-eqz v1, :cond_6

    .line 204
    .line 205
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getDataFile()Ljava/io/File;

    .line 206
    .line 207
    .line 208
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    const-string v9, "\""

    .line 210
    .line 211
    const-string v10, "form-data; name=\""

    .line 212
    .line 213
    const-string v14, "Content-Disposition"

    .line 214
    .line 215
    const/4 v15, 0x0

    .line 216
    const/4 v7, 0x2

    .line 217
    if-eqz v1, :cond_4

    .line 218
    .line 219
    :try_start_2
    sget-object v1, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    .line 220
    .line 221
    const-string v2, "datafile"

    .line 222
    .line 223
    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-array v1, v7, [Ljava/lang/String;

    .line 227
    .line 228
    aput-object v14, v1, v15

    .line 229
    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getFileContent()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    aput-object v2, v1, v12

    .line 253
    .line 254
    invoke-static {v1}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    new-instance v5, Lcom/tencent/cos/task/SliceUploadTask$SimpleUploadRequestBody;

    .line 259
    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getDataFile()Ljava/io/File;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    const/4 v4, 0x0

    .line 265
    move-object v1, v5

    .line 266
    move-object/from16 v2, p0

    .line 267
    .line 268
    move-object v12, v5

    .line 269
    move-wide/from16 v5, p2

    .line 270
    .line 271
    move-object v15, v8

    .line 272
    const/4 v11, 0x2

    .line 273
    move-wide/from16 v7, p4

    .line 274
    .line 275
    invoke-direct/range {v1 .. v8}, Lcom/tencent/cos/task/SliceUploadTask$SimpleUploadRequestBody;-><init>(Lcom/tencent/cos/task/SliceUploadTask;Ljava/io/File;Ljava/lang/String;JJ)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v15, v12}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    goto :goto_3

    .line 283
    :cond_4
    const/4 v11, 0x2

    .line 284
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getDataByte()[B

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    if-eqz v1, :cond_5

    .line 289
    .line 290
    sget-object v1, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    .line 291
    .line 292
    const-string v2, "getDataByte"

    .line 293
    .line 294
    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    new-array v1, v11, [Ljava/lang/String;

    .line 298
    .line 299
    const/4 v2, 0x0

    .line 300
    aput-object v14, v1, v2

    .line 301
    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getFileContent()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    const/4 v3, 0x1

    .line 325
    aput-object v2, v1, v3

    .line 326
    .line 327
    invoke-static {v1}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    .line 328
    .line 329
    .line 330
    move-result-object v12

    .line 331
    new-instance v15, Lcom/tencent/cos/task/SliceUploadTask$SimpleUploadRequestBody;

    .line 332
    .line 333
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getDataByte()[B

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    const/4 v4, 0x0

    .line 338
    move-object v1, v15

    .line 339
    move-object/from16 v2, p0

    .line 340
    .line 341
    move-wide/from16 v5, p2

    .line 342
    .line 343
    move-wide/from16 v7, p4

    .line 344
    .line 345
    invoke-direct/range {v1 .. v8}, Lcom/tencent/cos/task/SliceUploadTask$SimpleUploadRequestBody;-><init>(Lcom/tencent/cos/task/SliceUploadTask;[BLjava/lang/String;JJ)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v12, v15}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getDataStream()Ljava/io/InputStream;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    if-eqz v1, :cond_6

    .line 357
    .line 358
    sget-object v1, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    .line 359
    .line 360
    const-string v2, "getDataStream"

    .line 361
    .line 362
    invoke-static {v1, v2}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    new-array v1, v11, [Ljava/lang/String;

    .line 366
    .line 367
    const/4 v2, 0x0

    .line 368
    aput-object v14, v1, v2

    .line 369
    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getFileContent()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    const/4 v3, 0x1

    .line 393
    aput-object v2, v1, v3

    .line 394
    .line 395
    invoke-static {v1}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    .line 396
    .line 397
    .line 398
    move-result-object v11

    .line 399
    new-instance v12, Lcom/tencent/cos/task/SliceUploadTask$SimpleUploadRequestBody;

    .line 400
    .line 401
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getDataStream()Ljava/io/InputStream;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    const/4 v4, 0x0

    .line 406
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getLength()J

    .line 407
    .line 408
    .line 409
    move-result-wide v5

    .line 410
    move-object v1, v12

    .line 411
    move-object/from16 v2, p0

    .line 412
    .line 413
    move-wide/from16 v7, p2

    .line 414
    .line 415
    move-wide/from16 v9, p4

    .line 416
    .line 417
    invoke-direct/range {v1 .. v10}, Lcom/tencent/cos/task/SliceUploadTask$SimpleUploadRequestBody;-><init>(Lcom/tencent/cos/task/SliceUploadTask;Ljava/io/InputStream;Ljava/lang/String;JJJ)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0, v11, v12}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    :cond_6
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    :goto_4
    invoke-virtual {v13, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 433
    .line 434
    .line 435
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 436
    move-object/from16 v1, p0

    .line 437
    .line 438
    :try_start_3
    iget-object v2, v1, Lcom/tencent/cos/task/Task;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 439
    .line 440
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    iput-object v0, v1, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 445
    .line 446
    iget-object v0, v1, Lcom/tencent/cos/task/Task;->callTask:Lokhttp3/Call;

    .line 447
    .line 448
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    new-instance v2, Lcom/tencent/cos/network/HttpResponse;

    .line 453
    .line 454
    invoke-direct {v2, v0}, Lcom/tencent/cos/network/HttpResponse;-><init>(Lokhttp3/Response;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    invoke-virtual {v2, v0}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 462
    .line 463
    .line 464
    invoke-static {v2}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    .line 465
    .line 466
    .line 467
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 468
    return-object v0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    goto :goto_5

    .line 471
    :catch_1
    move-exception v0

    .line 472
    move-object/from16 v1, p0

    .line 473
    .line 474
    goto :goto_5

    .line 475
    :catch_2
    move-exception v0

    .line 476
    move-object v1, v11

    .line 477
    :goto_5
    iget-boolean v2, v1, Lcom/tencent/cos/task/Task;->isCancelled:Z

    .line 478
    .line 479
    const-string v3, "}"

    .line 480
    .line 481
    const-string v4, ",message:"

    .line 482
    .line 483
    const-string v5, "{code:"

    .line 484
    .line 485
    if-eqz v2, :cond_8

    .line 486
    .line 487
    iget-object v0, v1, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    .line 488
    .line 489
    if-eqz v0, :cond_7

    .line 490
    .line 491
    invoke-interface {v0}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onCancel()V

    .line 492
    .line 493
    .line 494
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    sget-object v2, Lcom/tencent/cos/common/Const;->ERROR_CLIENT_EXCEPTION:Lcom/tencent/cos/common/Const;

    .line 503
    .line 504
    invoke-virtual {v2}, Lcom/tencent/cos/common/Const;->getCode()I

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    const-string v2, "\u4efb\u52a1\u53d6\u6d88\u6210\u529f"

    .line 515
    .line 516
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    new-instance v2, Lcom/tencent/cos/network/HttpResponse;

    .line 523
    .line 524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-direct {v2, v0}, Lcom/tencent/cos/network/HttpResponse;-><init>(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    invoke-virtual {v2, v0}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 536
    .line 537
    .line 538
    invoke-static {v2}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    sget-object v2, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    .line 543
    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    .line 545
    .line 546
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .line 548
    .line 549
    const-string v4, " task "

    .line 550
    .line 551
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 555
    .line 556
    .line 557
    move-result-object v4

    .line 558
    invoke-virtual {v4}, Lcom/tencent/cos/model/COSRequest;->getRequestId()I

    .line 559
    .line 560
    .line 561
    move-result v4

    .line 562
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    const-string v4, "  is canceled"

    .line 566
    .line 567
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    invoke-static {v2, v3}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    return-object v0

    .line 578
    :cond_8
    iget v2, v1, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 579
    .line 580
    iget-object v6, v1, Lcom/tencent/cos/task/Task;->config:Lcom/tencent/cos/COSConfig;

    .line 581
    .line 582
    invoke-virtual {v6}, Lcom/tencent/cos/COSConfig;->getMaxRetryCount()I

    .line 583
    .line 584
    .line 585
    move-result v6

    .line 586
    invoke-static {v2, v6, v0}, Lcom/tencent/cos/network/COSRetryHandler;->retryRequest(IILjava/lang/Exception;)Z

    .line 587
    .line 588
    .line 589
    move-result v2

    .line 590
    if-eqz v2, :cond_a

    .line 591
    .line 592
    iget-object v2, v1, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    .line 593
    .line 594
    if-eqz v2, :cond_9

    .line 595
    .line 596
    invoke-interface {v2}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onRetry()V

    .line 597
    .line 598
    .line 599
    :cond_9
    iget v2, v1, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 600
    .line 601
    const/4 v3, 0x1

    .line 602
    add-int/2addr v2, v3

    .line 603
    iput v2, v1, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 604
    .line 605
    sget-object v2, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    .line 606
    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    .line 608
    .line 609
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v4

    .line 616
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    const-string v4, ";retry ="

    .line 620
    .line 621
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    iget v4, v1, Lcom/tencent/cos/task/Task;->currentRetryCount:I

    .line 625
    .line 626
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    invoke-static {v2, v3, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual/range {p0 .. p5}, Lcom/tencent/cos/task/SliceUploadTask;->sliceUpload(Lcom/tencent/cos/network/HttpRequest;JJ)Lcom/tencent/cos/model/COSResult;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    return-object v0

    .line 641
    :cond_a
    iget-object v2, v1, Lcom/tencent/cos/task/Task;->taskStateListener:Lcom/tencent/cos/task/listener/ITaskStateListener;

    .line 642
    .line 643
    if-eqz v2, :cond_b

    .line 644
    .line 645
    invoke-interface {v2}, Lcom/tencent/cos/task/listener/ITaskStateListener;->onFail()V

    .line 646
    .line 647
    .line 648
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 649
    .line 650
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    sget-object v5, Lcom/tencent/cos/common/Const;->ERROR_OTHER_EXCEPTION:Lcom/tencent/cos/common/Const;

    .line 657
    .line 658
    invoke-virtual {v5}, Lcom/tencent/cos/common/Const;->getCode()I

    .line 659
    .line 660
    .line 661
    move-result v5

    .line 662
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v4

    .line 672
    const-string v5, " "

    .line 673
    .line 674
    const-string v6, ""

    .line 675
    .line 676
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v4

    .line 680
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    new-instance v3, Lcom/tencent/cos/network/HttpResponse;

    .line 687
    .line 688
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v2

    .line 692
    invoke-direct {v3, v2}, Lcom/tencent/cos/network/HttpResponse;-><init>(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/cos/network/HttpRequest;->getOperatorType()B

    .line 696
    .line 697
    .line 698
    move-result v2

    .line 699
    invoke-virtual {v3, v2}, Lcom/tencent/cos/network/HttpResponse;->setOperateType(B)V

    .line 700
    .line 701
    .line 702
    invoke-static {v3}, Lcom/tencent/cos/network/HttpResponseHandler;->parse(Lcom/tencent/cos/network/HttpResponse;)Lcom/tencent/cos/model/COSResult;

    .line 703
    .line 704
    .line 705
    move-result-object v2

    .line 706
    sget-object v3, Lcom/tencent/cos/task/SliceUploadTask;->TAG:Ljava/lang/String;

    .line 707
    .line 708
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v4

    .line 712
    invoke-static {v3, v4, v0}, Lcom/tencent/cos/utils/QLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 713
    .line 714
    .line 715
    return-object v2
.end method

.method protected uploadSliceDataRequset_4(Lcom/tencent/cos/network/HttpRequest;[BLjava/lang/String;JLjava/lang/String;)Lcom/tencent/cos/network/HttpRequest;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/tencent/cos/model/PutObjectRequest;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/PutObjectRequest;->setSliceFlag(Z)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->OP:Lcom/tencent/cos/common/BodyValue;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const-string v1, "upload_slice_data"

    .line 27
    .line 28
    const-string v2, "op"

    .line 29
    .line 30
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string v1, "session"

    .line 39
    .line 40
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    sget-object p3, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    .line 44
    .line 45
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const-string p3, "offset"

    .line 49
    .line 50
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p4

    .line 54
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    if-eqz p6, :cond_0

    .line 58
    .line 59
    sget-object p3, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const-string p3, "sha"

    .line 65
    .line 66
    invoke-interface {v0, p3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/PutObjectRequest;->setBodys(Ljava/util/Map;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/tencent/cos/model/PutObjectRequest;->setDataByte([B)V

    .line 73
    .line 74
    .line 75
    const/4 p2, 0x0

    .line 76
    invoke-virtual {p1, p2}, Lcom/tencent/cos/model/PutObjectRequest;->setDataFile(Ljava/io/File;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/tencent/cos/model/PutObjectRequest;->setDataInputStream(Ljava/io/InputStream;)V

    .line 80
    .line 81
    .line 82
    new-instance p2, Lcom/tencent/cos/network/HttpRequest;

    .line 83
    .line 84
    invoke-direct {p2, p1}, Lcom/tencent/cos/network/HttpRequest;-><init>(Lcom/tencent/cos/model/COSRequest;)V

    .line 85
    .line 86
    .line 87
    return-object p2
.end method

.method protected uploadSliceFinishRequset_4(Lcom/tencent/cos/network/HttpRequest;Ljava/lang/String;JLjava/lang/String;)Lcom/tencent/cos/network/HttpRequest;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/tencent/cos/model/PutObjectRequest;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/PutObjectRequest;->setSliceFlag(Z)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->OP:Lcom/tencent/cos/common/BodyValue;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const-string v1, "upload_slice_finish"

    .line 27
    .line 28
    const-string v2, "op"

    .line 29
    .line 30
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string v1, "session"

    .line 39
    .line 40
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    sget-object p2, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const-string p2, "filesize"

    .line 49
    .line 50
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    if-eqz p5, :cond_0

    .line 58
    .line 59
    sget-object p2, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const-string p2, "sha"

    .line 65
    .line 66
    invoke-interface {v0, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/PutObjectRequest;->setBodys(Ljava/util/Map;)V

    .line 70
    .line 71
    .line 72
    const/4 p2, 0x0

    .line 73
    invoke-virtual {p1, p2}, Lcom/tencent/cos/model/PutObjectRequest;->setDataByte([B)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lcom/tencent/cos/model/PutObjectRequest;->setDataFile(Ljava/io/File;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/tencent/cos/model/PutObjectRequest;->setDataInputStream(Ljava/io/InputStream;)V

    .line 80
    .line 81
    .line 82
    new-instance p2, Lcom/tencent/cos/network/HttpRequest;

    .line 83
    .line 84
    invoke-direct {p2, p1}, Lcom/tencent/cos/network/HttpRequest;-><init>(Lcom/tencent/cos/model/COSRequest;)V

    .line 85
    .line 86
    .line 87
    return-object p2
.end method

.method protected uploadSliceListRequset_4(Lcom/tencent/cos/network/HttpRequest;)Lcom/tencent/cos/network/HttpRequest;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/tencent/cos/network/HttpRequest;->getRequest()Lcom/tencent/cos/model/COSRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/tencent/cos/model/PutObjectRequest;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/PutObjectRequest;->setSliceFlag(Z)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/tencent/cos/common/COSHttpRequstBody;->OP:Lcom/tencent/cos/common/BodyValue;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const-string v1, "upload_slice_list"

    .line 27
    .line 28
    const-string v2, "op"

    .line 29
    .line 30
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/PutObjectRequest;->setBodys(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/PutObjectRequest;->setDataByte([B)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/PutObjectRequest;->setDataFile(Ljava/io/File;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/tencent/cos/model/PutObjectRequest;->setDataInputStream(Ljava/io/InputStream;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/tencent/cos/network/HttpRequest;

    .line 47
    .line 48
    invoke-direct {v0, p1}, Lcom/tencent/cos/network/HttpRequest;-><init>(Lcom/tencent/cos/model/COSRequest;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method
