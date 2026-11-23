.class public Lcom/byazt/ts/uj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x165,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ts/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ts/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/ts/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;)Lcom/byazt/ts/ve;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/ts/uj;->getCurrentPosition()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    const/4 v4, 0x3

    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x4

    .line 21
    const/4 v7, 0x1

    .line 22
    const/4 v8, 0x0

    .line 23
    const-string v9, "CSJ_VIDEO_MEDIA"

    .line 24
    .line 25
    const-wide/16 v10, 0x0

    .line 26
    .line 27
    cmp-long v0, v2, v10

    .line 28
    .line 29
    if-lez v0, :cond_4

    .line 30
    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v12, 0x17

    .line 34
    .line 35
    if-lt v0, v12, :cond_4

    .line 36
    .line 37
    iget-object v0, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/byazt/ts/uj;->isPlaying()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    iget-object v0, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/byazt/ts/uj;->tt(Lcom/byazt/ts/uj;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v12

    .line 51
    const-wide/high16 v14, -0x8000000000000000L

    .line 52
    .line 53
    cmp-long v0, v12, v14

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    :try_start_0
    iget-object v0, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/byazt/ts/uj;->tt(Lcom/byazt/ts/uj;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v12

    .line 63
    const/16 v0, 0x320

    .line 64
    .line 65
    cmp-long v14, v12, v2

    .line 66
    .line 67
    if-nez v14, :cond_2

    .line 68
    .line 69
    iget-object v12, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 70
    .line 71
    invoke-static {v12}, Lcom/byazt/ts/uj;->ve(Lcom/byazt/ts/uj;)Z

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    if-nez v12, :cond_1

    .line 76
    .line 77
    iget-object v12, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 78
    .line 79
    invoke-static {v12}, Lcom/byazt/ts/uj;->uj(Lcom/byazt/ts/uj;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v12

    .line 83
    const-wide/16 v14, 0x190

    .line 84
    .line 85
    cmp-long v16, v12, v14

    .line 86
    .line 87
    if-ltz v16, :cond_1

    .line 88
    .line 89
    iget-object v12, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 90
    .line 91
    const/16 v13, 0x2bd

    .line 92
    .line 93
    invoke-static {v12, v13, v0}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;II)V

    .line 94
    .line 95
    .line 96
    iget-object v0, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 97
    .line 98
    invoke-static {v0, v7}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;Z)Z

    .line 99
    .line 100
    .line 101
    :cond_1
    iget-object v0, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/byazt/ts/uj;->uj(Lcom/byazt/ts/uj;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v12

    .line 107
    iget-object v14, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 108
    .line 109
    invoke-static {v14}, Lcom/byazt/ts/uj;->n(Lcom/byazt/ts/uj;)I

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    int-to-long v14, v14

    .line 114
    add-long/2addr v12, v14

    .line 115
    invoke-static {v0, v12, v13}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;J)J

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    iget-object v12, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 120
    .line 121
    invoke-static {v12}, Lcom/byazt/ts/uj;->ve(Lcom/byazt/ts/uj;)Z

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    if-eqz v12, :cond_3

    .line 126
    .line 127
    iget-object v12, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 128
    .line 129
    invoke-static {v12}, Lcom/byazt/ts/uj;->a(Lcom/byazt/ts/uj;)J

    .line 130
    .line 131
    .line 132
    move-result-wide v13

    .line 133
    iget-object v15, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 134
    .line 135
    invoke-static {v15}, Lcom/byazt/ts/uj;->uj(Lcom/byazt/ts/uj;)J

    .line 136
    .line 137
    .line 138
    move-result-wide v15

    .line 139
    add-long/2addr v13, v15

    .line 140
    invoke-static {v12, v13, v14}, Lcom/byazt/ts/uj;->tt(Lcom/byazt/ts/uj;J)J

    .line 141
    .line 142
    .line 143
    iget-object v12, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 144
    .line 145
    const/16 v13, 0x2be

    .line 146
    .line 147
    invoke-static {v12, v13, v0}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;II)V

    .line 148
    .line 149
    .line 150
    new-array v0, v6, [Ljava/lang/Object;

    .line 151
    .line 152
    const-string v12, "handleMsg:  bufferingDuration ="

    .line 153
    .line 154
    aput-object v12, v0, v8

    .line 155
    .line 156
    iget-object v12, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 157
    .line 158
    invoke-static {v12}, Lcom/byazt/ts/uj;->a(Lcom/byazt/ts/uj;)J

    .line 159
    .line 160
    .line 161
    move-result-wide v12

    .line 162
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    aput-object v12, v0, v7

    .line 167
    .line 168
    const-string v12, "  bufferCount ="

    .line 169
    .line 170
    aput-object v12, v0, v5

    .line 171
    .line 172
    iget-object v12, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 173
    .line 174
    invoke-static {v12}, Lcom/byazt/ts/uj;->sp(Lcom/byazt/ts/uj;)I

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    aput-object v12, v0, v4

    .line 183
    .line 184
    invoke-static {v9, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :cond_3
    iget-object v0, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 188
    .line 189
    invoke-static {v0, v10, v11}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;J)J

    .line 190
    .line 191
    .line 192
    iget-object v0, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 193
    .line 194
    invoke-static {v0, v8}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    .line 199
    new-instance v12, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v13, "error:"

    .line 202
    .line 203
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v9, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :cond_4
    :goto_0
    iget-object v0, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/byazt/ts/uj;->getVideoDuration()J

    .line 223
    .line 224
    .line 225
    move-result-wide v12

    .line 226
    cmp-long v0, v12, v10

    .line 227
    .line 228
    if-lez v0, :cond_7

    .line 229
    .line 230
    iget-object v0, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 231
    .line 232
    invoke-static {v0}, Lcom/byazt/ts/uj;->tt(Lcom/byazt/ts/uj;)J

    .line 233
    .line 234
    .line 235
    move-result-wide v10

    .line 236
    cmp-long v0, v10, v2

    .line 237
    .line 238
    if-eqz v0, :cond_6

    .line 239
    .line 240
    invoke-static {}, Lcom/byazt/oy/tt;->uj()Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_5

    .line 245
    .line 246
    new-array v0, v6, [Ljava/lang/Object;

    .line 247
    .line 248
    const-string v6, "run: lastCur = "

    .line 249
    .line 250
    aput-object v6, v0, v8

    .line 251
    .line 252
    iget-object v6, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 253
    .line 254
    invoke-static {v6}, Lcom/byazt/ts/uj;->tt(Lcom/byazt/ts/uj;)J

    .line 255
    .line 256
    .line 257
    move-result-wide v10

    .line 258
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    aput-object v6, v0, v7

    .line 263
    .line 264
    const-string v6, "  curPosition = "

    .line 265
    .line 266
    aput-object v6, v0, v5

    .line 267
    .line 268
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    aput-object v5, v0, v4

    .line 273
    .line 274
    invoke-static {v9, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    :cond_5
    iget-object v0, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 278
    .line 279
    invoke-virtual {v0}, Lcom/byazt/ts/uj;->getVideoDuration()J

    .line 280
    .line 281
    .line 282
    move-result-wide v4

    .line 283
    invoke-static {v0, v2, v3, v4, v5}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;JJ)V

    .line 284
    .line 285
    .line 286
    :cond_6
    iget-object v0, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 287
    .line 288
    invoke-static {v0, v2, v3}, Lcom/byazt/ts/uj;->ve(Lcom/byazt/ts/uj;J)J

    .line 289
    .line 290
    .line 291
    :cond_7
    iget-object v0, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 292
    .line 293
    invoke-virtual {v0}, Lcom/byazt/ts/uj;->isCompleted()Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-nez v0, :cond_8

    .line 298
    .line 299
    iget-object v0, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 300
    .line 301
    invoke-static {v0}, Lcom/byazt/ts/uj;->x(Lcom/byazt/ts/uj;)Landroid/os/Handler;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    if-eqz v0, :cond_9

    .line 306
    .line 307
    iget-object v0, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 308
    .line 309
    invoke-static {v0}, Lcom/byazt/ts/uj;->x(Lcom/byazt/ts/uj;)Landroid/os/Handler;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    iget-object v2, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 314
    .line 315
    invoke-static {v2}, Lcom/byazt/ts/uj;->n(Lcom/byazt/ts/uj;)I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    int-to-long v2, v2

    .line 320
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :cond_8
    iget-object v0, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 325
    .line 326
    invoke-virtual {v0}, Lcom/byazt/ts/uj;->getVideoDuration()J

    .line 327
    .line 328
    .line 329
    move-result-wide v2

    .line 330
    iget-object v4, v1, Lcom/byazt/ts/uj$1;->c:Lcom/byazt/ts/uj;

    .line 331
    .line 332
    invoke-virtual {v4}, Lcom/byazt/ts/uj;->getVideoDuration()J

    .line 333
    .line 334
    .line 335
    move-result-wide v4

    .line 336
    invoke-static {v0, v2, v3, v4, v5}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;JJ)V

    .line 337
    .line 338
    .line 339
    :cond_9
    return-void
.end method
