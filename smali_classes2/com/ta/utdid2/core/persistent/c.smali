.class public Lcom/ta/utdid2/core/persistent/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final m:Ljava/lang/String; = "t"

.field private static final n:Ljava/lang/String; = "t2"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/content/SharedPreferences;

.field private g:Lcom/ta/utdid2/core/persistent/b;

.field private h:Landroid/content/SharedPreferences$Editor;

.field private i:Lcom/ta/utdid2/core/persistent/b$a;

.field private j:Landroid/content/Context;

.field private k:Lcom/ta/utdid2/core/persistent/d;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/c;->d:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/c;->e:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    .line 19
    .line 20
    iput-boolean p4, p0, Lcom/ta/utdid2/core/persistent/c;->c:Z

    .line 21
    .line 22
    iput-boolean p5, p0, Lcom/ta/utdid2/core/persistent/c;->l:Z

    .line 23
    .line 24
    iput-object p3, p0, Lcom/ta/utdid2/core/persistent/c;->a:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->b:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->j:Landroid/content/Context;

    .line 29
    .line 30
    const-string p4, "t"

    .line 31
    .line 32
    const-wide/16 v2, 0x0

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iput-object v4, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 41
    .line 42
    invoke-interface {v4, p4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-wide v4, v2

    .line 48
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception v6

    .line 54
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-nez v6, :cond_2

    .line 62
    .line 63
    const-string v6, "mounted"

    .line 64
    .line 65
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    const/4 v7, 0x1

    .line 70
    if-eqz v6, :cond_1

    .line 71
    .line 72
    iput-boolean v7, p0, Lcom/ta/utdid2/core/persistent/c;->e:Z

    .line 73
    .line 74
    iput-boolean v7, p0, Lcom/ta/utdid2/core/persistent/c;->d:Z

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_1
    const-string v6, "mounted_ro"

    .line 78
    .line 79
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    iput-boolean v7, p0, Lcom/ta/utdid2/core/persistent/c;->d:Z

    .line 86
    .line 87
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/c;->e:Z

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/c;->e:Z

    .line 91
    .line 92
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/c;->d:Z

    .line 93
    .line 94
    :goto_2
    iget-boolean v1, p0, Lcom/ta/utdid2/core/persistent/c;->d:Z

    .line 95
    .line 96
    const-string v6, "t2"

    .line 97
    .line 98
    if-nez v1, :cond_3

    .line 99
    .line 100
    iget-boolean v1, p0, Lcom/ta/utdid2/core/persistent/c;->e:Z

    .line 101
    .line 102
    if-eqz v1, :cond_b

    .line 103
    .line 104
    :cond_3
    if-eqz p1, :cond_b

    .line 105
    .line 106
    invoke-static {p2}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_b

    .line 111
    .line 112
    invoke-direct {p0, p2}, Lcom/ta/utdid2/core/persistent/c;->m(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/d;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    iput-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    .line 117
    .line 118
    if-eqz p2, :cond_b

    .line 119
    .line 120
    :try_start_1
    invoke-virtual {p2, p3, v0}, Lcom/ta/utdid2/core/persistent/d;->c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    iput-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 125
    .line 126
    invoke-interface {p2, p4, v2, v3}, Lcom/ta/utdid2/core/persistent/b;->getLong(Ljava/lang/String;J)J

    .line 127
    .line 128
    .line 129
    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 130
    if-nez p5, :cond_6

    .line 131
    .line 132
    cmp-long p2, v4, v7

    .line 133
    .line 134
    if-lez p2, :cond_4

    .line 135
    .line 136
    :try_start_2
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 137
    .line 138
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 139
    .line 140
    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/core/persistent/c;->e(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/b;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    .line 144
    .line 145
    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/core/persistent/d;->c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 150
    .line 151
    goto/16 :goto_3

    .line 152
    .line 153
    :cond_4
    if-gez p2, :cond_5

    .line 154
    .line 155
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 156
    .line 157
    iget-object p4, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 158
    .line 159
    invoke-direct {p0, p2, p4}, Lcom/ta/utdid2/core/persistent/c;->d(Lcom/ta/utdid2/core/persistent/b;Landroid/content/SharedPreferences;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 167
    .line 168
    goto/16 :goto_3

    .line 169
    .line 170
    :cond_5
    if-nez p2, :cond_c

    .line 171
    .line 172
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 173
    .line 174
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 175
    .line 176
    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/core/persistent/c;->e(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/b;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    .line 180
    .line 181
    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/core/persistent/d;->c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 186
    .line 187
    goto/16 :goto_3

    .line 188
    .line 189
    :cond_6
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 190
    .line 191
    invoke-interface {p2, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 192
    .line 193
    .line 194
    move-result-wide v4

    .line 195
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 196
    .line 197
    invoke-interface {p2, v6, v2, v3}, Lcom/ta/utdid2/core/persistent/b;->getLong(Ljava/lang/String;J)J

    .line 198
    .line 199
    .line 200
    move-result-wide v7

    .line 201
    cmp-long p2, v4, v7

    .line 202
    .line 203
    if-gez p2, :cond_7

    .line 204
    .line 205
    cmp-long p4, v4, v2

    .line 206
    .line 207
    if-lez p4, :cond_7

    .line 208
    .line 209
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 210
    .line 211
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 212
    .line 213
    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/core/persistent/c;->e(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/b;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    .line 217
    .line 218
    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/core/persistent/d;->c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :catch_1
    nop

    .line 226
    goto :goto_3

    .line 227
    :cond_7
    if-lez p2, :cond_8

    .line 228
    .line 229
    cmp-long p4, v7, v2

    .line 230
    .line 231
    if-lez p4, :cond_8

    .line 232
    .line 233
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 234
    .line 235
    iget-object p4, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 236
    .line 237
    invoke-direct {p0, p2, p4}, Lcom/ta/utdid2/core/persistent/c;->d(Lcom/ta/utdid2/core/persistent/b;Landroid/content/SharedPreferences;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_8
    cmp-long p4, v4, v2

    .line 248
    .line 249
    if-nez p4, :cond_9

    .line 250
    .line 251
    cmp-long p5, v7, v2

    .line 252
    .line 253
    if-lez p5, :cond_9

    .line 254
    .line 255
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 256
    .line 257
    iget-object p4, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 258
    .line 259
    invoke-direct {p0, p2, p4}, Lcom/ta/utdid2/core/persistent/c;->d(Lcom/ta/utdid2/core/persistent/b;Landroid/content/SharedPreferences;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_9
    cmp-long p1, v7, v2

    .line 270
    .line 271
    if-nez p1, :cond_a

    .line 272
    .line 273
    if-lez p4, :cond_a

    .line 274
    .line 275
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 276
    .line 277
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 278
    .line 279
    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/core/persistent/c;->e(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/b;)V

    .line 280
    .line 281
    .line 282
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    .line 283
    .line 284
    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/core/persistent/d;->c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_a
    if-nez p2, :cond_c

    .line 292
    .line 293
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 294
    .line 295
    iget-object p2, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 296
    .line 297
    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/core/persistent/c;->e(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/b;)V

    .line 298
    .line 299
    .line 300
    iget-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    .line 301
    .line 302
    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/core/persistent/d;->c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 307
    .line 308
    goto :goto_3

    .line 309
    :catch_2
    nop

    .line 310
    :cond_b
    move-wide v7, v2

    .line 311
    :cond_c
    :goto_3
    cmp-long p1, v4, v7

    .line 312
    .line 313
    if-nez p1, :cond_d

    .line 314
    .line 315
    cmp-long p1, v4, v2

    .line 316
    .line 317
    if-nez p1, :cond_10

    .line 318
    .line 319
    cmp-long p1, v7, v2

    .line 320
    .line 321
    if-nez p1, :cond_10

    .line 322
    .line 323
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 324
    .line 325
    .line 326
    move-result-wide p1

    .line 327
    iget-boolean p3, p0, Lcom/ta/utdid2/core/persistent/c;->l:Z

    .line 328
    .line 329
    if-eqz p3, :cond_e

    .line 330
    .line 331
    if-eqz p3, :cond_10

    .line 332
    .line 333
    cmp-long p3, v4, v2

    .line 334
    .line 335
    if-nez p3, :cond_10

    .line 336
    .line 337
    cmp-long p3, v7, v2

    .line 338
    .line 339
    if-nez p3, :cond_10

    .line 340
    .line 341
    :cond_e
    iget-object p3, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 342
    .line 343
    if-eqz p3, :cond_f

    .line 344
    .line 345
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 346
    .line 347
    .line 348
    move-result-object p3

    .line 349
    invoke-interface {p3, v6, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 350
    .line 351
    .line 352
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 353
    .line 354
    .line 355
    :cond_f
    :try_start_3
    iget-object p3, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 356
    .line 357
    if-eqz p3, :cond_10

    .line 358
    .line 359
    invoke-interface {p3}, Lcom/ta/utdid2/core/persistent/b;->edit()Lcom/ta/utdid2/core/persistent/b$a;

    .line 360
    .line 361
    .line 362
    move-result-object p3

    .line 363
    invoke-interface {p3, v6, p1, p2}, Lcom/ta/utdid2/core/persistent/b$a;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/b$a;

    .line 364
    .line 365
    .line 366
    invoke-interface {p3}, Lcom/ta/utdid2/core/persistent/b$a;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 367
    .line 368
    .line 369
    :catch_3
    :cond_10
    return-void
.end method

.method private a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/b;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/ta/utdid2/core/persistent/c;->c()Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return v0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method private d(Lcom/ta/utdid2/core/persistent/b;Landroid/content/SharedPreferences;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    if-eqz p2, :cond_6

    .line 4
    .line 5
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_6

    .line 10
    .line 11
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lcom/ta/utdid2/core/persistent/b;->getAll()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    instance-of v2, v0, Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    check-cast v0, Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    check-cast v0, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    instance-of v2, v0, Ljava/lang/Long;

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    check-cast v0, Ljava/lang/Long;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    invoke-interface {p2, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    instance-of v2, v0, Ljava/lang/Float;

    .line 87
    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    check-cast v0, Ljava/lang/Float;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    instance-of v2, v0, Ljava/lang/Boolean;

    .line 101
    .line 102
    if-eqz v2, :cond_0

    .line 103
    .line 104
    check-cast v0, Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    .line 116
    .line 117
    :cond_6
    return-void
.end method

.method private e(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/b;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    if-eqz p2, :cond_6

    .line 4
    .line 5
    invoke-interface {p2}, Lcom/ta/utdid2/core/persistent/b;->edit()Lcom/ta/utdid2/core/persistent/b$a;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-eqz p2, :cond_6

    .line 10
    .line 11
    invoke-interface {p2}, Lcom/ta/utdid2/core/persistent/b$a;->clear()Lcom/ta/utdid2/core/persistent/b$a;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    instance-of v2, v0, Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    check-cast v0, Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/core/persistent/b$a;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/b$a;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    check-cast v0, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/core/persistent/b$a;->putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b$a;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    instance-of v2, v0, Ljava/lang/Long;

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    check-cast v0, Ljava/lang/Long;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    invoke-interface {p2, v1, v2, v3}, Lcom/ta/utdid2/core/persistent/b$a;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/b$a;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    instance-of v2, v0, Ljava/lang/Float;

    .line 87
    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    check-cast v0, Ljava/lang/Float;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/core/persistent/b$a;->putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/b$a;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    instance-of v2, v0, Ljava/lang/Boolean;

    .line 101
    .line 102
    if-eqz v2, :cond_0

    .line 103
    .line 104
    check-cast v0, Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/core/persistent/b$a;->putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/b$a;

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    invoke-interface {p2}, Lcom/ta/utdid2/core/persistent/b$a;->commit()Z

    .line 115
    .line 116
    .line 117
    :cond_6
    return-void
.end method

.method private k(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance v1, Ljava/io/File;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    aput-object v0, v2, v3

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 21
    .line 22
    aput-object v3, v2, v0

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    aput-object p1, v2, v0

    .line 26
    .line 27
    const-string p1, "%s%s%s"

    .line 28
    .line 29
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 43
    .line 44
    .line 45
    :cond_0
    return-object v1

    .line 46
    :cond_1
    const/4 p1, 0x0

    .line 47
    return-object p1
.end method

.method private m(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/d;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/c;->k(Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/ta/utdid2/core/persistent/d;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Lcom/ta/utdid2/core/persistent/d;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return-object p1
.end method

.method private n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/c;->e:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/b;->edit()Lcom/ta/utdid2/core/persistent/b$a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    .line 32
    .line 33
    :cond_1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->a()Z

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->n()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    .line 9
    .line 10
    const-string v3, "t"

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v2}, Lcom/ta/utdid2/core/persistent/b$a;->clear()Lcom/ta/utdid2/core/persistent/b$a;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    .line 30
    .line 31
    invoke-interface {v2, v3, v0, v1}, Lcom/ta/utdid2/core/persistent/b$a;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/b$a;

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public c()Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    iget-boolean v4, p0, Lcom/ta/utdid2/core/persistent/c;->l:Z

    .line 11
    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    const-string v4, "t"

    .line 19
    .line 20
    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    :goto_0
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->j:Landroid/content/Context;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/c;->a:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 49
    .line 50
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    :goto_1
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_7

    .line 65
    .line 66
    const-string v2, "mounted"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_5

    .line 73
    .line 74
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 75
    .line 76
    if-nez v4, :cond_4

    .line 77
    .line 78
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/c;->b:Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {p0, v4}, Lcom/ta/utdid2/core/persistent/c;->m(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/d;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    if-eqz v4, :cond_5

    .line 85
    .line 86
    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/c;->a:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v4, v5, v3}, Lcom/ta/utdid2/core/persistent/d;->c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    iput-object v4, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 93
    .line 94
    iget-boolean v5, p0, Lcom/ta/utdid2/core/persistent/c;->l:Z

    .line 95
    .line 96
    if-nez v5, :cond_3

    .line 97
    .line 98
    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 99
    .line 100
    invoke-direct {p0, v5, v4}, Lcom/ta/utdid2/core/persistent/c;->e(Landroid/content/SharedPreferences;Lcom/ta/utdid2/core/persistent/b;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 105
    .line 106
    invoke-direct {p0, v4, v5}, Lcom/ta/utdid2/core/persistent/c;->d(Lcom/ta/utdid2/core/persistent/b;Landroid/content/SharedPreferences;)V

    .line 107
    .line 108
    .line 109
    :goto_2
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 110
    .line 111
    invoke-interface {v4}, Lcom/ta/utdid2/core/persistent/b;->edit()Lcom/ta/utdid2/core/persistent/b$a;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    iput-object v4, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_4
    iget-object v4, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    .line 119
    .line 120
    if-eqz v4, :cond_5

    .line 121
    .line 122
    invoke-interface {v4}, Lcom/ta/utdid2/core/persistent/b$a;->commit()Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-nez v4, :cond_5

    .line 127
    .line 128
    const/4 v0, 0x0

    .line 129
    :cond_5
    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_6

    .line 134
    .line 135
    const-string v2, "mounted_ro"

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_7

    .line 142
    .line 143
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 144
    .line 145
    if-eqz v1, :cond_7

    .line 146
    .line 147
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    .line 148
    .line 149
    if-eqz v1, :cond_7

    .line 150
    .line 151
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/c;->a:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v1, v2, v3}, Lcom/ta/utdid2/core/persistent/d;->c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    .line 159
    :catch_1
    :cond_7
    return v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->a()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/ta/utdid2/core/persistent/b;->getAll()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->a()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/core/persistent/b;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_1
    return v1
.end method

.method public h(Ljava/lang/String;)F
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->a()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/core/persistent/b;->getFloat(Ljava/lang/String;F)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_1
    return v1
.end method

.method public i(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->a()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/core/persistent/b;->getInt(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_1
    return v1
.end method

.method public j(Ljava/lang/String;)J
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->a()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0, p1, v1, v2}, Lcom/ta/utdid2/core/persistent/b;->getLong(Ljava/lang/String;J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    return-wide v0

    .line 24
    :cond_1
    return-wide v1
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->a()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/core/persistent/b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_1
    return-object v1
.end method

.method public o(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string v0, "t"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->n()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/b$a;->putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/b$a;

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public p(Ljava/lang/String;F)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string v0, "t"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->n()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/b$a;->putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/b$a;

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public q(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string v0, "t"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->n()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/b$a;->putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b$a;

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public r(Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string v0, "t"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->n()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0, p1, p2, p3}, Lcom/ta/utdid2/core/persistent/b$a;->putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/b$a;

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string v0, "t"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->n()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/core/persistent/b$a;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/b$a;

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->j:Landroid/content/Context;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/c;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->f:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    const-string v2, "mounted"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    const-string v2, "mounted_ro"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->k:Lcom/ta/utdid2/core/persistent/d;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/c;->a:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/ta/utdid2/core/persistent/d;->c(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->g:Lcom/ta/utdid2/core/persistent/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    .line 66
    :catch_1
    :cond_2
    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/i;->c(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string v0, "t"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/c;->n()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->h:Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/c;->i:Lcom/ta/utdid2/core/persistent/b$a;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0, p1}, Lcom/ta/utdid2/core/persistent/b$a;->remove(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/b$a;

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
