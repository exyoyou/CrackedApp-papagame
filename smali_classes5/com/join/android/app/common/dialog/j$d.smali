.class Lcom/join/android/app/common/dialog/j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/dialog/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field b:Ljava/lang/Boolean;

.field c:Ljava/lang/Boolean;

.field final synthetic d:Lcom/join/android/app/common/dialog/j;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/dialog/j;)V
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
    iput-object p1, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/join/android/app/common/dialog/j$d;->b:Ljava/lang/Boolean;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/join/android/app/common/dialog/j$d;->c:Ljava/lang/Boolean;

    .line 11
    .line 12
    return-void
.end method

.method private a(Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "downloadType",
            "downpath"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    const-string v2, "\u4e0b\u8f7d\u66f4\u65b0\u6587\u4ef6\u5931\u8d25"

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v3, Lcom/join/mgps/Util/z;->g:Ljava/lang/String;

    .line 11
    .line 12
    const/16 v4, 0xe

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    const/4 v7, 0x2

    .line 20
    const/4 v8, 0x1

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    if-eq v0, v8, :cond_2

    .line 24
    .line 25
    if-eq v0, v7, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_down_url()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_url_remote()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    :goto_0
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 43
    .line 44
    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    .line 48
    .line 49
    invoke-direct {v10, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v9, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    .line 61
    .line 62
    .line 63
    move-result-wide v9

    .line 64
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    .line 65
    .line 66
    .line 67
    move-result-object v6
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 68
    if-eqz v6, :cond_c

    .line 69
    .line 70
    :try_start_1
    const-string v11, ""
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 71
    .line 72
    if-ne v0, v8, :cond_4

    .line 73
    .line 74
    :try_start_2
    const-string v11, "_cfg"

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    move-object v2, v0

    .line 79
    move-object v3, v5

    .line 80
    move-object v12, v3

    .line 81
    move-object v10, v6

    .line 82
    goto/16 :goto_14

    .line 83
    .line 84
    :catch_0
    move-object v3, v5

    .line 85
    move-object v12, v3

    .line 86
    :goto_1
    move-object v10, v6

    .line 87
    goto/16 :goto_d

    .line 88
    .line 89
    :catch_1
    move-object v3, v5

    .line 90
    move-object v12, v3

    .line 91
    :goto_2
    move-object v10, v6

    .line 92
    goto/16 :goto_e

    .line 93
    .line 94
    :catch_2
    move-object v3, v5

    .line 95
    move-object v12, v3

    .line 96
    :goto_3
    move-object v10, v6

    .line 97
    goto/16 :goto_f

    .line 98
    .line 99
    :cond_4
    if-ne v0, v7, :cond_5

    .line 100
    .line 101
    const-string v11, "_res"
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    .line 103
    :cond_5
    :goto_4
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v3, "/roms/"

    .line 119
    .line 120
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    new-instance v11, Ljava/io/File;

    .line 138
    .line 139
    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 147
    .line 148
    .line 149
    move-result v12
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 150
    if-nez v12, :cond_6

    .line 151
    .line 152
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-nez v3, :cond_6

    .line 157
    .line 158
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 159
    .line 160
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget-object v3, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 169
    .line 170
    invoke-static {v3}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    .line 176
    .line 177
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 178
    .line 179
    .line 180
    goto :goto_5

    .line 181
    :catch_3
    move-exception v0

    .line 182
    move-object v2, v0

    .line 183
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    .line 185
    .line 186
    :goto_5
    return-void

    .line 187
    :cond_6
    :try_start_6
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 188
    .line 189
    .line 190
    move-result v3
    :try_end_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 191
    if-eqz v3, :cond_7

    .line 192
    .line 193
    :try_start_7
    invoke-static {v11}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 194
    .line 195
    .line 196
    :cond_7
    :try_start_8
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 197
    .line 198
    .line 199
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 200
    .line 201
    invoke-direct {v3, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_12
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 202
    .line 203
    .line 204
    :try_start_9
    new-instance v12, Ljava/io/FileOutputStream;

    .line 205
    .line 206
    invoke-direct {v12, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 207
    .line 208
    .line 209
    :try_start_a
    new-instance v11, Ljava/io/BufferedOutputStream;

    .line 210
    .line 211
    invoke-direct {v11, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 212
    .line 213
    .line 214
    const/16 v5, 0x400

    .line 215
    .line 216
    :try_start_b
    new-array v5, v5, [B

    .line 217
    .line 218
    const-wide/16 v13, 0x0

    .line 219
    .line 220
    move-wide v15, v13

    .line 221
    :goto_6
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    const/4 v7, -0x1

    .line 226
    if-eq v4, v7, :cond_9

    .line 227
    .line 228
    const/4 v7, 0x0

    .line 229
    invoke-virtual {v11, v5, v7, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 230
    .line 231
    .line 232
    move-wide/from16 v17, v9

    .line 233
    .line 234
    int-to-long v8, v4

    .line 235
    add-long/2addr v13, v8

    .line 236
    long-to-double v8, v13

    .line 237
    move-object/from16 p1, v3

    .line 238
    .line 239
    move-object v10, v6

    .line 240
    move-wide/from16 v3, v17

    .line 241
    .line 242
    move-object/from16 v17, v5

    .line 243
    .line 244
    long-to-double v5, v3

    .line 245
    div-double/2addr v8, v5

    .line 246
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 247
    .line 248
    mul-double v8, v8, v5

    .line 249
    .line 250
    double-to-int v5, v8

    .line 251
    sub-long v8, v13, v15

    .line 252
    .line 253
    const-wide/16 v18, 0x2800

    .line 254
    .line 255
    cmp-long v6, v8, v18

    .line 256
    .line 257
    if-ltz v6, :cond_8

    .line 258
    .line 259
    :try_start_c
    new-instance v6, Landroid/os/Bundle;

    .line 260
    .line 261
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v8, "totalSize"

    .line 265
    .line 266
    invoke-virtual {v6, v8, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 267
    .line 268
    .line 269
    const-string v8, "completeSize"

    .line 270
    .line 271
    invoke-virtual {v6, v8, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 272
    .line 273
    .line 274
    const-string v8, "percent"

    .line 275
    .line 276
    invoke-virtual {v6, v8, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 277
    .line 278
    .line 279
    iget-object v5, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 280
    .line 281
    invoke-static {v5}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    const/16 v8, 0xd

    .line 286
    .line 287
    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    iget-object v6, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 292
    .line 293
    invoke-static {v6}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 298
    .line 299
    .line 300
    move-wide v15, v13

    .line 301
    :cond_8
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    .line 302
    .line 303
    .line 304
    move-object v6, v10

    .line 305
    move-object/from16 v5, v17

    .line 306
    .line 307
    const/4 v7, 0x2

    .line 308
    const/4 v8, 0x1

    .line 309
    move-wide v9, v3

    .line 310
    move-object/from16 v3, p1

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_9
    move-object/from16 p1, v3

    .line 314
    .line 315
    move-object v10, v6

    .line 316
    const/4 v3, 0x1

    .line 317
    if-ne v0, v3, :cond_a

    .line 318
    .line 319
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 320
    .line 321
    iput-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->b:Ljava/lang/Boolean;

    .line 322
    .line 323
    goto :goto_7

    .line 324
    :catchall_1
    move-exception v0

    .line 325
    move-object/from16 v3, p1

    .line 326
    .line 327
    goto :goto_8

    .line 328
    :catch_4
    move-object/from16 v3, p1

    .line 329
    .line 330
    goto :goto_9

    .line 331
    :catch_5
    move-object/from16 v3, p1

    .line 332
    .line 333
    goto :goto_a

    .line 334
    :catch_6
    move-object/from16 v3, p1

    .line 335
    .line 336
    goto :goto_b

    .line 337
    :cond_a
    const/4 v3, 0x2

    .line 338
    if-ne v0, v3, :cond_b

    .line 339
    .line 340
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 341
    .line 342
    iput-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->c:Ljava/lang/Boolean;
    :try_end_c
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 343
    .line 344
    :cond_b
    :goto_7
    move-object/from16 v0, p1

    .line 345
    .line 346
    move-object v5, v11

    .line 347
    goto/16 :goto_c

    .line 348
    .line 349
    :catchall_2
    move-exception v0

    .line 350
    move-object/from16 p1, v3

    .line 351
    .line 352
    move-object v10, v6

    .line 353
    :goto_8
    move-object v2, v0

    .line 354
    move-object v5, v11

    .line 355
    goto/16 :goto_14

    .line 356
    .line 357
    :catch_7
    move-object/from16 p1, v3

    .line 358
    .line 359
    move-object v10, v6

    .line 360
    :goto_9
    move-object v5, v11

    .line 361
    goto/16 :goto_d

    .line 362
    .line 363
    :catch_8
    move-object/from16 p1, v3

    .line 364
    .line 365
    move-object v10, v6

    .line 366
    :goto_a
    move-object v5, v11

    .line 367
    goto/16 :goto_e

    .line 368
    .line 369
    :catch_9
    move-object/from16 p1, v3

    .line 370
    .line 371
    move-object v10, v6

    .line 372
    :goto_b
    move-object v5, v11

    .line 373
    goto/16 :goto_f

    .line 374
    .line 375
    :catchall_3
    move-exception v0

    .line 376
    move-object/from16 p1, v3

    .line 377
    .line 378
    move-object v10, v6

    .line 379
    goto/16 :goto_13

    .line 380
    .line 381
    :catch_a
    move-object/from16 p1, v3

    .line 382
    .line 383
    goto/16 :goto_1

    .line 384
    .line 385
    :catch_b
    move-object/from16 p1, v3

    .line 386
    .line 387
    goto/16 :goto_2

    .line 388
    .line 389
    :catch_c
    move-object/from16 p1, v3

    .line 390
    .line 391
    goto/16 :goto_3

    .line 392
    .line 393
    :catchall_4
    move-exception v0

    .line 394
    move-object/from16 p1, v3

    .line 395
    .line 396
    move-object v10, v6

    .line 397
    move-object v2, v0

    .line 398
    move-object v12, v5

    .line 399
    goto/16 :goto_14

    .line 400
    .line 401
    :catch_d
    move-object/from16 p1, v3

    .line 402
    .line 403
    move-object v10, v6

    .line 404
    move-object v12, v5

    .line 405
    goto/16 :goto_d

    .line 406
    .line 407
    :catch_e
    move-object/from16 p1, v3

    .line 408
    .line 409
    move-object v10, v6

    .line 410
    move-object v12, v5

    .line 411
    goto/16 :goto_e

    .line 412
    .line 413
    :catch_f
    move-object/from16 p1, v3

    .line 414
    .line 415
    move-object v10, v6

    .line 416
    move-object v12, v5

    .line 417
    goto/16 :goto_f

    .line 418
    .line 419
    :catchall_5
    move-exception v0

    .line 420
    move-object v10, v6

    .line 421
    move-object v2, v0

    .line 422
    move-object v3, v5

    .line 423
    move-object v12, v3

    .line 424
    goto/16 :goto_14

    .line 425
    .line 426
    :catch_10
    move-object v10, v6

    .line 427
    move-object v3, v5

    .line 428
    move-object v12, v3

    .line 429
    goto :goto_d

    .line 430
    :catch_11
    move-object v10, v6

    .line 431
    move-object v3, v5

    .line 432
    move-object v12, v3

    .line 433
    goto/16 :goto_e

    .line 434
    .line 435
    :catch_12
    move-object v10, v6

    .line 436
    move-object v3, v5

    .line 437
    move-object v12, v3

    .line 438
    goto/16 :goto_f

    .line 439
    .line 440
    :cond_c
    move-object v10, v6

    .line 441
    move-object v0, v5

    .line 442
    move-object v12, v0

    .line 443
    :goto_c
    if-eqz v5, :cond_d

    .line 444
    .line 445
    :try_start_d
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 446
    .line 447
    .line 448
    :cond_d
    if-eqz v12, :cond_e

    .line 449
    .line 450
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 451
    .line 452
    .line 453
    :cond_e
    if-eqz v10, :cond_f

    .line 454
    .line 455
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 456
    .line 457
    .line 458
    :cond_f
    if-eqz v0, :cond_19

    .line 459
    .line 460
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_16

    .line 461
    .line 462
    .line 463
    goto/16 :goto_12

    .line 464
    .line 465
    :catchall_6
    move-exception v0

    .line 466
    move-object v2, v0

    .line 467
    move-object v3, v5

    .line 468
    move-object v10, v3

    .line 469
    move-object v12, v10

    .line 470
    goto/16 :goto_14

    .line 471
    .line 472
    :catch_13
    move-object v3, v5

    .line 473
    move-object v10, v3

    .line 474
    move-object v12, v10

    .line 475
    :goto_d
    :try_start_e
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 476
    .line 477
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    const/16 v4, 0xe

    .line 482
    .line 483
    invoke-virtual {v0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    iget-object v2, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 488
    .line 489
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 494
    .line 495
    .line 496
    if-eqz v5, :cond_10

    .line 497
    .line 498
    :try_start_f
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 499
    .line 500
    .line 501
    :cond_10
    if-eqz v12, :cond_11

    .line 502
    .line 503
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 504
    .line 505
    .line 506
    :cond_11
    if-eqz v10, :cond_12

    .line 507
    .line 508
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 509
    .line 510
    .line 511
    :cond_12
    if-eqz v3, :cond_19

    .line 512
    .line 513
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_16

    .line 514
    .line 515
    .line 516
    goto :goto_12

    .line 517
    :catch_14
    move-object v3, v5

    .line 518
    move-object v10, v3

    .line 519
    move-object v12, v10

    .line 520
    :goto_e
    :try_start_10
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 521
    .line 522
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    const/16 v4, 0xe

    .line 527
    .line 528
    invoke-virtual {v0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    iget-object v2, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 533
    .line 534
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 539
    .line 540
    .line 541
    if-eqz v5, :cond_13

    .line 542
    .line 543
    :try_start_11
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 544
    .line 545
    .line 546
    :cond_13
    if-eqz v12, :cond_14

    .line 547
    .line 548
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 549
    .line 550
    .line 551
    :cond_14
    if-eqz v10, :cond_15

    .line 552
    .line 553
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 554
    .line 555
    .line 556
    :cond_15
    if-eqz v3, :cond_19

    .line 557
    .line 558
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_16

    .line 559
    .line 560
    .line 561
    goto :goto_12

    .line 562
    :catch_15
    move-object v3, v5

    .line 563
    move-object v10, v3

    .line 564
    move-object v12, v10

    .line 565
    :goto_f
    :try_start_12
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 566
    .line 567
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    const/16 v4, 0xe

    .line 572
    .line 573
    invoke-virtual {v0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    iget-object v2, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 578
    .line 579
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 584
    .line 585
    .line 586
    if-eqz v5, :cond_16

    .line 587
    .line 588
    :try_start_13
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 589
    .line 590
    .line 591
    goto :goto_10

    .line 592
    :catch_16
    move-exception v0

    .line 593
    goto :goto_11

    .line 594
    :cond_16
    :goto_10
    if-eqz v12, :cond_17

    .line 595
    .line 596
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 597
    .line 598
    .line 599
    :cond_17
    if-eqz v10, :cond_18

    .line 600
    .line 601
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 602
    .line 603
    .line 604
    :cond_18
    if-eqz v3, :cond_19

    .line 605
    .line 606
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_16

    .line 607
    .line 608
    .line 609
    goto :goto_12

    .line 610
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 611
    .line 612
    .line 613
    :cond_19
    :goto_12
    return-void

    .line 614
    :catchall_7
    move-exception v0

    .line 615
    :goto_13
    move-object v2, v0

    .line 616
    :goto_14
    if-eqz v5, :cond_1a

    .line 617
    .line 618
    :try_start_14
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 619
    .line 620
    .line 621
    goto :goto_15

    .line 622
    :catch_17
    move-exception v0

    .line 623
    goto :goto_16

    .line 624
    :cond_1a
    :goto_15
    if-eqz v12, :cond_1b

    .line 625
    .line 626
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 627
    .line 628
    .line 629
    :cond_1b
    if-eqz v10, :cond_1c

    .line 630
    .line 631
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 632
    .line 633
    .line 634
    :cond_1c
    if-eqz v3, :cond_1d

    .line 635
    .line 636
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_17

    .line 637
    .line 638
    .line 639
    goto :goto_17

    .line 640
    :goto_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 641
    .line 642
    .line 643
    :cond_1d
    :goto_17
    throw v2
.end method

.method private b(Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V
    .locals 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "downloadType",
            "downpath"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v0, p2

    .line 6
    .line 7
    const-string v3, "\u89e3\u538b\u5931\u8d25"

    .line 8
    .line 9
    const-string v4, "\u4e0b\u8f7d\u66f4\u65b0\u6587\u4ef6\u5931\u8d25"

    .line 10
    .line 11
    const-string v5, "message"

    .line 12
    .line 13
    const-string v6, "startOrEnd"

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object v7, Lcom/join/mgps/Util/z;->g:Ljava/lang/String;

    .line 19
    .line 20
    const/16 v9, 0xe

    .line 21
    .line 22
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v10

    .line 26
    const/4 v11, 0x2

    .line 27
    const/4 v12, 0x1

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    if-eq v0, v12, :cond_2

    .line 31
    .line 32
    if-eq v0, v11, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_down_url()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v10

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_url_remote()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    :goto_0
    new-instance v13, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 50
    .line 51
    invoke-direct {v13}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v14, Lorg/apache/http/client/methods/HttpGet;

    .line 55
    .line 56
    invoke-direct {v14, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v13, v14}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    .line 68
    .line 69
    .line 70
    move-result-wide v13

    .line 71
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    .line 72
    .line 73
    .line 74
    move-result-object v10
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_15
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 75
    if-eqz v10, :cond_e

    .line 76
    .line 77
    :try_start_1
    new-instance v15, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v7, "/roms/"

    .line 93
    .line 94
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    new-instance v15, Ljava/io/File;

    .line 109
    .line 110
    invoke-direct {v15, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 118
    .line 119
    .line 120
    move-result v16

    .line 121
    if-nez v16, :cond_4

    .line 122
    .line 123
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-nez v7, :cond_4

    .line 128
    .line 129
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 130
    .line 131
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0, v9, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget-object v2, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 140
    .line 141
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 146
    .line 147
    .line 148
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    move-object v2, v0

    .line 154
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    .line 156
    .line 157
    :goto_1
    return-void

    .line 158
    :cond_4
    :try_start_3
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    if-eqz v7, :cond_5

    .line 163
    .line 164
    invoke-static {v15}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 165
    .line 166
    .line 167
    :cond_5
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 168
    .line 169
    .line 170
    new-instance v7, Ljava/io/BufferedInputStream;

    .line 171
    .line 172
    invoke-direct {v7, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_12
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 173
    .line 174
    .line 175
    :try_start_4
    new-instance v8, Ljava/io/FileOutputStream;

    .line 176
    .line 177
    invoke-direct {v8, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 178
    .line 179
    .line 180
    :try_start_5
    new-instance v9, Ljava/io/BufferedOutputStream;

    .line 181
    .line 182
    invoke-direct {v9, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 183
    .line 184
    .line 185
    const/16 v11, 0x400

    .line 186
    .line 187
    :try_start_6
    new-array v11, v11, [B

    .line 188
    .line 189
    const-wide/16 v17, 0x0

    .line 190
    .line 191
    move-wide/from16 v19, v17

    .line 192
    .line 193
    :goto_2
    invoke-virtual {v7, v11}, Ljava/io/InputStream;->read([B)I

    .line 194
    .line 195
    .line 196
    move-result v12
    :try_end_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 197
    move-object/from16 v21, v7

    .line 198
    .line 199
    const/4 v7, -0x1

    .line 200
    move-object/from16 v22, v8

    .line 201
    .line 202
    const/4 v8, 0x0

    .line 203
    if-eq v12, v7, :cond_7

    .line 204
    .line 205
    :try_start_7
    invoke-virtual {v9, v11, v8, v12}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 206
    .line 207
    .line 208
    int-to-long v7, v12

    .line 209
    add-long v7, v17, v7

    .line 210
    .line 211
    move-object/from16 v17, v11

    .line 212
    .line 213
    long-to-double v11, v7

    .line 214
    move-object/from16 v18, v3

    .line 215
    .line 216
    move-object/from16 v23, v4

    .line 217
    .line 218
    long-to-double v3, v13

    .line 219
    div-double/2addr v11, v3

    .line 220
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 221
    .line 222
    mul-double v11, v11, v3

    .line 223
    .line 224
    double-to-int v3, v11

    .line 225
    sub-long v11, v7, v19

    .line 226
    .line 227
    const-wide/16 v24, 0x2800

    .line 228
    .line 229
    cmp-long v4, v11, v24

    .line 230
    .line 231
    if-ltz v4, :cond_6

    .line 232
    .line 233
    :try_start_8
    new-instance v4, Landroid/os/Bundle;

    .line 234
    .line 235
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 236
    .line 237
    .line 238
    const-string v11, "totalSize"

    .line 239
    .line 240
    invoke-virtual {v4, v11, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 241
    .line 242
    .line 243
    const-string v11, "completeSize"

    .line 244
    .line 245
    invoke-virtual {v4, v11, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 246
    .line 247
    .line 248
    const-string v11, "percent"

    .line 249
    .line 250
    invoke-virtual {v4, v11, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 251
    .line 252
    .line 253
    iget-object v3, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 254
    .line 255
    invoke-static {v3}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    const/16 v11, 0xd

    .line 260
    .line 261
    invoke-virtual {v3, v11, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    iget-object v4, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 266
    .line 267
    invoke-static {v4}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 272
    .line 273
    .line 274
    move-wide/from16 v19, v7

    .line 275
    .line 276
    :cond_6
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 277
    .line 278
    .line 279
    move-object/from16 v11, v17

    .line 280
    .line 281
    move-object/from16 v3, v18

    .line 282
    .line 283
    move-object/from16 v4, v23

    .line 284
    .line 285
    move-wide/from16 v17, v7

    .line 286
    .line 287
    move-object/from16 v7, v21

    .line 288
    .line 289
    move-object/from16 v8, v22

    .line 290
    .line 291
    goto :goto_2

    .line 292
    :catch_1
    move-object/from16 v23, v4

    .line 293
    .line 294
    goto/16 :goto_8

    .line 295
    .line 296
    :cond_7
    move-object/from16 v18, v3

    .line 297
    .line 298
    move-object/from16 v23, v4

    .line 299
    .line 300
    const/16 v3, 0xb

    .line 301
    .line 302
    :try_start_9
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    .line 303
    .line 304
    .line 305
    move-result v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 306
    if-eqz v4, :cond_d

    .line 307
    .line 308
    const-string v4, "\u6e38\u620f\u8d44\u6e90\u89e3\u538b\u4e2d,\u8bf7\u7b49\u5f85..."

    .line 309
    .line 310
    if-eqz v0, :cond_a

    .line 311
    .line 312
    const/4 v7, 0x1

    .line 313
    if-eq v0, v7, :cond_9

    .line 314
    .line 315
    const/4 v11, 0x2

    .line 316
    if-eq v0, v11, :cond_8

    .line 317
    .line 318
    goto/16 :goto_3

    .line 319
    .line 320
    :cond_8
    :try_start_a
    new-instance v11, Landroid/os/Bundle;

    .line 321
    .line 322
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v11, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v11, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-object v4, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 332
    .line 333
    invoke-static {v4}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-virtual {v4, v3, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    iget-object v7, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 342
    .line 343
    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 348
    .line 349
    .line 350
    invoke-virtual {v15}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    invoke-static {v15, v4}, Lcom/join/mgps/Util/s3;->h(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_path(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    goto :goto_3

    .line 362
    :cond_9
    new-instance v7, Landroid/os/Bundle;

    .line 363
    .line 364
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 365
    .line 366
    .line 367
    const/4 v11, 0x1

    .line 368
    invoke-virtual {v7, v6, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v7, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    iget-object v4, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 375
    .line 376
    invoke-static {v4}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    invoke-virtual {v4, v3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    iget-object v7, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 385
    .line 386
    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 387
    .line 388
    .line 389
    move-result-object v7

    .line 390
    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 391
    .line 392
    .line 393
    invoke-virtual {v15}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v7

    .line 401
    invoke-static {v15, v4, v7}, Lcom/join/mgps/Util/s3;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    goto :goto_3

    .line 405
    :cond_a
    new-instance v7, Landroid/os/Bundle;

    .line 406
    .line 407
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 408
    .line 409
    .line 410
    const/4 v11, 0x1

    .line 411
    invoke-virtual {v7, v6, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v7, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    iget-object v4, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 418
    .line 419
    invoke-static {v4}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    invoke-virtual {v4, v3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    iget-object v7, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 428
    .line 429
    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 430
    .line 431
    .line 432
    move-result-object v7

    .line 433
    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 434
    .line 435
    .line 436
    invoke-virtual {v15}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v7

    .line 444
    invoke-static {v15, v4, v7}, Lcom/join/mgps/Util/s3;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    invoke-virtual {v4, v2}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    :goto_3
    new-instance v4, Landroid/os/Bundle;

    .line 459
    .line 460
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v4, v6, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 464
    .line 465
    .line 466
    const-string v7, "\u89e3\u538b\u5b8c\u6210"

    .line 467
    .line 468
    invoke-virtual {v4, v5, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    iget-object v7, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 472
    .line 473
    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 474
    .line 475
    .line 476
    move-result-object v7

    .line 477
    invoke-virtual {v7, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    iget-object v7, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 482
    .line 483
    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 484
    .line 485
    .line 486
    move-result-object v7

    .line 487
    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 488
    .line 489
    .line 490
    const/4 v4, 0x1

    .line 491
    if-ne v0, v4, :cond_b

    .line 492
    .line 493
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 494
    .line 495
    iput-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->b:Ljava/lang/Boolean;

    .line 496
    .line 497
    goto :goto_4

    .line 498
    :cond_b
    const/4 v4, 0x2

    .line 499
    if-ne v0, v4, :cond_c

    .line 500
    .line 501
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 502
    .line 503
    iput-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->c:Ljava/lang/Boolean;

    .line 504
    .line 505
    :cond_c
    :goto_4
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 506
    .line 507
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    const-string v4, "\u66f4\u65b0\u5b8c\u6210"

    .line 512
    .line 513
    const/16 v7, 0xc

    .line 514
    .line 515
    invoke-virtual {v0, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    iget-object v4, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 520
    .line 521
    invoke-static {v4}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 522
    .line 523
    .line 524
    move-result-object v4

    .line 525
    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 526
    .line 527
    .line 528
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    if-eqz v0, :cond_d

    .line 533
    .line 534
    new-instance v0, Ljava/io/File;

    .line 535
    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v4

    .line 540
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 541
    .line 542
    .line 543
    :try_start_b
    const-string v4, ".downloadTask"

    .line 544
    .line 545
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 550
    .line 551
    .line 552
    move-result-object v7

    .line 553
    invoke-virtual {v7, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v7

    .line 557
    invoke-static {v4, v0, v7}, Lcom/join/mgps/Util/o3;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 558
    .line 559
    .line 560
    goto :goto_5

    .line 561
    :catch_2
    move-exception v0

    .line 562
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 563
    .line 564
    .line 565
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v4

    .line 573
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    invoke-static {v0, v4, v2}, Lcom/join/mgps/Util/o3;->h(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 582
    .line 583
    .line 584
    goto :goto_6

    .line 585
    :catchall_0
    move-exception v0

    .line 586
    goto :goto_7

    .line 587
    :catch_3
    move-exception v0

    .line 588
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 589
    .line 590
    .line 591
    new-instance v0, Landroid/os/Bundle;

    .line 592
    .line 593
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v0, v6, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 597
    .line 598
    .line 599
    move-object/from16 v2, v18

    .line 600
    .line 601
    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    iget-object v4, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 605
    .line 606
    invoke-static {v4}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 607
    .line 608
    .line 609
    move-result-object v4

    .line 610
    invoke-virtual {v4, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    iget-object v3, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 615
    .line 616
    invoke-static {v3}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 621
    .line 622
    .line 623
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 624
    .line 625
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    const/16 v3, 0xe

    .line 630
    .line 631
    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    iget-object v2, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 636
    .line 637
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 642
    .line 643
    .line 644
    :cond_d
    :goto_6
    invoke-static {v15}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 645
    .line 646
    .line 647
    move-object v8, v9

    .line 648
    goto/16 :goto_9

    .line 649
    .line 650
    :catch_4
    move-object v8, v9

    .line 651
    move-object/from16 v2, v23

    .line 652
    .line 653
    goto/16 :goto_11

    .line 654
    .line 655
    :catch_5
    move-object v8, v9

    .line 656
    move-object/from16 v2, v23

    .line 657
    .line 658
    goto/16 :goto_14

    .line 659
    .line 660
    :catchall_1
    move-exception v0

    .line 661
    move-object/from16 v21, v7

    .line 662
    .line 663
    move-object/from16 v22, v8

    .line 664
    .line 665
    :goto_7
    move-object v2, v0

    .line 666
    move-object v8, v9

    .line 667
    goto/16 :goto_18

    .line 668
    .line 669
    :catch_6
    move-object/from16 v23, v4

    .line 670
    .line 671
    move-object/from16 v21, v7

    .line 672
    .line 673
    move-object/from16 v22, v8

    .line 674
    .line 675
    :catch_7
    :goto_8
    move-object v8, v9

    .line 676
    goto/16 :goto_e

    .line 677
    .line 678
    :catch_8
    move-object/from16 v21, v7

    .line 679
    .line 680
    move-object/from16 v22, v8

    .line 681
    .line 682
    :catch_9
    move-object v2, v4

    .line 683
    move-object v8, v9

    .line 684
    goto/16 :goto_11

    .line 685
    .line 686
    :catch_a
    move-object/from16 v21, v7

    .line 687
    .line 688
    move-object/from16 v22, v8

    .line 689
    .line 690
    :catch_b
    move-object v2, v4

    .line 691
    move-object v8, v9

    .line 692
    goto/16 :goto_14

    .line 693
    .line 694
    :catchall_2
    move-exception v0

    .line 695
    move-object/from16 v21, v7

    .line 696
    .line 697
    move-object/from16 v22, v8

    .line 698
    .line 699
    move-object v2, v0

    .line 700
    const/4 v8, 0x0

    .line 701
    goto/16 :goto_18

    .line 702
    .line 703
    :catch_c
    move-object/from16 v23, v4

    .line 704
    .line 705
    move-object/from16 v21, v7

    .line 706
    .line 707
    move-object/from16 v22, v8

    .line 708
    .line 709
    const/4 v8, 0x0

    .line 710
    goto/16 :goto_e

    .line 711
    .line 712
    :catch_d
    move-object/from16 v21, v7

    .line 713
    .line 714
    move-object/from16 v22, v8

    .line 715
    .line 716
    move-object v2, v4

    .line 717
    const/4 v8, 0x0

    .line 718
    goto/16 :goto_11

    .line 719
    .line 720
    :catch_e
    move-object/from16 v21, v7

    .line 721
    .line 722
    move-object/from16 v22, v8

    .line 723
    .line 724
    move-object v2, v4

    .line 725
    const/4 v8, 0x0

    .line 726
    goto/16 :goto_14

    .line 727
    .line 728
    :catchall_3
    move-exception v0

    .line 729
    move-object/from16 v21, v7

    .line 730
    .line 731
    move-object v2, v0

    .line 732
    const/4 v8, 0x0

    .line 733
    goto :goto_b

    .line 734
    :catch_f
    move-object/from16 v23, v4

    .line 735
    .line 736
    move-object/from16 v21, v7

    .line 737
    .line 738
    const/4 v8, 0x0

    .line 739
    goto :goto_d

    .line 740
    :catch_10
    move-object/from16 v21, v7

    .line 741
    .line 742
    move-object v2, v4

    .line 743
    const/4 v8, 0x0

    .line 744
    goto/16 :goto_10

    .line 745
    .line 746
    :catch_11
    move-object/from16 v21, v7

    .line 747
    .line 748
    move-object v2, v4

    .line 749
    const/4 v8, 0x0

    .line 750
    goto/16 :goto_13

    .line 751
    .line 752
    :catchall_4
    move-exception v0

    .line 753
    move-object v2, v0

    .line 754
    const/4 v8, 0x0

    .line 755
    goto :goto_a

    .line 756
    :catch_12
    move-object/from16 v23, v4

    .line 757
    .line 758
    const/4 v8, 0x0

    .line 759
    goto :goto_c

    .line 760
    :catch_13
    move-object v2, v4

    .line 761
    const/4 v8, 0x0

    .line 762
    goto :goto_f

    .line 763
    :catch_14
    move-object v2, v4

    .line 764
    const/4 v8, 0x0

    .line 765
    goto/16 :goto_12

    .line 766
    .line 767
    :cond_e
    const/4 v8, 0x0

    .line 768
    const/16 v21, 0x0

    .line 769
    .line 770
    const/16 v22, 0x0

    .line 771
    .line 772
    :goto_9
    if-eqz v8, :cond_f

    .line 773
    .line 774
    :try_start_e
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 775
    .line 776
    .line 777
    :cond_f
    if-eqz v22, :cond_10

    .line 778
    .line 779
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 780
    .line 781
    .line 782
    :cond_10
    if-eqz v10, :cond_11

    .line 783
    .line 784
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 785
    .line 786
    .line 787
    :cond_11
    if-eqz v21, :cond_1b

    .line 788
    .line 789
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_18

    .line 790
    .line 791
    .line 792
    goto/16 :goto_17

    .line 793
    .line 794
    :catchall_5
    move-exception v0

    .line 795
    move-object v2, v0

    .line 796
    const/4 v8, 0x0

    .line 797
    const/4 v10, 0x0

    .line 798
    :goto_a
    const/16 v21, 0x0

    .line 799
    .line 800
    :goto_b
    const/16 v22, 0x0

    .line 801
    .line 802
    goto/16 :goto_18

    .line 803
    .line 804
    :catch_15
    move-object/from16 v23, v4

    .line 805
    .line 806
    const/4 v8, 0x0

    .line 807
    const/4 v10, 0x0

    .line 808
    :goto_c
    const/16 v21, 0x0

    .line 809
    .line 810
    :goto_d
    const/16 v22, 0x0

    .line 811
    .line 812
    :goto_e
    :try_start_f
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 813
    .line 814
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    move-object/from16 v2, v23

    .line 819
    .line 820
    const/16 v3, 0xe

    .line 821
    .line 822
    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    iget-object v2, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 827
    .line 828
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 829
    .line 830
    .line 831
    move-result-object v2

    .line 832
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 833
    .line 834
    .line 835
    if-eqz v8, :cond_12

    .line 836
    .line 837
    :try_start_10
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 838
    .line 839
    .line 840
    :cond_12
    if-eqz v22, :cond_13

    .line 841
    .line 842
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 843
    .line 844
    .line 845
    :cond_13
    if-eqz v10, :cond_14

    .line 846
    .line 847
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 848
    .line 849
    .line 850
    :cond_14
    if-eqz v21, :cond_1b

    .line 851
    .line 852
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_18

    .line 853
    .line 854
    .line 855
    goto :goto_17

    .line 856
    :catch_16
    move-object v2, v4

    .line 857
    const/4 v8, 0x0

    .line 858
    const/4 v10, 0x0

    .line 859
    :goto_f
    const/16 v21, 0x0

    .line 860
    .line 861
    :goto_10
    const/16 v22, 0x0

    .line 862
    .line 863
    :goto_11
    :try_start_11
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 864
    .line 865
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    const/16 v3, 0xe

    .line 870
    .line 871
    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 872
    .line 873
    .line 874
    move-result-object v0

    .line 875
    iget-object v2, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 876
    .line 877
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 878
    .line 879
    .line 880
    move-result-object v2

    .line 881
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 882
    .line 883
    .line 884
    if-eqz v8, :cond_15

    .line 885
    .line 886
    :try_start_12
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 887
    .line 888
    .line 889
    :cond_15
    if-eqz v22, :cond_16

    .line 890
    .line 891
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 892
    .line 893
    .line 894
    :cond_16
    if-eqz v10, :cond_17

    .line 895
    .line 896
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 897
    .line 898
    .line 899
    :cond_17
    if-eqz v21, :cond_1b

    .line 900
    .line 901
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_18

    .line 902
    .line 903
    .line 904
    goto :goto_17

    .line 905
    :catch_17
    move-object v2, v4

    .line 906
    const/4 v8, 0x0

    .line 907
    const/4 v10, 0x0

    .line 908
    :goto_12
    const/16 v21, 0x0

    .line 909
    .line 910
    :goto_13
    const/16 v22, 0x0

    .line 911
    .line 912
    :goto_14
    :try_start_13
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 913
    .line 914
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    const/16 v3, 0xe

    .line 919
    .line 920
    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    iget-object v2, v1, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 925
    .line 926
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 927
    .line 928
    .line 929
    move-result-object v2

    .line 930
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 931
    .line 932
    .line 933
    if-eqz v8, :cond_18

    .line 934
    .line 935
    :try_start_14
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 936
    .line 937
    .line 938
    goto :goto_15

    .line 939
    :catch_18
    move-exception v0

    .line 940
    goto :goto_16

    .line 941
    :cond_18
    :goto_15
    if-eqz v22, :cond_19

    .line 942
    .line 943
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 944
    .line 945
    .line 946
    :cond_19
    if-eqz v10, :cond_1a

    .line 947
    .line 948
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 949
    .line 950
    .line 951
    :cond_1a
    if-eqz v21, :cond_1b

    .line 952
    .line 953
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_18

    .line 954
    .line 955
    .line 956
    goto :goto_17

    .line 957
    :goto_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 958
    .line 959
    .line 960
    :cond_1b
    :goto_17
    return-void

    .line 961
    :catchall_6
    move-exception v0

    .line 962
    move-object v2, v0

    .line 963
    :goto_18
    if-eqz v8, :cond_1c

    .line 964
    .line 965
    :try_start_15
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 966
    .line 967
    .line 968
    goto :goto_19

    .line 969
    :catch_19
    move-exception v0

    .line 970
    goto :goto_1a

    .line 971
    :cond_1c
    :goto_19
    if-eqz v22, :cond_1d

    .line 972
    .line 973
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 974
    .line 975
    .line 976
    :cond_1d
    if-eqz v10, :cond_1e

    .line 977
    .line 978
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 979
    .line 980
    .line 981
    :cond_1e
    if-eqz v21, :cond_1f

    .line 982
    .line 983
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_19

    .line 984
    .line 985
    .line 986
    goto :goto_1b

    .line 987
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 988
    .line 989
    .line 990
    :cond_1f
    :goto_1b
    throw v2
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->Y(Lcom/join/android/app/common/dialog/j;)Lcom/join/mgps/adapter/h0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_13

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->Q(Lcom/join/android/app/common/dialog/j;)Lcom/join/mgps/customview/NoScrollViewPager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/join/android/app/common/dialog/j;->Y(Lcom/join/android/app/common/dialog/j;)Lcom/join/mgps/adapter/h0;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/adapter/h0;->c()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/join/mgps/adapter/h0$a;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/join/mgps/adapter/h0$a;->a:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/join/android/app/common/dialog/j;->g:Ljava/util/Map;

    .line 40
    .line 41
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->buildDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v3, v2}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 57
    .line 58
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->Y(Lcom/join/android/app/common/dialog/j;)Lcom/join/mgps/adapter/h0;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2, v0}, Lcom/join/mgps/adapter/h0;->getItem(I)Landroidx/fragment/app/Fragment;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/join/mgps/activity/d;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 69
    .line 70
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_0

    .line 75
    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    iget-object v2, v0, Lcom/join/mgps/activity/d;->g:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    if-eqz v2, :cond_0

    .line 85
    .line 86
    iget-object v0, v0, Lcom/join/mgps/activity/d;->g:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 97
    .line 98
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_0

    .line 111
    .line 112
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const/4 v2, 0x2

    .line 120
    const/4 v3, 0x1

    .line 121
    const-string v4, "/"

    .line 122
    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 126
    .line 127
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_1

    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 142
    .line 143
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_down_path()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_3

    .line 156
    .line 157
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 158
    .line 159
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const/4 v5, 0x6

    .line 164
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 168
    .line 169
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    const/4 v5, 0x7

    .line 182
    if-nez v0, :cond_2

    .line 183
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    iget-object v6, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 190
    .line 191
    invoke-static {v6}, Lcom/join/android/app/common/dialog/j;->b0(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 214
    .line 215
    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->b0(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 226
    .line 227
    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    iget-object v8, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 236
    .line 237
    invoke-static {v8}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    invoke-virtual {v8, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    add-int/2addr v8, v3

    .line 250
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    goto :goto_0

    .line 262
    :catch_0
    move-exception v6

    .line 263
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 264
    .line 265
    .line 266
    :goto_0
    iget-object v6, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 267
    .line 268
    invoke-static {v6}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    invoke-direct {p0, v6, v3, v0}, Lcom/join/android/app/common/dialog/j$d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->b:Ljava/lang/Boolean;

    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-nez v0, :cond_2

    .line 282
    .line 283
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 284
    .line 285
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    .line 291
    .line 292
    return-void

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 294
    .line 295
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_down_url()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    if-nez v0, :cond_3

    .line 308
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    iget-object v6, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 315
    .line 316
    invoke-static {v6}, Lcom/join/android/app/common/dialog/j;->b0(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 339
    .line 340
    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->b0(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v7

    .line 344
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 351
    .line 352
    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 353
    .line 354
    .line 355
    move-result-object v7

    .line 356
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_down_url()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    iget-object v8, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 361
    .line 362
    invoke-static {v8}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 363
    .line 364
    .line 365
    move-result-object v8

    .line 366
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_down_url()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    invoke-virtual {v8, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    move-result v8

    .line 374
    add-int/2addr v8, v3

    .line 375
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 386
    goto :goto_1

    .line 387
    :catch_1
    move-exception v6

    .line 388
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 389
    .line 390
    .line 391
    :goto_1
    iget-object v6, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 392
    .line 393
    invoke-static {v6}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    invoke-direct {p0, v6, v2, v0}, Lcom/join/android/app/common/dialog/j$d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V

    .line 398
    .line 399
    .line 400
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->b:Ljava/lang/Boolean;

    .line 401
    .line 402
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    if-nez v0, :cond_3

    .line 407
    .line 408
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 409
    .line 410
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 415
    .line 416
    .line 417
    return-void

    .line 418
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .line 422
    .line 423
    iget-object v5, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 424
    .line 425
    invoke-static {v5}, Lcom/join/android/app/common/dialog/j;->R(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    iget-object v6, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 448
    .line 449
    invoke-static {v6}, Lcom/join/android/app/common/dialog/j;->b0(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v6

    .line 453
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v5

    .line 466
    invoke-static {v0, v5}, Lcom/join/mgps/Util/UtilsMy;->I0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    const/4 v5, 0x5

    .line 471
    if-eqz v0, :cond_12

    .line 472
    .line 473
    new-instance v0, Ljava/io/File;

    .line 474
    .line 475
    new-instance v6, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .line 479
    .line 480
    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 481
    .line 482
    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->R(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v7

    .line 486
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v6

    .line 499
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 503
    .line 504
    .line 505
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 506
    .line 507
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->S(Lcom/join/android/app/common/dialog/j;)Ljava/util/List;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    const/4 v6, 0x0

    .line 512
    if-eqz v0, :cond_6

    .line 513
    .line 514
    const/4 v0, 0x0

    .line 515
    :goto_2
    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 516
    .line 517
    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->S(Lcom/join/android/app/common/dialog/j;)Ljava/util/List;

    .line 518
    .line 519
    .line 520
    move-result-object v7

    .line 521
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 522
    .line 523
    .line 524
    move-result v7

    .line 525
    if-ge v0, v7, :cond_6

    .line 526
    .line 527
    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 528
    .line 529
    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 530
    .line 531
    .line 532
    move-result-object v7

    .line 533
    if-eqz v7, :cond_5

    .line 534
    .line 535
    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 536
    .line 537
    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->S(Lcom/join/android/app/common/dialog/j;)Ljava/util/List;

    .line 538
    .line 539
    .line 540
    move-result-object v7

    .line 541
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v7

    .line 545
    if-eqz v7, :cond_5

    .line 546
    .line 547
    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 548
    .line 549
    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->S(Lcom/join/android/app/common/dialog/j;)Ljava/util/List;

    .line 550
    .line 551
    .line 552
    move-result-object v7

    .line 553
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v7

    .line 557
    check-cast v7, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 558
    .line 559
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v7

    .line 563
    iget-object v8, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 564
    .line 565
    invoke-static {v8}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 566
    .line 567
    .line 568
    move-result-object v8

    .line 569
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v8

    .line 573
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    move-result v7

    .line 577
    if-eqz v7, :cond_5

    .line 578
    .line 579
    iget-object v6, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 580
    .line 581
    invoke-static {v6}, Lcom/join/android/app/common/dialog/j;->S(Lcom/join/android/app/common/dialog/j;)Ljava/util/List;

    .line 582
    .line 583
    .line 584
    move-result-object v6

    .line 585
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 590
    .line 591
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    if-ne v0, v5, :cond_4

    .line 596
    .line 597
    new-instance v0, Landroid/os/Message;

    .line 598
    .line 599
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 600
    .line 601
    .line 602
    iput v2, v0, Landroid/os/Message;->what:I

    .line 603
    .line 604
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 605
    .line 606
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 611
    .line 612
    .line 613
    goto :goto_3

    .line 614
    :cond_4
    new-instance v0, Landroid/os/Message;

    .line 615
    .line 616
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 617
    .line 618
    .line 619
    const/4 v2, 0x3

    .line 620
    iput v2, v0, Landroid/os/Message;->what:I

    .line 621
    .line 622
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 623
    .line 624
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 625
    .line 626
    .line 627
    move-result-object v2

    .line 628
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 629
    .line 630
    .line 631
    goto :goto_3

    .line 632
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 633
    .line 634
    goto :goto_2

    .line 635
    :cond_6
    const/4 v3, 0x0

    .line 636
    :goto_3
    if-eqz v3, :cond_7

    .line 637
    .line 638
    return-void

    .line 639
    :cond_7
    new-instance v0, Landroid/os/Message;

    .line 640
    .line 641
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 642
    .line 643
    .line 644
    const/4 v2, 0x4

    .line 645
    iput v2, v0, Landroid/os/Message;->what:I

    .line 646
    .line 647
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 648
    .line 649
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 654
    .line 655
    .line 656
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 657
    .line 658
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    .line 663
    .line 664
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 665
    .line 666
    .line 667
    iget-object v3, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 668
    .line 669
    invoke-static {v3}, Lcom/join/android/app/common/dialog/j;->b0(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 690
    .line 691
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 696
    .line 697
    .line 698
    move-result-wide v2

    .line 699
    invoke-virtual {v0, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLastTime(J)V

    .line 700
    .line 701
    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    .line 703
    .line 704
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 705
    .line 706
    .line 707
    sget-object v2, Lcom/join/mgps/Util/z;->g:Ljava/lang/String;

    .line 708
    .line 709
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 713
    .line 714
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 715
    .line 716
    .line 717
    move-result-object v2

    .line 718
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v2

    .line 722
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    const-string v2, "/roms/"

    .line 726
    .line 727
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 731
    .line 732
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v2

    .line 740
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    const/16 v2, 0x9

    .line 748
    .line 749
    :try_start_2
    new-instance v3, Ljava/io/File;

    .line 750
    .line 751
    new-instance v6, Ljava/lang/StringBuilder;

    .line 752
    .line 753
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
    .line 755
    .line 756
    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 757
    .line 758
    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->b0(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v7

    .line 762
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v6

    .line 775
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 779
    .line 780
    .line 781
    move-result v6

    .line 782
    if-eqz v6, :cond_11

    .line 783
    .line 784
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v6

    .line 788
    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 789
    .line 790
    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 791
    .line 792
    .line 793
    move-result-object v7

    .line 794
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v7

    .line 798
    invoke-static {v3, v6, v7}, Lcom/join/mgps/Util/s3;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v3

    .line 802
    iget-object v6, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 803
    .line 804
    invoke-static {v6}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 805
    .line 806
    .line 807
    move-result-object v6

    .line 808
    invoke-virtual {v6, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    iget-object v6, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 812
    .line 813
    invoke-static {v6}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 814
    .line 815
    .line 816
    move-result-object v6

    .line 817
    invoke-virtual {v6, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    iget-object v3, p0, Lcom/join/android/app/common/dialog/j$d;->b:Ljava/lang/Boolean;

    .line 821
    .line 822
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 823
    .line 824
    .line 825
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 826
    const-string v6, "_cfg"

    .line 827
    .line 828
    if-eqz v3, :cond_9

    .line 829
    .line 830
    :try_start_3
    new-instance v3, Ljava/io/File;

    .line 831
    .line 832
    new-instance v7, Ljava/lang/StringBuilder;

    .line 833
    .line 834
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 835
    .line 836
    .line 837
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v7

    .line 847
    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 851
    .line 852
    .line 853
    move-result v7

    .line 854
    if-eqz v7, :cond_8

    .line 855
    .line 856
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v7

    .line 860
    iget-object v8, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 861
    .line 862
    invoke-static {v8}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 863
    .line 864
    .line 865
    move-result-object v8

    .line 866
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v8

    .line 870
    invoke-static {v3, v7, v8}, Lcom/join/mgps/Util/s3;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    goto :goto_4

    .line 874
    :cond_8
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 875
    .line 876
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 881
    .line 882
    .line 883
    return-void

    .line 884
    :cond_9
    :goto_4
    iget-object v3, p0, Lcom/join/android/app/common/dialog/j$d;->c:Ljava/lang/Boolean;

    .line 885
    .line 886
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 887
    .line 888
    .line 889
    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 890
    const-string v7, "_res"

    .line 891
    .line 892
    if-eqz v3, :cond_b

    .line 893
    .line 894
    :try_start_4
    new-instance v3, Ljava/io/File;

    .line 895
    .line 896
    new-instance v8, Ljava/lang/StringBuilder;

    .line 897
    .line 898
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    .line 903
    .line 904
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v8

    .line 911
    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 915
    .line 916
    .line 917
    move-result v8

    .line 918
    if-eqz v8, :cond_a

    .line 919
    .line 920
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v8

    .line 924
    invoke-static {v3, v8}, Lcom/join/mgps/Util/s3;->h(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v3

    .line 928
    iget-object v8, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 929
    .line 930
    invoke-static {v8}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 931
    .line 932
    .line 933
    move-result-object v8

    .line 934
    invoke-virtual {v8, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_path(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    goto :goto_5

    .line 938
    :cond_a
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 939
    .line 940
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 945
    .line 946
    .line 947
    return-void

    .line 948
    :cond_b
    :goto_5
    new-instance v2, Ljava/io/File;

    .line 949
    .line 950
    new-instance v3, Ljava/lang/StringBuilder;

    .line 951
    .line 952
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v3

    .line 965
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 969
    .line 970
    .line 971
    move-result v3

    .line 972
    if-eqz v3, :cond_c

    .line 973
    .line 974
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 975
    .line 976
    .line 977
    :cond_c
    new-instance v2, Ljava/io/File;

    .line 978
    .line 979
    new-instance v3, Ljava/lang/StringBuilder;

    .line 980
    .line 981
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 982
    .line 983
    .line 984
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    .line 986
    .line 987
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    .line 989
    .line 990
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v0

    .line 994
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 998
    .line 999
    .line 1000
    move-result v0

    .line 1001
    if-eqz v0, :cond_d

    .line 1002
    .line 1003
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 1004
    .line 1005
    .line 1006
    :cond_d
    new-instance v0, Ljava/io/File;

    .line 1007
    .line 1008
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1011
    .line 1012
    .line 1013
    iget-object v3, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 1014
    .line 1015
    invoke-static {v3}, Lcom/join/android/app/common/dialog/j;->b0(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v3

    .line 1019
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v1

    .line 1032
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1036
    .line 1037
    .line 1038
    move-result v1

    .line 1039
    if-eqz v1, :cond_e

    .line 1040
    .line 1041
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 1042
    .line 1043
    .line 1044
    :cond_e
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 1045
    .line 1046
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v0

    .line 1050
    const/16 v1, 0x8

    .line 1051
    .line 1052
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1053
    .line 1054
    .line 1055
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 1056
    .line 1057
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v0

    .line 1061
    invoke-virtual {v0, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 1062
    .line 1063
    .line 1064
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 1065
    .line 1066
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v0

    .line 1070
    if-eqz v0, :cond_f

    .line 1071
    .line 1072
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 1073
    .line 1074
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v0

    .line 1078
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v0

    .line 1082
    if-eqz v0, :cond_f

    .line 1083
    .line 1084
    new-instance v0, Ljava/io/File;

    .line 1085
    .line 1086
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 1087
    .line 1088
    invoke-static {v1}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v1

    .line 1092
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v1

    .line 1096
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    :try_start_5
    const-string v1, ".downloadTask"

    .line 1100
    .line 1101
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v0

    .line 1105
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v2

    .line 1109
    iget-object v3, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 1110
    .line 1111
    invoke-static {v3}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v3

    .line 1115
    invoke-virtual {v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v2

    .line 1119
    invoke-static {v1, v0, v2}, Lcom/join/mgps/Util/o3;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1120
    .line 1121
    .line 1122
    goto :goto_6

    .line 1123
    :catch_2
    move-exception v0

    .line 1124
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1125
    .line 1126
    .line 1127
    :cond_f
    :goto_6
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v0

    .line 1131
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 1132
    .line 1133
    invoke-static {v1}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v1

    .line 1137
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v1

    .line 1141
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v0

    .line 1145
    if-nez v0, :cond_10

    .line 1146
    .line 1147
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v0

    .line 1151
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 1152
    .line 1153
    invoke-static {v1}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v1

    .line 1157
    invoke-virtual {v0, v1}, Lq5/f;->j0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 1158
    .line 1159
    .line 1160
    :cond_10
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v0

    .line 1164
    new-instance v1, Lcom/join/mgps/event/r;

    .line 1165
    .line 1166
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 1167
    .line 1168
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v2

    .line 1172
    invoke-direct {v1, v2, v5}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 1176
    .line 1177
    .line 1178
    goto :goto_7

    .line 1179
    :cond_11
    :try_start_6
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 1180
    .line 1181
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v0

    .line 1185
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1186
    .line 1187
    .line 1188
    return-void

    .line 1189
    :catch_3
    move-exception v0

    .line 1190
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1191
    .line 1192
    .line 1193
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 1194
    .line 1195
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v0

    .line 1199
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1200
    .line 1201
    .line 1202
    return-void

    .line 1203
    :cond_12
    new-instance v0, Landroid/os/Message;

    .line 1204
    .line 1205
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1206
    .line 1207
    .line 1208
    iput v5, v0, Landroid/os/Message;->what:I

    .line 1209
    .line 1210
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$d;->d:Lcom/join/android/app/common/dialog/j;

    .line 1211
    .line 1212
    invoke-static {v1}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v1

    .line 1216
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1217
    .line 1218
    .line 1219
    :cond_13
    :goto_7
    return-void
.end method
