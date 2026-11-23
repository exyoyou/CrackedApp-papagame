.class final Lcom/kwad/sdk/a/a/b$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/a/a/b;->a(Lcom/kwad/sdk/a/a/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aGY:Lcom/kwad/sdk/a/a/b$a;

.field final synthetic aGZ:Lcom/kwad/sdk/a/a/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/a/a/b;Lcom/kwad/sdk/a/a/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/sdk/a/a/b$1;->aGY:Lcom/kwad/sdk/a/a/b$a;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 13

    .line 1
    const-string v0, "InstallTipsDataManager"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/kwad/sdk/a/a/b;->a(Lcom/kwad/sdk/a/a/b;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/a/a/a/b;->dV()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lez v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/kwad/sdk/a/a/b;->b(Lcom/kwad/sdk/a/a/b;)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 30
    const/4 v3, 0x0

    .line 31
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_2

    .line 36
    .line 37
    const-string v4, "getCanShowDownloadData mDownloadFile is not exists"

    .line 38
    .line 39
    invoke-static {v0, v4}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object v4, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 43
    .line 44
    invoke-static {v4}, Lcom/kwad/sdk/a/a/b;->c(Lcom/kwad/sdk/a/a/b;)Ljava/util/Stack;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->clear()V

    .line 49
    .line 50
    .line 51
    new-instance v4, Ljava/io/ObjectInputStream;

    .line 52
    .line 53
    new-instance v5, Ljava/io/FileInputStream;

    .line 54
    .line 55
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {v4, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    :try_start_2
    iget-object v5, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Ljava/util/Stack;

    .line 68
    .line 69
    invoke-static {v5, v6}, Lcom/kwad/sdk/a/a/b;->a(Lcom/kwad/sdk/a/a/b;Ljava/util/Stack;)Ljava/util/Stack;

    .line 70
    .line 71
    .line 72
    iget-object v5, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 73
    .line 74
    invoke-static {v5}, Lcom/kwad/sdk/a/a/b;->c(Lcom/kwad/sdk/a/a/b;)Ljava/util/Stack;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-nez v5, :cond_6

    .line 83
    .line 84
    new-instance v5, Ljava/util/Stack;

    .line 85
    .line 86
    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 90
    .line 91
    invoke-static {v6}, Lcom/kwad/sdk/a/a/b;->c(Lcom/kwad/sdk/a/a/b;)Ljava/util/Stack;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-nez v6, :cond_5

    .line 100
    .line 101
    iget-object v6, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 102
    .line 103
    invoke-static {v6}, Lcom/kwad/sdk/a/a/b;->c(Lcom/kwad/sdk/a/a/b;)Ljava/util/Stack;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    check-cast v6, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 112
    .line 113
    if-eqz v6, :cond_3

    .line 114
    .line 115
    invoke-static {v6}, Lcom/kwad/sdk/core/response/helper/e;->eY(Lcom/kwad/sdk/core/response/model/AdTemplate;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v7

    .line 119
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-static {v6}, Lcom/kwad/sdk/a/a/b;->bt(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/io/File;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    if-eqz v8, :cond_4

    .line 128
    .line 129
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-eqz v9, :cond_4

    .line 134
    .line 135
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    .line 136
    .line 137
    .line 138
    move-result-wide v8

    .line 139
    const-wide/32 v10, 0x240c8400

    .line 140
    .line 141
    .line 142
    add-long/2addr v8, v10

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 144
    .line 145
    .line 146
    move-result-wide v10

    .line 147
    cmp-long v12, v8, v10

    .line 148
    .line 149
    if-lez v12, :cond_4

    .line 150
    .line 151
    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_4
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 156
    .line 157
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_5
    :goto_1
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-nez v1, :cond_6

    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 172
    .line 173
    iget-object v6, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 174
    .line 175
    invoke-static {v6}, Lcom/kwad/sdk/a/a/b;->c(Lcom/kwad/sdk/a/a/b;)Ljava/util/Stack;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-virtual {v6, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_6
    :try_start_3
    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :catch_0
    move-exception v1

    .line 188
    goto :goto_2

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    goto :goto_7

    .line 191
    :catch_1
    move-exception v1

    .line 192
    move-object v4, v3

    .line 193
    :goto_2
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v6, " getCanShowDownloadBannerData e"

    .line 196
    .line 197
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/kwad/sdk/a/a/b$1;->aGY:Lcom/kwad/sdk/a/a/b$a;

    .line 211
    .line 212
    if-eqz v0, :cond_6

    .line 213
    .line 214
    invoke-interface {v0}, Lcom/kwad/sdk/a/a/b$a;->Hk()V

    .line 215
    .line 216
    .line 217
    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 218
    .line 219
    .line 220
    :try_start_5
    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :goto_3
    :try_start_6
    new-instance v0, Ljava/io/ObjectOutputStream;

    .line 225
    .line 226
    new-instance v1, Ljava/io/FileOutputStream;

    .line 227
    .line 228
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 229
    .line 230
    .line 231
    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 232
    .line 233
    .line 234
    :try_start_7
    iget-object v1, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 235
    .line 236
    invoke-static {v1}, Lcom/kwad/sdk/a/a/b;->c(Lcom/kwad/sdk/a/a/b;)Ljava/util/Stack;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 241
    .line 242
    .line 243
    :try_start_8
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :catchall_1
    move-exception v1

    .line 248
    move-object v3, v0

    .line 249
    goto :goto_6

    .line 250
    :catch_2
    move-exception v1

    .line 251
    move-object v3, v0

    .line 252
    goto :goto_4

    .line 253
    :catchall_2
    move-exception v1

    .line 254
    goto :goto_6

    .line 255
    :catch_3
    move-exception v1

    .line 256
    :goto_4
    :try_start_9
    invoke-static {v1}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v1}, Lcom/kwad/components/core/d/a;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Lcom/kwad/sdk/a/a/b$1;->aGY:Lcom/kwad/sdk/a/a/b$a;

    .line 263
    .line 264
    if-eqz v0, :cond_7

    .line 265
    .line 266
    invoke-interface {v0}, Lcom/kwad/sdk/a/a/b$a;->Hk()V

    .line 267
    .line 268
    .line 269
    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 270
    .line 271
    .line 272
    :try_start_a
    invoke-static {v3}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :cond_7
    invoke-static {v3}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 277
    .line 278
    .line 279
    :goto_5
    iget-object v0, p0, Lcom/kwad/sdk/a/a/b$1;->aGY:Lcom/kwad/sdk/a/a/b$a;

    .line 280
    .line 281
    if-eqz v0, :cond_8

    .line 282
    .line 283
    invoke-interface {v0}, Lcom/kwad/sdk/a/a/b$a;->hK()V

    .line 284
    .line 285
    .line 286
    :cond_8
    return-void

    .line 287
    :goto_6
    invoke-static {v3}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 288
    .line 289
    .line 290
    throw v1

    .line 291
    :catchall_3
    move-exception v0

    .line 292
    move-object v3, v4

    .line 293
    :goto_7
    invoke-static {v3}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 294
    .line 295
    .line 296
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 297
    :catchall_4
    move-exception v0

    .line 298
    invoke-static {v0}, Lcom/kwad/components/core/d/a;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 299
    .line 300
    .line 301
    return-void
.end method
