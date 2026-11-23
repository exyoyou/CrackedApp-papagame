.class public Lcom/haima/hmcp/websocket/Handshake;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CRLF:Ljava/lang/String; = "\r\n"


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

.method private static bytes(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static handshake(Lcom/haima/hmcp/websocket/messages/ClientHandshake;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/websocket/exceptions/ParseFailed;
        }
    .end annotation

    .line 1
    const-string v0, "\r\n"

    .line 2
    .line 3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mQuery:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mPath:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, "?"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mQuery:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mPath:Ljava/lang/String;

    .line 38
    .line 39
    :goto_0
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 40
    .line 41
    const-string v4, "GET %s HTTP/1.1"

    .line 42
    .line 43
    const/4 v5, 0x1

    .line 44
    new-array v6, v5, [Ljava/lang/Object;

    .line 45
    .line 46
    const/4 v7, 0x0

    .line 47
    aput-object v2, v6, v7

    .line 48
    .line 49
    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 65
    .line 66
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "Host: "

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mHost:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v2}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 98
    .line 99
    .line 100
    const-string v2, "Upgrade: WebSocket"

    .line 101
    .line 102
    invoke-static {v2}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 114
    .line 115
    .line 116
    const-string v2, "Connection: Upgrade"

    .line 117
    .line 118
    invoke-static {v2}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 130
    .line 131
    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v3, "Sec-WebSocket-Key: "

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-static {}, Lcom/haima/hmcp/websocket/Handshake;->newHandshakeKey()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-static {v2}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 158
    .line 159
    .line 160
    invoke-static {v0}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 165
    .line 166
    .line 167
    iget-object v2, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mOrigin:Ljava/lang/String;

    .line 168
    .line 169
    if-eqz v2, :cond_1

    .line 170
    .line 171
    const-string v3, ""

    .line 172
    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-nez v2, :cond_1

    .line 178
    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v3, "Origin: "

    .line 185
    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-object v3, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mOrigin:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-static {v2}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 203
    .line 204
    .line 205
    invoke-static {v0}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 210
    .line 211
    .line 212
    :cond_1
    iget-object v2, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mSubprotocols:[Ljava/lang/String;

    .line 213
    .line 214
    if-eqz v2, :cond_4

    .line 215
    .line 216
    array-length v2, v2

    .line 217
    if-lez v2, :cond_4

    .line 218
    .line 219
    const-string v2, "Sec-WebSocket-Protocol: "

    .line 220
    .line 221
    invoke-static {v2}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 226
    .line 227
    .line 228
    :goto_1
    iget-object v2, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mSubprotocols:[Ljava/lang/String;

    .line 229
    .line 230
    array-length v3, v2

    .line 231
    if-ge v7, v3, :cond_3

    .line 232
    .line 233
    aget-object v2, v2, v7

    .line 234
    .line 235
    invoke-static {v2}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 240
    .line 241
    .line 242
    iget-object v2, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mSubprotocols:[Ljava/lang/String;

    .line 243
    .line 244
    array-length v2, v2

    .line 245
    sub-int/2addr v2, v5

    .line 246
    if-eq v7, v2, :cond_2

    .line 247
    .line 248
    const-string v2, ", "

    .line 249
    .line 250
    invoke-static {v2}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 255
    .line 256
    .line 257
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_3
    invoke-static {v0}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 265
    .line 266
    .line 267
    :cond_4
    const-string v2, "Sec-WebSocket-Version: 13"

    .line 268
    .line 269
    invoke-static {v2}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 274
    .line 275
    .line 276
    invoke-static {v0}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 281
    .line 282
    .line 283
    iget-object v2, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mHeaderList:Ljava/util/Map;

    .line 284
    .line 285
    if-eqz v2, :cond_5

    .line 286
    .line 287
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    if-eqz v3, :cond_5

    .line 300
    .line 301
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    check-cast v3, Ljava/lang/String;

    .line 306
    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v5, ":"

    .line 316
    .line 317
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    iget-object v5, p0, Lcom/haima/hmcp/websocket/messages/ClientHandshake;->mHeaderList:Ljava/util/Map;

    .line 321
    .line 322
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    check-cast v3, Ljava/lang/String;

    .line 327
    .line 328
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-static {v3}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 340
    .line 341
    .line 342
    invoke-static {v0}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 347
    .line 348
    .line 349
    goto :goto_2

    .line 350
    :cond_5
    invoke-static {v0}, Lcom/haima/hmcp/websocket/Handshake;->bytes(Ljava/lang/String;)[B

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    return-object p0

    .line 362
    :catch_0
    move-exception p0

    .line 363
    new-instance v0, Lcom/haima/hmcp/websocket/exceptions/ParseFailed;

    .line 364
    .line 365
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p0

    .line 369
    invoke-direct {v0, p0}, Lcom/haima/hmcp/websocket/exceptions/ParseFailed;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw v0
.end method

.method private static newHandshakeKey()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    new-instance v1, Ljava/util/Random;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
