.class public Lcom/haima/hmcp/cloud/video/job/MoveFileJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "MoveFileJob"


# instance fields
.field private final cid:Ljava/lang/String;

.field private mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

.field private mContext:Landroid/content/Context;

.field private final mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/listeners/InnerDownloadCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->cid:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private checkSameFileName(Ljava/lang/String;Ljava/io/File;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "download-file:  checking exist file name = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/haima/hmcp/cloud/video/job/MoveFileJob$1;

    .line 24
    .line 25
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/cloud/video/job/MoveFileJob$1;-><init>(Lcom/haima/hmcp/cloud/video/job/MoveFileJob;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 p2, 0x0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    array-length v0, p1

    .line 36
    if-lez v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .line 42
    .line 43
    array-length v1, p1

    .line 44
    :goto_0
    if-ge p2, v1, :cond_0

    .line 45
    .line 46
    aget-object v2, p1, p2

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    const-string v2, ", "

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    .line 59
    .line 60
    add-int/lit8 p2, p2, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    sget-object p1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->TAG:Ljava/lang/String;

    .line 64
    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "download-file: same name files = "

    .line 71
    .line 72
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/4 p1, 0x1

    .line 86
    return p1

    .line 87
    :cond_1
    return p2
.end method

.method private saveToGallery(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)Landroid/net/Uri;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_d

    .line 3
    .line 4
    iget-boolean v1, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->isSaveToGallery:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_a

    .line 9
    .line 10
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->getFileSuffix()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_2
    iget-object p1, p1, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v1}, Lcom/haima/hmcp/utils/MediaUtil;->isSupportPicture(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "image/"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-static {v1}, Lcom/haima/hmcp/utils/MediaUtil;->isSupportVideo(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_c

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v3, "video/"

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 84
    .line 85
    :goto_0
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    .line 91
    const/16 v5, 0x1d

    .line 92
    .line 93
    if-lt v4, v5, :cond_5

    .line 94
    .line 95
    invoke-static {v1}, Lcom/haima/hmcp/utils/MediaUtil;->isSupportPicture(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const-string v4, "relative_path"

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-static {v1}, Lcom/haima/hmcp/utils/MediaUtil;->isSupportPicture(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v4, "."

    .line 139
    .line 140
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const-string v4, "_data"

    .line 151
    .line 152
    :goto_1
    iget-object v5, p0, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    new-instance v6, Landroid/content/ContentValues;

    .line 159
    .line 160
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v7, "_display_name"

    .line 164
    .line 165
    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string p1, "mime_type"

    .line 169
    .line 170
    invoke-virtual {v2}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v6, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, v3, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    if-nez p1, :cond_6

    .line 185
    .line 186
    return-object v0

    .line 187
    :cond_6
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 188
    .line 189
    new-instance v2, Ljava/io/File;

    .line 190
    .line 191
    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    .line 196
    .line 197
    const/16 p2, 0x200

    .line 198
    .line 199
    :try_start_1
    new-array p2, p2, [B

    .line 200
    .line 201
    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    :goto_2
    invoke-virtual {v1, p2}, Ljava/io/FileInputStream;->read([B)I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    const/4 v3, -0x1

    .line 210
    if-eq v2, v3, :cond_7

    .line 211
    .line 212
    const/4 v3, 0x0

    .line 213
    invoke-virtual {v0, p2, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    .line 219
    .line 220
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :catch_0
    move-exception p2

    .line 225
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 226
    .line 227
    .line 228
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 229
    .line 230
    .line 231
    goto :goto_6

    .line 232
    :catchall_0
    move-exception p1

    .line 233
    move-object v8, v1

    .line 234
    move-object v1, v0

    .line 235
    move-object v0, v8

    .line 236
    goto :goto_7

    .line 237
    :catch_1
    move-exception p2

    .line 238
    move-object v8, v1

    .line 239
    move-object v1, v0

    .line 240
    move-object v0, v8

    .line 241
    goto :goto_4

    .line 242
    :catchall_1
    move-exception p1

    .line 243
    move-object v1, v0

    .line 244
    goto :goto_7

    .line 245
    :catch_2
    move-exception p2

    .line 246
    move-object v1, v0

    .line 247
    :goto_4
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 248
    .line 249
    .line 250
    if-eqz v0, :cond_8

    .line 251
    .line 252
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :catch_3
    move-exception p2

    .line 257
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 258
    .line 259
    .line 260
    :cond_8
    :goto_5
    if-eqz v1, :cond_9

    .line 261
    .line 262
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 263
    .line 264
    .line 265
    goto :goto_6

    .line 266
    :catch_4
    move-exception p2

    .line 267
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 268
    .line 269
    .line 270
    :cond_9
    :goto_6
    return-object p1

    .line 271
    :catchall_2
    move-exception p1

    .line 272
    :goto_7
    if-eqz v0, :cond_a

    .line 273
    .line 274
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 275
    .line 276
    .line 277
    goto :goto_8

    .line 278
    :catch_5
    move-exception p2

    .line 279
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 280
    .line 281
    .line 282
    :cond_a
    :goto_8
    if-eqz v1, :cond_b

    .line 283
    .line 284
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 285
    .line 286
    .line 287
    goto :goto_9

    .line 288
    :catch_6
    move-exception p2

    .line 289
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 290
    .line 291
    .line 292
    :cond_b
    :goto_9
    throw p1

    .line 293
    :cond_c
    sget-object p1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->TAG:Ljava/lang/String;

    .line 294
    .line 295
    new-instance p2, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    const-string v2, "download-file: is not support file suffix: "

    .line 301
    .line 302
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :cond_d
    :goto_a
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "download-file: cancel temp file move job"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 10
    .line 11
    return-void
.end method

.method public galleryImagePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "_data"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v2, p2

    .line 15
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p2, 0x0

    .line 37
    :goto_0
    return-object p2
.end method

.method public run()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "download-file: move temp file success"

    .line 4
    .line 5
    const-string v3, "download-file:  "

    .line 6
    .line 7
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "download-file: start temp file move job"

    .line 10
    .line 11
    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v4, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->cid:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    iget-object v0, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v2, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 27
    .line 28
    const/16 v3, 0x3e9

    .line 29
    .line 30
    const-string v4, "cid is null"

    .line 31
    .line 32
    invoke-interface {v0, v2, v3, v4}, Lcom/haima/hmcp/listeners/InnerDownloadCallback;->onMovedFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :cond_1
    iget-object v4, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 37
    .line 38
    iget-object v4, v4, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->tempPath:Ljava/lang/String;

    .line 39
    .line 40
    const-string v5, "/"

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-nez v6, :cond_2

    .line 47
    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    :cond_2
    iget-object v6, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 66
    .line 67
    iget-object v7, v6, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->tempFileName:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v6, v6, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 70
    .line 71
    invoke-virtual {v6}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_3

    .line 80
    .line 81
    iget-object v6, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 82
    .line 83
    iget-object v6, v6, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->defaultPath:Ljava/lang/String;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    iget-object v6, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 87
    .line 88
    iget-object v6, v6, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 89
    .line 90
    invoke-virtual {v6}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-nez v5, :cond_4

    .line 99
    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v8, "download-file: move file job init: source file="

    .line 123
    .line 124
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v8, ", dest file="

    .line 134
    .line 135
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-static {v0, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    new-instance v5, Ljava/io/File;

    .line 152
    .line 153
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    const-string v9, "-"

    .line 161
    .line 162
    if-eqz v8, :cond_5

    .line 163
    .line 164
    invoke-direct {v1, v7, v5}, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->checkSameFileName(Ljava/lang/String;Ljava/io/File;)Z

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-eqz v8, :cond_6

    .line 169
    .line 170
    new-instance v8, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v10, ""

    .line 176
    .line 177
    const-string v11, ".tmp"

    .line 178
    .line 179
    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 190
    .line 191
    .line 192
    move-result-wide v12

    .line 193
    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    new-instance v10, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    const-string v11, "download-file:  has same name file and rename: "

    .line 209
    .line 210
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    invoke-static {v0, v10}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 225
    .line 226
    .line 227
    :cond_6
    move-object v8, v7

    .line 228
    :goto_1
    const-string v10, "download-file: ready move temp file"

    .line 229
    .line 230
    invoke-static {v0, v10}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    new-instance v10, Ljava/io/File;

    .line 234
    .line 235
    new-instance v11, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 254
    .line 255
    .line 256
    move-result v11

    .line 257
    const/16 v12, 0x3eb

    .line 258
    .line 259
    if-nez v11, :cond_8

    .line 260
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v2, " is not exists when move tmp file"

    .line 270
    .line 271
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    iget-object v2, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 279
    .line 280
    if-eqz v2, :cond_7

    .line 281
    .line 282
    iget-object v3, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 283
    .line 284
    invoke-interface {v2, v3, v12, v0}, Lcom/haima/hmcp/listeners/InnerDownloadCallback;->onMovedFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 285
    .line 286
    .line 287
    :cond_7
    return-void

    .line 288
    :cond_8
    iget-object v11, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 289
    .line 290
    iget-object v11, v11, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 291
    .line 292
    invoke-virtual {v11}, Lcom/haima/hmcp/beans/CloudFile;->getSize()J

    .line 293
    .line 294
    .line 295
    move-result-wide v13

    .line 296
    invoke-virtual {v10}, Ljava/io/File;->length()J

    .line 297
    .line 298
    .line 299
    move-result-wide v15

    .line 300
    cmp-long v11, v13, v15

    .line 301
    .line 302
    if-eqz v11, :cond_a

    .line 303
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v2, " length error, length = "

    .line 313
    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v10}, Ljava/io/File;->length()J

    .line 318
    .line 319
    .line 320
    move-result-wide v2

    .line 321
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iget-object v2, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 329
    .line 330
    if-eqz v2, :cond_9

    .line 331
    .line 332
    iget-object v3, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 333
    .line 334
    invoke-interface {v2, v3, v12, v0}, Lcom/haima/hmcp/listeners/InnerDownloadCallback;->onMovedFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :cond_9
    return-void

    .line 338
    :cond_a
    new-instance v11, Ljava/io/File;

    .line 339
    .line 340
    new-instance v13, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v13

    .line 355
    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    new-instance v13, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    .line 363
    const-string v14, "download-file: move temp file, source="

    .line 364
    .line 365
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .line 385
    .line 386
    const-string v13, "download-file: move temp file, dest="

    .line 387
    .line 388
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    if-nez v4, :cond_c

    .line 409
    .line 410
    :try_start_0
    const-string v4, "download-file: create dest file"

    .line 411
    .line 412
    invoke-static {v0, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .line 417
    .line 418
    goto :goto_2

    .line 419
    :catch_0
    move-exception v0

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .line 424
    .line 425
    const-string v3, "dest file create fail, cause: "

    .line 426
    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    iget-object v2, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 442
    .line 443
    if-eqz v2, :cond_b

    .line 444
    .line 445
    iget-object v3, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 446
    .line 447
    invoke-interface {v2, v3, v12, v0}, Lcom/haima/hmcp/listeners/InnerDownloadCallback;->onMovedFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 448
    .line 449
    .line 450
    :cond_b
    return-void

    .line 451
    :cond_c
    :goto_2
    const/4 v4, 0x0

    .line 452
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    .line 453
    .line 454
    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 458
    .line 459
    .line 460
    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 461
    :try_start_2
    new-instance v8, Ljava/io/FileOutputStream;

    .line 462
    .line 463
    invoke-direct {v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    const-wide/16 v15, 0x0

    .line 471
    .line 472
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    .line 473
    .line 474
    .line 475
    move-result-wide v17

    .line 476
    move-object v13, v4

    .line 477
    move-object v14, v6

    .line 478
    invoke-virtual/range {v13 .. v18}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 479
    .line 480
    .line 481
    :try_start_3
    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 485
    .line 486
    .line 487
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 488
    .line 489
    .line 490
    goto/16 :goto_7

    .line 491
    .line 492
    :catch_1
    move-exception v0

    .line 493
    sget-object v2, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->TAG:Ljava/lang/String;

    .line 494
    .line 495
    new-instance v4, Ljava/lang/StringBuilder;

    .line 496
    .line 497
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .line 499
    .line 500
    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    goto :goto_7

    .line 518
    :catchall_0
    move-exception v0

    .line 519
    move-object v5, v0

    .line 520
    move-object/from16 v19, v6

    .line 521
    .line 522
    move-object v6, v4

    .line 523
    move-object/from16 v4, v19

    .line 524
    .line 525
    goto/16 :goto_a

    .line 526
    .line 527
    :catch_2
    move-exception v0

    .line 528
    move-object/from16 v19, v6

    .line 529
    .line 530
    move-object v6, v4

    .line 531
    move-object/from16 v4, v19

    .line 532
    .line 533
    goto :goto_4

    .line 534
    :catchall_1
    move-exception v0

    .line 535
    move-object v5, v0

    .line 536
    move-object v6, v4

    .line 537
    goto/16 :goto_a

    .line 538
    .line 539
    :catch_3
    move-exception v0

    .line 540
    move-object v6, v4

    .line 541
    :goto_4
    :try_start_4
    sget-object v8, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->TAG:Ljava/lang/String;

    .line 542
    .line 543
    new-instance v13, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-static {v8, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 563
    .line 564
    .line 565
    if-eqz v4, :cond_d

    .line 566
    .line 567
    :try_start_5
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 568
    .line 569
    .line 570
    goto :goto_5

    .line 571
    :catch_4
    move-exception v0

    .line 572
    goto :goto_6

    .line 573
    :cond_d
    :goto_5
    if-eqz v6, :cond_e

    .line 574
    .line 575
    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 576
    .line 577
    .line 578
    :cond_e
    invoke-static {v8, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 579
    .line 580
    .line 581
    goto :goto_7

    .line 582
    :goto_6
    sget-object v2, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->TAG:Ljava/lang/String;

    .line 583
    .line 584
    new-instance v4, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .line 588
    .line 589
    goto :goto_3

    .line 590
    :goto_7
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 591
    .line 592
    .line 593
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->TAG:Ljava/lang/String;

    .line 594
    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    .line 596
    .line 597
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    .line 599
    .line 600
    const-string v3, "download-file: delete source file: "

    .line 601
    .line 602
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    iget-object v2, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 616
    .line 617
    iget-object v2, v2, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 618
    .line 619
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    new-instance v3, Ljava/lang/StringBuilder;

    .line 624
    .line 625
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 626
    .line 627
    .line 628
    const-string v4, "download-file: ready rename to dest temp file, rename: "

    .line 629
    .line 630
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    iget-object v3, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 644
    .line 645
    iget-object v3, v3, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 646
    .line 647
    invoke-virtual {v3}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    invoke-direct {v1, v3, v5}, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->checkSameFileName(Ljava/lang/String;Ljava/io/File;)Z

    .line 652
    .line 653
    .line 654
    move-result v3

    .line 655
    const/4 v4, 0x0

    .line 656
    const/4 v5, -0x1

    .line 657
    if-eqz v3, :cond_11

    .line 658
    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    .line 660
    .line 661
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 662
    .line 663
    .line 664
    const-string v6, "download-file: the "

    .line 665
    .line 666
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    const-string v6, " has already exist"

    .line 673
    .line 674
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    const-string v3, "."

    .line 685
    .line 686
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 687
    .line 688
    .line 689
    move-result v3

    .line 690
    if-ne v3, v5, :cond_10

    .line 691
    .line 692
    new-instance v0, Ljava/lang/StringBuffer;

    .line 693
    .line 694
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 695
    .line 696
    .line 697
    const-string v2, "file suffix error; "

    .line 698
    .line 699
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 700
    .line 701
    .line 702
    iget-object v2, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 703
    .line 704
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 705
    .line 706
    .line 707
    iget-object v2, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 708
    .line 709
    if-eqz v2, :cond_f

    .line 710
    .line 711
    iget-object v3, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 712
    .line 713
    const/16 v4, 0x3ea

    .line 714
    .line 715
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    invoke-interface {v2, v3, v4, v0}, Lcom/haima/hmcp/listeners/InnerDownloadCallback;->onMovedFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 720
    .line 721
    .line 722
    :cond_f
    return-void

    .line 723
    :cond_10
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v6

    .line 727
    new-instance v7, Ljava/lang/StringBuilder;

    .line 728
    .line 729
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 743
    .line 744
    .line 745
    move-result-wide v2

    .line 746
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    new-instance v3, Ljava/lang/StringBuilder;

    .line 757
    .line 758
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    .line 760
    .line 761
    const-string v6, "download-file: the new name: "

    .line 762
    .line 763
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v3

    .line 773
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 777
    .line 778
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 779
    .line 780
    .line 781
    iget-object v6, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 782
    .line 783
    iget-object v6, v6, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 784
    .line 785
    invoke-virtual {v6}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v6

    .line 789
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v3

    .line 799
    new-instance v6, Ljava/lang/StringBuilder;

    .line 800
    .line 801
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .line 803
    .line 804
    const-string v7, "download-file: the final path and name: "

    .line 805
    .line 806
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v6

    .line 816
    invoke-static {v0, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    new-instance v6, Ljava/io/File;

    .line 820
    .line 821
    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 822
    .line 823
    .line 824
    invoke-virtual {v11, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 825
    .line 826
    .line 827
    move-result v6

    .line 828
    if-eqz v6, :cond_15

    .line 829
    .line 830
    iget-object v6, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 831
    .line 832
    invoke-direct {v1, v6, v3}, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->saveToGallery(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Ljava/lang/String;)Landroid/net/Uri;

    .line 833
    .line 834
    .line 835
    move-result-object v3

    .line 836
    if-eqz v3, :cond_14

    .line 837
    .line 838
    iget-object v6, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mContext:Landroid/content/Context;

    .line 839
    .line 840
    invoke-virtual {v1, v6, v3}, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->galleryImagePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 845
    .line 846
    .line 847
    move-result v6

    .line 848
    if-nez v6, :cond_13

    .line 849
    .line 850
    new-instance v6, Ljava/lang/StringBuilder;

    .line 851
    .line 852
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 853
    .line 854
    .line 855
    const-string v7, "download-file: gallery save path: "

    .line 856
    .line 857
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v6

    .line 867
    invoke-static {v0, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    new-instance v6, Ljava/lang/StringBuilder;

    .line 871
    .line 872
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    .line 874
    .line 875
    const-string v7, "download-file: InnerCloudFile: "

    .line 876
    .line 877
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    iget-object v7, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 881
    .line 882
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v6

    .line 889
    invoke-static {v0, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    iget-object v0, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 893
    .line 894
    iget-object v0, v0, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 895
    .line 896
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 901
    .line 902
    .line 903
    move-result v0

    .line 904
    if-eq v0, v5, :cond_12

    .line 905
    .line 906
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 911
    .line 912
    .line 913
    move-result v3

    .line 914
    if-nez v3, :cond_12

    .line 915
    .line 916
    iget-object v3, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 917
    .line 918
    iget-object v3, v3, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 919
    .line 920
    invoke-virtual {v3, v0}, Lcom/haima/hmcp/beans/CloudFile;->setPath(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    :cond_12
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 924
    .line 925
    .line 926
    goto :goto_8

    .line 927
    :cond_13
    const-string v3, "download-file: gallery save path null"

    .line 928
    .line 929
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    .line 931
    .line 932
    :cond_14
    :goto_8
    iget-object v0, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 933
    .line 934
    iget-object v0, v0, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 935
    .line 936
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/beans/CloudFile;->setDownloadedName(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    iget-object v0, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 940
    .line 941
    if-eqz v0, :cond_16

    .line 942
    .line 943
    iget-object v2, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 944
    .line 945
    invoke-interface {v0, v2}, Lcom/haima/hmcp/listeners/InnerDownloadCallback;->onMovedSuccess(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;)V

    .line 946
    .line 947
    .line 948
    goto :goto_9

    .line 949
    :cond_15
    const-string v2, "download-file: dest temp file rename fail"

    .line 950
    .line 951
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    new-instance v0, Ljava/lang/StringBuffer;

    .line 955
    .line 956
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 957
    .line 958
    .line 959
    const-string v2, "rename fail; "

    .line 960
    .line 961
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 962
    .line 963
    .line 964
    iget-object v2, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 965
    .line 966
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 967
    .line 968
    .line 969
    const-string v2, "; "

    .line 970
    .line 971
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 972
    .line 973
    .line 974
    const-string v2, "destCanWrite="

    .line 975
    .line 976
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 977
    .line 978
    .line 979
    invoke-virtual {v11}, Ljava/io/File;->canWrite()Z

    .line 980
    .line 981
    .line 982
    move-result v2

    .line 983
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 984
    .line 985
    .line 986
    const-string v2, ", "

    .line 987
    .line 988
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 989
    .line 990
    .line 991
    const-string v2, "destExists="

    .line 992
    .line 993
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 994
    .line 995
    .line 996
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 997
    .line 998
    .line 999
    move-result v2

    .line 1000
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 1001
    .line 1002
    .line 1003
    iget-object v2, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mCallback:Lcom/haima/hmcp/listeners/InnerDownloadCallback;

    .line 1004
    .line 1005
    if-eqz v2, :cond_16

    .line 1006
    .line 1007
    iget-object v3, v1, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->mInnerCloudFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 1008
    .line 1009
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    invoke-interface {v2, v3, v12, v0}, Lcom/haima/hmcp/listeners/InnerDownloadCallback;->onMovedFail(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;ILjava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    :cond_16
    :goto_9
    return-void

    .line 1017
    :catchall_2
    move-exception v0

    .line 1018
    move-object v5, v0

    .line 1019
    :goto_a
    if-eqz v4, :cond_17

    .line 1020
    .line 1021
    :try_start_6
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 1022
    .line 1023
    .line 1024
    goto :goto_b

    .line 1025
    :catch_5
    move-exception v0

    .line 1026
    goto :goto_c

    .line 1027
    :cond_17
    :goto_b
    if-eqz v6, :cond_18

    .line 1028
    .line 1029
    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 1030
    .line 1031
    .line 1032
    :cond_18
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->TAG:Ljava/lang/String;

    .line 1033
    .line 1034
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1035
    .line 1036
    .line 1037
    goto :goto_d

    .line 1038
    :goto_c
    sget-object v2, Lcom/haima/hmcp/cloud/video/job/MoveFileJob;->TAG:Ljava/lang/String;

    .line 1039
    .line 1040
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    .line 1048
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    .line 1061
    .line 1062
    :goto_d
    throw v5
.end method
