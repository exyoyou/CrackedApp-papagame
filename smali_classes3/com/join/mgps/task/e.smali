.class public Lcom/join/mgps/task/e;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/task/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/task/e$a;
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field public e:Z

.field public f:Z

.field g:Lcom/join/mgps/task/e$a;


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

    const-string v0, "UNAndroidZIPThread"

    .line 2
    iput-object v0, p0, Lcom/join/mgps/task/e;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/task/e;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/task/e;->f:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/task/e;->g:Lcom/join/mgps/task/e$a;

    .line 6
    iput-object p1, p0, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 7
    iput-object p2, p0, Lcom/join/mgps/task/e;->c:Landroid/content/Context;

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

    const-string v0, "UNAndroidZIPThread"

    .line 9
    iput-object v0, p0, Lcom/join/mgps/task/e;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/task/e;->e:Z

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/task/e;->g:Lcom/join/mgps/task/e$a;

    .line 12
    iput-object p1, p0, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    iput-object p2, p0, Lcom/join/mgps/task/e;->c:Landroid/content/Context;

    .line 14
    iput-boolean p3, p0, Lcom/join/mgps/task/e;->f:Z

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/task/e;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    iput-boolean v0, p0, Lcom/join/mgps/task/e;->e:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/mgps/task/e;->g:Lcom/join/mgps/task/e$a;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Lcom/join/mgps/task/e$a;->a(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    iget-boolean v0, p0, Lcom/join/mgps/task/e;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public run()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "]::"

    .line 4
    .line 5
    const-string v3, ",size="

    .line 6
    .line 7
    const-string v4, "zip error[gameId="

    .line 8
    .line 9
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 10
    .line 11
    .line 12
    const-string v5, "UNZIPThread called."

    .line 13
    .line 14
    const-string v6, "UNAndroidZIPThread"

    .line 15
    .line 16
    invoke-static {v6, v5}, Lcom/join/mgps/Util/g1;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v5, "start run"

    .line 20
    .line 21
    invoke-static {v6, v5}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v5, Ljava/io/File;

    .line 25
    .line 26
    iget-object v7, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 27
    .line 28
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v7, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 36
    .line 37
    invoke-static {v7}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    const/4 v8, 0x1

    .line 42
    const/4 v9, 0x0

    .line 43
    if-eqz v7, :cond_0

    .line 44
    .line 45
    :goto_0
    const/4 v7, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    iget-object v7, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 48
    .line 49
    invoke-static {v7}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-eqz v7, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 v7, 0x0

    .line 57
    :goto_1
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    if-eqz v11, :cond_11

    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v14

    .line 67
    iget-object v11, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 68
    .line 69
    invoke-virtual {v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    .line 70
    .line 71
    .line 72
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    if-eq v11, v8, :cond_2

    .line 74
    .line 75
    :try_start_1
    iget-object v11, v1, Lcom/join/mgps/task/e;->c:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {v11}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    iget-object v10, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 82
    .line 83
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    iget-object v12, v1, Lcom/join/mgps/task/e;->c:Landroid/content/Context;

    .line 88
    .line 89
    invoke-static {v12}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    invoke-virtual {v12}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    invoke-virtual {v11, v10, v12, v7}, Lcom/papa/sim/statistic/t;->l1(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :catch_0
    move-exception v0

    .line 102
    move-object/from16 v20, v2

    .line 103
    .line 104
    const/4 v10, 0x0

    .line 105
    :goto_2
    move-object v2, v0

    .line 106
    goto/16 :goto_17

    .line 107
    .line 108
    :cond_2
    :goto_3
    :try_start_2
    iget-object v10, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 109
    .line 110
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    sget-object v11, Lcom/join/mgps/enums/Dtype;->androidobb:Lcom/join/mgps/enums/Dtype;

    .line 115
    .line 116
    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    if-eqz v10, :cond_5

    .line 125
    .line 126
    :try_start_3
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    iget-object v11, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 131
    .line 132
    invoke-virtual {v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    sget-object v12, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 137
    .line 138
    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    if-nez v11, :cond_4

    .line 147
    .line 148
    iget-object v11, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 149
    .line 150
    invoke-static {v11}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    if-eqz v11, :cond_3

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_3
    const/4 v11, 0x0

    .line 158
    goto :goto_5

    .line 159
    :cond_4
    :goto_4
    const/4 v11, 0x1

    .line 160
    :goto_5
    invoke-virtual {v10, v11}, Lcom/join/mgps/va/overmind/i;->t(Z)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    :try_start_4
    new-instance v11, Ljava/io/File;

    .line 165
    .line 166
    new-instance v12, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v13, "/"

    .line 175
    .line 176
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget-object v13, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 180
    .line 181
    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v13

    .line 185
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    invoke-static {v11, v9}, Lcom/join/mgps/Util/o0;->l(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 200
    .line 201
    .line 202
    goto/16 :goto_a

    .line 203
    .line 204
    :catch_1
    move-exception v0

    .line 205
    move-object/from16 v20, v2

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_5
    :try_start_5
    iget-object v10, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 209
    .line 210
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    sget-object v11, Lcom/join/mgps/enums/Dtype;->androiddata:Lcom/join/mgps/enums/Dtype;

    .line 215
    .line 216
    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v11

    .line 220
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 224
    if-eqz v10, :cond_8

    .line 225
    .line 226
    :try_start_6
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    iget-object v11, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 231
    .line 232
    invoke-virtual {v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    sget-object v12, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 237
    .line 238
    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v12

    .line 242
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v11

    .line 246
    if-nez v11, :cond_7

    .line 247
    .line 248
    iget-object v11, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 249
    .line 250
    invoke-static {v11}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 251
    .line 252
    .line 253
    move-result v11

    .line 254
    if-eqz v11, :cond_6

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_6
    const/4 v11, 0x0

    .line 258
    goto :goto_7

    .line 259
    :cond_7
    :goto_6
    const/4 v11, 0x1

    .line 260
    :goto_7
    invoke-virtual {v10, v11}, Lcom/join/mgps/va/overmind/i;->r(Z)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 264
    goto :goto_a

    .line 265
    :cond_8
    :try_start_7
    iget-object v10, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 266
    .line 267
    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v10

    .line 271
    sget-object v11, Lcom/join/mgps/enums/Dtype;->androidobbdata:Lcom/join/mgps/enums/Dtype;

    .line 272
    .line 273
    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v11

    .line 277
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 281
    if-eqz v10, :cond_b

    .line 282
    .line 283
    :try_start_8
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    iget-object v11, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 288
    .line 289
    invoke-virtual {v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v11

    .line 293
    sget-object v12, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    .line 294
    .line 295
    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v12

    .line 299
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v11

    .line 303
    if-nez v11, :cond_a

    .line 304
    .line 305
    iget-object v11, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 306
    .line 307
    invoke-static {v11}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 308
    .line 309
    .line 310
    move-result v11

    .line 311
    if-eqz v11, :cond_9

    .line 312
    .line 313
    goto :goto_8

    .line 314
    :cond_9
    const/4 v11, 0x0

    .line 315
    goto :goto_9

    .line 316
    :cond_a
    :goto_8
    const/4 v11, 0x1

    .line 317
    :goto_9
    invoke-virtual {v10, v11}, Lcom/join/mgps/va/overmind/i;->s(Z)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 321
    goto :goto_a

    .line 322
    :cond_b
    const/4 v10, 0x0

    .line 323
    :goto_a
    :try_start_9
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 324
    .line 325
    .line 326
    move-result v11
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 327
    if-nez v11, :cond_c

    .line 328
    .line 329
    :try_start_a
    new-instance v11, Ljava/io/File;

    .line 330
    .line 331
    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 335
    .line 336
    .line 337
    move-result v12

    .line 338
    if-nez v12, :cond_c

    .line 339
    .line 340
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 341
    .line 342
    .line 343
    goto :goto_b

    .line 344
    :catch_2
    move-exception v0

    .line 345
    move-object v11, v0

    .line 346
    :try_start_b
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 347
    .line 348
    .line 349
    :cond_c
    :goto_b
    iget-object v11, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 350
    .line 351
    invoke-virtual {v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 352
    .line 353
    .line 354
    move-result-wide v11
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 355
    const-wide v16, 0x80000000L

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    cmp-long v13, v11, v16

    .line 361
    .line 362
    if-lez v13, :cond_d

    .line 363
    .line 364
    :try_start_c
    invoke-static {v5, v10}, Lcom/join/mgps/Util/x;->c(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v11
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 368
    :goto_c
    const/4 v12, 0x1

    .line 369
    goto :goto_e

    .line 370
    :catch_3
    :try_start_d
    invoke-static {v5, v10}, Lcom/join/mgps/Util/s3;->b(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v11
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 374
    goto :goto_d

    .line 375
    :cond_d
    :try_start_e
    invoke-static {v5, v10}, Lcom/join/mgps/Util/s3;->b(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v11
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 379
    :goto_d
    const/4 v12, 0x0

    .line 380
    goto :goto_e

    .line 381
    :catch_4
    :try_start_f
    invoke-static {v5, v10}, Lcom/join/mgps/Util/x;->c(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v11

    .line 385
    goto :goto_c

    .line 386
    :goto_e
    iget-object v13, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 387
    .line 388
    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 389
    .line 390
    .line 391
    move-result-wide v16

    .line 392
    const-wide/32 v18, 0x6400000

    .line 393
    .line 394
    .line 395
    cmp-long v13, v16, v18

    .line 396
    .line 397
    if-ltz v13, :cond_e

    .line 398
    .line 399
    new-instance v13, Lcom/join/mgps/task/e$a;

    .line 400
    .line 401
    new-instance v9, Ljava/io/File;

    .line 402
    .line 403
    new-instance v8, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    move-wide/from16 v18, v14

    .line 409
    .line 410
    sget-object v14, Lcom/join/mgps/Util/z;->q:Ljava/lang/String;

    .line 411
    .line 412
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    iget-object v15, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 421
    .line 422
    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v15

    .line 426
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v8

    .line 433
    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    new-instance v8, Ljava/io/File;

    .line 437
    .line 438
    new-instance v15, Ljava/lang/StringBuilder;

    .line 439
    .line 440
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 441
    .line 442
    .line 443
    move-object/from16 v20, v2

    .line 444
    .line 445
    :try_start_10
    sget-object v2, Lcom/join/mgps/Util/z;->r:Ljava/lang/String;

    .line 446
    .line 447
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 454
    .line 455
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    new-instance v2, Ljava/io/File;

    .line 470
    .line 471
    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    invoke-direct {v13, v1, v9, v8, v2}, Lcom/join/mgps/task/e$a;-><init>(Lcom/join/mgps/task/e;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 475
    .line 476
    .line 477
    iput-object v13, v1, Lcom/join/mgps/task/e;->g:Lcom/join/mgps/task/e$a;

    .line 478
    .line 479
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 480
    .line 481
    .line 482
    goto :goto_f

    .line 483
    :cond_e
    move-object/from16 v20, v2

    .line 484
    .line 485
    move-wide/from16 v18, v14

    .line 486
    .line 487
    const/4 v2, 0x1

    .line 488
    iput-boolean v2, v1, Lcom/join/mgps/task/e;->e:Z

    .line 489
    .line 490
    :goto_f
    if-eqz v12, :cond_f

    .line 491
    .line 492
    invoke-static {v1, v5, v10}, Lcom/join/mgps/Util/x;->f(Lcom/join/mgps/task/e;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    goto :goto_10

    .line 497
    :cond_f
    invoke-static {v1, v5, v10}, Lcom/join/mgps/Util/s3;->d(Lcom/join/mgps/task/e;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    :goto_10
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 502
    .line 503
    .line 504
    move-result v8

    .line 505
    if-eqz v8, :cond_10

    .line 506
    .line 507
    iget-object v8, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 508
    .line 509
    invoke-virtual {v8, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 510
    .line 511
    .line 512
    :cond_10
    move-wide/from16 v14, v18

    .line 513
    .line 514
    move-object/from16 v21, v10

    .line 515
    .line 516
    move-object v10, v2

    .line 517
    move-object/from16 v2, v21

    .line 518
    .line 519
    goto :goto_11

    .line 520
    :catch_5
    move-exception v0

    .line 521
    goto/16 :goto_2

    .line 522
    .line 523
    :cond_11
    const/4 v2, 0x0

    .line 524
    const/4 v10, 0x0

    .line 525
    const-wide/16 v14, -0x1

    .line 526
    .line 527
    :goto_11
    :try_start_11
    iget-object v3, v1, Lcom/join/mgps/task/e;->g:Lcom/join/mgps/task/e$a;

    .line 528
    .line 529
    if-eqz v3, :cond_12

    .line 530
    .line 531
    const/4 v4, 0x0

    .line 532
    invoke-virtual {v3, v4}, Lcom/join/mgps/task/e$a;->a(Z)V

    .line 533
    .line 534
    .line 535
    :cond_12
    iget-boolean v3, v1, Lcom/join/mgps/task/e;->e:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 536
    .line 537
    if-nez v3, :cond_13

    .line 538
    .line 539
    :goto_12
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 540
    .line 541
    const/4 v3, 0x0

    .line 542
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 543
    .line 544
    .line 545
    return-void

    .line 546
    :cond_13
    :try_start_12
    new-instance v3, Ljava/io/File;

    .line 547
    .line 548
    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    if-eqz v10, :cond_1c

    .line 552
    .line 553
    const-string v4, ""

    .line 554
    .line 555
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v4

    .line 559
    if-nez v4, :cond_1c

    .line 560
    .line 561
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 562
    .line 563
    .line 564
    move-result v3

    .line 565
    if-nez v3, :cond_14

    .line 566
    .line 567
    goto/16 :goto_15

    .line 568
    .line 569
    :cond_14
    const-wide/16 v3, -0x1

    .line 570
    .line 571
    cmp-long v2, v14, v3

    .line 572
    .line 573
    if-eqz v2, :cond_15

    .line 574
    .line 575
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 576
    .line 577
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 578
    .line 579
    .line 580
    move-result-wide v3

    .line 581
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 582
    .line 583
    .line 584
    move-result-wide v6

    .line 585
    sub-long/2addr v6, v14

    .line 586
    div-long/2addr v3, v6

    .line 587
    invoke-virtual {v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setZipCost(J)V

    .line 588
    .line 589
    .line 590
    :cond_15
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 591
    .line 592
    invoke-static {v2}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    if-nez v2, :cond_16

    .line 597
    .line 598
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 599
    .line 600
    invoke-static {v2}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 601
    .line 602
    .line 603
    move-result v2

    .line 604
    if-nez v2, :cond_16

    .line 605
    .line 606
    invoke-static {v5}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 607
    .line 608
    .line 609
    :cond_16
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 610
    .line 611
    invoke-virtual {v2, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 615
    .line 616
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->get_from_type()I

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    const/4 v3, 0x1

    .line 621
    if-eq v2, v3, :cond_18

    .line 622
    .line 623
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 624
    .line 625
    if-eqz v2, :cond_17

    .line 626
    .line 627
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v2

    .line 631
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 632
    .line 633
    .line 634
    move-result v2

    .line 635
    if-nez v2, :cond_17

    .line 636
    .line 637
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 638
    .line 639
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v2

    .line 643
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v2

    .line 647
    const-string v3, "/Quark/Download"

    .line 648
    .line 649
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 654
    .line 655
    .line 656
    move-result v2

    .line 657
    if-eqz v2, :cond_17

    .line 658
    .line 659
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 660
    .line 661
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getExt()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 665
    :try_start_13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 666
    .line 667
    .line 668
    move-result v3

    .line 669
    if-nez v3, :cond_17

    .line 670
    .line 671
    new-instance v3, Lorg/json/JSONObject;

    .line 672
    .line 673
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    const-string v2, "qkPosition"

    .line 677
    .line 678
    const-string v4, "qk"

    .line 679
    .line 680
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 681
    .line 682
    .line 683
    :catch_6
    :cond_17
    :try_start_14
    iget-object v2, v1, Lcom/join/mgps/task/e;->c:Landroid/content/Context;

    .line 684
    .line 685
    iget-object v3, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 686
    .line 687
    sget-object v4, Lcom/papa/sim/statistic/Event;->gameDownload:Lcom/papa/sim/statistic/Event;

    .line 688
    .line 689
    invoke-static {v2, v3, v4}, Lcom/join/android/app/common/servcie/q;->b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/papa/sim/statistic/Event;)V

    .line 690
    .line 691
    .line 692
    :cond_18
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 693
    .line 694
    const-wide/16 v3, 0x64

    .line 695
    .line 696
    invoke-virtual {v2, v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 697
    .line 698
    .line 699
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 700
    .line 701
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->T4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 702
    .line 703
    .line 704
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 705
    .line 706
    invoke-static {v2}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 707
    .line 708
    .line 709
    move-result v2

    .line 710
    const/16 v3, 0xb

    .line 711
    .line 712
    if-nez v2, :cond_19

    .line 713
    .line 714
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 715
    .line 716
    invoke-static {v2}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 717
    .line 718
    .line 719
    move-result v2

    .line 720
    if-nez v2, :cond_19

    .line 721
    .line 722
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 723
    .line 724
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 725
    .line 726
    .line 727
    :cond_19
    :try_start_15
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 728
    .line 729
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 730
    .line 731
    .line 732
    move-result-object v4

    .line 733
    iget-object v5, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 734
    .line 735
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v5

    .line 739
    invoke-virtual {v4, v5}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 740
    .line 741
    .line 742
    move-result-object v4

    .line 743
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getId()I

    .line 744
    .line 745
    .line 746
    move-result v4

    .line 747
    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setId(I)V

    .line 748
    .line 749
    .line 750
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    iget-object v4, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 755
    .line 756
    invoke-virtual {v2, v4}, Lq5/b;->update(Ljava/lang/Object;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 757
    .line 758
    .line 759
    goto :goto_13

    .line 760
    :catch_7
    move-exception v0

    .line 761
    move-object v2, v0

    .line 762
    :try_start_16
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 763
    .line 764
    .line 765
    :goto_13
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 766
    .line 767
    invoke-static {v2}, Lcom/join/android/app/common/utils/APKUtils;->K(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 768
    .line 769
    .line 770
    move-result v2

    .line 771
    if-nez v2, :cond_1a

    .line 772
    .line 773
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 774
    .line 775
    invoke-static {v2}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 776
    .line 777
    .line 778
    move-result v2

    .line 779
    if-nez v2, :cond_1a

    .line 780
    .line 781
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 782
    .line 783
    .line 784
    move-result-object v2

    .line 785
    new-instance v4, Lcom/join/mgps/event/r;

    .line 786
    .line 787
    iget-object v5, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 788
    .line 789
    invoke-direct {v4, v5, v3}, Lcom/join/mgps/event/r;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v2, v4}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 793
    .line 794
    .line 795
    :cond_1a
    iget-boolean v2, v1, Lcom/join/mgps/task/e;->f:Z

    .line 796
    .line 797
    if-nez v2, :cond_1b

    .line 798
    .line 799
    new-instance v2, Landroid/content/Intent;

    .line 800
    .line 801
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 802
    .line 803
    .line 804
    const-string v3, "com.join.apkinstalldataobb.action.broadcast"

    .line 805
    .line 806
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    .line 808
    .line 809
    const-string v3, "apkpath"

    .line 810
    .line 811
    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    .line 813
    .line 814
    iget-object v3, v1, Lcom/join/mgps/task/e;->c:Landroid/content/Context;

    .line 815
    .line 816
    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 817
    .line 818
    .line 819
    goto :goto_14

    .line 820
    :cond_1b
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 821
    .line 822
    .line 823
    move-result-object v2

    .line 824
    new-instance v3, Lcom/join/mgps/event/e0;

    .line 825
    .line 826
    iget-object v4, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 827
    .line 828
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v4

    .line 832
    const/4 v5, 0x7

    .line 833
    invoke-direct {v3, v5, v4}, Lcom/join/mgps/event/e0;-><init>(ILjava/lang/String;)V

    .line 834
    .line 835
    .line 836
    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 837
    .line 838
    .line 839
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 840
    .line 841
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v2

    .line 845
    invoke-static {v2}, Lcom/papa/sim/statistic/s;->v(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    :goto_14
    iget-object v2, v1, Lcom/join/mgps/task/e;->c:Landroid/content/Context;

    .line 849
    .line 850
    iget-object v3, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 851
    .line 852
    const/4 v4, 0x5

    .line 853
    invoke-static {v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->X3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 854
    .line 855
    .line 856
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    iget-object v3, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 861
    .line 862
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v3

    .line 866
    invoke-virtual {v2, v3}, Lcom/join/android/app/common/servcie/j;->n(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 867
    .line 868
    .line 869
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 870
    .line 871
    .line 872
    move-result-object v2

    .line 873
    iget-object v3, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 874
    .line 875
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v3

    .line 879
    invoke-virtual {v2, v3}, Lcom/join/android/app/common/servcie/j;->o(Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    goto/16 :goto_1c

    .line 883
    .line 884
    :cond_1c
    :goto_15
    iget-object v3, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 885
    .line 886
    const/16 v4, 0xd

    .line 887
    .line 888
    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 889
    .line 890
    .line 891
    const-string v3, "failed2"

    .line 892
    .line 893
    invoke-static {v6, v3}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 894
    .line 895
    .line 896
    :try_start_17
    new-instance v3, Ljava/io/File;

    .line 897
    .line 898
    iget-object v4, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 899
    .line 900
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v4

    .line 904
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 908
    .line 909
    .line 910
    move-result v2

    .line 911
    if-eqz v2, :cond_1d

    .line 912
    .line 913
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 914
    .line 915
    .line 916
    move-result-object v2

    .line 917
    array-length v3, v2

    .line 918
    const/4 v4, 0x0

    .line 919
    :goto_16
    if-ge v4, v3, :cond_1d

    .line 920
    .line 921
    aget-object v5, v2, v4

    .line 922
    .line 923
    invoke-static {v5}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 924
    .line 925
    .line 926
    add-int/lit8 v4, v4, 0x1

    .line 927
    .line 928
    goto :goto_16

    .line 929
    :catch_8
    move-exception v0

    .line 930
    move-object v2, v0

    .line 931
    :try_start_18
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 932
    .line 933
    .line 934
    :cond_1d
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 935
    .line 936
    .line 937
    move-result-object v2

    .line 938
    iget-object v3, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 939
    .line 940
    invoke-virtual {v2, v3}, Lcom/join/android/app/common/servcie/j;->t(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 941
    .line 942
    .line 943
    goto/16 :goto_12

    .line 944
    .line 945
    :catch_9
    move-exception v0

    .line 946
    move-object v2, v0

    .line 947
    :try_start_19
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 948
    .line 949
    .line 950
    goto/16 :goto_1c

    .line 951
    .line 952
    :catch_a
    move-exception v0

    .line 953
    move-object v2, v0

    .line 954
    goto/16 :goto_1b

    .line 955
    .line 956
    :catchall_0
    move-exception v0

    .line 957
    move-object v2, v0

    .line 958
    const/4 v3, 0x0

    .line 959
    goto/16 :goto_1d

    .line 960
    .line 961
    :catch_b
    move-exception v0

    .line 962
    move-object/from16 v20, v2

    .line 963
    .line 964
    move-object v2, v0

    .line 965
    const/4 v10, 0x0

    .line 966
    :goto_17
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 967
    .line 968
    .line 969
    iget-object v8, v1, Lcom/join/mgps/task/e;->c:Landroid/content/Context;

    .line 970
    .line 971
    invoke-static {v8}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 972
    .line 973
    .line 974
    move-result-object v8

    .line 975
    iget-object v9, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 976
    .line 977
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v9

    .line 981
    iget-object v11, v1, Lcom/join/mgps/task/e;->c:Landroid/content/Context;

    .line 982
    .line 983
    invoke-static {v11}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 984
    .line 985
    .line 986
    move-result-object v11

    .line 987
    invoke-virtual {v11}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v11

    .line 991
    invoke-virtual {v8, v9, v11, v7}, Lcom/papa/sim/statistic/t;->h2(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 992
    .line 993
    .line 994
    :try_start_1a
    iget-object v7, v1, Lcom/join/mgps/task/e;->c:Landroid/content/Context;

    .line 995
    .line 996
    invoke-static {v7}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 997
    .line 998
    .line 999
    move-result-object v7

    .line 1000
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    iget-object v9, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1009
    .line 1010
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v9

    .line 1014
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 1021
    .line 1022
    .line 1023
    move-result-wide v11

    .line 1024
    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 1025
    .line 1026
    .line 1027
    move-object/from16 v9, v20

    .line 1028
    .line 1029
    :try_start_1b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    invoke-static {v2}, Lcom/join/mgps/Util/m;->c(Ljava/lang/Exception;)Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v11

    .line 1036
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v8

    .line 1043
    invoke-virtual {v7, v8}, Lcom/papa/sim/statistic/t;->N1(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 1044
    .line 1045
    .line 1046
    goto :goto_18

    .line 1047
    :catch_c
    move-object/from16 v9, v20

    .line 1048
    .line 1049
    :catch_d
    :goto_18
    :try_start_1c
    iget-object v7, v1, Lcom/join/mgps/task/e;->g:Lcom/join/mgps/task/e$a;

    .line 1050
    .line 1051
    if-eqz v7, :cond_1e

    .line 1052
    .line 1053
    const/4 v8, 0x0

    .line 1054
    invoke-virtual {v7, v8}, Lcom/join/mgps/task/e$a;->a(Z)V

    .line 1055
    .line 1056
    .line 1057
    :cond_1e
    iget-object v7, v1, Lcom/join/mgps/task/e;->c:Landroid/content/Context;

    .line 1058
    .line 1059
    iget-object v8, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1060
    .line 1061
    const/4 v11, 0x0

    .line 1062
    invoke-static {v7, v8, v11}, Lcom/join/mgps/Util/UtilsMy;->y2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)Z

    .line 1063
    .line 1064
    .line 1065
    move-result v7

    .line 1066
    if-nez v7, :cond_1f

    .line 1067
    .line 1068
    iget-object v2, v1, Lcom/join/mgps/task/e;->c:Landroid/content/Context;

    .line 1069
    .line 1070
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v2

    .line 1074
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1077
    .line 1078
    .line 1079
    const-string v4, "zip...\u7a7a\u95f4\u4e0d\u8db3 gameId="

    .line 1080
    .line 1081
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    .line 1083
    .line 1084
    iget-object v4, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1085
    .line 1086
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v4

    .line 1090
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v3

    .line 1097
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/t;->N1(Ljava/lang/String;)V

    .line 1098
    .line 1099
    .line 1100
    iget-object v2, v1, Lcom/join/mgps/task/e;->c:Landroid/content/Context;

    .line 1101
    .line 1102
    new-instance v3, Landroid/content/Intent;

    .line 1103
    .line 1104
    const-string v4, "com.join.android.app.mgsim.broadcast.action_insufficient_storage"

    .line 1105
    .line 1106
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 1110
    .line 1111
    .line 1112
    goto :goto_19

    .line 1113
    :cond_1f
    :try_start_1d
    iget-object v7, v1, Lcom/join/mgps/task/e;->c:Landroid/content/Context;

    .line 1114
    .line 1115
    invoke-static {v7}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v7

    .line 1119
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1120
    .line 1121
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    .line 1126
    .line 1127
    iget-object v4, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1128
    .line 1129
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v4

    .line 1133
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 1140
    .line 1141
    .line 1142
    move-result-wide v3

    .line 1143
    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    .line 1148
    .line 1149
    invoke-static {v2}, Lcom/join/mgps/Util/m;->c(Ljava/lang/Exception;)Ljava/lang/String;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v2

    .line 1153
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v2

    .line 1160
    invoke-virtual {v7, v2}, Lcom/papa/sim/statistic/t;->N1(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_e
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 1161
    .line 1162
    .line 1163
    :catch_e
    :goto_19
    :try_start_1e
    const-string v2, "failed1"

    .line 1164
    .line 1165
    invoke-static {v6, v2}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_a
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 1166
    .line 1167
    .line 1168
    :try_start_1f
    new-instance v2, Ljava/io/File;

    .line 1169
    .line 1170
    iget-object v3, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1171
    .line 1172
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v3

    .line 1176
    invoke-direct {v2, v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 1180
    .line 1181
    .line 1182
    move-result v3

    .line 1183
    if-eqz v3, :cond_20

    .line 1184
    .line 1185
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v2

    .line 1189
    array-length v3, v2

    .line 1190
    const/4 v4, 0x0

    .line 1191
    :goto_1a
    if-ge v4, v3, :cond_20

    .line 1192
    .line 1193
    aget-object v5, v2, v4

    .line 1194
    .line 1195
    invoke-static {v5}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 1196
    .line 1197
    .line 1198
    add-int/lit8 v4, v4, 0x1

    .line 1199
    .line 1200
    goto :goto_1a

    .line 1201
    :catch_f
    move-exception v0

    .line 1202
    move-object v2, v0

    .line 1203
    :try_start_20
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1204
    .line 1205
    .line 1206
    :cond_20
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v2

    .line 1210
    iget-object v3, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1211
    .line 1212
    invoke-virtual {v2, v3}, Lcom/join/android/app/common/servcie/j;->t(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_a
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 1213
    .line 1214
    .line 1215
    goto/16 :goto_12

    .line 1216
    .line 1217
    :goto_1b
    :try_start_21
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    .line 1218
    .line 1219
    .line 1220
    :goto_1c
    iget-object v2, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1221
    .line 1222
    const/4 v3, 0x0

    .line 1223
    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 1224
    .line 1225
    .line 1226
    return-void

    .line 1227
    :catchall_1
    move-exception v0

    .line 1228
    const/4 v3, 0x0

    .line 1229
    move-object v2, v0

    .line 1230
    :goto_1d
    iget-object v4, v1, Lcom/join/mgps/task/e;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 1231
    .line 1232
    invoke-virtual {v4, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 1233
    .line 1234
    .line 1235
    throw v2
.end method
