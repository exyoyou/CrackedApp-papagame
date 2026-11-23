.class public Lcom/join/mgps/task/g;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/task/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/task/g$a;
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field public e:Z

.field f:Lcom/join/mgps/task/g$a;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "UNZIPForPluginThread"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/task/g;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/task/g;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/mgps/task/g;->f:Lcom/join/mgps/task/g$a;

    .line 5
    iput-object p1, p0, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    iput-object p2, p0, Lcom/join/mgps/task/g;->c:Landroid/content/Context;

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

    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "UNZIPForPluginThread"

    .line 8
    iput-object v0, p0, Lcom/join/mgps/task/g;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/task/g;->e:Z

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/join/mgps/task/g;->f:Lcom/join/mgps/task/g$a;

    .line 11
    iput-object p1, p0, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    iput-object p2, p0, Lcom/join/mgps/task/g;->c:Landroid/content/Context;

    .line 13
    iput-object p3, p0, Lcom/join/mgps/task/g;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/task/g;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    iput-boolean v0, p0, Lcom/join/mgps/task/g;->e:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/mgps/task/g;->f:Lcom/join/mgps/task/g$a;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Lcom/join/mgps/task/g$a;->a(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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

.method public interrupt()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/task/g;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "_"

    .line 4
    .line 5
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Lt6/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getApkPath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    new-instance v4, Ljava/io/File;

    .line 33
    .line 34
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v3}, Lcom/join/android/app/common/utils/o;->delete(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v3, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 51
    .line 52
    invoke-static {v3}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/4 v4, 0x1

    .line 57
    const/4 v5, 0x0

    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v3, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 63
    .line 64
    invoke-static {v3}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    const/4 v3, 0x2

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 v3, 0x0

    .line 73
    :goto_0
    :try_start_0
    new-instance v6, Ljava/io/File;

    .line 74
    .line 75
    iget-object v7, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 76
    .line 77
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    .line 83
    .line 84
    :try_start_1
    iget-object v7, v1, Lcom/join/mgps/task/g;->c:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {v7}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    iget-object v8, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 91
    .line 92
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    iget-object v9, v1, Lcom/join/mgps/task/g;->c:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {v9}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-virtual {v9}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    invoke-virtual {v7, v8, v9, v3}, Lcom/papa/sim/statistic/t;->l1(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    iget-object v3, v1, Lcom/join/mgps/task/g;->c:Landroid/content/Context;

    .line 110
    .line 111
    invoke-static {v3}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    iget-object v7, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 116
    .line 117
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    new-instance v8, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    iget-object v9, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 127
    .line 128
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object v9, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 139
    .line 140
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    iget-object v9, v1, Lcom/join/mgps/task/g;->c:Landroid/content/Context;

    .line 152
    .line 153
    invoke-static {v9}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    invoke-virtual {v9}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    invoke-virtual {v3, v7, v8, v9}, Lcom/papa/sim/statistic/t;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v7, "/"

    .line 177
    .line 178
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v7, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 182
    .line 183
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget-object v0, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer_name()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    new-instance v3, Ljava/io/File;

    .line 207
    .line 208
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    const-string v8, ""

    .line 224
    .line 225
    if-eqz v7, :cond_5

    .line 226
    .line 227
    :try_start_2
    iget-object v7, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 228
    .line 229
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getName()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    if-nez v7, :cond_3

    .line 238
    .line 239
    iget-object v7, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 240
    .line 241
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getName()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    iget-object v9, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 246
    .line 247
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getName()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    const-string v10, "."

    .line 252
    .line 253
    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    goto :goto_1

    .line 262
    :cond_3
    move-object v7, v8

    .line 263
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    if-eqz v9, :cond_4

    .line 268
    .line 269
    const-string v7, ".zip"

    .line 270
    .line 271
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v10

    .line 280
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    new-instance v9, Ljava/io/File;

    .line 291
    .line 292
    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v6, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 296
    .line 297
    .line 298
    move-result v9

    .line 299
    if-eqz v9, :cond_5

    .line 300
    .line 301
    new-instance v9, Ljava/io/File;

    .line 302
    .line 303
    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    .line 305
    .line 306
    :try_start_3
    iget-object v6, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 307
    .line 308
    invoke-virtual {v6, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 312
    .line 313
    .line 314
    move-result-object v6

    .line 315
    iget-object v7, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 316
    .line 317
    invoke-virtual {v6, v7}, Lq5/f;->j0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    .line 319
    .line 320
    move-object v6, v9

    .line 321
    goto :goto_2

    .line 322
    :catch_0
    move-exception v0

    .line 323
    move-object v6, v9

    .line 324
    goto/16 :goto_9

    .line 325
    .line 326
    :cond_5
    :goto_2
    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 327
    .line 328
    .line 329
    move-result v7

    .line 330
    const-wide/16 v9, -0x1

    .line 331
    .line 332
    if-eqz v7, :cond_7

    .line 333
    .line 334
    new-instance v7, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    const-string v11, "zip len="

    .line 340
    .line 341
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 345
    .line 346
    .line 347
    move-result-wide v11

    .line 348
    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 352
    .line 353
    .line 354
    move-result-wide v11

    .line 355
    iget-object v7, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 356
    .line 357
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 358
    .line 359
    .line 360
    move-result-wide v13

    .line 361
    const-wide/32 v15, 0x6400000

    .line 362
    .line 363
    .line 364
    cmp-long v7, v13, v15

    .line 365
    .line 366
    if-ltz v7, :cond_6

    .line 367
    .line 368
    new-instance v4, Lcom/join/mgps/task/g$a;

    .line 369
    .line 370
    invoke-direct {v4, v1, v6, v3}, Lcom/join/mgps/task/g$a;-><init>(Lcom/join/mgps/task/g;Ljava/io/File;Ljava/io/File;)V

    .line 371
    .line 372
    .line 373
    iput-object v4, v1, Lcom/join/mgps/task/g;->f:Lcom/join/mgps/task/g$a;

    .line 374
    .line 375
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 376
    .line 377
    .line 378
    goto :goto_3

    .line 379
    :cond_6
    iput-boolean v4, v1, Lcom/join/mgps/task/g;->e:Z

    .line 380
    .line 381
    :goto_3
    invoke-static {v6, v0}, Lcom/join/mgps/Util/s3;->f(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 382
    .line 383
    .line 384
    goto :goto_4

    .line 385
    :cond_7
    move-wide v11, v9

    .line 386
    :goto_4
    :try_start_5
    iget-boolean v3, v1, Lcom/join/mgps/task/g;->e:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 387
    .line 388
    if-nez v3, :cond_8

    .line 389
    .line 390
    :goto_5
    iget-object v0, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 391
    .line 392
    invoke-virtual {v0, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 393
    .line 394
    .line 395
    return-void

    .line 396
    :cond_8
    :try_start_6
    iget-object v3, v1, Lcom/join/mgps/task/g;->f:Lcom/join/mgps/task/g$a;

    .line 397
    .line 398
    if-eqz v3, :cond_9

    .line 399
    .line 400
    invoke-virtual {v3, v5}, Lcom/join/mgps/task/g$a;->a(Z)V

    .line 401
    .line 402
    .line 403
    :cond_9
    if-eqz v0, :cond_10

    .line 404
    .line 405
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    if-nez v3, :cond_10

    .line 410
    .line 411
    new-instance v3, Ljava/io/File;

    .line 412
    .line 413
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    if-nez v3, :cond_a

    .line 421
    .line 422
    goto/16 :goto_8

    .line 423
    .line 424
    :cond_a
    iget-object v3, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 425
    .line 426
    const-wide/16 v7, 0x64

    .line 427
    .line 428
    invoke-virtual {v3, v7, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 429
    .line 430
    .line 431
    iget-object v3, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 432
    .line 433
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->T4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 434
    .line 435
    .line 436
    cmp-long v3, v11, v9

    .line 437
    .line 438
    if-eqz v3, :cond_b

    .line 439
    .line 440
    iget-object v3, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 441
    .line 442
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 443
    .line 444
    .line 445
    move-result-wide v9

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 447
    .line 448
    .line 449
    move-result-wide v13

    .line 450
    sub-long/2addr v13, v11

    .line 451
    div-long/2addr v9, v13

    .line 452
    invoke-virtual {v3, v9, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setZipCost(J)V

    .line 453
    .line 454
    .line 455
    :cond_b
    iget-object v3, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 456
    .line 457
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    new-instance v4, Ljava/io/File;

    .line 462
    .line 463
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/o;->h(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    invoke-virtual {v2, v3}, Lcom/join/mgps/db/tables/EMUApkTable;->setApkPath(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    invoke-virtual {v4, v2}, Lq5/b;->update(Ljava/lang/Object;)I

    .line 478
    .line 479
    .line 480
    invoke-static {v2}, Lcom/join/android/app/common/utils/o;->F(Lcom/join/mgps/db/tables/EMUApkTable;)V

    .line 481
    .line 482
    .line 483
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    iget-object v4, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 488
    .line 489
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v4

    .line 493
    invoke-virtual {v2, v4}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    if-eqz v2, :cond_c

    .line 498
    .line 499
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getId()I

    .line 504
    .line 505
    .line 506
    move-result v2

    .line 507
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    invoke-virtual {v4, v2}, Lq5/b;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    check-cast v2, Lcom/join/mgps/db/tables/EMUApkArenaTable;

    .line 516
    .line 517
    invoke-virtual {v2, v3}, Lcom/join/mgps/db/tables/EMUApkArenaTable;->setApkPath(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    invoke-virtual {v3, v2}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    invoke-static {v2}, Lcom/join/android/app/common/utils/o;->E(Lcom/join/mgps/db/tables/EMUApkArenaTable;)V

    .line 528
    .line 529
    .line 530
    :cond_c
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 531
    .line 532
    .line 533
    iget-object v2, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 534
    .line 535
    invoke-virtual {v2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    iget-object v2, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 539
    .line 540
    invoke-virtual {v2, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    iget-object v2, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 548
    .line 549
    invoke-virtual {v0, v2}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    iget-object v0, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 553
    .line 554
    const/4 v2, 0x5

    .line 555
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 556
    .line 557
    .line 558
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    iget-object v3, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 563
    .line 564
    invoke-virtual {v0, v3, v2, v7, v8}, Lq5/f;->n0(Lcom/github/snowdream/android/app/downloader/DownloadTask;IJ)V

    .line 565
    .line 566
    .line 567
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    iget-object v3, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 572
    .line 573
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v3

    .line 577
    invoke-virtual {v0, v3}, Lcom/join/android/app/common/servcie/j;->n(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 578
    .line 579
    .line 580
    iget-object v0, v1, Lcom/join/mgps/task/g;->c:Landroid/content/Context;

    .line 581
    .line 582
    iget-object v3, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 583
    .line 584
    invoke-static {v0, v3, v2}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 585
    .line 586
    .line 587
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    new-instance v3, Lcom/join/mgps/event/p;

    .line 592
    .line 593
    iget-object v4, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 594
    .line 595
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v4

    .line 599
    const/16 v6, 0x26

    .line 600
    .line 601
    invoke-direct {v3, v4, v6}, Lcom/join/mgps/event/p;-><init>(Ljava/lang/String;I)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 605
    .line 606
    .line 607
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    new-instance v3, Lcom/join/mgps/event/r;

    .line 612
    .line 613
    iget-object v4, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 614
    .line 615
    invoke-direct {v3, v4, v2}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v0, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 619
    .line 620
    .line 621
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    iget-object v3, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 626
    .line 627
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    invoke-virtual {v0, v3}, Lcom/join/android/app/common/servcie/j;->o(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 632
    .line 633
    .line 634
    :try_start_7
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    invoke-virtual {v0}, Lq5/f;->d()Ljava/util/List;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 647
    .line 648
    .line 649
    move-result v3

    .line 650
    if-eqz v3, :cond_e

    .line 651
    .line 652
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v3

    .line 656
    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 657
    .line 658
    iget-object v4, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 659
    .line 660
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v4

    .line 664
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v6

    .line 668
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    move-result v6

    .line 672
    if-eqz v6, :cond_d

    .line 673
    .line 674
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v6

    .line 678
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v4

    .line 682
    if-nez v4, :cond_d

    .line 683
    .line 684
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 685
    .line 686
    .line 687
    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 688
    if-ne v3, v2, :cond_d

    .line 689
    .line 690
    goto :goto_6

    .line 691
    :catch_1
    move-exception v0

    .line 692
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 693
    .line 694
    .line 695
    :cond_e
    :goto_6
    iget-object v0, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 696
    .line 697
    if-eqz v0, :cond_f

    .line 698
    .line 699
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    if-eqz v0, :cond_f

    .line 704
    .line 705
    new-instance v0, Ljava/io/File;

    .line 706
    .line 707
    iget-object v2, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 708
    .line 709
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v2

    .line 713
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 714
    .line 715
    .line 716
    :try_start_9
    const-string v2, ".downloadTask_chajian"

    .line 717
    .line 718
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 723
    .line 724
    .line 725
    move-result-object v3

    .line 726
    iget-object v4, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 727
    .line 728
    invoke-virtual {v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    invoke-static {v2, v0, v3}, Lcom/join/mgps/Util/o3;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 733
    .line 734
    .line 735
    goto :goto_7

    .line 736
    :catch_2
    move-exception v0

    .line 737
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 738
    .line 739
    .line 740
    :cond_f
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 741
    .line 742
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    .line 744
    .line 745
    const-string v2, "mDownloadTask.fina="

    .line 746
    .line 747
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    iget-object v2, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 751
    .line 752
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    goto/16 :goto_c

    .line 760
    .line 761
    :cond_10
    :goto_8
    iget-object v0, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 762
    .line 763
    const/16 v2, 0xd

    .line 764
    .line 765
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 766
    .line 767
    .line 768
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    iget-object v2, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 773
    .line 774
    invoke-virtual {v0, v2}, Lcom/join/android/app/common/servcie/j;->t(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 775
    .line 776
    .line 777
    goto/16 :goto_5

    .line 778
    .line 779
    :catchall_0
    move-exception v0

    .line 780
    goto/16 :goto_b

    .line 781
    .line 782
    :catch_3
    move-exception v0

    .line 783
    :goto_9
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 784
    .line 785
    .line 786
    iget-object v2, v1, Lcom/join/mgps/task/g;->f:Lcom/join/mgps/task/g$a;

    .line 787
    .line 788
    if-eqz v2, :cond_11

    .line 789
    .line 790
    invoke-virtual {v2, v5}, Lcom/join/mgps/task/g$a;->a(Z)V

    .line 791
    .line 792
    .line 793
    :cond_11
    iget-object v2, v1, Lcom/join/mgps/task/g;->c:Landroid/content/Context;

    .line 794
    .line 795
    iget-object v3, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 796
    .line 797
    invoke-static {v2, v3, v5}, Lcom/join/mgps/Util/UtilsMy;->y2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)Z

    .line 798
    .line 799
    .line 800
    move-result v2

    .line 801
    if-nez v2, :cond_12

    .line 802
    .line 803
    iget-object v0, v1, Lcom/join/mgps/task/g;->c:Landroid/content/Context;

    .line 804
    .line 805
    new-instance v2, Landroid/content/Intent;

    .line 806
    .line 807
    const-string v3, "com.join.android.app.mgsim.broadcast.action_insufficient_storage"

    .line 808
    .line 809
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 813
    .line 814
    .line 815
    iget-object v0, v1, Lcom/join/mgps/task/g;->c:Landroid/content/Context;

    .line 816
    .line 817
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    new-instance v2, Ljava/lang/StringBuilder;

    .line 822
    .line 823
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 824
    .line 825
    .line 826
    const-string v3, "zip...insufficient storage. gameId="

    .line 827
    .line 828
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    .line 830
    .line 831
    iget-object v3, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 832
    .line 833
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v3

    .line 837
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v2

    .line 844
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/t;->N1(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 845
    .line 846
    .line 847
    goto :goto_a

    .line 848
    :cond_12
    :try_start_c
    iget-object v2, v1, Lcom/join/mgps/task/g;->c:Landroid/content/Context;

    .line 849
    .line 850
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 851
    .line 852
    .line 853
    move-result-object v2

    .line 854
    new-instance v3, Ljava/lang/StringBuilder;

    .line 855
    .line 856
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 857
    .line 858
    .line 859
    const-string v4, "zip error[gameId="

    .line 860
    .line 861
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    .line 863
    .line 864
    iget-object v4, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 865
    .line 866
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v4

    .line 870
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    const-string v4, ",size="

    .line 874
    .line 875
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 879
    .line 880
    .line 881
    move-result-wide v6

    .line 882
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    const-string v4, ",brand="

    .line 886
    .line 887
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 891
    .line 892
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    const-string v4, ",model="

    .line 896
    .line 897
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 901
    .line 902
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    const-string v4, "]::"

    .line 906
    .line 907
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    .line 909
    .line 910
    invoke-static {v0}, Lcom/join/mgps/Util/m;->c(Ljava/lang/Exception;)Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    invoke-virtual {v2, v0}, Lcom/papa/sim/statistic/t;->N1(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 922
    .line 923
    .line 924
    :catch_4
    :goto_a
    :try_start_d
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    iget-object v2, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 929
    .line 930
    invoke-virtual {v0, v2}, Lcom/join/android/app/common/servcie/j;->t(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 931
    .line 932
    .line 933
    goto/16 :goto_5

    .line 934
    .line 935
    :goto_b
    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 936
    :catchall_1
    move-exception v0

    .line 937
    goto :goto_d

    .line 938
    :catch_5
    move-exception v0

    .line 939
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 940
    .line 941
    .line 942
    :goto_c
    iget-object v0, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 943
    .line 944
    invoke-virtual {v0, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 945
    .line 946
    .line 947
    return-void

    .line 948
    :goto_d
    iget-object v2, v1, Lcom/join/mgps/task/g;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 949
    .line 950
    invoke-virtual {v2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 951
    .line 952
    .line 953
    throw v0
.end method
