.class public Lcom/tencent/cos/task/download/Range;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected downloadUrl:Ljava/lang/String;

.field protected fileName:Ljava/lang/String;

.field protected length:J

.field protected localPath:Ljava/lang/String;

.field protected range:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/cos/task/download/Range;->downloadUrl:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tencent/cos/task/download/Range;->localPath:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/tencent/cos/task/download/Range;->fileName:Ljava/lang/String;

    .line 9
    .line 10
    int-to-long p1, p4

    .line 11
    iput-wide p1, p0, Lcom/tencent/cos/task/download/Range;->length:J

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/tencent/cos/task/download/Range;->isEquals()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const-wide/16 p1, 0x0

    .line 20
    .line 21
    iput-wide p1, p0, Lcom/tencent/cos/task/download/Range;->range:J

    .line 22
    .line 23
    invoke-virtual {p0, p3}, Lcom/tencent/cos/task/download/Range;->saveRangePart(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/download/Range;->downloadUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/download/Range;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/cos/task/download/Range;->length:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/download/Range;->localPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRange()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/cos/task/download/Range;->range:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public declared-synchronized isEquals()Z
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/tencent/cos/task/download/Range;->fileName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return v2

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    .line 20
    .line 21
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 22
    .line 23
    .line 24
    :try_start_2
    new-instance v0, Ljava/io/ObjectInputStream;

    .line 25
    .line 26
    invoke-direct {v0, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    .line 28
    .line 29
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/tencent/cos/task/download/RangePart;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/tencent/cos/task/download/RangePart;->getDownloadUrl()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget-object v5, p0, Lcom/tencent/cos/task/download/Range;->downloadUrl:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 53
    .line 54
    .line 55
    :goto_0
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catch_1
    move-exception v0

    .line 60
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 61
    .line 62
    .line 63
    :goto_1
    monitor-exit p0

    .line 64
    return v2

    .line 65
    :cond_1
    :try_start_8
    invoke-virtual {v1}, Lcom/tencent/cos/task/download/RangePart;->getLocalPath()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    iget-object v5, p0, Lcom/tencent/cos/task/download/Range;->localPath:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 75
    if-nez v4, :cond_2

    .line 76
    .line 77
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catch_2
    move-exception v0

    .line 82
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 83
    .line 84
    .line 85
    :goto_2
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :catch_3
    move-exception v0

    .line 90
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 91
    .line 92
    .line 93
    :goto_3
    monitor-exit p0

    .line 94
    return v2

    .line 95
    :cond_2
    :try_start_d
    invoke-virtual {v1}, Lcom/tencent/cos/task/download/RangePart;->getFileName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    iget-object v5, p0, Lcom/tencent/cos/task/download/Range;->fileName:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 105
    if-nez v4, :cond_3

    .line 106
    .line 107
    :try_start_e
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :catch_4
    move-exception v0

    .line 112
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 113
    .line 114
    .line 115
    :goto_4
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 116
    .line 117
    .line 118
    goto :goto_5

    .line 119
    :catch_5
    move-exception v0

    .line 120
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 121
    .line 122
    .line 123
    :goto_5
    monitor-exit p0

    .line 124
    return v2

    .line 125
    :cond_3
    :try_start_12
    invoke-virtual {v1}, Lcom/tencent/cos/task/download/RangePart;->getLength()J

    .line 126
    .line 127
    .line 128
    move-result-wide v4

    .line 129
    iget-wide v6, p0, Lcom/tencent/cos/task/download/Range;->length:J
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 130
    .line 131
    cmp-long v8, v4, v6

    .line 132
    .line 133
    if-eqz v8, :cond_4

    .line 134
    .line 135
    :try_start_13
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 136
    .line 137
    .line 138
    goto :goto_6

    .line 139
    :catch_6
    move-exception v0

    .line 140
    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 141
    .line 142
    .line 143
    :goto_6
    :try_start_15
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 144
    .line 145
    .line 146
    goto :goto_7

    .line 147
    :catch_7
    move-exception v0

    .line 148
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 149
    .line 150
    .line 151
    :goto_7
    monitor-exit p0

    .line 152
    return v2

    .line 153
    :cond_4
    :try_start_17
    invoke-virtual {v1}, Lcom/tencent/cos/task/download/RangePart;->getRange()J

    .line 154
    .line 155
    .line 156
    move-result-wide v4

    .line 157
    iput-wide v4, p0, Lcom/tencent/cos/task/download/Range;->range:J

    .line 158
    .line 159
    iget-wide v6, p0, Lcom/tencent/cos/task/download/Range;->length:J
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 160
    .line 161
    cmp-long v1, v4, v6

    .line 162
    .line 163
    if-lez v1, :cond_5

    .line 164
    .line 165
    :try_start_18
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 166
    .line 167
    .line 168
    goto :goto_8

    .line 169
    :catch_8
    move-exception v0

    .line 170
    :try_start_19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 171
    .line 172
    .line 173
    :goto_8
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_9
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 174
    .line 175
    .line 176
    goto :goto_9

    .line 177
    :catch_9
    move-exception v0

    .line 178
    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 179
    .line 180
    .line 181
    :goto_9
    monitor-exit p0

    .line 182
    return v2

    .line 183
    :cond_5
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 184
    .line 185
    .line 186
    goto :goto_a

    .line 187
    :catch_a
    move-exception v0

    .line 188
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    .line 189
    .line 190
    .line 191
    :goto_a
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    .line 192
    .line 193
    .line 194
    goto :goto_b

    .line 195
    :catch_b
    move-exception v0

    .line 196
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 197
    .line 198
    .line 199
    :goto_b
    monitor-exit p0

    .line 200
    const/4 v0, 0x1

    .line 201
    return v0

    .line 202
    :catchall_0
    move-exception v1

    .line 203
    goto :goto_c

    .line 204
    :catch_c
    nop

    .line 205
    move-object v1, v0

    .line 206
    goto :goto_f

    .line 207
    :catch_d
    nop

    .line 208
    move-object v1, v0

    .line 209
    goto :goto_12

    .line 210
    :catchall_1
    move-exception v0

    .line 211
    move-object v9, v1

    .line 212
    move-object v1, v0

    .line 213
    move-object v0, v9

    .line 214
    goto :goto_c

    .line 215
    :catch_e
    nop

    .line 216
    goto :goto_f

    .line 217
    :catch_f
    nop

    .line 218
    goto :goto_12

    .line 219
    :catchall_2
    move-exception v0

    .line 220
    move-object v3, v1

    .line 221
    move-object v1, v0

    .line 222
    move-object v0, v3

    .line 223
    :goto_c
    if-eqz v0, :cond_6

    .line 224
    .line 225
    :try_start_20
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_10
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 226
    .line 227
    .line 228
    goto :goto_d

    .line 229
    :catch_10
    move-exception v0

    .line 230
    :try_start_21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    .line 231
    .line 232
    .line 233
    :cond_6
    :goto_d
    if-eqz v3, :cond_7

    .line 234
    .line 235
    :try_start_22
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_11
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    .line 236
    .line 237
    .line 238
    goto :goto_e

    .line 239
    :catch_11
    move-exception v0

    .line 240
    :try_start_23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 241
    .line 242
    .line 243
    :cond_7
    :goto_e
    throw v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    .line 244
    :catch_12
    nop

    .line 245
    move-object v3, v1

    .line 246
    :goto_f
    if-eqz v1, :cond_8

    .line 247
    .line 248
    :try_start_24
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_13
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    .line 249
    .line 250
    .line 251
    goto :goto_10

    .line 252
    :catch_13
    move-exception v0

    .line 253
    :try_start_25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    .line 254
    .line 255
    .line 256
    :cond_8
    :goto_10
    if-eqz v3, :cond_9

    .line 257
    .line 258
    :try_start_26
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_14
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    .line 259
    .line 260
    .line 261
    goto :goto_11

    .line 262
    :catch_14
    move-exception v0

    .line 263
    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    .line 264
    .line 265
    .line 266
    :cond_9
    :goto_11
    monitor-exit p0

    .line 267
    return v2

    .line 268
    :catch_15
    nop

    .line 269
    move-object v3, v1

    .line 270
    :goto_12
    if-eqz v1, :cond_a

    .line 271
    .line 272
    :try_start_28
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_16
    .catchall {:try_start_28 .. :try_end_28} :catchall_3

    .line 273
    .line 274
    .line 275
    goto :goto_13

    .line 276
    :catch_16
    move-exception v0

    .line 277
    :try_start_29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_3

    .line 278
    .line 279
    .line 280
    :cond_a
    :goto_13
    if-eqz v3, :cond_b

    .line 281
    .line 282
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_17
    .catchall {:try_start_2a .. :try_end_2a} :catchall_3

    .line 283
    .line 284
    .line 285
    goto :goto_14

    .line 286
    :catch_17
    move-exception v0

    .line 287
    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_3

    .line 288
    .line 289
    .line 290
    :cond_b
    :goto_14
    monitor-exit p0

    .line 291
    return v2

    .line 292
    :catchall_3
    move-exception v0

    .line 293
    monitor-exit p0

    .line 294
    throw v0
.end method

.method public declared-synchronized saveRangePart(Ljava/lang/String;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_4

    .line 12
    .line 13
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    new-instance v0, Ljava/io/File;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    .line 42
    .line 43
    :try_start_2
    new-instance v0, Ljava/io/ObjectOutputStream;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    .line 48
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 52
    .line 53
    .line 54
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 60
    .line 61
    .line 62
    :goto_0
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 63
    .line 64
    .line 65
    goto/16 :goto_9

    .line 66
    .line 67
    :catch_1
    move-exception p1

    .line 68
    :goto_1
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 69
    .line 70
    .line 71
    goto/16 :goto_9

    .line 72
    .line 73
    :catch_2
    move-exception p1

    .line 74
    goto :goto_2

    .line 75
    :catch_3
    move-exception p1

    .line 76
    goto :goto_4

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    move-object v3, v0

    .line 79
    move-object v0, p1

    .line 80
    move-object p1, v3

    .line 81
    goto :goto_6

    .line 82
    :catch_4
    move-exception v0

    .line 83
    move-object v3, v0

    .line 84
    move-object v0, p1

    .line 85
    move-object p1, v3

    .line 86
    goto :goto_2

    .line 87
    :catch_5
    move-exception v0

    .line 88
    move-object v3, v0

    .line 89
    move-object v0, p1

    .line 90
    move-object p1, v3

    .line 91
    goto :goto_4

    .line 92
    :catchall_1
    move-exception v0

    .line 93
    move-object v1, p1

    .line 94
    move-object p1, v0

    .line 95
    move-object v0, v1

    .line 96
    goto :goto_6

    .line 97
    :catch_6
    move-exception v0

    .line 98
    move-object v1, p1

    .line 99
    move-object p1, v0

    .line 100
    move-object v0, v1

    .line 101
    :goto_2
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 102
    .line 103
    .line 104
    if-eqz v0, :cond_0

    .line 105
    .line 106
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :catch_7
    move-exception p1

    .line 111
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 112
    .line 113
    .line 114
    :cond_0
    :goto_3
    if-eqz v1, :cond_4

    .line 115
    .line 116
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 117
    .line 118
    .line 119
    goto :goto_9

    .line 120
    :catch_8
    move-exception p1

    .line 121
    goto :goto_1

    .line 122
    :catch_9
    move-exception v0

    .line 123
    move-object v1, p1

    .line 124
    move-object p1, v0

    .line 125
    move-object v0, v1

    .line 126
    :goto_4
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 127
    .line 128
    .line 129
    if-eqz v0, :cond_1

    .line 130
    .line 131
    :try_start_d
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 132
    .line 133
    .line 134
    goto :goto_5

    .line 135
    :catch_a
    move-exception p1

    .line 136
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 137
    .line 138
    .line 139
    :cond_1
    :goto_5
    if-eqz v1, :cond_4

    .line 140
    .line 141
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 142
    .line 143
    .line 144
    goto :goto_9

    .line 145
    :catch_b
    move-exception p1

    .line 146
    goto :goto_1

    .line 147
    :catchall_2
    move-exception p1

    .line 148
    :goto_6
    if-eqz v0, :cond_2

    .line 149
    .line 150
    :try_start_10
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 151
    .line 152
    .line 153
    goto :goto_7

    .line 154
    :catch_c
    move-exception v0

    .line 155
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 156
    .line 157
    .line 158
    :cond_2
    :goto_7
    if-eqz v1, :cond_3

    .line 159
    .line 160
    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 161
    .line 162
    .line 163
    goto :goto_8

    .line 164
    :catch_d
    move-exception v0

    .line 165
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    .line 167
    .line 168
    :cond_3
    :goto_8
    throw p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 169
    :cond_4
    :goto_9
    monitor-exit p0

    .line 170
    return-void

    .line 171
    :catchall_3
    move-exception p1

    .line 172
    monitor-exit p0

    .line 173
    throw p1
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/task/download/Range;->downloadUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/task/download/Range;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLength(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/cos/task/download/Range;->length:J

    .line 2
    .line 3
    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/task/download/Range;->localPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRange(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/cos/task/download/Range;->range:J

    .line 2
    .line 3
    return-void
.end method
