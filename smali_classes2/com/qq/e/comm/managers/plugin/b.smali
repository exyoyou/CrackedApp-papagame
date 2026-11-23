.class Lcom/qq/e/comm/managers/plugin/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/qq/e/comm/managers/plugin/h;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {}, Lcom/qq/e/comm/managers/plugin/h;->g()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ltz v3, :cond_8

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/qq/e/comm/managers/plugin/h;->a()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/qq/e/comm/managers/plugin/h;->g()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    sget-object v3, Lcom/qq/e/comm/constants/Sig;->ASSET_PLUGIN_SIG:Ljava/lang/String;

    .line 53
    .line 54
    if-nez v3, :cond_0

    .line 55
    .line 56
    const-string v3, ""

    .line 57
    .line 58
    :cond_0
    invoke-static {p0}, Lcom/qq/e/comm/managers/plugin/h;->c(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/qq/e/comm/managers/status/SDKStatus;->getBuildInPluginVersion()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v5, "#####"

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v3, p2}, Lcom/qq/e/comm/managers/plugin/h;->e(Ljava/lang/String;Ljava/io/File;)V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginXorKey()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_1

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-static {p2, p1}, Lcom/qq/e/comm/managers/plugin/h;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    move-object v0, v1

    .line 107
    goto :goto_3

    .line 108
    :cond_1
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 109
    .line 110
    .line 111
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 112
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    const/4 v2, 0x1

    .line 117
    if-nez v0, :cond_2

    .line 118
    .line 119
    invoke-virtual {p1, v2}, Ljava/io/File;->setWritable(Z)Z

    .line 120
    .line 121
    .line 122
    :cond_2
    new-instance v0, Ljava/io/FileOutputStream;

    .line 123
    .line 124
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 125
    .line 126
    .line 127
    :try_start_2
    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getAssetPluginXorKey()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v3, "UTF-8"

    .line 132
    .line 133
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    const/16 v3, 0x400

    .line 142
    .line 143
    new-array v3, v3, [B

    .line 144
    .line 145
    array-length v4, v1

    .line 146
    const/4 v5, 0x0

    .line 147
    const/4 v6, 0x0

    .line 148
    const/4 v7, 0x0

    .line 149
    :goto_0
    invoke-virtual {p2, v3}, Ljava/io/InputStream;->read([B)I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-lez v8, :cond_5

    .line 154
    .line 155
    const/4 v9, 0x0

    .line 156
    :goto_1
    if-ge v9, v8, :cond_4

    .line 157
    .line 158
    add-int/lit8 v10, v7, 0x1

    .line 159
    .line 160
    const/16 v11, 0x40

    .line 161
    .line 162
    if-ge v7, v11, :cond_3

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_3
    aget-byte v7, v3, v9

    .line 166
    .line 167
    add-int/lit8 v11, v6, 0x1

    .line 168
    .line 169
    rem-int/2addr v6, v4

    .line 170
    aget-byte v6, v1, v6

    .line 171
    .line 172
    xor-int/2addr v6, v7

    .line 173
    int-to-byte v6, v6

    .line 174
    aput-byte v6, v3, v9

    .line 175
    .line 176
    move v6, v11

    .line 177
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 178
    .line 179
    move v7, v10

    .line 180
    goto :goto_1

    .line 181
    :cond_4
    invoke-virtual {v0, v3, v5, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_5
    move-object v1, p2

    .line 186
    const/4 p2, 0x1

    .line 187
    :goto_3
    if-eqz p2, :cond_6

    .line 188
    .line 189
    :try_start_3
    invoke-static {p1, p0}, Lcom/qq/e/comm/managers/plugin/h;->f(Ljava/io/File;Landroid/content/Context;)Z

    .line 190
    .line 191
    .line 192
    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    goto :goto_4

    .line 194
    :catchall_0
    move-exception p0

    .line 195
    goto :goto_7

    .line 196
    :cond_6
    :goto_4
    invoke-static {v1}, Lcom/qq/e/comm/managers/plugin/b;->b(Ljava/io/Closeable;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/b;->b(Ljava/io/Closeable;)V

    .line 200
    .line 201
    .line 202
    if-eqz p2, :cond_7

    .line 203
    .line 204
    return-void

    .line 205
    :cond_7
    new-instance p0, Ljava/lang/Exception;

    .line 206
    .line 207
    const-string p1, "Plugin prepare failed"

    .line 208
    .line 209
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p0

    .line 213
    :catchall_1
    move-exception p0

    .line 214
    goto :goto_8

    .line 215
    :catchall_2
    move-exception p0

    .line 216
    move-object v0, v1

    .line 217
    move-object v1, p2

    .line 218
    goto :goto_7

    .line 219
    :cond_8
    if-eqz v2, :cond_a

    .line 220
    .line 221
    :try_start_4
    array-length p0, v2

    .line 222
    if-gtz p0, :cond_9

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_9
    const-string p0, ","

    .line 226
    .line 227
    invoke-static {p0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    goto :goto_6

    .line 232
    :cond_a
    :goto_5
    const-string p0, "no asset"

    .line 233
    .line 234
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    const-string p2, "Asset Error "

    .line 240
    .line 241
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-static {p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    new-instance p1, Ljava/lang/Exception;

    .line 255
    .line 256
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 260
    :catchall_3
    move-exception p0

    .line 261
    move-object v0, v1

    .line 262
    :goto_7
    move-object p2, v1

    .line 263
    :goto_8
    :try_start_5
    const-string p1, "\u63d2\u4ef6\u52a0\u8f7d\u5931\u8d25"

    .line 264
    .line 265
    invoke-static {p1, p0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 269
    :catchall_4
    move-exception p0

    .line 270
    invoke-static {p2}, Lcom/qq/e/comm/managers/plugin/b;->b(Ljava/io/Closeable;)V

    .line 271
    .line 272
    .line 273
    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/b;->b(Ljava/io/Closeable;)V

    .line 274
    .line 275
    .line 276
    throw p0
.end method

.method private static b(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :cond_0
    return-void
.end method
