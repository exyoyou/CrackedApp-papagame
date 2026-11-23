.class public Lcom/join/mgps/task/f;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/task/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/task/f$a;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "f"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field public d:Z

.field public e:Z

.field f:Lcom/join/mgps/task/f$a;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "context",
            "pathRom"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/task/f;->d:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/task/f;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/task/f;->f:Lcom/join/mgps/task/f$a;

    .line 5
    iput-object p1, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    iput-object p2, p0, Lcom/join/mgps/task/f;->b:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lcom/join/mgps/task/f;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "downoadTask",
            "mContext",
            "isTransfer"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/task/f;->d:Z

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/join/mgps/task/f;->f:Lcom/join/mgps/task/f$a;

    .line 11
    iput-object p1, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    iput-object p2, p0, Lcom/join/mgps/task/f;->b:Landroid/content/Context;

    .line 13
    iput-boolean p3, p0, Lcom/join/mgps/task/f;->e:Z

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/task/f;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/task/f;->d:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/mgps/task/f;->f:Lcom/join/mgps/task/f$a;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Lcom/join/mgps/task/f$a;->a(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/task/f;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public run()V
    .locals 14

    .line 1
    const-string v0, "_"

    .line 2
    .line 3
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lt6/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, ""

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v1, v2

    .line 34
    move-object v3, v1

    .line 35
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    new-instance v4, Ljava/io/File;

    .line 42
    .line 43
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-static {v1}, Lcom/join/android/app/common/utils/o;->delete(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v3, 0x1

    .line 62
    const/4 v4, 0x0

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    const/4 v1, 0x2

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const/4 v1, 0x0

    .line 78
    :goto_1
    :try_start_0
    new-instance v5, Ljava/io/File;

    .line 79
    .line 80
    iget-object v6, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 81
    .line 82
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    .line 88
    .line 89
    :try_start_1
    iget-object v6, p0, Lcom/join/mgps/task/f;->b:Landroid/content/Context;

    .line 90
    .line 91
    invoke-static {v6}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    iget-object v7, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 96
    .line 97
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    iget-object v8, p0, Lcom/join/mgps/task/f;->b:Landroid/content/Context;

    .line 102
    .line 103
    invoke-static {v8}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {v8}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-virtual {v6, v7, v8, v1}, Lcom/papa/sim/statistic/t;->l1(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/join/mgps/task/f;->b:Landroid/content/Context;

    .line 115
    .line 116
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget-object v6, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 121
    .line 122
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    iget-object v8, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 132
    .line 133
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-object v8, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 144
    .line 145
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    iget-object v8, p0, Lcom/join/mgps/task/f;->b:Landroid/content/Context;

    .line 157
    .line 158
    invoke-static {v8}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    invoke-virtual {v8}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    invoke-virtual {v1, v6, v7, v8}, Lcom/papa/sim/statistic/t;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    iget-object v6, p0, Lcom/join/mgps/task/f;->g:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v6, "/"

    .line 180
    .line 181
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object v6, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 185
    .line 186
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-nez v1, :cond_4

    .line 214
    .line 215
    new-instance v1, Ljava/io/File;

    .line 216
    .line 217
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-nez v6, :cond_4

    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 227
    .line 228
    .line 229
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    const-wide/16 v6, -0x1

    .line 234
    .line 235
    if-eqz v1, :cond_6

    .line 236
    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 238
    .line 239
    .line 240
    move-result-wide v8

    .line 241
    iget-object v1, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 242
    .line 243
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 244
    .line 245
    .line 246
    move-result-wide v10

    .line 247
    const-wide/32 v12, 0x6400000

    .line 248
    .line 249
    .line 250
    cmp-long v1, v10, v12

    .line 251
    .line 252
    if-ltz v1, :cond_5

    .line 253
    .line 254
    new-instance v1, Lcom/join/mgps/task/f$a;

    .line 255
    .line 256
    new-instance v3, Ljava/io/File;

    .line 257
    .line 258
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-direct {v1, p0, v5, v3}, Lcom/join/mgps/task/f$a;-><init>(Lcom/join/mgps/task/f;Ljava/io/File;Ljava/io/File;)V

    .line 262
    .line 263
    .line 264
    iput-object v1, p0, Lcom/join/mgps/task/f;->f:Lcom/join/mgps/task/f$a;

    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_5
    iput-boolean v3, p0, Lcom/join/mgps/task/f;->d:Z

    .line 271
    .line 272
    :goto_2
    invoke-static {v5, v0}, Lcom/join/mgps/Util/s3;->f(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_6
    move-wide v8, v6

    .line 277
    :goto_3
    :try_start_2
    iget-boolean v1, p0, Lcom/join/mgps/task/f;->d:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    .line 279
    if-nez v1, :cond_7

    .line 280
    .line 281
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 282
    .line 283
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :cond_7
    :try_start_3
    iget-object v1, p0, Lcom/join/mgps/task/f;->f:Lcom/join/mgps/task/f$a;

    .line 288
    .line 289
    if-eqz v1, :cond_8

    .line 290
    .line 291
    invoke-virtual {v1, v4}, Lcom/join/mgps/task/f$a;->a(Z)V

    .line 292
    .line 293
    .line 294
    :cond_8
    if-eqz v0, :cond_f

    .line 295
    .line 296
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-nez v1, :cond_f

    .line 301
    .line 302
    new-instance v1, Ljava/io/File;

    .line 303
    .line 304
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-nez v1, :cond_9

    .line 312
    .line 313
    goto/16 :goto_6

    .line 314
    .line 315
    :cond_9
    iget-object v1, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 316
    .line 317
    const-wide/16 v2, 0x64

    .line 318
    .line 319
    invoke-virtual {v1, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 320
    .line 321
    .line 322
    iget-object v1, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 323
    .line 324
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->T4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 325
    .line 326
    .line 327
    cmp-long v1, v8, v6

    .line 328
    .line 329
    if-eqz v1, :cond_a

    .line 330
    .line 331
    iget-object v1, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 332
    .line 333
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 334
    .line 335
    .line 336
    move-result-wide v5

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 338
    .line 339
    .line 340
    move-result-wide v10

    .line 341
    sub-long/2addr v10, v8

    .line 342
    div-long/2addr v5, v10

    .line 343
    invoke-virtual {v1, v5, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setZipCost(J)V

    .line 344
    .line 345
    .line 346
    :cond_a
    new-instance v1, Ljava/io/File;

    .line 347
    .line 348
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    array-length v1, v0

    .line 356
    const/4 v5, 0x0

    .line 357
    :goto_5
    if-ge v5, v1, :cond_d

    .line 358
    .line 359
    aget-object v6, v0, v5

    .line 360
    .line 361
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    const-string v8, ".BIN"

    .line 366
    .line 367
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    if-eqz v7, :cond_b

    .line 372
    .line 373
    iget-object v7, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 374
    .line 375
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    invoke-virtual {v7, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_path(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    :cond_b
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v7

    .line 386
    const-string v8, ".apk"

    .line 387
    .line 388
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 389
    .line 390
    .line 391
    move-result v7

    .line 392
    if-eqz v7, :cond_c

    .line 393
    .line 394
    iget-object v7, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 395
    .line 396
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v8

    .line 400
    invoke-virtual {v7, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    iget-object v7, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 404
    .line 405
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    invoke-virtual {v7, v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 413
    .line 414
    goto :goto_5

    .line 415
    :cond_d
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 420
    .line 421
    invoke-virtual {v0, v1}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    new-instance v0, Landroid/content/Intent;

    .line 425
    .line 426
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 427
    .line 428
    .line 429
    const-string v1, "com.join.apkinstalldataobb.action.broadcast"

    .line 430
    .line 431
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    .line 433
    .line 434
    const-string v1, "apkpath"

    .line 435
    .line 436
    iget-object v5, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 437
    .line 438
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    .line 444
    .line 445
    iget-object v1, p0, Lcom/join/mgps/task/f;->b:Landroid/content/Context;

    .line 446
    .line 447
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 448
    .line 449
    .line 450
    iget-object v0, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 451
    .line 452
    const/16 v1, 0xb

    .line 453
    .line 454
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 455
    .line 456
    .line 457
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    iget-object v5, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 462
    .line 463
    invoke-virtual {v0, v5, v1, v2, v3}, Lq5/f;->n0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    .line 464
    .line 465
    .line 466
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    iget-object v2, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 471
    .line 472
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-virtual {v0, v2}, Lcom/join/android/app/common/servcie/j;->n(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 477
    .line 478
    .line 479
    iget-object v0, p0, Lcom/join/mgps/task/f;->b:Landroid/content/Context;

    .line 480
    .line 481
    iget-object v2, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 482
    .line 483
    invoke-static {v0, v2, v1}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 484
    .line 485
    .line 486
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    new-instance v2, Lcom/join/mgps/event/p;

    .line 491
    .line 492
    iget-object v3, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 493
    .line 494
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    const/16 v5, 0x26

    .line 499
    .line 500
    invoke-direct {v2, v3, v5}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    new-instance v2, Lcom/join/mgps/event/r;

    .line 511
    .line 512
    iget-object v3, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 513
    .line 514
    invoke-direct {v2, v3, v1}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 525
    .line 526
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/j;->o(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 531
    .line 532
    .line 533
    :try_start_4
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v0}, Lq5/f;->d()Ljava/util/List;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    if-eqz v1, :cond_12

    .line 550
    .line 551
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 556
    .line 557
    iget-object v2, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 558
    .line 559
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v3

    .line 571
    if-eqz v3, :cond_e

    .line 572
    .line 573
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v3

    .line 577
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    if-nez v2, :cond_e

    .line 582
    .line 583
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 584
    .line 585
    .line 586
    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 587
    const/4 v2, 0x5

    .line 588
    if-ne v1, v2, :cond_e

    .line 589
    .line 590
    goto/16 :goto_9

    .line 591
    .line 592
    :catch_0
    move-exception v0

    .line 593
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 594
    .line 595
    .line 596
    goto/16 :goto_9

    .line 597
    .line 598
    :cond_f
    :goto_6
    iget-object v0, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 599
    .line 600
    const/16 v1, 0xd

    .line 601
    .line 602
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 603
    .line 604
    .line 605
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    iget-object v1, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 610
    .line 611
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/j;->t(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 612
    .line 613
    .line 614
    goto/16 :goto_4

    .line 615
    .line 616
    :catchall_0
    move-exception v0

    .line 617
    goto/16 :goto_8

    .line 618
    .line 619
    :catch_1
    move-exception v0

    .line 620
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 621
    .line 622
    .line 623
    iget-object v1, p0, Lcom/join/mgps/task/f;->f:Lcom/join/mgps/task/f$a;

    .line 624
    .line 625
    if-eqz v1, :cond_10

    .line 626
    .line 627
    invoke-virtual {v1, v4}, Lcom/join/mgps/task/f$a;->a(Z)V

    .line 628
    .line 629
    .line 630
    :cond_10
    iget-object v1, p0, Lcom/join/mgps/task/f;->b:Landroid/content/Context;

    .line 631
    .line 632
    iget-object v2, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 633
    .line 634
    invoke-static {v1, v2, v4}, Lcom/join/mgps/Util/UtilsMy;->y2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)Z

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    if-nez v1, :cond_11

    .line 639
    .line 640
    iget-object v0, p0, Lcom/join/mgps/task/f;->b:Landroid/content/Context;

    .line 641
    .line 642
    new-instance v1, Landroid/content/Intent;

    .line 643
    .line 644
    const-string v2, "com.join.android.app.mgsim.broadcast.action_insufficient_storage"

    .line 645
    .line 646
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 650
    .line 651
    .line 652
    iget-object v0, p0, Lcom/join/mgps/task/f;->b:Landroid/content/Context;

    .line 653
    .line 654
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    .line 659
    .line 660
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    .line 662
    .line 663
    const-string v2, "zip...insufficient storage. gameId="

    .line 664
    .line 665
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    iget-object v2, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 669
    .line 670
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v2

    .line 674
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/t;->N1(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 682
    .line 683
    .line 684
    goto :goto_7

    .line 685
    :cond_11
    :try_start_7
    iget-object v1, p0, Lcom/join/mgps/task/f;->b:Landroid/content/Context;

    .line 686
    .line 687
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    .line 692
    .line 693
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 694
    .line 695
    .line 696
    const-string v3, "zip error[gameId="

    .line 697
    .line 698
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    iget-object v3, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 702
    .line 703
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v3

    .line 707
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    const-string v3, ",size="

    .line 711
    .line 712
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 716
    .line 717
    .line 718
    move-result-wide v5

    .line 719
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    const-string v3, ",brand="

    .line 723
    .line 724
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 728
    .line 729
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    const-string v3, ",model="

    .line 733
    .line 734
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 738
    .line 739
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    const-string v3, "]::"

    .line 743
    .line 744
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-static {v0}, Lcom/join/mgps/Util/m;->c(Ljava/lang/Exception;)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/t;->N1(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 759
    .line 760
    .line 761
    :catch_2
    :goto_7
    :try_start_8
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    iget-object v1, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 766
    .line 767
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/servcie/j;->t(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 768
    .line 769
    .line 770
    goto/16 :goto_4

    .line 771
    .line 772
    :goto_8
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 773
    :catchall_1
    move-exception v0

    .line 774
    goto :goto_a

    .line 775
    :catch_3
    move-exception v0

    .line 776
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 777
    .line 778
    .line 779
    :cond_12
    :goto_9
    iget-object v0, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 780
    .line 781
    invoke-virtual {v0, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 782
    .line 783
    .line 784
    return-void

    .line 785
    :goto_a
    iget-object v1, p0, Lcom/join/mgps/task/f;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 786
    .line 787
    invoke-virtual {v1, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 788
    .line 789
    .line 790
    throw v0
.end method
