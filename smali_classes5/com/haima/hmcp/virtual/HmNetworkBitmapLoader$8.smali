.class Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->putBitmapToDiskCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$8;->this$0:Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$8;->val$url:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$8;->val$bitmap:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    const-string v0, ".tmp"

    .line 2
    .line 3
    const-string v1, ", fileName="

    .line 4
    .line 5
    const-string v2, "HmNetworkBitmapLoader"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$8;->this$0:Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 9
    .line 10
    iget-object v5, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$8;->val$url:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v4, v5}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->access$400(Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v6, "putBitmapToDiskCache: start caching, url="

    .line 22
    .line 23
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v6, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$8;->val$url:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v6, ", tempFile="

    .line 38
    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v2, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v5, Ljava/io/File;

    .line 56
    .line 57
    iget-object v6, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$8;->this$0:Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 58
    .line 59
    invoke-static {v6}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->access$500(Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;)Ljava/io/File;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v6, Ljava/io/File;

    .line 67
    .line 68
    iget-object v7, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$8;->this$0:Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 69
    .line 70
    invoke-static {v7}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->access$500(Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;)Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    new-instance v8, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    .line 91
    .line 92
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v7

    .line 102
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    .line 103
    .line 104
    .line 105
    move-result-wide v9

    .line 106
    sub-long/2addr v7, v9

    .line 107
    const-wide/32 v9, 0xea60

    .line 108
    .line 109
    .line 110
    div-long/2addr v7, v9

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v9, "putBitmapToDiskCache: found stale temp file "

    .line 117
    .line 118
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v9, ", age="

    .line 129
    .line 130
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v7, " minutes, deleting..."

    .line 137
    .line 138
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 149
    .line 150
    .line 151
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 152
    .line 153
    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    .line 155
    .line 156
    :try_start_2
    iget-object v7, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$8;->val$bitmap:Landroid/graphics/Bitmap;

    .line 157
    .line 158
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 159
    .line 160
    const/16 v9, 0x64

    .line 161
    .line 162
    invoke-virtual {v7, v8, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    .line 170
    .line 171
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_1

    .line 176
    .line 177
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 178
    .line 179
    .line 180
    :cond_1
    invoke-virtual {v6, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_2

    .line 185
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v7, "putBitmapToDiskCache: cached successfully, url="

    .line 192
    .line 193
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-object v7, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$8;->val$url:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v1, ", size="

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 213
    .line 214
    .line 215
    move-result-wide v4

    .line 216
    const-wide/16 v7, 0x400

    .line 217
    .line 218
    div-long/2addr v4, v7

    .line 219
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v1, " KB"

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string v1, "putBitmapToDiskCache: rename failed for "

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    iget-object v1, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$8;->val$url:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_4

    .line 262
    .line 263
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 264
    .line 265
    .line 266
    goto :goto_1

    .line 267
    :catchall_0
    move-exception v1

    .line 268
    move-object v3, v0

    .line 269
    move-object v0, v1

    .line 270
    goto :goto_2

    .line 271
    :catch_0
    move-exception v1

    .line 272
    move-object v3, v6

    .line 273
    move-object v11, v1

    .line 274
    move-object v1, v0

    .line 275
    move-object v0, v11

    .line 276
    goto :goto_0

    .line 277
    :catch_1
    move-exception v0

    .line 278
    move-object v1, v3

    .line 279
    move-object v3, v6

    .line 280
    goto :goto_0

    .line 281
    :catchall_1
    move-exception v0

    .line 282
    goto :goto_2

    .line 283
    :catch_2
    move-exception v0

    .line 284
    move-object v1, v3

    .line 285
    :goto_0
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    const-string v5, "putBitmapToDiskCache error: "

    .line 291
    .line 292
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    if-eqz v3, :cond_3

    .line 310
    .line 311
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-eqz v0, :cond_3

    .line 316
    .line 317
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 318
    .line 319
    .line 320
    :cond_3
    if-eqz v1, :cond_4

    .line 321
    .line 322
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 323
    .line 324
    .line 325
    :catch_3
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$8;->this$0:Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 326
    .line 327
    invoke-static {v0}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->access$600(Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$8;->val$url:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    return-void

    .line 337
    :catchall_2
    move-exception v0

    .line 338
    move-object v3, v1

    .line 339
    :goto_2
    if-eqz v3, :cond_5

    .line 340
    .line 341
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 342
    .line 343
    .line 344
    :catch_4
    :cond_5
    iget-object v1, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$8;->this$0:Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 345
    .line 346
    invoke-static {v1}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->access$600(Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    iget-object v2, p0, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$8;->val$url:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    throw v0
.end method
