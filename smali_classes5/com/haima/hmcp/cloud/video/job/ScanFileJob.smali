.class public Lcom/haima/hmcp/cloud/video/job/ScanFileJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/cloud/video/job/ScanFileJob$ScanFileJobCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScanFileJob"


# instance fields
.field private cancel:Z

.field private mCid:Ljava/lang/String;

.field private mDownloadingFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

.field private mPath:Ljava/lang/String;

.field private mScanFileCallback:Lcom/haima/hmcp/cloud/video/job/ScanFileJob$ScanFileJobCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;Lcom/haima/hmcp/cloud/video/job/ScanFileJob$ScanFileJobCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->mDownloadingFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->mScanFileCallback:Lcom/haima/hmcp/cloud/video/job/ScanFileJob$ScanFileJobCallback;

    .line 7
    .line 8
    return-void
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_2

    .line 17
    .line 18
    aget-object v3, v0, v2

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, v3}, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->deleteFile(Ljava/io/File;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 31
    .line 32
    .line 33
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    :cond_3
    :goto_2
    return-void
.end method

.method private getDownloadMaps(Ljava/lang/String;I)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    .line 15
    .line 16
    new-instance v5, Ljava/io/InputStreamReader;

    .line 17
    .line 18
    new-instance v6, Ljava/io/FileInputStream;

    .line 19
    .line 20
    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "UTF-8"

    .line 24
    .line 25
    invoke-direct {v5, v6, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    .line 30
    .line 31
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 42
    .line 43
    .line 44
    goto :goto_4

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    move-object v3, v4

    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :catch_0
    move-exception p1

    .line 50
    move-object v3, v4

    .line 51
    goto :goto_1

    .line 52
    :catch_1
    move-exception p1

    .line 53
    move-object v3, v4

    .line 54
    goto :goto_2

    .line 55
    :catch_2
    move-exception p1

    .line 56
    move-object v3, v4

    .line 57
    goto :goto_3

    .line 58
    :catchall_1
    move-exception p1

    .line 59
    goto/16 :goto_6

    .line 60
    .line 61
    :catch_3
    move-exception p1

    .line 62
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    .line 64
    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 68
    .line 69
    .line 70
    goto :goto_4

    .line 71
    :catch_4
    move-exception p1

    .line 72
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 73
    .line 74
    .line 75
    if-eqz v3, :cond_1

    .line 76
    .line 77
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 78
    .line 79
    .line 80
    goto :goto_4

    .line 81
    :catch_5
    move-exception p1

    .line 82
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 83
    .line 84
    .line 85
    if-eqz v3, :cond_1

    .line 86
    .line 87
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 88
    .line 89
    .line 90
    goto :goto_4

    .line 91
    :catch_6
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_6

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_3

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_3
    :try_start_9
    new-instance v4, Lorg/json/JSONObject;

    .line 126
    .line 127
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance v3, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 131
    .line 132
    invoke-direct {v3}, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v5, "tmp_file_name"

    .line 136
    .line 137
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    iput-object v5, v3, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->tempFileName:Ljava/lang/String;

    .line 142
    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    sget-object v6, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->DOWNLOAD_TEMP_FILE_PATH:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object v6, p0, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->mCid:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    iput-object v5, v3, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->tempPath:Ljava/lang/String;

    .line 163
    .line 164
    new-instance v5, Lcom/haima/hmcp/beans/CloudFile;

    .line 165
    .line 166
    invoke-direct {v5}, Lcom/haima/hmcp/beans/CloudFile;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v6, "data"

    .line 170
    .line 171
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    if-eqz v6, :cond_4

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_4
    new-instance v6, Lorg/json/JSONObject;

    .line 183
    .line 184
    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string v4, "name"

    .line 188
    .line 189
    invoke-virtual {v6, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {v5, v4}, Lcom/haima/hmcp/beans/CloudFile;->setName(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string v4, "path"

    .line 197
    .line 198
    invoke-virtual {v6, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-virtual {v5, v4}, Lcom/haima/hmcp/beans/CloudFile;->setPath(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string v4, "cloudPath"

    .line 206
    .line 207
    invoke-virtual {v6, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v5, v4}, Lcom/haima/hmcp/beans/CloudFile;->setCloudPath(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const-string v4, "size"

    .line 215
    .line 216
    const-wide/16 v7, 0x0

    .line 217
    .line 218
    invoke-virtual {v6, v4, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 219
    .line 220
    .line 221
    move-result-wide v7

    .line 222
    invoke-virtual {v5, v7, v8}, Lcom/haima/hmcp/beans/CloudFile;->setSize(J)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_8

    .line 223
    .line 224
    .line 225
    :try_start_a
    const-string v4, "duration"

    .line 226
    .line 227
    invoke-virtual {v6, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 232
    .line 233
    .line 234
    move-result-wide v7

    .line 235
    invoke-virtual {v5, v7, v8}, Lcom/haima/hmcp/beans/CloudFile;->setVideoDuration(D)V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_8

    .line 236
    .line 237
    .line 238
    :catch_7
    :try_start_b
    const-string v4, "type"

    .line 239
    .line 240
    invoke-virtual {v6, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    invoke-virtual {v5, v4}, Lcom/haima/hmcp/beans/CloudFile;->setFileType(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iput-object v5, v3, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 248
    .line 249
    const/4 v4, 0x1

    .line 250
    if-ne p2, v4, :cond_5

    .line 251
    .line 252
    invoke-virtual {v5}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    goto/16 :goto_5

    .line 260
    .line 261
    :cond_5
    iget-object v4, v3, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->tempFileName:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_8

    .line 264
    .line 265
    .line 266
    goto/16 :goto_5

    .line 267
    .line 268
    :catch_8
    move-exception v3

    .line 269
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_5

    .line 273
    .line 274
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 275
    .line 276
    .line 277
    return-object v1

    .line 278
    :goto_6
    if-eqz v3, :cond_7

    .line 279
    .line 280
    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 281
    .line 282
    .line 283
    goto :goto_7

    .line 284
    :catch_9
    move-exception p2

    .line 285
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    .line 287
    .line 288
    :cond_7
    :goto_7
    throw p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->cancel:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->mScanFileCallback:Lcom/haima/hmcp/cloud/video/job/ScanFileJob$ScanFileJobCallback;

    .line 6
    .line 7
    return-void
.end method

.method public run()V
    .locals 13

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "download-file: scan file job is running"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/io/File;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->mPath:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "download-file: Scan file finish, "

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->mPath:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, " is not exists"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->mScanFileCallback:Lcom/haima/hmcp/cloud/video/job/ScanFileJob$ScanFileJobCallback;

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-interface {v0, v1}, Lcom/haima/hmcp/cloud/video/job/ScanFileJob$ScanFileJobCallback;->onDone(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_c

    .line 66
    .line 67
    array-length v3, v2

    .line 68
    if-nez v3, :cond_2

    .line 69
    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :cond_2
    array-length v0, v2

    .line 73
    const/4 v3, 0x0

    .line 74
    const/4 v4, 0x0

    .line 75
    :goto_0
    if-ge v4, v0, :cond_a

    .line 76
    .line 77
    aget-object v5, v2, v4

    .line 78
    .line 79
    iget-boolean v6, p0, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->cancel:Z

    .line 80
    .line 81
    if-eqz v6, :cond_3

    .line 82
    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-nez v6, :cond_4

    .line 90
    .line 91
    goto/16 :goto_3

    .line 92
    .line 93
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    iget-object v7, p0, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->mCid:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-nez v6, :cond_5

    .line 104
    .line 105
    sget-object v6, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->TAG:Ljava/lang/String;

    .line 106
    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v8, "download-file: scan job, delete file: "

    .line 113
    .line 114
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-static {v6, v7}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {p0, v5}, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->deleteFile(Ljava/io/File;)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_3

    .line 135
    .line 136
    :cond_5
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v7, "file-map"

    .line 154
    .line 155
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    new-instance v7, Ljava/io/File;

    .line 163
    .line 164
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-nez v7, :cond_6

    .line 172
    .line 173
    sget-object v6, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->TAG:Ljava/lang/String;

    .line 174
    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v8, "download-file: scan job, no file-map in "

    .line 181
    .line 182
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-static {v6, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_6
    invoke-direct {p0, v6, v3}, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->getDownloadMaps(Ljava/lang/String;I)Ljava/util/Map;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    array-length v7, v5

    .line 209
    const/4 v8, 0x0

    .line 210
    :goto_1
    if-ge v8, v7, :cond_9

    .line 211
    .line 212
    aget-object v9, v5, v8

    .line 213
    .line 214
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    check-cast v10, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 223
    .line 224
    if-eqz v10, :cond_8

    .line 225
    .line 226
    iget-object v11, p0, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->mDownloadingFile:Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;

    .line 227
    .line 228
    if-eqz v11, :cond_7

    .line 229
    .line 230
    iget-object v11, v11, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->tempFileName:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    if-eqz v9, :cond_7

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_7
    sget-object v9, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->TAG:Ljava/lang/String;

    .line 244
    .line 245
    new-instance v11, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    const-string v12, "download-file: scan job, find file, name: "

    .line 251
    .line 252
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    iget-object v12, v10, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->tempFileName:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v11

    .line 264
    invoke-static {v9, v11}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object v9, v10, Lcom/haima/hmcp/cloud/video/bean/InnerCloudFile;->cloudFile:Lcom/haima/hmcp/beans/CloudFile;

    .line 268
    .line 269
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .line 271
    .line 272
    :cond_8
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 273
    .line 274
    goto :goto_1

    .line 275
    :catch_0
    move-exception v5

    .line 276
    sget-object v6, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->TAG:Ljava/lang/String;

    .line 277
    .line 278
    new-instance v7, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    const-string v8, "download-file: scan file exception: "

    .line 284
    .line 285
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    invoke-static {v6, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :cond_9
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :cond_a
    :goto_4
    sget-object v0, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->TAG:Ljava/lang/String;

    .line 307
    .line 308
    const-string v2, "download-file: scan file job finish"

    .line 309
    .line 310
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->mScanFileCallback:Lcom/haima/hmcp/cloud/video/job/ScanFileJob$ScanFileJobCallback;

    .line 314
    .line 315
    if-eqz v0, :cond_b

    .line 316
    .line 317
    invoke-interface {v0, v1}, Lcom/haima/hmcp/cloud/video/job/ScanFileJob$ScanFileJobCallback;->onDone(Ljava/util/List;)V

    .line 318
    .line 319
    .line 320
    :cond_b
    return-void

    .line 321
    :cond_c
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .line 325
    .line 326
    const-string v3, "download-file: Scan file finish, no file in "

    .line 327
    .line 328
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    iget-object v3, p0, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->mPath:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->mScanFileCallback:Lcom/haima/hmcp/cloud/video/job/ScanFileJob$ScanFileJobCallback;

    .line 344
    .line 345
    if-eqz v0, :cond_d

    .line 346
    .line 347
    invoke-interface {v0, v1}, Lcom/haima/hmcp/cloud/video/job/ScanFileJob$ScanFileJobCallback;->onDone(Ljava/util/List;)V

    .line 348
    .line 349
    .line 350
    :cond_d
    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->mCid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScanPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/job/ScanFileJob;->mPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
