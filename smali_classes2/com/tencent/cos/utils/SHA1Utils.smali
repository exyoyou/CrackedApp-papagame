.class public Lcom/tencent/cos/utils/SHA1Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getFileSha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p0, "SHA-1"

    .line 2
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    const/high16 v2, 0x10000

    new-array v2, v2, [B

    .line 3
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 4
    invoke-virtual {p0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/utils/StringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object p0

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v1, v0

    .line 8
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 9
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_3
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_2

    .line 11
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :cond_2
    :goto_5
    throw p0
.end method

.method public static getFileSha1([B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 14
    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "SHA-1"

    .line 15
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 16
    array-length v2, p0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 17
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/cos/utils/StringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getSlicePartSha1(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/high16 v0, 0x100000

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    if-le v1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    new-instance v1, Lorg/json/JSONArray;

    .line 10
    .line 11
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :try_start_0
    new-instance v3, Lcom/tencent/cos/utils/CommonSha1Utils;

    .line 16
    .line 17
    invoke-direct {v3}, Lcom/tencent/cos/utils/CommonSha1Utils;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/tencent/cos/utils/CommonSha1Utils;->init()V

    .line 21
    .line 22
    .line 23
    invoke-static/range {p0 .. p0}, Lcom/tencent/cos/utils/FileUtils;->getFileInputStream(Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static/range {p0 .. p0}, Lcom/tencent/cos/utils/FileUtils;->getFileLength(Ljava/lang/String;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    add-int/lit8 v6, v0, -0x1

    .line 32
    .line 33
    int-to-long v6, v6

    .line 34
    add-long/2addr v6, v4

    .line 35
    int-to-long v8, v0

    .line 36
    div-long/2addr v6, v8

    .line 37
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    const/4 v8, 0x0

    .line 46
    :goto_1
    add-int/lit8 v9, v6, -0x1

    .line 47
    .line 48
    const-string v10, "datasha"

    .line 49
    .line 50
    const-string v11, "datalen"

    .line 51
    .line 52
    const-string v12, "offset"

    .line 53
    .line 54
    const/16 v13, 0x400

    .line 55
    .line 56
    if-ge v8, v9, :cond_3

    .line 57
    .line 58
    mul-int v9, v8, v0

    .line 59
    .line 60
    int-to-long v14, v9

    .line 61
    const/4 v9, 0x0

    .line 62
    :goto_2
    if-ge v9, v0, :cond_2

    .line 63
    .line 64
    sub-int v7, v0, v9

    .line 65
    .line 66
    if-le v7, v13, :cond_1

    .line 67
    .line 68
    const/16 v7, 0x400

    .line 69
    .line 70
    :cond_1
    :try_start_1
    new-array v13, v7, [B

    .line 71
    .line 72
    move/from16 v16, v6

    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    invoke-virtual {v2, v13, v6, v7}, Ljava/io/InputStream;->read([BII)I

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v13}, Lcom/tencent/cos/utils/CommonSha1Utils;->update([B)V

    .line 79
    .line 80
    .line 81
    add-int/2addr v9, v7

    .line 82
    move/from16 v6, v16

    .line 83
    .line 84
    const/16 v13, 0x400

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    move/from16 v16, v6

    .line 88
    .line 89
    new-instance v6, Lorg/json/JSONObject;

    .line 90
    .line 91
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .line 93
    .line 94
    sget-object v7, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    .line 95
    .line 96
    iget-object v7, v7, Lcom/tencent/cos/common/BodyKey;->uploadParts:Lcom/tencent/cos/common/UploadParts;

    .line 97
    .line 98
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    sget-object v7, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    .line 105
    .line 106
    iget-object v7, v7, Lcom/tencent/cos/common/BodyKey;->uploadParts:Lcom/tencent/cos/common/UploadParts;

    .line 107
    .line 108
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    sget-object v7, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    .line 115
    .line 116
    iget-object v7, v7, Lcom/tencent/cos/common/BodyKey;->uploadParts:Lcom/tencent/cos/common/UploadParts;

    .line 117
    .line 118
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/tencent/cos/utils/CommonSha1Utils;->dumpTempState()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v8, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 129
    .line 130
    .line 131
    add-int/lit8 v8, v8, 0x1

    .line 132
    .line 133
    move/from16 v6, v16

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    mul-int v0, v0, v9

    .line 137
    .line 138
    int-to-long v6, v0

    .line 139
    sub-long/2addr v4, v6

    .line 140
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    const/4 v4, 0x0

    .line 149
    :goto_3
    if-ge v4, v0, :cond_5

    .line 150
    .line 151
    sub-int v5, v0, v4

    .line 152
    .line 153
    const/16 v8, 0x400

    .line 154
    .line 155
    if-le v5, v8, :cond_4

    .line 156
    .line 157
    const/16 v5, 0x400

    .line 158
    .line 159
    :cond_4
    new-array v13, v5, [B

    .line 160
    .line 161
    const/4 v14, 0x0

    .line 162
    invoke-virtual {v2, v13, v14, v5}, Ljava/io/InputStream;->read([BII)I

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v13}, Lcom/tencent/cos/utils/CommonSha1Utils;->update([B)V

    .line 166
    .line 167
    .line 168
    add-int/2addr v4, v5

    .line 169
    goto :goto_3

    .line 170
    :cond_5
    invoke-virtual {v3}, Lcom/tencent/cos/utils/CommonSha1Utils;->finish()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Lcom/tencent/cos/utils/CommonSha1Utils;->digout()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    move-object/from16 v5, p2

    .line 178
    .line 179
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    new-instance v0, Lorg/json/JSONObject;

    .line 183
    .line 184
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 185
    .line 186
    .line 187
    sget-object v5, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    .line 188
    .line 189
    iget-object v5, v5, Lcom/tencent/cos/common/BodyKey;->uploadParts:Lcom/tencent/cos/common/UploadParts;

    .line 190
    .line 191
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v12, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 195
    .line 196
    .line 197
    sget-object v5, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    .line 198
    .line 199
    iget-object v5, v5, Lcom/tencent/cos/common/BodyKey;->uploadParts:Lcom/tencent/cos/common/UploadParts;

    .line 200
    .line 201
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 205
    .line 206
    .line 207
    sget-object v4, Lcom/tencent/cos/common/COSHttpRequstBody;->KEY:Lcom/tencent/cos/common/BodyKey;

    .line 208
    .line 209
    iget-object v4, v4, Lcom/tencent/cos/common/BodyKey;->uploadParts:Lcom/tencent/cos/common/UploadParts;

    .line 210
    .line 211
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3}, Lcom/tencent/cos/utils/CommonSha1Utils;->digout()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v0, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v9, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    .line 223
    .line 224
    invoke-static {v2}, Lcom/tencent/cos/utils/FileUtils;->closeFileStream(Ljava/io/InputStream;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    return-object v0

    .line 232
    :catchall_0
    move-exception v0

    .line 233
    goto :goto_4

    .line 234
    :catch_0
    move-exception v0

    .line 235
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 236
    .line 237
    .line 238
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    :goto_4
    invoke-static {v2}, Lcom/tencent/cos/utils/FileUtils;->closeFileStream(Ljava/io/InputStream;)V

    .line 240
    .line 241
    .line 242
    throw v0
.end method
