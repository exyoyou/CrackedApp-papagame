.class public Lk8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x6


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

.method public static a(Z)V
    .locals 12

    .line 1
    invoke-static {}, Lcom/xinzhu/datatransfer/b;->f()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    long-to-int v0, v3

    .line 19
    new-array v3, v0, [B

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 26
    .line 27
    .line 28
    if-ne v4, v0, :cond_8

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v3, v2, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->createCharArray()[C

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x6

    .line 49
    if-ne v0, v4, :cond_3

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    :goto_0
    if-ge v0, v3, :cond_9

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_0

    .line 73
    .line 74
    const/4 v6, 0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    const/4 v6, 0x0

    .line 77
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    const/4 v8, 0x0

    .line 85
    :goto_2
    if-ge v8, v7, :cond_2

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 104
    .line 105
    .line 106
    invoke-static {p0, v6}, Lk8/b;->b(ZZ)Z

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-eqz v10, :cond_1

    .line 111
    .line 112
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    invoke-static {v4}, Lcom/xinzhu/overmind/a;->j(Ljava/lang/String;)Ljava/io/File;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    invoke-virtual {v10, v11, v9, v5}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->installPackageAsTransfer(Ljava/lang/String;II)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 125
    .line 126
    .line 127
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 137
    .line 138
    .line 139
    add-int/lit8 v0, v0, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_3
    const/4 p0, 0x5

    .line 143
    if-ne v0, p0, :cond_5

    .line 144
    .line 145
    const/4 p0, 0x0

    .line 146
    :goto_3
    if-ge p0, v3, :cond_9

    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    const/4 v6, 0x0

    .line 164
    :goto_4
    if-ge v6, v5, :cond_4

    .line 165
    .line 166
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 183
    .line 184
    .line 185
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    invoke-static {v0}, Lcom/xinzhu/overmind/a;->j(Ljava/lang/String;)Ljava/io/File;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    invoke-virtual {v8, v9, v7, v4}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->installPackageAsTransfer(Ljava/lang/String;II)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 198
    .line 199
    .line 200
    add-int/lit8 v6, v6, 0x1

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_4
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 210
    .line 211
    .line 212
    add-int/lit8 p0, p0, 0x1

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_5
    if-ge v0, p0, :cond_9

    .line 216
    .line 217
    const/4 p0, 0x0

    .line 218
    :goto_5
    if-ge p0, v3, :cond_9

    .line 219
    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    const/4 v7, 0x0

    .line 242
    :goto_6
    if-ge v7, v6, :cond_6

    .line 243
    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 245
    .line 246
    .line 247
    move-result v8

    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 261
    .line 262
    .line 263
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    invoke-static {v4}, Lcom/xinzhu/overmind/a;->j(Ljava/lang/String;)Ljava/io/File;

    .line 268
    .line 269
    .line 270
    move-result-object v10

    .line 271
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v10

    .line 275
    invoke-virtual {v9, v10, v8, v5}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->installPackageAsTransfer(Ljava/lang/String;II)Lcom/xinzhu/overmind/entity/pm/InstallResult;

    .line 276
    .line 277
    .line 278
    add-int/lit8 v7, v7, 0x1

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_6
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    .line 282
    .line 283
    .line 284
    const/4 v4, 0x4

    .line 285
    if-ne v0, v4, :cond_7

    .line 286
    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 288
    .line 289
    .line 290
    :cond_7
    add-int/lit8 p0, p0, 0x1

    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_8
    new-instance p0, Ljava/io/IOException;

    .line 294
    .line 295
    const-string v0, "Unable to read Persistence file."

    .line 296
    .line 297
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :catchall_0
    move-exception p0

    .line 302
    goto :goto_7

    .line 303
    :catch_0
    move-exception p0

    .line 304
    :try_start_1
    instance-of v0, p0, Ljava/io/FileNotFoundException;

    .line 305
    .line 306
    if-nez v0, :cond_9

    .line 307
    .line 308
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    .line 310
    .line 311
    :cond_9
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 312
    .line 313
    .line 314
    return-void

    .line 315
    :goto_7
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 316
    .line 317
    .line 318
    throw p0
.end method

.method private static b(ZZ)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/xinzhu/overmind/Overmind;->use32BitMainPackage()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    xor-int/lit8 p0, p1, 0x1

    .line 16
    .line 17
    return p0

    .line 18
    :cond_1
    return p1
.end method
