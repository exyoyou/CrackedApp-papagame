.class public Lcom/join/android/app/common/http/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/join/android/app/common/http/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b()Lcom/join/android/app/common/http/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/http/h;->a:Lcom/join/android/app/common/http/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/android/app/common/http/h;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/android/app/common/http/h;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/join/android/app/common/http/h;->a:Lcom/join/android/app/common/http/h;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/join/android/app/common/http/h;->a:Lcom/join/android/app/common/http/h;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/android/app/common/http/d;->t(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/s1;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "http://datainterface.5fun.com/tf?net_type="

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, "&v="

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/q;->z()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, "_"

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/join/android/app/common/utils/q;->A()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-static {p1, v0, v0}, Lcom/join/android/app/common/http/d;->y(Ljava/lang/String;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public d([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/g;Ljava/lang/String;I)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uploadFiles",
            "uid",
            "token",
            "gameId",
            "archiveName",
            "archiveFileName",
            "listner",
            "archiveDesc",
            "shareType"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    move-object/from16 v5, p6

    .line 12
    .line 13
    move-object/from16 v6, p8

    .line 14
    .line 15
    new-instance v7, Lokhttp3/OkHttpClient;

    .line 16
    .line 17
    invoke-direct {v7}, Lokhttp3/OkHttpClient;-><init>()V

    .line 18
    .line 19
    .line 20
    array-length v8, v0

    .line 21
    const-string v9, ""

    .line 22
    .line 23
    const/4 v10, 0x2

    .line 24
    if-ge v8, v10, :cond_0

    .line 25
    .line 26
    return-object v9

    .line 27
    :cond_0
    new-instance v8, Ljava/io/File;

    .line 28
    .line 29
    const/4 v11, 0x0

    .line 30
    aget-object v11, v0, v11

    .line 31
    .line 32
    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v11, Ljava/io/File;

    .line 36
    .line 37
    const/4 v12, 0x1

    .line 38
    aget-object v0, v0, v12

    .line 39
    .line 40
    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    move/from16 v0, p9

    .line 44
    .line 45
    if-ne v0, v12, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v10, 0x1

    .line 49
    :goto_0
    const-string v0, "shareType"

    .line 50
    .line 51
    const-string v13, "archiveDesc"

    .line 52
    .line 53
    const-string v14, "archiveName"

    .line 54
    .line 55
    const-string v15, "gameId"

    .line 56
    .line 57
    move-object/from16 v16, v7

    .line 58
    .line 59
    const-string v7, "token"

    .line 60
    .line 61
    const-string v5, "uid"

    .line 62
    .line 63
    if-ne v10, v12, :cond_2

    .line 64
    .line 65
    const-string v12, "application/octet-stream"

    .line 66
    .line 67
    move-object/from16 p1, v0

    .line 68
    .line 69
    invoke-static {v12}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0, v8}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v12}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 78
    .line 79
    .line 80
    move-result-object v12

    .line 81
    invoke-static {v12, v11}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    move-object/from16 v17, v9

    .line 86
    .line 87
    new-instance v9, Lokhttp3/MultipartBody$Builder;

    .line 88
    .line 89
    invoke-direct {v9}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 90
    .line 91
    .line 92
    move/from16 p9, v10

    .line 93
    .line 94
    sget-object v10, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 95
    .line 96
    invoke-virtual {v9, v10}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    const-string v10, "archiveFile"

    .line 101
    .line 102
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-virtual {v9, v10, v8, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v8, "archiveCover"

    .line 111
    .line 112
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-virtual {v0, v8, v9, v12}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0, v5, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, v7, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0, v15, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0, v14, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0, v13, v6}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    move/from16 v10, p9

    .line 146
    .line 147
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    move-object/from16 v5, v17

    .line 151
    .line 152
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    move-object/from16 v8, p1

    .line 160
    .line 161
    invoke-virtual {v0, v8, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v1, "archiveFileName"

    .line 166
    .line 167
    move-object/from16 v9, p6

    .line 168
    .line 169
    invoke-virtual {v0, v1, v9}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    goto :goto_1

    .line 178
    :cond_2
    move-object v8, v0

    .line 179
    move-object v0, v5

    .line 180
    move-object v5, v9

    .line 181
    move-object/from16 v9, p6

    .line 182
    .line 183
    new-instance v11, Lokhttp3/MultipartBody$Builder;

    .line 184
    .line 185
    invoke-direct {v11}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 186
    .line 187
    .line 188
    sget-object v12, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 189
    .line 190
    invoke-virtual {v11, v12}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    invoke-virtual {v11, v0, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0, v7, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0, v15, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0, v14, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0, v13, v6}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v0, v8, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    :goto_1
    new-instance v1, Lcom/join/android/app/common/http/f;

    .line 238
    .line 239
    move-object/from16 v2, p7

    .line 240
    .line 241
    invoke-direct {v1, v0, v2, v9}, Lcom/join/android/app/common/http/f;-><init>(Lokhttp3/RequestBody;Lcom/join/android/app/common/http/g;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    new-instance v0, Lokhttp3/Request$Builder;

    .line 245
    .line 246
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 247
    .line 248
    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    sget-object v3, Lcom/join/mgps/rpc/h;->z:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v3, "/cloud/shareArchive"

    .line 260
    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    move-object/from16 v1, v16

    .line 281
    .line 282
    :try_start_0
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    .line 299
    .line 300
    .line 301
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    if-nez v0, :cond_3

    .line 303
    .line 304
    goto :goto_2

    .line 305
    :cond_3
    return-object v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 308
    .line 309
    .line 310
    :goto_2
    return-object v5
.end method

.method public e(Landroid/content/Context;Lcom/join/mgps/dto/CloudUploadInfo;Ljava/io/File;Lcom/join/android/app/common/http/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "context",
            "cloudUploadInfo",
            "file",
            "callback"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/http/d;->I()Lcom/join/android/app/common/http/d$q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/join/mgps/rpc/h;->l:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "/v16/backup/upload"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "backup_file"

    .line 25
    .line 26
    const/4 p1, 0x5

    .line 27
    new-array v4, p1, [Lcom/join/android/app/common/http/d$n;

    .line 28
    .line 29
    new-instance p1, Lcom/join/android/app/common/http/d$n;

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudUploadInfo;->getRid()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v5, ""

    .line 44
    .line 45
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v6, "rid"

    .line 53
    .line 54
    invoke-direct {p1, v6, v3}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    aput-object p1, v4, v3

    .line 59
    .line 60
    new-instance p1, Lcom/join/android/app/common/http/d$n;

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudUploadInfo;->getUid()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v5, "uid"

    .line 82
    .line 83
    invoke-direct {p1, v5, v3}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    aput-object p1, v4, v3

    .line 88
    .line 89
    new-instance p1, Lcom/join/android/app/common/http/d$n;

    .line 90
    .line 91
    const-string v3, "token"

    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudUploadInfo;->getToken()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-direct {p1, v3, v5}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/4 v3, 0x2

    .line 101
    aput-object p1, v4, v3

    .line 102
    .line 103
    new-instance p1, Lcom/join/android/app/common/http/d$n;

    .line 104
    .line 105
    const-string v3, "backup_type"

    .line 106
    .line 107
    const-string v5, "game"

    .line 108
    .line 109
    invoke-direct {p1, v3, v5}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/4 v3, 0x3

    .line 113
    aput-object p1, v4, v3

    .line 114
    .line 115
    new-instance p1, Lcom/join/android/app/common/http/d$n;

    .line 116
    .line 117
    const-string v3, "game_id"

    .line 118
    .line 119
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudUploadInfo;->getGame_id()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-direct {p1, v3, p2}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const/4 p2, 0x4

    .line 127
    aput-object p1, v4, p2

    .line 128
    .line 129
    new-instance v5, Lcom/join/android/app/common/http/h$b;

    .line 130
    .line 131
    invoke-direct {v5, p0, p4}, Lcom/join/android/app/common/http/h$b;-><init>(Lcom/join/android/app/common/http/h;Lcom/join/android/app/common/http/b;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    move-object v3, p3

    .line 139
    invoke-virtual/range {v0 .. v6}, Lcom/join/android/app/common/http/d$q;->f(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Lcom/join/android/app/common/http/d$n;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RequestModel;Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/g;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uploadFile",
            "uid",
            "token",
            "requestModel",
            "channelNum",
            "archiveFileName",
            "listner"
        }
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    const-wide/16 v2, 0x3c

    .line 13
    .line 14
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Ljava/io/File;

    .line 27
    .line 28
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p1, "application/octet-stream"

    .line 32
    .line 33
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    .line 42
    .line 43
    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 44
    .line 45
    .line 46
    sget-object v3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "args.archiveFile"

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v2, v3, v1, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v1, "args.uid"

    .line 63
    .line 64
    invoke-virtual {p1, v1, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string p2, "args.userToken"

    .line 69
    .line 70
    invoke-virtual {p1, p2, p3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string p2, "WF"

    .line 75
    .line 76
    const-string p3, "wufun"

    .line 77
    .line 78
    invoke-virtual {p1, p2, p3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p4}, Lcom/join/mgps/dto/RequestModel;->getAndroidId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const-string p3, "androidId"

    .line 87
    .line 88
    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 98
    .line 99
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p3, ""

    .line 103
    .line 104
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    const-string v1, "androidVer"

    .line 112
    .line 113
    invoke-virtual {p1, v1, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const-string p2, "args.async"

    .line 118
    .line 119
    const-string v1, "1"

    .line 120
    .line 121
    invoke-virtual {p1, p2, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string p2, "channelNum"

    .line 126
    .line 127
    invoke-virtual {p1, p2, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string p2, "deviceId"

    .line 132
    .line 133
    invoke-virtual {p4}, Lcom/join/mgps/dto/RequestModel;->getDeviceId()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p5

    .line 137
    invoke-virtual {p1, p2, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const-string p2, "hDeviceId"

    .line 142
    .line 143
    sget-object p5, Lcom/MApplication;->A:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p1, p2, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const-string p2, "package_name"

    .line 150
    .line 151
    invoke-virtual {p4}, Lcom/join/mgps/dto/RequestModel;->getPackage_name()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p5

    .line 155
    invoke-virtual {p1, p2, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    const-string p2, "package_type"

    .line 160
    .line 161
    invoke-virtual {p4}, Lcom/join/mgps/dto/RequestModel;->getPackage_type()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p5

    .line 165
    invoke-virtual {p1, p2, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const-string p2, "platform"

    .line 170
    .line 171
    invoke-virtual {p4}, Lcom/join/mgps/dto/RequestModel;->getPlatform()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p5

    .line 175
    invoke-virtual {p1, p2, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    const-string p2, "version"

    .line 180
    .line 181
    invoke-virtual {p4}, Lcom/join/mgps/dto/RequestModel;->getVersion()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p4

    .line 185
    invoke-virtual {p1, p2, p4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    new-instance p2, Lcom/join/android/app/common/http/f;

    .line 194
    .line 195
    invoke-direct {p2, p1, p7, p6}, Lcom/join/android/app/common/http/f;-><init>(Lokhttp3/RequestBody;Lcom/join/android/app/common/http/g;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    new-instance p1, Lokhttp3/Request$Builder;

    .line 199
    .line 200
    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 201
    .line 202
    .line 203
    new-instance p4, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    sget-object p5, Lcom/join/mgps/rpc/h;->B:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string p5, "/common/upload"

    .line 214
    .line 215
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p4

    .line 222
    invoke-virtual {p1, p4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    :try_start_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    new-instance p4, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string p5, "upload File "

    .line 256
    .line 257
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p4

    .line 267
    invoke-static {p4}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    .line 271
    .line 272
    .line 273
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    if-nez p1, :cond_0

    .line 275
    .line 276
    goto :goto_0

    .line 277
    :cond_0
    return-object p2

    .line 278
    :catch_0
    move-exception p1

    .line 279
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 280
    .line 281
    .line 282
    :goto_0
    return-object p3
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RequestModel;Ljava/lang/String;Ljava/lang/String;IILcom/join/android/app/common/http/g;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uploadFile",
            "uid",
            "token",
            "requestModel",
            "channelNum",
            "archiveFileName",
            "keepFilename",
            "isVideo",
            "listner"
        }
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    const-wide/16 v2, 0x3c

    .line 13
    .line 14
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Ljava/io/File;

    .line 27
    .line 28
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p1, "application/octet-stream"

    .line 32
    .line 33
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    .line 42
    .line 43
    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 44
    .line 45
    .line 46
    sget-object v3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "args.archiveFile"

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v2, v3, v1, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v1, "args.uid"

    .line 63
    .line 64
    invoke-virtual {p1, v1, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string p2, "args.userToken"

    .line 69
    .line 70
    invoke-virtual {p1, p2, p3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string p2, "WF"

    .line 75
    .line 76
    const-string p3, "wufun"

    .line 77
    .line 78
    invoke-virtual {p1, p2, p3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p4}, Lcom/join/mgps/dto/RequestModel;->getAndroidId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const-string p3, "androidId"

    .line 87
    .line 88
    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 98
    .line 99
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p3, ""

    .line 103
    .line 104
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    const-string v1, "androidVer"

    .line 112
    .line 113
    invoke-virtual {p1, v1, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const-string p2, "args.async"

    .line 118
    .line 119
    const-string v1, "1"

    .line 120
    .line 121
    invoke-virtual {p1, p2, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string p2, "channelNum"

    .line 126
    .line 127
    invoke-virtual {p1, p2, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string p2, "deviceId"

    .line 132
    .line 133
    invoke-virtual {p4}, Lcom/join/mgps/dto/RequestModel;->getDeviceId()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p5

    .line 137
    invoke-virtual {p1, p2, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const-string p2, "hDeviceId"

    .line 142
    .line 143
    sget-object p5, Lcom/MApplication;->A:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p1, p2, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const-string p2, "package_name"

    .line 150
    .line 151
    invoke-virtual {p4}, Lcom/join/mgps/dto/RequestModel;->getPackage_name()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p5

    .line 155
    invoke-virtual {p1, p2, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    const-string p2, "package_type"

    .line 160
    .line 161
    invoke-virtual {p4}, Lcom/join/mgps/dto/RequestModel;->getPackage_type()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p5

    .line 165
    invoke-virtual {p1, p2, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const-string p2, "platform"

    .line 170
    .line 171
    invoke-virtual {p4}, Lcom/join/mgps/dto/RequestModel;->getPlatform()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p5

    .line 175
    invoke-virtual {p1, p2, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    const-string p2, "version"

    .line 180
    .line 181
    invoke-virtual {p4}, Lcom/join/mgps/dto/RequestModel;->getVersion()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p4

    .line 185
    invoke-virtual {p1, p2, p4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    new-instance p2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    const-string p4, "args.keepFilename"

    .line 205
    .line 206
    invoke-virtual {p1, p4, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    const-string p2, "args.needCover"

    .line 211
    .line 212
    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p4

    .line 216
    invoke-virtual {p1, p2, p4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    new-instance p2, Lcom/join/android/app/common/http/f;

    .line 225
    .line 226
    invoke-direct {p2, p1, p9, p6}, Lcom/join/android/app/common/http/f;-><init>(Lokhttp3/RequestBody;Lcom/join/android/app/common/http/g;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    new-instance p1, Lokhttp3/Request$Builder;

    .line 230
    .line 231
    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 232
    .line 233
    .line 234
    new-instance p4, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    sget-object p5, Lcom/join/mgps/rpc/h;->B:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string p5, "/v2/common/upload"

    .line 245
    .line 246
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p4

    .line 253
    invoke-virtual {p1, p4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    :try_start_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    new-instance p4, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string p5, "upload File "

    .line 287
    .line 288
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p4

    .line 298
    invoke-static {p4}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    .line 302
    .line 303
    .line 304
    move-result p4

    .line 305
    if-nez p4, :cond_0

    .line 306
    .line 307
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-interface {p9, p1}, Lcom/join/android/app/common/http/g;->onUploadFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .line 313
    .line 314
    goto :goto_0

    .line 315
    :cond_0
    return-object p2

    .line 316
    :catch_0
    move-exception p1

    .line 317
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 318
    .line 319
    .line 320
    :goto_0
    return-object p3
.end method

.method public h(Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;Lcom/join/android/app/common/http/b;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "context",
            "upLoadGameConfig",
            "file",
            "callback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;

    invoke-direct {v0}, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;->setUid(I)V

    const-string v1, ""

    .line 3
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;->setDevice_id(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/q;->z()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;->setVer(I)V

    .line 5
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;->setToken(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;->setGame_name(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_type()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;->setGame_type(I)V

    .line 8
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_platform_type()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;->setGame_platform_type(I)V

    .line 9
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_explain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;->setGame_explain(Ljava/lang/String;)V

    .line 10
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/join/android/app/common/http/d;->I()Lcom/join/android/app/common/http/d$q;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/rpc/h;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/user/upfile/upload_game_pack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "files"

    const/16 v5, 0xd

    new-array v6, v5, [Lcom/join/android/app/common/http/d$n;

    new-instance v5, Lcom/join/android/app/common/http/d$n;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "uid"

    invoke-direct {v5, v8, v7}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    aput-object v5, v6, v7

    new-instance v5, Lcom/join/android/app/common/http/d$n;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-static {p1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    move-result-object v8

    invoke-virtual {v8}, Lcom/join/android/app/common/utils/q;->z()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ver"

    invoke-direct {v5, v8, v7}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    aput-object v5, v6, v7

    new-instance v5, Lcom/join/android/app/common/http/d$n;

    .line 14
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getToken()Ljava/lang/String;

    move-result-object v7

    const-string v9, "token"

    invoke-direct {v5, v9, v7}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x2

    aput-object v5, v6, v7

    new-instance v5, Lcom/join/android/app/common/http/d$n;

    .line 15
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_name()Ljava/lang/String;

    move-result-object v7

    const-string v10, "game_name"

    invoke-direct {v5, v10, v7}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x3

    aput-object v5, v6, v7

    new-instance v5, Lcom/join/android/app/common/http/d$n;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_type()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "game_type"

    invoke-direct {v5, v11, v7}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    aput-object v5, v6, v7

    new-instance v5, Lcom/join/android/app/common/http/d$n;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    move-result-object v12

    invoke-virtual {v12}, Lcom/join/android/app/common/utils/q;->z()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v8, v7}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x5

    aput-object v5, v6, v7

    new-instance v5, Lcom/join/android/app/common/http/d$n;

    .line 18
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v9, v7}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x6

    aput-object v5, v6, v7

    new-instance v5, Lcom/join/android/app/common/http/d$n;

    .line 19
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_name()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v10, v7}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x7

    aput-object v5, v6, v7

    new-instance v5, Lcom/join/android/app/common/http/d$n;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_type()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v11, v7}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x8

    aput-object v5, v6, v7

    new-instance v5, Lcom/join/android/app/common/http/d$n;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_platform_type()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "game_platform_type"

    invoke-direct {v5, v8, v7}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x9

    aput-object v5, v6, v7

    new-instance v5, Lcom/join/android/app/common/http/d$n;

    const-string v7, "game_explain"

    .line 22
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_explain()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xa

    aput-object v5, v6, v7

    new-instance v5, Lcom/join/android/app/common/http/d$n;

    const-string v7, "sign"

    invoke-direct {v5, v7, v0}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    aput-object v5, v6, v0

    new-instance v0, Lcom/join/android/app/common/http/d$n;

    const-string v5, "device_id"

    invoke-direct {v0, v5, v1}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    aput-object v0, v6, v1

    new-instance v7, Lcom/join/android/app/common/http/h$a;

    move-object v0, p0

    move-object/from16 v1, p4

    invoke-direct {v7, p0, v1}, Lcom/join/android/app/common/http/h$a;-><init>(Lcom/join/android/app/common/http/h;Lcom/join/android/app/common/http/b;)V

    .line 23
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v5, p3

    .line 24
    invoke-virtual/range {v2 .. v8}, Lcom/join/android/app/common/http/d$q;->f(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Lcom/join/android/app/common/http/d$n;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/g;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uploadFile",
            "uid",
            "token",
            "gameId",
            "archiveDesc",
            "version",
            "archiveFileName",
            "screenShot",
            "listner"
        }
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    const-wide/16 v2, 0x3c

    .line 13
    .line 14
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Ljava/io/File;

    .line 27
    .line 28
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Ljava/io/File;

    .line 32
    .line 33
    invoke-direct {p1, p8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p8, "application/octet-stream"

    .line 37
    .line 38
    invoke-static {p8}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    invoke-static {p8}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 53
    .line 54
    .line 55
    move-result-object p8

    .line 56
    invoke-static {p8, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    .line 57
    .line 58
    .line 59
    move-result-object p8

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 p8, 0x0

    .line 62
    :goto_0
    new-instance v3, Lokhttp3/MultipartBody$Builder;

    .line 63
    .line 64
    invoke-direct {v3}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 65
    .line 66
    .line 67
    sget-object v4, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const-string v4, "args.archiveFile"

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v3, v4, v1, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "args.archiveCover"

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v1, v2, p1, p8}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string p8, "args.uid"

    .line 94
    .line 95
    invoke-virtual {p1, p8, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string p2, "args.userToken"

    .line 100
    .line 101
    invoke-virtual {p1, p2, p3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string p2, "args.gameId"

    .line 106
    .line 107
    invoke-virtual {p1, p2, p4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string p2, "args.archiveDesc"

    .line 112
    .line 113
    invoke-virtual {p1, p2, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const-string p2, "args.version"

    .line 118
    .line 119
    invoke-virtual {p1, p2, p6}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance p2, Lcom/join/android/app/common/http/f;

    .line 128
    .line 129
    invoke-direct {p2, p1, p9, p7}, Lcom/join/android/app/common/http/f;-><init>(Lokhttp3/RequestBody;Lcom/join/android/app/common/http/g;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance p1, Lokhttp3/Request$Builder;

    .line 133
    .line 134
    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 135
    .line 136
    .line 137
    new-instance p3, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    sget-object p4, Lcom/join/mgps/rpc/h;->B:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string p4, "/v6_2/game/cloudArchive/release"

    .line 148
    .line 149
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    :try_start_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    new-instance p3, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string p4, "upload File "

    .line 190
    .line 191
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p3

    .line 201
    invoke-static {p3}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    .line 205
    .line 206
    .line 207
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    if-nez p1, :cond_1

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_1
    return-object p2

    .line 212
    :catch_0
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    .line 215
    .line 216
    :goto_1
    const-string p1, ""

    .line 217
    .line 218
    return-object p1
.end method

.method public j([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/g;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uploadFiles",
            "uid",
            "token",
            "gameId",
            "archiveName",
            "archiveFileName",
            "archiveFileMd5",
            "listner"
        }
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x2

    .line 8
    const-string v3, ""

    .line 9
    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    return-object v3

    .line 13
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aget-object v2, p1, v2

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Ljava/io/File;

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    aget-object p1, p1, v4

    .line 25
    .line 26
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p1, "application/octet-stream"

    .line 30
    .line 31
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v4, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v5, Lokhttp3/MultipartBody$Builder;

    .line 48
    .line 49
    invoke-direct {v5}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 50
    .line 51
    .line 52
    sget-object v6, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 53
    .line 54
    invoke-virtual {v5, v6}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const-string v6, "archiveFile"

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v5, v6, v1, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v4, "archiveCover"

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v4, v2, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v1, "uid"

    .line 79
    .line 80
    invoke-virtual {p1, v1, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string p2, "token"

    .line 85
    .line 86
    invoke-virtual {p1, p2, p3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string p2, "gameId"

    .line 91
    .line 92
    invoke-virtual {p1, p2, p4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string p2, "archiveName"

    .line 97
    .line 98
    invoke-virtual {p1, p2, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string p2, "archiveFileName"

    .line 103
    .line 104
    invoke-virtual {p1, p2, p6}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const-string p2, "archiveFileMd5"

    .line 109
    .line 110
    invoke-virtual {p1, p2, p7}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    new-instance p2, Lcom/join/android/app/common/http/f;

    .line 119
    .line 120
    invoke-direct {p2, p1, p8, p6}, Lcom/join/android/app/common/http/f;-><init>(Lokhttp3/RequestBody;Lcom/join/android/app/common/http/g;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    new-instance p1, Lokhttp3/Request$Builder;

    .line 124
    .line 125
    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 126
    .line 127
    .line 128
    new-instance p3, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    sget-object p4, Lcom/join/mgps/rpc/h;->z:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string p4, "/cloud/backupArchive"

    .line 139
    .line 140
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    :try_start_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    new-instance p3, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string p4, "upload File "

    .line 181
    .line 182
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p3

    .line 192
    invoke-static {p3}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    .line 196
    .line 197
    .line 198
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    if-nez p1, :cond_1

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_1
    return-object p2

    .line 203
    :catch_0
    move-exception p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    .line 206
    .line 207
    :goto_0
    return-object v3
.end method
