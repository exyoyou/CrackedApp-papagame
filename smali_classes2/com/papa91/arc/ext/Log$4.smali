.class Lcom/papa91/arc/ext/Log$4;
.super Lcom/papa91/arc/ext/DaemonThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/ext/Log;->runLogOnProcessErrStream(Ljava/lang/Process;Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$errStream:Ljava/io/InputStream;

.field final synthetic val$process:Ljava/lang/Process;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Process;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/papa91/arc/ext/Log$4;->val$errStream:Ljava/io/InputStream;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/papa91/arc/ext/Log$4;->val$process:Ljava/lang/Process;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/papa91/arc/ext/DaemonThread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    const-string v0, " dbg: "

    .line 2
    .line 3
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 7
    .line 8
    new-instance v2, Ljava/io/InputStreamReader;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/papa91/arc/ext/Log$4;->val$errStream:Ljava/io/InputStream;

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 13
    .line 14
    .line 15
    const/16 v3, 0x200

    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    move-object v6, v2

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 27
    .line 28
    .line 29
    move-result v9
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_9

    .line 30
    if-nez v9, :cond_11

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    :try_start_1
    iget-object v9, p0, Lcom/papa91/arc/ext/Log$4;->val$process:Ljava/lang/Process;

    .line 35
    .line 36
    invoke-virtual {v9}, Ljava/lang/Process;->exitValue()I
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_9

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception v9

    .line 41
    :try_start_2
    invoke-static {v9}, Lcom/papa91/arc/ext/Log;->badImplementation(Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_9

    .line 42
    .line 43
    .line 44
    :catch_1
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    if-nez v9, :cond_f

    .line 49
    .line 50
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-eqz v10, :cond_0

    .line 59
    .line 60
    const-string v10, "KEY: "

    .line 61
    .line 62
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_9

    .line 66
    const-string v11, "Failed parse: "

    .line 67
    .line 68
    if-eqz v10, :cond_4

    .line 69
    .line 70
    const/4 v10, 0x5

    .line 71
    :try_start_4
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-nez v6, :cond_2

    .line 80
    .line 81
    new-array v6, v3, [I

    .line 82
    .line 83
    :cond_2
    array-length v12, v6

    .line 84
    if-ne v7, v12, :cond_3

    .line 85
    .line 86
    array-length v12, v6

    .line 87
    add-int/2addr v12, v3

    .line 88
    invoke-static {v6, v12}, Ljava/util/Arrays;->copyOf([II)[I

    .line 89
    .line 90
    .line 91
    move-result-object v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_9

    .line 92
    :cond_3
    add-int/lit8 v12, v7, 0x1

    .line 93
    .line 94
    :try_start_5
    aput v10, v6, v7
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_9

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_2
    move-exception v10

    .line 98
    :try_start_6
    new-instance v13, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    invoke-static {v13, v10}, Lcom/papa91/arc/ext/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_9

    .line 114
    .line 115
    .line 116
    :goto_1
    move v7, v12

    .line 117
    goto :goto_0

    .line 118
    :catch_3
    move-exception v10

    .line 119
    :try_start_7
    invoke-static {v10}, Lcom/papa91/arc/ext/Log;->badImplementation(Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_9

    .line 120
    .line 121
    .line 122
    add-int/lit8 v8, v8, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catch_4
    move-exception v10

    .line 126
    :try_start_8
    new-instance v12, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    invoke-static {v9, v10}, Lcom/papa91/arc/ext/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_4
    const-string v10, "KEY_END"

    .line 146
    .line 147
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    if-eqz v10, :cond_5

    .line 152
    .line 153
    move-object v6, v2

    .line 154
    const/4 v7, 0x0

    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_5
    const-string v10, "EVENT: "

    .line 158
    .line 159
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v10
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_9

    .line 163
    if-eqz v10, :cond_6

    .line 164
    .line 165
    const/4 v10, 0x7

    .line 166
    :try_start_9
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_9

    .line 171
    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :catch_5
    move-exception v10

    .line 176
    :try_start_a
    new-instance v12, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    invoke-static {v9, v10}, Lcom/papa91/arc/ext/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_6
    const-string v10, "BAD_KERNEL"

    .line 197
    .line 198
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v10

    .line 202
    if-eqz v10, :cond_7

    .line 203
    .line 204
    new-instance v9, Lcom/papa91/arc/ext/Log$4$1;

    .line 205
    .line 206
    invoke-direct {v9, p0}, Lcom/papa91/arc/ext/Log$4$1;-><init>(Lcom/papa91/arc/ext/Log$4;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v9}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_7
    sget-object v10, Lcom/papa91/arc/ext/Log;->lastSearchLogCurrent:Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    if-nez v11, :cond_8

    .line 221
    .line 222
    const-string v11, "Send code: 2"

    .line 223
    .line 224
    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v11

    .line 228
    if-eqz v11, :cond_9

    .line 229
    .line 230
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    sput-object v10, Lcom/papa91/arc/ext/Log;->lastSearchLogCurrent:Ljava/lang/StringBuilder;

    .line 236
    .line 237
    :cond_9
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 238
    .line 239
    .line 240
    move-result v11
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_9

    .line 241
    const-string v12, "::searchDone:"

    .line 242
    .line 243
    if-nez v11, :cond_a

    .line 244
    .line 245
    :try_start_b
    const-string v11, " clocks: "

    .line 246
    .line 247
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 248
    .line 249
    .line 250
    move-result v11

    .line 251
    if-nez v11, :cond_a

    .line 252
    .line 253
    const-string v11, "MR["

    .line 254
    .line 255
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v11

    .line 259
    if-nez v11, :cond_a

    .line 260
    .line 261
    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 262
    .line 263
    .line 264
    move-result v11

    .line 265
    if-eqz v11, :cond_c

    .line 266
    .line 267
    :cond_a
    if-nez v10, :cond_b

    .line 268
    .line 269
    new-instance v10, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    sput-object v10, Lcom/papa91/arc/ext/Log;->lastSearchLogCurrent:Ljava/lang/StringBuilder;

    .line 275
    .line 276
    :cond_b
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const/16 v11, 0xa

    .line 280
    .line 281
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    :cond_c
    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 285
    .line 286
    .line 287
    move-result v11

    .line 288
    if-nez v11, :cond_d

    .line 289
    .line 290
    const-string v11, "Send code: 3"

    .line 291
    .line 292
    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    if-eqz v9, :cond_0

    .line 297
    .line 298
    :cond_d
    if-eqz v10, :cond_e

    .line 299
    .line 300
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    sput-object v9, Lcom/papa91/arc/ext/Log;->lastSearchLog:Ljava/lang/String;

    .line 305
    .line 306
    :cond_e
    sput-object v2, Lcom/papa91/arc/ext/Log;->lastSearchLogCurrent:Ljava/lang/StringBuilder;

    .line 307
    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :cond_f
    const-wide/16 v9, 0x1f4

    .line 311
    .line 312
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_9

    .line 313
    .line 314
    .line 315
    goto/16 :goto_0

    .line 316
    .line 317
    :catch_6
    move-exception v9

    .line 318
    :try_start_c
    invoke-static {v9}, Lcom/papa91/arc/ext/Log;->badImplementation(Ljava/lang/Throwable;)I
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_9

    .line 319
    .line 320
    .line 321
    add-int/lit8 v8, v8, 0x1

    .line 322
    .line 323
    const/16 v9, 0x1e

    .line 324
    .line 325
    if-le v8, v9, :cond_10

    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :catch_7
    :cond_10
    return-void

    .line 330
    :catch_8
    const/4 v5, 0x1

    .line 331
    goto/16 :goto_0

    .line 332
    .line 333
    :cond_11
    return-void

    .line 334
    :catch_9
    move-exception v0

    .line 335
    const-string v1, "runLogOnProcessErrStream failed"

    .line 336
    .line 337
    invoke-static {v1, v0}, Lcom/papa91/arc/ext/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    .line 339
    .line 340
    return-void
.end method
