.class public final Lcom/kwad/framework/filedownloader/download/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/framework/filedownloader/download/c$a;
    }
.end annotation


# instance fields
.field private final aAO:I

.field private final aBK:Lcom/kwad/framework/filedownloader/download/ConnectTask;

.field private final aBL:Lcom/kwad/framework/filedownloader/download/f;

.field private aBM:Lcom/kwad/framework/filedownloader/download/e;

.field final aBN:I

.field private final aBl:Z

.field private final apn:Ljava/lang/String;

.field private volatile nJ:Z


# direct methods
.method private constructor <init>(IILcom/kwad/framework/filedownloader/download/ConnectTask;Lcom/kwad/framework/filedownloader/download/f;ZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/kwad/framework/filedownloader/download/c;->aAO:I

    .line 4
    iput p2, p0, Lcom/kwad/framework/filedownloader/download/c;->aBN:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/kwad/framework/filedownloader/download/c;->nJ:Z

    .line 6
    iput-object p4, p0, Lcom/kwad/framework/filedownloader/download/c;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 7
    iput-object p6, p0, Lcom/kwad/framework/filedownloader/download/c;->apn:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/kwad/framework/filedownloader/download/c;->aBK:Lcom/kwad/framework/filedownloader/download/ConnectTask;

    .line 9
    iput-boolean p5, p0, Lcom/kwad/framework/filedownloader/download/c;->aBl:Z

    return-void
.end method

.method synthetic constructor <init>(IILcom/kwad/framework/filedownloader/download/ConnectTask;Lcom/kwad/framework/filedownloader/download/f;ZLjava/lang/String;B)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/kwad/framework/filedownloader/download/c;-><init>(IILcom/kwad/framework/filedownloader/download/ConnectTask;Lcom/kwad/framework/filedownloader/download/f;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final Bw()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/download/c;->pause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final pause()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/c;->nJ:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c;->aBM:Lcom/kwad/framework/filedownloader/download/e;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/download/e;->pause()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 14

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c;->aBK:Lcom/kwad/framework/filedownloader/download/ConnectTask;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/download/ConnectTask;->BY()Lcom/kwad/framework/filedownloader/download/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-wide v0, v0, Lcom/kwad/framework/filedownloader/download/a;->aAX:J

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    :goto_0
    const/4 v5, 0x1

    .line 18
    :try_start_0
    iget-boolean v4, p0, Lcom/kwad/framework/filedownloader/download/c;->nJ:Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/kwad/framework/filedownloader/download/c;->aBK:Lcom/kwad/framework/filedownloader/download/ConnectTask;

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/kwad/framework/filedownloader/download/ConnectTask;->BV()Lcom/kwad/framework/filedownloader/a/b;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->getResponseCode()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    sget-boolean v6, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 39
    .line 40
    const/4 v7, 0x3

    .line 41
    const/4 v8, 0x2

    .line 42
    const/4 v9, 0x4

    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    const-string v6, "the connection[%d] for %d, is connected %s with requestHttpCode[%d]"

    .line 46
    .line 47
    new-array v10, v9, [Ljava/lang/Object;

    .line 48
    .line 49
    iget v11, p0, Lcom/kwad/framework/filedownloader/download/c;->aBN:I

    .line 50
    .line 51
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    aput-object v11, v10, v3

    .line 56
    .line 57
    iget v11, p0, Lcom/kwad/framework/filedownloader/download/c;->aAO:I

    .line 58
    .line 59
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    aput-object v11, v10, v5

    .line 64
    .line 65
    iget-object v11, p0, Lcom/kwad/framework/filedownloader/download/c;->aBK:Lcom/kwad/framework/filedownloader/download/ConnectTask;

    .line 66
    .line 67
    invoke-virtual {v11}, Lcom/kwad/framework/filedownloader/download/ConnectTask;->BY()Lcom/kwad/framework/filedownloader/download/a;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    aput-object v11, v10, v8

    .line 72
    .line 73
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    aput-object v11, v10, v7

    .line 78
    .line 79
    invoke-static {p0, v6, v10}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    const/16 v6, 0xce

    .line 83
    .line 84
    if-eq v4, v6, :cond_4

    .line 85
    .line 86
    const/16 v6, 0xc8

    .line 87
    .line 88
    if-ne v4, v6, :cond_3

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    new-instance v6, Ljava/net/SocketException;

    .line 92
    .line 93
    const-string v10, "Connection failed with request[%s] response[%s] http-state[%d] on task[%d-%d], which is changed after verify connection, so please try again."

    .line 94
    .line 95
    const/4 v11, 0x5

    .line 96
    new-array v11, v11, [Ljava/lang/Object;

    .line 97
    .line 98
    iget-object v12, p0, Lcom/kwad/framework/filedownloader/download/c;->aBK:Lcom/kwad/framework/filedownloader/download/ConnectTask;

    .line 99
    .line 100
    invoke-virtual {v12}, Lcom/kwad/framework/filedownloader/download/ConnectTask;->getRequestHeader()Ljava/util/Map;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    aput-object v12, v11, v3

    .line 105
    .line 106
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BP()Ljava/util/Map;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    aput-object v12, v11, v5

    .line 111
    .line 112
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    aput-object v4, v11, v8

    .line 117
    .line 118
    iget v4, p0, Lcom/kwad/framework/filedownloader/download/c;->aAO:I

    .line 119
    .line 120
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    aput-object v4, v11, v7

    .line 125
    .line 126
    iget v4, p0, Lcom/kwad/framework/filedownloader/download/c;->aBN:I

    .line 127
    .line 128
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    aput-object v4, v11, v9

    .line 133
    .line 134
    invoke-static {v10, v11}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-direct {v6, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v6
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :cond_4
    :goto_1
    :try_start_2
    new-instance v4, Lcom/kwad/framework/filedownloader/download/e$a;

    .line 143
    .line 144
    invoke-direct {v4}, Lcom/kwad/framework/filedownloader/download/e$a;-><init>()V

    .line 145
    .line 146
    .line 147
    iget-boolean v6, p0, Lcom/kwad/framework/filedownloader/download/c;->nJ:Z
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    .line 149
    if-eqz v6, :cond_5

    .line 150
    .line 151
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_5
    :try_start_3
    iget v6, p0, Lcom/kwad/framework/filedownloader/download/c;->aAO:I

    .line 156
    .line 157
    invoke-virtual {v4, v6}, Lcom/kwad/framework/filedownloader/download/e$a;->cO(I)Lcom/kwad/framework/filedownloader/download/e$a;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    iget v6, p0, Lcom/kwad/framework/filedownloader/download/c;->aBN:I

    .line 162
    .line 163
    invoke-virtual {v4, v6}, Lcom/kwad/framework/filedownloader/download/e$a;->cN(I)Lcom/kwad/framework/filedownloader/download/e$a;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    iget-object v6, p0, Lcom/kwad/framework/filedownloader/download/c;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 168
    .line 169
    invoke-virtual {v4, v6}, Lcom/kwad/framework/filedownloader/download/e$a;->b(Lcom/kwad/framework/filedownloader/download/f;)Lcom/kwad/framework/filedownloader/download/e$a;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4, p0}, Lcom/kwad/framework/filedownloader/download/e$a;->a(Lcom/kwad/framework/filedownloader/download/c;)Lcom/kwad/framework/filedownloader/download/e$a;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    iget-boolean v6, p0, Lcom/kwad/framework/filedownloader/download/c;->aBl:Z

    .line 178
    .line 179
    invoke-virtual {v4, v6}, Lcom/kwad/framework/filedownloader/download/e$a;->bx(Z)Lcom/kwad/framework/filedownloader/download/e$a;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v4, v2}, Lcom/kwad/framework/filedownloader/download/e$a;->d(Lcom/kwad/framework/filedownloader/a/b;)Lcom/kwad/framework/filedownloader/download/e$a;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    iget-object v6, p0, Lcom/kwad/framework/filedownloader/download/c;->aBK:Lcom/kwad/framework/filedownloader/download/ConnectTask;

    .line 188
    .line 189
    invoke-virtual {v6}, Lcom/kwad/framework/filedownloader/download/ConnectTask;->BY()Lcom/kwad/framework/filedownloader/download/a;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-virtual {v4, v6}, Lcom/kwad/framework/filedownloader/download/e$a;->c(Lcom/kwad/framework/filedownloader/download/a;)Lcom/kwad/framework/filedownloader/download/e$a;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    iget-object v6, p0, Lcom/kwad/framework/filedownloader/download/c;->apn:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v4, v6}, Lcom/kwad/framework/filedownloader/download/e$a;->ce(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/download/e$a;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-virtual {v4}, Lcom/kwad/framework/filedownloader/download/e$a;->CE()Lcom/kwad/framework/filedownloader/download/e;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    iput-object v4, p0, Lcom/kwad/framework/filedownloader/download/c;->aBM:Lcom/kwad/framework/filedownloader/download/e;

    .line 208
    .line 209
    invoke-virtual {v4}, Lcom/kwad/framework/filedownloader/download/e;->run()V

    .line 210
    .line 211
    .line 212
    iget-boolean v4, p0, Lcom/kwad/framework/filedownloader/download/c;->nJ:Z

    .line 213
    .line 214
    if-eqz v4, :cond_6

    .line 215
    .line 216
    iget-object v4, p0, Lcom/kwad/framework/filedownloader/download/c;->aBM:Lcom/kwad/framework/filedownloader/download/e;

    .line 217
    .line 218
    invoke-virtual {v4}, Lcom/kwad/framework/filedownloader/download/e;->pause()V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    .line 220
    .line 221
    :cond_6
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :catch_0
    move-exception v4

    .line 226
    goto :goto_2

    .line 227
    :catch_1
    move-exception v4

    .line 228
    goto :goto_2

    .line 229
    :catch_2
    move-exception v4

    .line 230
    goto :goto_2

    .line 231
    :catch_3
    move-exception v4

    .line 232
    goto :goto_2

    .line 233
    :catch_4
    move-exception v4

    .line 234
    :goto_2
    const/4 v6, 0x1

    .line 235
    goto :goto_5

    .line 236
    :catch_5
    move-exception v4

    .line 237
    goto :goto_3

    .line 238
    :catch_6
    move-exception v4

    .line 239
    goto :goto_3

    .line 240
    :catch_7
    move-exception v4

    .line 241
    goto :goto_3

    .line 242
    :catch_8
    move-exception v4

    .line 243
    goto :goto_3

    .line 244
    :catch_9
    move-exception v4

    .line 245
    :goto_3
    const/4 v6, 0x0

    .line 246
    goto :goto_5

    .line 247
    :catchall_0
    move-exception v0

    .line 248
    goto :goto_7

    .line 249
    :catch_a
    move-exception v6

    .line 250
    goto :goto_4

    .line 251
    :catch_b
    move-exception v6

    .line 252
    goto :goto_4

    .line 253
    :catch_c
    move-exception v6

    .line 254
    goto :goto_4

    .line 255
    :catch_d
    move-exception v6

    .line 256
    goto :goto_4

    .line 257
    :catch_e
    move-exception v6

    .line 258
    :goto_4
    move-object v13, v6

    .line 259
    move v6, v4

    .line 260
    move-object v4, v13

    .line 261
    :goto_5
    :try_start_4
    iget-object v7, p0, Lcom/kwad/framework/filedownloader/download/c;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 262
    .line 263
    invoke-interface {v7, v4}, Lcom/kwad/framework/filedownloader/download/f;->a(Ljava/lang/Exception;)Z

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    if-eqz v7, :cond_a

    .line 268
    .line 269
    if-nez v6, :cond_7

    .line 270
    .line 271
    iget-object v5, p0, Lcom/kwad/framework/filedownloader/download/c;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 272
    .line 273
    const-wide/16 v7, 0x0

    .line 274
    .line 275
    invoke-interface {v5, v4, v7, v8}, Lcom/kwad/framework/filedownloader/download/f;->a(Ljava/lang/Exception;J)V

    .line 276
    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_7
    iget-object v7, p0, Lcom/kwad/framework/filedownloader/download/c;->aBM:Lcom/kwad/framework/filedownloader/download/e;

    .line 280
    .line 281
    if-eqz v7, :cond_9

    .line 282
    .line 283
    iget-wide v7, v7, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 284
    .line 285
    sub-long/2addr v7, v0

    .line 286
    iget-object v5, p0, Lcom/kwad/framework/filedownloader/download/c;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 287
    .line 288
    invoke-interface {v5, v4, v7, v8}, Lcom/kwad/framework/filedownloader/download/f;->a(Ljava/lang/Exception;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 289
    .line 290
    .line 291
    :goto_6
    if-eqz v2, :cond_8

    .line 292
    .line 293
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V

    .line 294
    .line 295
    .line 296
    :cond_8
    move v4, v6

    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_9
    :try_start_5
    const-string v0, "it is valid to retry and connection is valid but create fetch-data-task failed, so give up directly with %s"

    .line 300
    .line 301
    new-array v1, v5, [Ljava/lang/Object;

    .line 302
    .line 303
    aput-object v4, v1, v3

    .line 304
    .line 305
    invoke-static {p0, v0, v1}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 309
    .line 310
    invoke-interface {v0, v4}, Lcom/kwad/framework/filedownloader/download/f;->b(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 311
    .line 312
    .line 313
    if-eqz v2, :cond_b

    .line 314
    .line 315
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V

    .line 316
    .line 317
    .line 318
    return-void

    .line 319
    :cond_a
    :try_start_6
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 320
    .line 321
    invoke-interface {v0, v4}, Lcom/kwad/framework/filedownloader/download/f;->b(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 322
    .line 323
    .line 324
    if-eqz v2, :cond_b

    .line 325
    .line 326
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V

    .line 327
    .line 328
    .line 329
    :cond_b
    return-void

    .line 330
    :goto_7
    if-eqz v2, :cond_c

    .line 331
    .line 332
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V

    .line 333
    .line 334
    .line 335
    :cond_c
    throw v0
.end method
