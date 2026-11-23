.class public Lcom/xinzhu/overmind/utils/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/utils/x$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "su"

.field public static final b:Ljava/lang/String; = "sh"

.field public static final c:Ljava/lang/String; = "exit\n"

.field public static final d:Ljava/lang/String; = "\n"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/AssertionError;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 7
    .line 8
    .line 9
    throw v0
.end method

.method public static a()Z
    .locals 3

    .line 1
    const-string v0, "echo root"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, v2}, Lcom/xinzhu/overmind/utils/x;->c(Ljava/lang/String;ZZ)Lcom/xinzhu/overmind/utils/x$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Lcom/xinzhu/overmind/utils/x$a;->a:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    return v1
.end method

.method public static b(Ljava/lang/String;Z)Lcom/xinzhu/overmind/utils/x$a;
    .locals 1

    .line 1
    filled-new-array {p0}, [Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {p0, p1, v0}, Lcom/xinzhu/overmind/utils/x;->g([Ljava/lang/String;ZZ)Lcom/xinzhu/overmind/utils/x$a;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static c(Ljava/lang/String;ZZ)Lcom/xinzhu/overmind/utils/x$a;
    .locals 0

    .line 1
    filled-new-array {p0}, [Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/xinzhu/overmind/utils/x;->g([Ljava/lang/String;ZZ)Lcom/xinzhu/overmind/utils/x$a;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static d(Ljava/util/List;Z)Lcom/xinzhu/overmind/utils/x$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/xinzhu/overmind/utils/x$a;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Ljava/lang/String;

    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, [Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    const/4 v0, 0x1

    .line 15
    invoke-static {p0, p1, v0}, Lcom/xinzhu/overmind/utils/x;->g([Ljava/lang/String;ZZ)Lcom/xinzhu/overmind/utils/x$a;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static e(Ljava/util/List;ZZ)Lcom/xinzhu/overmind/utils/x$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/xinzhu/overmind/utils/x$a;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Ljava/lang/String;

    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, [Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/xinzhu/overmind/utils/x;->g([Ljava/lang/String;ZZ)Lcom/xinzhu/overmind/utils/x$a;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static f([Ljava/lang/String;Z)Lcom/xinzhu/overmind/utils/x$a;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Lcom/xinzhu/overmind/utils/x;->g([Ljava/lang/String;ZZ)Lcom/xinzhu/overmind/utils/x$a;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static g([Ljava/lang/String;ZZ)Lcom/xinzhu/overmind/utils/x$a;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    if-eqz p0, :cond_10

    .line 4
    .line 5
    array-length v2, p0

    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    goto/16 :goto_1b

    .line 9
    .line 10
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const-string p1, "su"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string p1, "sh"

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 25
    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 32
    .line 33
    .line 34
    :try_start_2
    array-length v3, p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    const/4 v4, 0x0

    .line 36
    :goto_1
    const-string v5, "\n"

    .line 37
    .line 38
    if-ge v4, v3, :cond_3

    .line 39
    .line 40
    :try_start_3
    aget-object v6, p0, v4

    .line 41
    .line 42
    if-nez v6, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 56
    .line 57
    .line 58
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    const-string p0, "exit\n"

    .line 62
    .line 63
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    .line 70
    .line 71
    .line 72
    move-result v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    :try_start_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 78
    .line 79
    .line 80
    :try_start_5
    new-instance p2, Ljava/io/BufferedReader;

    .line 81
    .line 82
    new-instance v3, Ljava/io/InputStreamReader;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 92
    .line 93
    .line 94
    :goto_3
    :try_start_6
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    goto/16 :goto_7

    .line 121
    .line 122
    :catch_0
    move-exception v3

    .line 123
    move-object v7, p1

    .line 124
    move-object p1, p0

    .line 125
    move-object p0, v3

    .line 126
    move-object v3, v2

    .line 127
    move v2, v1

    .line 128
    move-object v1, p2

    .line 129
    goto :goto_4

    .line 130
    :catch_1
    move-exception v3

    .line 131
    move-object v7, p1

    .line 132
    move-object p1, p0

    .line 133
    move-object p0, v3

    .line 134
    move-object v3, v2

    .line 135
    move v2, v1

    .line 136
    move-object v1, p2

    .line 137
    goto :goto_5

    .line 138
    :catch_2
    move-exception p2

    .line 139
    move-object v3, v2

    .line 140
    move v2, v1

    .line 141
    move-object v1, v0

    .line 142
    move-object v7, p1

    .line 143
    move-object p1, p0

    .line 144
    move-object p0, p2

    .line 145
    :goto_4
    move-object p2, v7

    .line 146
    goto/16 :goto_a

    .line 147
    .line 148
    :catch_3
    move-exception p2

    .line 149
    move-object v3, v2

    .line 150
    move v2, v1

    .line 151
    move-object v1, v0

    .line 152
    move-object v7, p1

    .line 153
    move-object p1, p0

    .line 154
    move-object p0, p2

    .line 155
    :goto_5
    move-object p2, v7

    .line 156
    goto/16 :goto_10

    .line 157
    .line 158
    :catch_4
    move-exception p0

    .line 159
    move-object p2, p1

    .line 160
    move-object p1, v0

    .line 161
    move-object v3, v2

    .line 162
    move v2, v1

    .line 163
    move-object v1, p1

    .line 164
    goto/16 :goto_a

    .line 165
    .line 166
    :catch_5
    move-exception p0

    .line 167
    move-object p2, p1

    .line 168
    move-object p1, v0

    .line 169
    move-object v3, v2

    .line 170
    move v2, v1

    .line 171
    move-object v1, p1

    .line 172
    goto/16 :goto_10

    .line 173
    .line 174
    :cond_4
    move-object p0, v0

    .line 175
    move-object p2, p0

    .line 176
    :cond_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 177
    .line 178
    .line 179
    if-eqz p2, :cond_6

    .line 180
    .line 181
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 182
    .line 183
    .line 184
    goto :goto_6

    .line 185
    :catch_6
    move-exception p2

    .line 186
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    .line 188
    .line 189
    :cond_6
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_15

    .line 193
    .line 194
    :catchall_1
    move-exception p0

    .line 195
    move-object p2, v0

    .line 196
    :goto_7
    move-object v0, v2

    .line 197
    goto/16 :goto_17

    .line 198
    .line 199
    :catch_7
    move-exception p0

    .line 200
    move-object p2, p1

    .line 201
    move-object p1, v0

    .line 202
    move-object v1, p1

    .line 203
    move-object v3, v2

    .line 204
    goto :goto_9

    .line 205
    :catch_8
    move-exception p0

    .line 206
    move-object p2, p1

    .line 207
    move-object p1, v0

    .line 208
    move-object v1, p1

    .line 209
    move-object v3, v2

    .line 210
    goto :goto_f

    .line 211
    :catchall_2
    move-exception p0

    .line 212
    move-object p2, v0

    .line 213
    goto/16 :goto_17

    .line 214
    .line 215
    :catch_9
    move-exception p0

    .line 216
    move-object p2, p1

    .line 217
    move-object p1, v0

    .line 218
    move-object v1, p1

    .line 219
    goto :goto_8

    .line 220
    :catch_a
    move-exception p0

    .line 221
    move-object p2, p1

    .line 222
    move-object p1, v0

    .line 223
    move-object v1, p1

    .line 224
    goto :goto_e

    .line 225
    :catchall_3
    move-exception p0

    .line 226
    move-object p1, v0

    .line 227
    move-object p2, p1

    .line 228
    goto/16 :goto_17

    .line 229
    .line 230
    :catch_b
    move-exception p0

    .line 231
    move-object p1, v0

    .line 232
    move-object p2, p1

    .line 233
    move-object v1, p2

    .line 234
    :goto_8
    move-object v3, v1

    .line 235
    :goto_9
    const/4 v2, -0x1

    .line 236
    :goto_a
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 237
    .line 238
    .line 239
    if-eqz v3, :cond_7

    .line 240
    .line 241
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 242
    .line 243
    .line 244
    goto :goto_b

    .line 245
    :catch_c
    move-exception p0

    .line 246
    goto :goto_c

    .line 247
    :cond_7
    :goto_b
    if-eqz v1, :cond_8

    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    .line 250
    .line 251
    .line 252
    goto :goto_d

    .line 253
    :goto_c
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 254
    .line 255
    .line 256
    :cond_8
    :goto_d
    if-eqz p2, :cond_b

    .line 257
    .line 258
    goto :goto_14

    .line 259
    :catch_d
    move-exception p0

    .line 260
    move-object p1, v0

    .line 261
    move-object p2, p1

    .line 262
    move-object v1, p2

    .line 263
    :goto_e
    move-object v3, v1

    .line 264
    :goto_f
    const/4 v2, -0x1

    .line 265
    :goto_10
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 266
    .line 267
    .line 268
    if-eqz v3, :cond_9

    .line 269
    .line 270
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 271
    .line 272
    .line 273
    goto :goto_11

    .line 274
    :catch_e
    move-exception p0

    .line 275
    goto :goto_12

    .line 276
    :cond_9
    :goto_11
    if-eqz v1, :cond_a

    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e

    .line 279
    .line 280
    .line 281
    goto :goto_13

    .line 282
    :goto_12
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 283
    .line 284
    .line 285
    :cond_a
    :goto_13
    if-eqz p2, :cond_b

    .line 286
    .line 287
    :goto_14
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    .line 288
    .line 289
    .line 290
    :cond_b
    move-object p0, p1

    .line 291
    move v1, v2

    .line 292
    :goto_15
    new-instance p1, Lcom/xinzhu/overmind/utils/x$a;

    .line 293
    .line 294
    if-nez p0, :cond_c

    .line 295
    .line 296
    goto :goto_16

    .line 297
    :cond_c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    :goto_16
    invoke-direct {p1, v1, v0}, Lcom/xinzhu/overmind/utils/x$a;-><init>(ILjava/lang/String;)V

    .line 302
    .line 303
    .line 304
    return-object p1

    .line 305
    :catchall_4
    move-exception p0

    .line 306
    move-object p1, p2

    .line 307
    move-object p2, v1

    .line 308
    move-object v0, v3

    .line 309
    :goto_17
    if-eqz v0, :cond_d

    .line 310
    .line 311
    :try_start_c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 312
    .line 313
    .line 314
    goto :goto_18

    .line 315
    :catch_f
    move-exception p2

    .line 316
    goto :goto_19

    .line 317
    :cond_d
    :goto_18
    if-eqz p2, :cond_e

    .line 318
    .line 319
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f

    .line 320
    .line 321
    .line 322
    goto :goto_1a

    .line 323
    :goto_19
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 324
    .line 325
    .line 326
    :cond_e
    :goto_1a
    if-eqz p1, :cond_f

    .line 327
    .line 328
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 329
    .line 330
    .line 331
    :cond_f
    throw p0

    .line 332
    :cond_10
    :goto_1b
    new-instance p0, Lcom/xinzhu/overmind/utils/x$a;

    .line 333
    .line 334
    invoke-direct {p0, v1, v0}, Lcom/xinzhu/overmind/utils/x$a;-><init>(ILjava/lang/String;)V

    .line 335
    .line 336
    .line 337
    return-object p0
.end method
